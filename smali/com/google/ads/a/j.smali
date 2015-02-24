.class public final Lcom/google/ads/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/google/ads/a/t;

.field private h:Lcom/google/ads/a/r;

.field private i:Lcom/google/ads/d;

.field private j:Landroid/webkit/WebView;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/LinkedList;

.field private m:Ljava/lang/String;

.field private n:Lcom/google/ads/g;

.field private volatile o:Z

.field private p:Z

.field private q:Lcom/google/ads/e;

.field private r:Z

.field private s:I

.field private t:Ljava/lang/Thread;

.field private u:Z

.field private v:Lcom/google/ads/a/p;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/p;

    iput-object v0, p0, Lcom/google/ads/a/j;->v:Lcom/google/ads/a/p;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/a/r;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/p;

    iput-object v0, p0, Lcom/google/ads/a/j;->v:Lcom/google/ads/a/p;

    iput-object p1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    iput-object v2, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/j;->l:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/google/ads/a/j;->q:Lcom/google/ads/e;

    iput-boolean v3, p0, Lcom/google/ads/a/j;->r:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/a/j;->s:I

    iput-boolean v3, p0, Lcom/google/ads/a/j;->f:Z

    iput-boolean v3, p0, Lcom/google/ads/a/j;->p:Z

    iput-object v2, p0, Lcom/google/ads/a/j;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    invoke-virtual {p1}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/ads/a/c;

    invoke-virtual {p1}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/c;-><init>(Lcom/google/ads/ar;Lcom/google/ads/g;)V

    iput-object v0, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    sget-object v1, Lcom/google/ads/a/e;->b:Ljava/util/Map;

    invoke-static {p1, v1, v3, v3}, Lcom/google/ads/a/y;->a(Lcom/google/ads/a/r;Ljava/util/Map;ZZ)Lcom/google/ads/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    new-instance v0, Lcom/google/ads/a/t;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/a/t;-><init>(Lcom/google/ads/a/j;Lcom/google/ads/a/r;)V

    iput-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/t;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/t;

    const-string v0, "activity was null while trying to create an AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ads/a/j;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->k()Lcom/google/ads/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/w;->m()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-lez v1, :cond_0

    const-string v1, "prl"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/a/w;->n()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    const-string v1, "prnl"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/a/w;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "ppcl"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/a/w;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "pcl"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/a/w;->j()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-lez v1, :cond_4

    const-string v1, "pcc"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "preqs"

    invoke-static {}, Lcom/google/ads/a/w;->o()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oar"

    invoke-virtual {v0}, Lcom/google/ads/a/w;->p()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bas_on"

    invoke-virtual {v0}, Lcom/google/ads/a/w;->s()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bas_off"

    invoke-virtual {v0}, Lcom/google/ads/a/w;->v()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "aoi_timeout"

    const-string v5, "true"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Lcom/google/ads/a/w;->A()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "aoi_nofill"

    const-string v5, "true"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lcom/google/ads/a/w;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v5, "pit"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/google/ads/a/w;->E()J

    move-result-wide v5

    const-string v1, "ptime"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->a()V

    invoke-virtual {v0}, Lcom/google/ads/a/w;->i()V

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "format"

    const-string v1, "interstitial_mb"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "slotname"

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/ar;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    const-string v1, "afma-sdk-a-v6.2.1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "mv"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "msid"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".android."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isu"

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "net"

    if-nez v0, :cond_9

    const-string v0, "null"

    :cond_9
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "cap"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "u_audio"

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->g(Landroid/content/Context;)Lcom/google/ads/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/util/a;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "u_sd"

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u_h"

    invoke-static {v4, v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u_w"

    invoke-static {v4, v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->i:Lcom/google/ads/util/ab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->getLocationOnScreen([I)V

    aget v5, v1, v3

    aget v6, v1, v2

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    if-lez v8, :cond_15

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    if-lez v8, :cond_15

    if-gt v5, v7, :cond_15

    if-gt v6, v1, :cond_15

    move v1, v2

    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "y"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "width"

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "height"

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "visible"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_pos"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/g;

    if-eqz v0, :cond_12

    array-length v5, v0

    :goto_2
    if-ge v3, v5, :cond_11

    aget-object v6, v0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/ads/g;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/ads/g;->b()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/x;

    invoke-virtual {v0}, Lcom/google/ads/a/x;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/g;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "smart_w"

    const-string v5, "full"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v0}, Lcom/google/ads/g;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "smart_h"

    const-string v5, "auto"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v0}, Lcom/google/ads/g;->e()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "format"

    invoke-virtual {v0}, Lcom/google/ads/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "w"

    invoke-virtual {v0}, Lcom/google/ads/g;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "h"

    invoke-virtual {v0}, Lcom/google/ads/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_frame"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/ads/a/n;

    const-string v1, "NameNotFoundException"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/a/n;-><init>(Lcom/google/ads/a/j;Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v0, "sz"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v0, "phone"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "carrier"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const-string v1, "gnt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string v0, "session_id"

    invoke-static {}, Lcom/google/ads/y;->a()Lcom/google/ads/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/y;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    invoke-static {}, Lcom/google/ads/y;->a()Lcom/google/ads/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/y;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ap;

    iget-object v0, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/a/j;->c()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    const-string v1, "AFMA_buildAdURL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    const-string v1, "</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adRequestUrlHtml: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    const-string v0, "AFMA_getSdkConstants();"

    goto :goto_3

    :cond_15
    move v1, v3

    goto/16 :goto_1
.end method

.method private a(Lcom/google/ads/e;Z)V
    .locals 7

    iget-object v6, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    new-instance v0, Lcom/google/ads/a/m;

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    iget-object v2, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/t;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/a/m;-><init>(Lcom/google/ads/a/r;Landroid/webkit/WebView;Lcom/google/ads/a/t;Lcom/google/ads/e;Z)V

    invoke-virtual {v6, v0}, Lcom/google/ads/a/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/ads/a/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/a/j;)Lcom/google/ads/a/r;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    instance-of v0, v0, Lcom/google/ads/c/a;

    if-eqz v0, :cond_0

    const-string v0, "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>"

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/ads/a/j;)Lcom/google/ads/g;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    return-object v0
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/a/j;->r:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/a/j;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/a/p;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->v:Lcom/google/ads/a/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/google/ads/d;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/j;->o:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/a/j;->t:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/a/j;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->q:Lcom/google/ads/e;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/j;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/a/j;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/a/j;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/a/j;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/a/j;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/j;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 11

    const-wide/16 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/t;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "adRequestWebView was null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "activity was null while forming an ad request."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->m()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/google/ads/d;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    const-string v1, "extras"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/util/Map;

    const-string v2, "_adUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_3

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    :cond_3
    const-string v2, "_requestUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_4

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;

    :cond_4
    const-string v2, "_orientation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_5

    const-string v8, "p"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/ads/a/j;->s:I

    :cond_5
    :goto_1
    const-string v2, "_norefresh"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->c()V

    :cond_6
    iget-object v1, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v1, :cond_c

    :try_start_5
    invoke-direct {p0, v7, v0}, Lcom/google/ads/a/j;->a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/ads/a/n; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    :try_start_6
    iget-object v0, p0, Lcom/google/ads/a/j;->i:Lcom/google/ads/d;

    instance-of v0, v0, Lcom/google/ads/c/a;

    if-eqz v0, :cond_9

    const-string v0, "http://www.gstatic.com/safa/"

    :goto_2
    iget-object v2, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    new-instance v7, Lcom/google/ads/a/o;

    iget-object v8, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    invoke-direct {v7, p0, v8, v0, v1}, Lcom/google/ads/a/o;-><init>(Lcom/google/ads/a/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/google/ads/a/r;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_7

    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    :try_start_8
    iget-boolean v0, p0, Lcom/google/ads/a/j;->o:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v0, :cond_a

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_a
    const-string v8, "l"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/a/j;->s:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_b
    const-string v1, "An unknown error occurred in AdLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V

    :goto_3
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught internal exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_e
    const-string v0, "http://media.admob.com/"

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdLoader InterruptedException while getting the URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :cond_a
    :try_start_10
    iget-object v0, p0, Lcom/google/ads/a/j;->q:Lcom/google/ads/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/a/j;->q:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    :cond_b
    :try_start_12
    iget-object v0, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLoader timed out after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    :cond_c
    :try_start_14
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->k()Lcom/google/ads/a/w;

    move-result-object v0

    sget-object v1, Lcom/google/ads/a/l;->a:[I

    iget-object v2, p0, Lcom/google/ads/a/j;->v:Lcom/google/ads/a/p;

    invoke-virtual {v2}, Lcom/google/ads/a/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_4
    iget-boolean v0, p0, Lcom/google/ads/a/j;->a:Z

    if-nez v0, :cond_10

    const-string v0, "Not using loadUrl()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/t;

    iget-boolean v1, p0, Lcom/google/ads/a/j;->u:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/a/t;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/t;

    iget-object v1, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/t;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_d

    :try_start_15
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    :cond_d
    :try_start_16
    iget-boolean v0, p0, Lcom/google/ads/a/j;->o:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v0, :cond_e

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_18
    invoke-virtual {v0}, Lcom/google/ads/a/w;->r()V

    invoke-virtual {v0}, Lcom/google/ads/a/w;->u()V

    invoke-virtual {v0}, Lcom/google/ads/a/w;->x()V

    const-string v0, "Request scenario: Online server request."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0}, Lcom/google/ads/a/w;->t()V

    const-string v0, "Request scenario: Online using buffered ads."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0}, Lcom/google/ads/a/w;->w()V

    invoke-virtual {v0}, Lcom/google/ads/a/w;->q()V

    const-string v0, "Request scenario: Offline using buffered ads."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0}, Lcom/google/ads/a/w;->q()V

    const-string v0, "Request scenario: Offline with no buffered ads."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    const-string v0, "Network is unavailable.  Aborting ad request."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdLoader InterruptedException while getting the ad server\'s response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_0

    :cond_e
    :try_start_1c
    iget-object v0, p0, Lcom/google/ads/a/j;->q:Lcom/google/ads/e;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/ads/a/j;->q:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0

    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_0

    :cond_f
    :try_start_1e
    iget-object v0, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLoader timed out after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while waiting for the ad server\'s response."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0

    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_0

    :cond_10
    :try_start_20
    iget-object v0, p0, Lcom/google/ads/a/j;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using loadUrl.  adBaseUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/ads/a/j;->a:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/ads/a/j;->f:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/r;->b(Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0

    :try_start_21
    iget-object v0, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Got a mediation response with no content type. Aborting mediation."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_0

    :goto_5
    :try_start_22
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_0

    :cond_12
    :try_start_23
    iget-object v0, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got a mediation response with a content type: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Expected something starting with \'application/json\'. Aborting mediation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_24
    const-string v1, "AdLoader can\'t parse gWhirl server configuration."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0

    goto :goto_5

    :cond_13
    :try_start_25
    iget-object v0, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/z;->a(Ljava/lang/String;)Lcom/google/ads/z;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v2}, Lcom/google/ads/a/r;->g()Lcom/google/ads/ab;

    move-result-object v2

    if-eqz v0, :cond_14

    const-string v3, "no-store"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "no-cache"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "max-age\\s*=\\s*(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_0

    move-result v4

    if-eqz v4, :cond_15

    const/4 v0, 0x1

    :try_start_26
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/google/ads/ab;->a(Lcom/google/ads/z;I)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Caching gWhirl configuration for: %d seconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_5
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_0

    :cond_14
    :goto_6
    :try_start_27
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    new-instance v2, Lcom/google/ads/a/k;

    invoke-direct {v2, p0, v1}, Lcom/google/ads/a/k;-><init>(Lcom/google/ads/a/j;Lcom/google/ads/z;)V

    invoke-virtual {v0, v2}, Lcom/google/ads/a/r;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const-string v2, "Caught exception trying to parse cache control directive. Overflow?"

    invoke-static {v2, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized cacheControlDirective: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'. Not caching configuration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0

    goto :goto_6

    :cond_16
    :try_start_28
    iget-object v0, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    const-string v1, "text/javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected HTML but received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_0

    :try_start_29
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto/16 :goto_0

    :cond_18
    :try_start_2a
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    if-nez v0, :cond_19

    const-string v0, "Multiple supported ad sizes were specified, but the server did not respond with a size."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0

    :try_start_2b
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_0

    :cond_19
    :try_start_2c
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The ad server did not respond with a supported AdSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0

    :try_start_2d
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto/16 :goto_0

    :cond_1a
    :try_start_2e
    iget-object v0, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    if-eqz v0, :cond_1b

    const-string v0, "adSize was expected to be null in AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    :cond_1b
    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/a/r;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->i()Lcom/google/ads/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->j()Lcom/google/ads/a/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/a/y;->c()V

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    invoke-virtual {v1}, Lcom/google/ads/a/r;->k()Lcom/google/ads/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/a/w;->h()V

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    new-instance v2, Lcom/google/ads/a/o;

    iget-object v7, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v7, v8}, Lcom/google/ads/a/o;-><init>(Lcom/google/ads/a/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/a/r;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_1c

    :try_start_2f
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_2f} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_0

    :cond_1c
    :try_start_30
    iget-boolean v0, p0, Lcom/google/ads/a/j;->r:Z

    if-eqz v0, :cond_1d

    iget-object v8, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    new-instance v0, Lcom/google/ads/a/q;

    iget-object v1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/a/r;

    iget-object v2, p0, Lcom/google/ads/a/j;->j:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/ads/a/j;->l:Ljava/util/LinkedList;

    iget v4, p0, Lcom/google/ads/a/j;->s:I

    iget-boolean v5, p0, Lcom/google/ads/a/j;->p:Z

    iget-object v6, p0, Lcom/google/ads/a/j;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/ads/a/j;->n:Lcom/google/ads/g;

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/a/q;-><init>(Lcom/google/ads/a/r;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/g;)V

    invoke-virtual {v8, v0}, Lcom/google/ads/a/r;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdLoader InterruptedException while loading the HTML: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_0

    :try_start_31
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    goto/16 :goto_0

    :cond_1d
    :try_start_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLoader timed out after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while loading the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
