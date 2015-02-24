.class final Lcom/google/ads/util/k;
.super Ljava/lang/Object;


# static fields
.field static final d:Lcom/google/ads/util/k;

.field static final e:Lcom/google/ads/util/k;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/util/k;

    invoke-direct {v0}, Lcom/google/ads/util/k;-><init>()V

    sput-object v0, Lcom/google/ads/util/k;->d:Lcom/google/ads/util/k;

    new-instance v0, Lcom/google/ads/util/k;

    const-string v1, "unknown"

    const-string v2, "generic"

    const-string v3, "generic"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/util/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/util/k;->e:Lcom/google/ads/util/k;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/util/k;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/util/k;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/util/k;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/util/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/util/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/util/k;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/ads/util/k;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/ads/util/k;

    iget-object v1, p0, Lcom/google/ads/util/k;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/util/k;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/util/k;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/util/k;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/util/k;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/util/k;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/util/k;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/util/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/util/k;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/util/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/util/k;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/util/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
