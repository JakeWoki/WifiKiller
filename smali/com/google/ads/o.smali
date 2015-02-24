.class public final Lcom/google/ads/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "content://com.google.plus.platform/ads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/ads/o;->a:Landroid/net/Uri;

    const-string v0, "content://com.google.plus.platform/token"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/ads/o;->b:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "has_plus1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ads/o;->c:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "drt"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/ads/o;->d:[Ljava/lang/String;

    return-void
.end method
