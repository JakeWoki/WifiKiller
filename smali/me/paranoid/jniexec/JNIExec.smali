.class public Lme/paranoid/jniexec/JNIExec;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field private c:[I

.field private d:Ljava/io/FileInputStream;

.field private e:Ljava/io/FileOutputStream;

.field private f:Ljava/io/BufferedReader;

.field private g:Lme/paranoid/jniexec/b;

.field private h:Ljava/lang/Runnable;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JNIExec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->d:Ljava/io/FileInputStream;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->e:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->f:Ljava/io/BufferedReader;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->g:Lme/paranoid/jniexec/b;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->h:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/jniexec/JNIExec;->i:Z

    const/16 v0, 0x200

    iput v0, p0, Lme/paranoid/jniexec/JNIExec;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    invoke-direct {p0}, Lme/paranoid/jniexec/JNIExec;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lme/paranoid/jniexec/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->d:Ljava/io/FileInputStream;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->e:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->f:Ljava/io/BufferedReader;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->g:Lme/paranoid/jniexec/b;

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->h:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/jniexec/JNIExec;->i:Z

    const/16 v0, 0x200

    iput v0, p0, Lme/paranoid/jniexec/JNIExec;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    invoke-direct {p0}, Lme/paranoid/jniexec/JNIExec;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lme/paranoid/jniexec/JNIExec;->g:Lme/paranoid/jniexec/b;

    if-eqz p1, :cond_0

    new-instance v0, Lme/paranoid/jniexec/a;

    invoke-direct {v0, p0}, Lme/paranoid/jniexec/a;-><init>(Lme/paranoid/jniexec/JNIExec;)V

    iput-object v0, p0, Lme/paranoid/jniexec/JNIExec;->h:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x2

    const-string v1, "JNIExec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->exec([C)[I

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v2}, Lme/paranoid/jniexec/JNIExec;->a([I)Ljava/io/FileOutputStream;

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; exit $?\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    aget v0, v2, v0

    invoke-static {v0, v5}, Lme/paranoid/jniexec/JNIExec;->waitFor(II)I

    move-result v0

    invoke-static {v2}, Lme/paranoid/jniexec/JNIExec;->b([I)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v2}, Lme/paranoid/jniexec/JNIExec;->b([I)V

    goto :goto_0
.end method

.method private static a([I)Ljava/io/FileOutputStream;
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->setFD(I)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method static synthetic a(Lme/paranoid/jniexec/JNIExec;)V
    .locals 3

    const-string v0, "JNIExec"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "polling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget v0, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/paranoid/jniexec/JNIExec;->waitFor(II)I

    move-result v0

    iput v0, p0, Lme/paranoid/jniexec/JNIExec;->a:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    const-string v0, "JNIExec"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATUS = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lme/paranoid/jniexec/JNIExec;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lme/paranoid/jniexec/JNIExec;->g:Lme/paranoid/jniexec/b;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lme/paranoid/jniexec/JNIExec;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/paranoid/jniexec/JNIExec;->g:Lme/paranoid/jniexec/b;

    iget v1, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    invoke-interface {v0}, Lme/paranoid/jniexec/b;->a()V

    :cond_1
    return-void
.end method

.method private static b([I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    aget v0, p0, v0

    invoke-static {v0, v1}, Lme/paranoid/jniexec/JNIExec;->waitFor(II)I

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->close_fd(I)V

    aget v0, p0, v1

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->close_fd(I)V

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "su"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->exec([C)[I

    move-result-object v1

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    new-instance v2, Ljava/io/FileInputStream;

    aget v1, v1, v0

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->setFD(I)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lme/paranoid/jniexec/JNIExec;->d:Ljava/io/FileInputStream;

    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    invoke-static {v1}, Lme/paranoid/jniexec/JNIExec;->a([I)Ljava/io/FileOutputStream;

    move-result-object v1

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->e:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lme/paranoid/jniexec/JNIExec;->d:Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lme/paranoid/jniexec/JNIExec;->f:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public static native close_fd(I)V
.end method

.method public static native exec([C)[I
.end method

.method public static native setFD(I)Ljava/io/FileDescriptor;
.end method

.method public static native waitFor(II)I
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lme/paranoid/jniexec/JNIExec;->f:Ljava/io/BufferedReader;

    if-nez v3, :cond_1

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-lez p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lme/paranoid/jniexec/JNIExec;->f:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->f:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/paranoid/jniexec/JNIExec;->i:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->e:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lme/paranoid/jniexec/JNIExec;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "JNIExec"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jexec: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lme/paranoid/jniexec/JNIExec;->c:[I

    if-nez v2, :cond_1

    const-string v1, "JNIExec"

    const-string v2, "jexec: not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lme/paranoid/jniexec/JNIExec;->e:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; exit $?\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lme/paranoid/jniexec/JNIExec;->h:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lme/paranoid/jniexec/JNIExec;->h:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_2
    iget v2, p0, Lme/paranoid/jniexec/JNIExec;->b:I

    invoke-static {v2, v1}, Lme/paranoid/jniexec/JNIExec;->waitFor(II)I

    move-result v2

    const/16 v3, 0x200

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
