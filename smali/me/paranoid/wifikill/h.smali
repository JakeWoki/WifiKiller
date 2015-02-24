.class final Lme/paranoid/wifikill/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/g;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/g;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/h;->a:Lme/paranoid/wifikill/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lme/paranoid/wifikill/h;->a:Lme/paranoid/wifikill/g;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lme/paranoid/wifikill/g;->a(Lme/paranoid/wifikill/g;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/h;->a:Lme/paranoid/wifikill/g;

    invoke-static {v1}, Lme/paranoid/wifikill/g;->a(Lme/paranoid/wifikill/g;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {}, Lme/paranoid/wifikill/WiFiKill;->d()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lme/paranoid/wifikill/h;->a:Lme/paranoid/wifikill/g;

    invoke-static {v1}, Lme/paranoid/wifikill/g;->b(Lme/paranoid/wifikill/g;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Service crashed... darn!"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lme/paranoid/wifikill/h;->a:Lme/paranoid/wifikill/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/paranoid/wifikill/g;->a(Lme/paranoid/wifikill/g;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
