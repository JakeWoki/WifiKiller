.class final Lme/paranoid/wifikill/service/i;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field final synthetic b:Lme/paranoid/wifikill/service/WFKService;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/WFKService;)V
    .locals 1

    iput-object p1, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/service/i;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v1, -0x1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lme/paranoid/wifikill/service/i;->a:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lme/paranoid/jniexec/JNIExec;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lme/paranoid/wifikill/service/i;->a:Z

    if-eqz v2, :cond_5

    const-string v0, "User request for stop!"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wfk_pid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v2}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "kill -INT "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v2}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    iget v0, v0, Lme/paranoid/jniexec/JNIExec;->a:I

    const/16 v2, 0x200

    if-ne v0, v2, :cond_3

    const-wide/16 v2, 0x2710

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v0

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kill -9 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v1}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void

    :cond_5
    if-nez v0, :cond_6

    :try_start_2
    const-string v0, "Crap unable to read stuffs"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const-string v2, "Service stopped unexpectedly"

    invoke-static {v0, v2}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lme/paranoid/wifikill/service/i;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v2, "ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const-string v2, "***"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "SEARCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x2

    :try_start_4
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    :goto_4
    :try_start_5
    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Lme/paranoid/wifikill/service/a;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    iget-object v5, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lme/paranoid/wifikill/service/WFKService;->c(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-virtual {v6}, Lme/paranoid/wifikill/service/WFKService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-static {v6, v2}, Lme/paranoid/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v5, v2}, Lme/paranoid/wifikill/service/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v3, Lme/paranoid/wifikill/service/j;

    invoke-direct {v3, p0, v0}, Lme/paranoid/wifikill/service/j;-><init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;)V

    invoke-static {v2, v3}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x6a

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v0, v3}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No such device: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v4, Lme/paranoid/wifikill/service/k;

    invoke-direct {v4, p0, v0, v2}, Lme/paranoid/wifikill/service/k;-><init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x6b

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->a()V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_HOST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v0, v3}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No such device: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v4, Lme/paranoid/wifikill/service/l;

    invoke-direct {v4, p0, v0, v2}, Lme/paranoid/wifikill/service/l;-><init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x6b

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->a()V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_NBNAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v3, Lme/paranoid/wifikill/service/m;

    invoke-direct {v3, p0, v2}, Lme/paranoid/wifikill/service/m;-><init>(Lme/paranoid/wifikill/service/i;[Ljava/lang/String;)V

    invoke-static {v0, v3}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method
