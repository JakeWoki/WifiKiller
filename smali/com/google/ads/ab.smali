.class public final Lcom/google/ads/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/ads/z;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/z;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/ab;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/z;I)V
    .locals 4

    iput-object p1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/z;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/ab;->b:J

    return-void
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/z;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/ab;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/ads/z;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/z;

    return-object v0
.end method
