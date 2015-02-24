.class public Lcom/google/ads/a/y;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final c:Lcom/google/ads/a/e;


# instance fields
.field protected a:Lcom/google/ads/a/r;

.field protected b:Z

.field private final d:Ljava/util/Map;

.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/a/e;->a:Lcom/google/ads/util/m;

    invoke-interface {v0}, Lcom/google/ads/util/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/e;

    sput-object v0, Lcom/google/ads/a/y;->c:Lcom/google/ads/a/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/a/r;Ljava/util/Map;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/y;->a:Lcom/google/ads/a/r;

    iput-object p2, p0, Lcom/google/ads/a/y;->d:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/ads/a/y;->e:Z

    iput-boolean p4, p0, Lcom/google/ads/a/y;->f:Z

    iput-boolean v0, p0, Lcom/google/ads/a/y;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/a/y;->g:Z

    iput-boolean v0, p0, Lcom/google/ads/a/y;->h:Z

    return-void
.end method

.method public static a(Lcom/google/ads/a/r;Ljava/util/Map;ZZ)Lcom/google/ads/a/y;
    .locals 2

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/ads/util/w;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/w;-><init>(Lcom/google/ads/a/r;Ljava/util/Map;ZZ)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/a/y;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/a/y;-><init>(Lcom/google/ads/a/r;Ljava/util/Map;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/y;->b:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/y;->f:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/y;->g:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/y;->h:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/ads/a/y;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/y;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->h()Lcom/google/ads/a/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/a/j;->a()V

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/a/y;->g:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/a/y;->h:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/a/y;->c:Lcom/google/ads/a/e;

    invoke-static {p1}, Lcom/google/ads/a/e;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lcom/google/ads/a/y;->h:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/ads/a/y;->c:Lcom/google/ads/a/e;

    invoke-static {v1}, Lcom/google/ads/a/e;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/ads/a/y;->c:Lcom/google/ads/a/e;

    iget-object v2, p0, Lcom/google/ads/a/y;->a:Lcom/google/ads/a/r;

    iget-object v3, p0, Lcom/google/ads/a/y;->d:Ljava/util/Map;

    invoke-static {v2, v3, v1, p1}, Lcom/google/ads/a/e;->a(Lcom/google/ads/a/r;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/google/ads/a/y;->f:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/a/y;->a:Lcom/google/ads/a/r;

    new-instance v3, Lcom/google/ads/a/s;

    const-string v4, "intent"

    invoke-direct {v3, v4, v1}, Lcom/google/ads/a/s;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/a/r;Lcom/google/ads/a/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "An unknown error occurred in shouldOverrideUrlLoading."

    invoke-static {v2, v1}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/google/ads/a/y;->e:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "u"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/a/y;->a:Lcom/google/ads/a/r;

    new-instance v3, Lcom/google/ads/a/s;

    const-string v4, "intent"

    invoke-direct {v3, v4, v2}, Lcom/google/ads/a/s;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v3}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/a/r;Lcom/google/ads/a/s;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
