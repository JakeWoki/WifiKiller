.class public Lme/paranoid/wifikill/service/WFKService;
.super Landroid/app/Service;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Z

.field final c:Landroid/os/Messenger;

.field private d:Landroid/app/NotificationManager;

.field private e:I

.field private f:Ljava/util/ArrayList;

.field private g:Landroid/app/Activity;

.field private h:Lme/paranoid/jniexec/JNIExec;

.field private i:Lme/paranoid/jniexec/JNIExec;

.field private j:I

.field private k:Lme/paranoid/wifikill/service/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x7a69

    iput v0, p0, Lme/paranoid/wifikill/service/WFKService;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->g:Landroid/app/Activity;

    iput-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    iput-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    const/4 v0, -0x1

    iput v0, p0, Lme/paranoid/wifikill/service/WFKService;->j:I

    iput-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/service/WFKService;->b:Z

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lme/paranoid/wifikill/service/g;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/service/g;-><init>(Lme/paranoid/wifikill/service/WFKService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->c:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/WFKService;->g:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v2, 0x0

    invoke-static {v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/paranoid/wifikill/service/i;->a:Z

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/i;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/i;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "iptables -D FORWARD -j ACCEPT && iptables -t nat -D POSTROUTING -j MASQUERADE"

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/service/WFKService;->stopSelf()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lme/paranoid/wifikill/service/WFKService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->g:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->g:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V
    .locals 3

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/a;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    iget v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    const/16 v0, 0x6b

    invoke-direct {p0, v0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/service/WFKService;Z)V
    .locals 2

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    if-eqz p1, :cond_0

    const-string v0, "r\n"

    :goto_0
    invoke-virtual {v1, v0}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "R\n"

    goto :goto_0
.end method

.method private a(Lme/paranoid/wifikill/service/a;)V
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iptables -D FORWARD -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -p tcp -j REJECT --reject-with tcp-reset\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iptables -D FORWARD -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -p udp -j REJECT --reject-with icmp-port-unreachable\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/paranoid/wifikill/service/WFKService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/devices/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/a;

    iget-object v2, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lme/paranoid/wifikill/service/WFKService;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02000a

    const-string v2, "WiFiKill"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/paranoid/wifikill/WiFiKill;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "WiFiKill"

    const-string v3, "is running"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, p0, Lme/paranoid/wifikill/service/WFKService;->e:I

    invoke-virtual {p0, v1, v0}, Lme/paranoid/wifikill/service/WFKService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic b(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V
    .locals 3

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/a;)V

    const/4 v0, 0x0

    iput v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    const/16 v0, 0x6b

    invoke-direct {p0, v0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/WFKService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lme/paranoid/wifikill/service/WFKService;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/paranoid/wifikill/service/WFKService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wfk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "begin"

    invoke-static {v1}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Binary file not present!"

    invoke-direct {p0, v1}, Lme/paranoid/wifikill/service/WFKService;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    const-string v1, "iptables -F; iptables -X && iptables -t nat -F; iptables -t nat -Xiptables -P FORWARD ACCEPT && iptables -I FORWARD -j ACCEPT && iptables -t nat -I POSTROUTING -j MASQUERADE &&echo 1 > /proc/sys/net/ipv4/ip_forward"

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    new-instance v1, Lme/paranoid/jniexec/JNIExec;

    new-instance v2, Lme/paranoid/wifikill/service/e;

    invoke-direct {v2, p0}, Lme/paranoid/wifikill/service/e;-><init>(Lme/paranoid/wifikill/service/WFKService;)V

    invoke-direct {v1, v2}, Lme/paranoid/jniexec/JNIExec;-><init>(Lme/paranoid/jniexec/b;)V

    iput-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Lme/paranoid/jniexec/JNIExec;

    new-instance v2, Lme/paranoid/wifikill/service/f;

    invoke-direct {v2, p0}, Lme/paranoid/wifikill/service/f;-><init>(Lme/paranoid/wifikill/service/WFKService;)V

    invoke-direct {v1, v2}, Lme/paranoid/jniexec/JNIExec;-><init>(Lme/paranoid/jniexec/b;)V

    iput-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    iget-object v1, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/service/WFKService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/paranoid/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/paranoid/jniexec/JNIExec;->c(Ljava/lang/String;)Z

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lme/paranoid/jniexec/JNIExec;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string v1, "PID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "Unable to start service, do you have root?"

    invoke-direct {p0, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "PID "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lme/paranoid/wifikill/service/WFKService;->j:I

    new-instance v0, Lme/paranoid/wifikill/service/i;

    invoke-direct {v0, p0}, Lme/paranoid/wifikill/service/i;-><init>(Lme/paranoid/wifikill/service/WFKService;)V

    iput-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->k:Lme/paranoid/wifikill/service/i;

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/i;->start()V

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V
    .locals 3

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iptables -I FORWARD -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -p tcp -j REJECT --reject-with tcp-reset\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iptables -I FORWARD -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -p udp -j REJECT --reject-with icmp-port-unreachable\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/paranoid/jniexec/JNIExec;->b(Ljava/lang/String;)Z

    iget v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    const/16 v0, 0x6b

    invoke-direct {p0, v0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->h:Lme/paranoid/jniexec/JNIExec;

    return-object v0
.end method

.method static synthetic d(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V
    .locals 2

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/a;)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Lme/paranoid/wifikill/service/a;->e:I

    const/16 v0, 0x6b

    invoke-direct {p0, v0, p1}, Lme/paranoid/wifikill/service/WFKService;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->i:Lme/paranoid/jniexec/JNIExec;

    return-object v0
.end method

.method static synthetic f(Lme/paranoid/wifikill/service/WFKService;)I
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/service/WFKService;->j:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->c:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/service/WFKService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->d:Landroid/app/NotificationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/service/WFKService;->stopForeground(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->d:Landroid/app/NotificationManager;

    iget v1, p0, Lme/paranoid/wifikill/service/WFKService;->e:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "WiFiKill service stopped"

    invoke-static {p0, v0}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lme/paranoid/wifikill/service/WFKService;->g:Landroid/app/Activity;

    const/4 v0, 0x1

    return v0
.end method
