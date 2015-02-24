.class public final Lcom/google/ads/a/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/a/x;


# instance fields
.field private b:Lcom/google/ads/g;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/ads/a/x;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/x;-><init>(Lcom/google/ads/g;Z)V

    sput-object v0, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/x;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/x;->b:Lcom/google/ads/g;

    iput-boolean p2, p0, Lcom/google/ads/a/x;->c:Z

    return-void
.end method

.method public static a(Lcom/google/ads/g;)Lcom/google/ads/a/x;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/ads/a/x;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/a/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/a/x;
    .locals 3

    new-instance v0, Lcom/google/ads/a/x;

    invoke-static {p0, p1}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/x;-><init>(Lcom/google/ads/g;Z)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/a/x;->c:Z

    return v0
.end method

.method public final b()Lcom/google/ads/g;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/x;->b:Lcom/google/ads/g;

    return-object v0
.end method

.method public final b(Lcom/google/ads/g;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/a/x;->c:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/ads/a/x;->b:Lcom/google/ads/g;

    :cond_0
    return-void
.end method
