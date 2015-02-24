.class public final Lcom/google/ads/aj;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/ads/a/x;

.field private final b:Lcom/google/ads/ag;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/ai;

.field private final f:Lcom/google/ads/ac;

.field private g:Lcom/google/ads/b/b;

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Landroid/os/Handler;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/ads/d;

.field private final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/ads/ac;Lcom/google/ads/a/x;Lcom/google/ads/ag;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Z)V

    iput-object p1, p0, Lcom/google/ads/aj;->f:Lcom/google/ads/ac;

    iput-object p2, p0, Lcom/google/ads/aj;->a:Lcom/google/ads/a/x;

    iput-object p3, p0, Lcom/google/ads/aj;->b:Lcom/google/ads/ag;

    iput-object p4, p0, Lcom/google/ads/aj;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/ads/aj;->m:Lcom/google/ads/d;

    iput-object p6, p0, Lcom/google/ads/aj;->n:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/ads/aj;->c:Z

    iput-boolean v1, p0, Lcom/google/ads/aj;->d:Z

    iput-object v2, p0, Lcom/google/ads/aj;->e:Lcom/google/ads/ai;

    iput-object v2, p0, Lcom/google/ads/aj;->g:Lcom/google/ads/b/b;

    iput-boolean v1, p0, Lcom/google/ads/aj;->h:Z

    iput-boolean v1, p0, Lcom/google/ads/aj;->i:Z

    iput-object v2, p0, Lcom/google/ads/aj;->j:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/aj;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/aj;)Lcom/google/ads/b/b;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/aj;->g:Lcom/google/ads/b/b;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/aj;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/aj;->k:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/ak;

    invoke-direct {v1, p0}, Lcom/google/ads/ak;-><init>(Lcom/google/ads/aj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/app/Activity;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/aj;->h:Z

    const-string v1, "startLoadAdTask has already been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->b(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/aj;->h:Z

    iget-object v6, p0, Lcom/google/ads/aj;->k:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/al;

    iget-object v3, p0, Lcom/google/ads/aj;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/aj;->m:Lcom/google/ads/d;

    iget-object v5, p0, Lcom/google/ads/aj;->n:Ljava/util/HashMap;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/al;-><init>(Lcom/google/ads/aj;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/ads/ai;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/aj;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/aj;->c:Z

    iput-object p1, p0, Lcom/google/ads/aj;->e:Lcom/google/ads/ai;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/ads/b/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/aj;->g:Lcom/google/ads/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/aj;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/aj;->c:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/aj;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/google/ads/ai;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/aj;->e:Lcom/google/ads/ai;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/ai;->d:Lcom/google/ads/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/aj;->e:Lcom/google/ads/ai;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/view/View;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/aj;->c:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/aj;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/aj;->g:Lcom/google/ads/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/aj;->g:Lcom/google/ads/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "\"adapter was not created.\""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/aj;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/aj;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
