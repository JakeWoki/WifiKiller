.class public Lcom/google/ads/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;


# instance fields
.field private e:Lcom/google/ads/f;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private j:Landroid/location/Location;

.field private k:Z

.field private l:Z

.field private m:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->b:Ljava/text/SimpleDateFormat;

    sput-object v2, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v0, "com.google.analytics.tracking.android.AdMobInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getJoinIds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    sput-object v3, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "No Google Analytics: Library Not Found."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/d;->a:Ljava/lang/String;

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    const-string v0, "No Google Analytics: Library Incompatible."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "No Google Analytics: Error Loading Library"

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/d;->e:Lcom/google/ads/f;

    iput-object v1, p0, Lcom/google/ads/d;->f:Ljava/util/Date;

    iput-object v1, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/ads/d;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/d;->i:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/ads/d;->j:Landroid/location/Location;

    iput-boolean v2, p0, Lcom/google/ads/d;->k:Z

    iput-boolean v2, p0, Lcom/google/ads/d;->l:Z

    iput-object v1, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/b/h;)Lcom/google/ads/d;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/d;->i:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/google/ads/d;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/Map;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    const-string v0, "kw"

    iget-object v4, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/f;

    if-eqz v0, :cond_1

    const-string v0, "cust_gender"

    iget-object v4, p0, Lcom/google/ads/d;->e:Lcom/google/ads/f;

    invoke-virtual {v4}, Lcom/google/ads/f;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/d;->f:Ljava/util/Date;

    if-eqz v0, :cond_2

    const-string v0, "cust_age"

    sget-object v4, Lcom/google/ads/d;->b:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/google/ads/d;->f:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/d;->j:Landroid/location/Location;

    if-eqz v0, :cond_3

    const-string v0, "uule"

    iget-object v4, p0, Lcom/google/ads/d;->j:Landroid/location/Location;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, Lcom/google/ads/d;->k:Z

    if-eqz v0, :cond_4

    const-string v0, "testing"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "adtest"

    const-string v4, "on"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    const-class v0, Lcom/google/ads/b/a/a;

    invoke-virtual {p0, v0}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->c()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v2, "pto"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-class v1, Lcom/google/ads/doubleclick/a;

    invoke-virtual {p0, v1}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/doubleclick/a;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/a;->d()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const-string v0, "extras"

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ppid"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/google/ads/d;->h:Ljava/util/Map;

    if-eqz v0, :cond_8

    const-string v0, "mediation_extras"

    iget-object v1, p0, Lcom/google/ads/d;->h:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :try_start_0
    sget-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "analytics_join_id"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    return-object v3

    :cond_a
    iget-boolean v0, p0, Lcom/google/ads/d;->l:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "AdRequest.TEST_EMULATOR"

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/ads/d;->l:Z

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    const-string v4, "cipa"

    invoke-static {p1}, Lcom/google/ads/t;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->d()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "extras"

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Internal Analytics Error:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final b(Ljava/util/Set;)Lcom/google/ads/d;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
