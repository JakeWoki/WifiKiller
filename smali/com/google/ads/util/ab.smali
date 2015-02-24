.class public final Lcom/google/ads/util/ab;
.super Lcom/google/ads/util/aa;


# instance fields
.field final synthetic d:Lcom/google/ads/util/z;


# direct methods
.method public constructor <init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/util/ab;->d:Lcom/google/ads/util/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;B)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/util/ab;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/ads/util/aa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (!)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
