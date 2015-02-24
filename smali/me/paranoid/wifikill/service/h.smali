.class final Lme/paranoid/wifikill/service/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/service/g;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/g;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/h;->a:Lme/paranoid/wifikill/service/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lme/paranoid/wifikill/service/h;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/h;->a:Lme/paranoid/wifikill/service/g;

    iget-object v0, v0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/service/h;->a:Lme/paranoid/wifikill/service/g;

    iget-object v0, v0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/jniexec/JNIExec;->a()V

    :cond_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/h;->a:Lme/paranoid/wifikill/service/g;

    iget-object v0, v0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->e(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/paranoid/wifikill/service/h;->a:Lme/paranoid/wifikill/service/g;

    iget-object v0, v0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->e(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/jniexec/JNIExec;->a()V

    :cond_1
    iget-object v0, p0, Lme/paranoid/wifikill/service/h;->a:Lme/paranoid/wifikill/service/g;

    iget-object v0, v0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
