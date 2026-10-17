package me.paranoid.wifikill.service;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;
import me.paranoid.jniexec.JNIExec;
import me.paranoid.wifikill.R;
import me.paranoid.wifikill.WiFiKill;

/* JADX INFO: loaded from: classes.dex */
public class WFKService extends Service {
    public NotificationManager d;
    public int e = 31337;
    public ArrayList f = new ArrayList();
    public Activity g = null;
    public JNIExec h = null;
    public JNIExec i = null;
    public int j = -1;
    public i k = null;
    public ArrayList a = new ArrayList();
    public boolean b = false;
    final Messenger c = new Messenger(new g(this));

    /**
     * Accept only canonical dotted-decimal IPv4 addresses before using a device
     * address in a command sent to the privileged shell.
     */
    private static boolean isValidIpv4Address(String address) {
        if (address == null) {
            return false;
        }
        String[] octets = address.split("\\.", -1);
        if (octets.length != 4) {
            return false;
        }
        for (String octet : octets) {
            if (octet.isEmpty() || octet.length() > 3
                    || (octet.length() > 1 && octet.charAt(0) == '0')) {
                return false;
            }
            int value = 0;
            for (int i = 0; i < octet.length(); i++) {
                char ch = octet.charAt(i);
                if (ch < '0' || ch > '9') {
                    return false;
                }
                value = value * 10 + (ch - '0');
            }
            if (value > 255) {
                return false;
            }
        }
        return true;
    }

    private static boolean isValidDevice(a device) {
        return device != null && isValidIpv4Address(device.a);
    }

    /**
     * Device metadata files are keyed by a MAC-like identifier. Restrict the key
     * to hex digits, colons and hyphens to prevent path traversal.
     */
    private static boolean isSafeDeviceKey(String key) {
        if (key == null || key.isEmpty() || key.length() > 64) {
            return false;
        }
        for (int i = 0; i < key.length(); i++) {
            char ch = key.charAt(i);
            boolean allowed = (ch >= '0' && ch <= '9')
                    || (ch >= 'a' && ch <= 'f')
                    || (ch >= 'A' && ch <= 'F')
                    || ch == ':' || ch == '-';
            if (!allowed) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: public */
    public void a(int i, Object obj) {
        for (int size = this.f.size() - 1; size >= 0; size--) {
            try {
                ((Messenger) this.f.get(size)).send(Message.obtain(null, i, obj));
            } catch (RemoteException e) {
                this.f.remove(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: public */
    public void a(String str) {
        me.paranoid.a.c.a("error=" + str);
        if (this.k != null) {
            this.k.a = true;
            this.k.interrupt();
            try {
                this.k.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        JNIExec.a("iptables -D FORWARD -j ACCEPT && iptables -t nat -D POSTROUTING -j MASQUERADE");
        this.a.clear();
        a(4, str);
        stopSelf();
    }

    static /* synthetic */ void a(WFKService wFKService, Runnable runnable) {
        if (wFKService.g == null) {
            runnable.run();
        } else {
            wFKService.g.runOnUiThread(runnable);
        }
    }

    static /* synthetic */ void a(WFKService wFKService, a aVar) {
        if (!isValidDevice(aVar) || wFKService.h == null) {
            me.paranoid.a.c.a("Ignoring invalid device update");
            return;
        }
        me.paranoid.a.c.a("---");
        wFKService.a(aVar);
        wFKService.h.b("1" + aVar.a + "\n");
        aVar.e |= 1;
        wFKService.a(107, aVar);
    }

    static /* synthetic */ void a(WFKService wFKService, boolean z) {
        me.paranoid.a.c.a("---");
        wFKService.h.b(z ? "r\n" : "R\n");
    }

    public void a(a aVar) {
        if (!isValidDevice(aVar) || this.i == null) {
            me.paranoid.a.c.a("Refusing invalid device address while removing rules");
            return;
        }
        this.i.b("iptables -D FORWARD -s " + aVar.a + " -p tcp -j REJECT --reject-with tcp-reset\n");
        this.i.b("iptables -D FORWARD -s " + aVar.a + " -p udp -j REJECT --reject-with icmp-port-unreachable\n");
    }

    /* JADX INFO: Access modifiers changed from: public */
    public String b(String str) {
        String line = null;
        if (!isSafeDeviceKey(str)) {
            me.paranoid.a.c.a("Refusing invalid device metadata key");
            return null;
        }
        File file = new File(getApplicationContext().getFilesDir().getPath() + "/devices/" + str);
        if (!file.exists()) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            line = bufferedReader.readLine();
            bufferedReader.close();
            return line;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return line;
        } catch (IOException e2) {
            e2.printStackTrace();
            return line;
        }
    }

    static /* synthetic */ a b(WFKService wFKService, String str) {
        for (Object obj : wFKService.a) {
            a aVar = (a) obj;
            if (aVar.a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    static /* synthetic */ void b(WFKService wFKService) {
        String channelId = "wifikill_service";
        NotificationManager notificationManager = (NotificationManager) wFKService.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(channelId, "WiFiKill", NotificationManager.IMPORTANCE_LOW);
            channel.setDescription("WiFiKill service status");
            notificationManager.createNotificationChannel(channel);
        }
        Intent intent = new Intent(wFKService, (Class<?>) WiFiKill.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(wFKService, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder builder;
        if (Build.VERSION.SDK_INT >= 26) {
            builder = new Notification.Builder(wFKService, channelId);
        } else {
            builder = new Notification.Builder(wFKService);
        }
        builder.setSmallIcon(R.drawable.icon)
                .setContentTitle("WiFiKill")
                .setContentText("is running")
                .setContentIntent(pendingIntent)
                .setOngoing(true)
                .setWhen(System.currentTimeMillis());
        wFKService.startForeground(wFKService.e, builder.build());
    }

    static /* synthetic */ void b(WFKService wFKService, a aVar) {
        if (!isValidDevice(aVar) || wFKService.h == null || wFKService.i == null) {
            me.paranoid.a.c.a("Ignoring invalid device reset");
            return;
        }
        me.paranoid.a.c.a("---");
        wFKService.h.b("0" + aVar.a + "\n");
        wFKService.a(aVar);
        aVar.e = 0;
        wFKService.a(107, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    static /* synthetic */ void c(WFKService wFKService) {
        String read;
        String previous = null;
        String str = wFKService.getApplicationContext().getFilesDir().getPath() + "/wfk";
        me.paranoid.a.c.a("begin");
        if (wFKService.k != null) {
            return;
        }
        if (!new File(str).isFile()) {
            wFKService.a("Binary file not present!");
            return;
        }
        JNIExec.a("chmod 700 " + str);
        JNIExec.a("iptables -F; iptables -X && iptables -t nat -F; iptables -t nat -Xiptables -P FORWARD ACCEPT && iptables -I FORWARD -j ACCEPT && iptables -t nat -I POSTROUTING -j MASQUERADE &&echo 1 > /proc/sys/net/ipv4/ip_forward");
        wFKService.h = new JNIExec(new e(wFKService));
        wFKService.i = new JNIExec(new f(wFKService));
        JNIExec jNIExec = wFKService.h;
        jNIExec.c(str + " " + me.paranoid.a.c.a(wFKService.getApplicationContext()));
        while (true) {
            try {
                read = wFKService.h.a(0);
            } catch (TimeoutException e) {
                e.printStackTrace();
                read = previous;
            }
            if (read != null && read.startsWith("ERROR")) {
                wFKService.a(read.substring(8));
                return;
            }
            me.paranoid.a.c.a("read: " + read);
            if (read == null || read.contains("PID")) {
                if (read == null) {
                    wFKService.a("Unable to start service, do you have root?");
                    return;
                }
                String[] pidParts = read.split("PID ", 2);
                if (pidParts.length != 2 || !pidParts[1].trim().matches("[0-9]+")) {
                    wFKService.a("Invalid startup response from wfk process");
                    return;
                }
                try {
                    wFKService.j = Integer.parseInt(pidParts[1].trim());
                } catch (NumberFormatException invalidPid) {
                    wFKService.a("Invalid process ID returned by wfk");
                    return;
                }
                if (wFKService.j <= 0) {
                    wFKService.a("Invalid process ID returned by wfk");
                    return;
                }
                wFKService.k = new i(wFKService);
                wFKService.k.start();
                return;
            }
            previous = read;
        }
    }

    static /* synthetic */ void c(WFKService wFKService, a aVar) {
        if (!isValidDevice(aVar) || wFKService.i == null) {
            me.paranoid.a.c.a("Ignoring invalid device rule request");
            return;
        }
        me.paranoid.a.c.a("---");
        wFKService.i.b("iptables -I FORWARD -s " + aVar.a + " -p tcp -j REJECT --reject-with tcp-reset\n");
        wFKService.i.b("iptables -I FORWARD -s " + aVar.a + " -p udp -j REJECT --reject-with icmp-port-unreachable\n");
        aVar.e |= 2;
        wFKService.a(107, aVar);
    }

    static /* synthetic */ void d(WFKService wFKService, a aVar) {
        if (!isValidDevice(aVar) || wFKService.i == null) {
            me.paranoid.a.c.a("Ignoring invalid device rule removal");
            return;
        }
        me.paranoid.a.c.a("---");
        int i = 3;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                aVar.e &= -3;
                wFKService.a(107, aVar);
                return;
            } else {
                wFKService.a(aVar);
                i = i2;
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        me.paranoid.a.c.a("---");
        return this.c.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        this.d = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public void onDestroy() {
        me.paranoid.a.c.a("---");
        stopForeground(true);
        this.d.cancel(this.e);
        me.paranoid.a.c.a(this, "WiFiKill service stopped");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        me.paranoid.a.c.a("---");
        this.g = null;
        return true;
    }
}
