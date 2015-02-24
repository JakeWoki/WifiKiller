.class public final Lcom/google/ads/ar;
.super Lcom/google/ads/util/z;


# instance fields
.field public final a:Lcom/google/ads/util/ab;

.field public final b:Lcom/google/ads/util/ac;

.field public final c:Lcom/google/ads/util/ac;

.field public final d:Lcom/google/ads/util/ab;

.field public final e:Lcom/google/ads/util/ad;

.field public final f:Lcom/google/ads/util/ab;

.field public final g:Lcom/google/ads/util/ab;

.field public final h:Lcom/google/ads/util/ab;

.field public final i:Lcom/google/ads/util/ab;

.field public final j:Lcom/google/ads/util/ab;

.field public final k:Lcom/google/ads/util/ab;

.field public final l:Lcom/google/ads/util/ac;

.field public final m:Lcom/google/ads/util/ac;

.field public final n:Lcom/google/ads/util/ac;


# direct methods
.method public constructor <init>(Lcom/google/ads/ap;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/a/x;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/ads/util/z;-><init>()V

    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "currentAd"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->b:Lcom/google/ads/util/ac;

    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "nextAd"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->c:Lcom/google/ads/util/ac;

    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "adListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "appEventListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/ar;->n:Lcom/google/ads/util/ac;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "appState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->a:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "ad"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adView"

    invoke-direct {v0, p0, v1, p3}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->i:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adType"

    invoke-direct {v0, p0, v1, p9}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->k:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adUnitId"

    invoke-direct {v0, p0, v1, p5}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->d:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ad;

    const-string v1, "activity"

    invoke-direct {v0, p0, v1, p6}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->e:Lcom/google/ads/util/ad;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "interstitialAd"

    invoke-direct {v0, p0, v1, p4}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->j:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "bannerContainer"

    invoke-direct {v0, p0, v1, p8}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->g:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "applicationContext"

    invoke-direct {v0, p0, v1, p7}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "adSizes"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ar;->l:Lcom/google/ads/util/ac;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/ar;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/ar;->k:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/x;

    invoke-virtual {v0}, Lcom/google/ads/a/x;->a()Z

    move-result v0

    return v0
.end method
