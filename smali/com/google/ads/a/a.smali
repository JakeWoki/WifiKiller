.class public final Lcom/google/ads/a/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final b:Lcom/google/ads/a/e;


# instance fields
.field public a:Landroid/widget/MediaController;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Lcom/google/ads/a/c;

.field private e:J

.field private f:Landroid/widget/VideoView;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/a/e;->a:Lcom/google/ads/util/m;

    invoke-interface {v0}, Lcom/google/ads/util/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/e;

    sput-object v0, Lcom/google/ads/a/a;->b:Lcom/google/ads/a/e;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/a/c;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/a/a;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/ads/a/a;->d:Lcom/google/ads/a/c;

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/google/ads/a/a;->a:Landroid/widget/MediaController;

    iput-object v3, p0, Lcom/google/ads/a/a;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/a/a;->e:J

    new-instance v0, Lcom/google/ads/a/b;

    invoke-direct {v0, p0}, Lcom/google/ads/a/b;-><init>(Lcom/google/ads/a/a;)V

    invoke-virtual {v0}, Lcom/google/ads/a/b;->a()V

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/a/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/ads/a/a;->b:Lcom/google/ads/a/e;

    iget-object v0, p0, Lcom/google/ads/a/a;->d:Lcom/google/ads/a/c;

    const-string v1, "onVideoEvent"

    const-string v2, "{\'event\': \'error\', \'what\': \'no_src\'}"

    invoke-static {v0, v1, v2}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "adActivity was null while trying to enable controls on a video."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/a/a;->a:Landroid/widget/MediaController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/a/a;->a:Landroid/widget/MediaController;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/a/a;->a:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/a/a;->a:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/a/a;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_3
    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method final e()V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/a/a;->e:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    long-to-float v2, v0

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    sget-object v3, Lcom/google/ads/a/a;->b:Lcom/google/ads/a/e;

    iget-object v3, p0, Lcom/google/ads/a/a;->d:Lcom/google/ads/a/c;

    const-string v4, "onVideoEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\'event\': \'timeupdate\', \'time\': "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/ads/a/a;->e:J

    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    sget-object v0, Lcom/google/ads/a/a;->b:Lcom/google/ads/a/e;

    iget-object v0, p0, Lcom/google/ads/a/a;->d:Lcom/google/ads/a/c;

    const-string v1, "onVideoEvent"

    const-string v2, "{\'event\': \'ended\'}"

    invoke-static {v0, v1, v2}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video threw error! <what:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/a/a;->b:Lcom/google/ads/a/e;

    iget-object v0, p0, Lcom/google/ads/a/a;->d:Lcom/google/ads/a/c;

    const-string v1, "onVideoEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\'event\': \'error\', \'what\': \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'extra\': \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sget-object v1, Lcom/google/ads/a/a;->b:Lcom/google/ads/a/e;

    iget-object v1, p0, Lcom/google/ads/a/a;->d:Lcom/google/ads/a/c;

    const-string v2, "onVideoEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\'event\': \'canplaythrough\', \'duration\': \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
