.class public final Lcom/google/ads/util/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/ads/util/f;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/util/d;->a:Lcom/google/ads/util/f;

    const/4 v0, 0x5

    sput v0, Lcom/google/ads/util/d;->b:I

    return-void
.end method

.method private static a()V
    .locals 1

    sget-object v0, Lcom/google/ads/util/d;->a:Lcom/google/ads/util/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/util/d;->a:Lcom/google/ads/util/f;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->b:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->b:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/google/ads/util/d;->b:I

    if-lt p1, v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->e:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->e:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->c:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->c:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->a:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->d:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/ads/util/e;->d:Lcom/google/ads/util/e;

    invoke-static {}, Lcom/google/ads/util/d;->a()V

    return-void
.end method
