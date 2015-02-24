.class final Lcom/google/ads/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/z;

.field final synthetic b:Lcom/google/ads/d;

.field final synthetic c:Lcom/google/ads/ac;


# direct methods
.method constructor <init>(Lcom/google/ads/ac;Lcom/google/ads/z;Lcom/google/ads/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/ad;->c:Lcom/google/ads/ac;

    iput-object p2, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/z;

    iput-object p3, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/ad;->c:Lcom/google/ads/ac;

    iget-object v1, p0, Lcom/google/ads/ad;->a:Lcom/google/ads/z;

    iget-object v2, p0, Lcom/google/ads/ad;->b:Lcom/google/ads/d;

    invoke-static {v0, v1, v2}, Lcom/google/ads/ac;->a(Lcom/google/ads/ac;Lcom/google/ads/z;Lcom/google/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/ad;->c:Lcom/google/ads/ac;

    invoke-static {v0}, Lcom/google/ads/ac;->a(Lcom/google/ads/ac;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ad;->c:Lcom/google/ads/ac;

    invoke-static {v0}, Lcom/google/ads/ac;->b(Lcom/google/ads/ac;)Ljava/lang/Thread;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
