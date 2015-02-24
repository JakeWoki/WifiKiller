.class final Lcom/google/ads/a/h;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/invalidRequest"

    new-instance v1, Lcom/google/ads/ba;

    invoke-direct {v1}, Lcom/google/ads/ba;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadAdURL"

    new-instance v1, Lcom/google/ads/bb;

    invoke-direct {v1}, Lcom/google/ads/bb;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadSdkConstants"

    new-instance v1, Lcom/google/ads/bc;

    invoke-direct {v1}, Lcom/google/ads/bc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/a/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
