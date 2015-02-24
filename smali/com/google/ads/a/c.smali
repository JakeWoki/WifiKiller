.class public final Lcom/google/ads/a/c;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/google/ads/g;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/ar;Lcom/google/ads/g;)V
    .locals 4

    const/16 v3, 0xb

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    iput-boolean v2, p0, Lcom/google/ads/a/c;->c:Z

    iput-boolean v2, p0, Lcom/google/ads/a/c;->d:Z

    iput-boolean v2, p0, Lcom/google/ads/a/c;->e:Z

    invoke-virtual {p0, v2}, Lcom/google/ads/a/c;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/google/ads/util/AdUtil;->a(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/google/ads/a/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v1, Lcom/google/ads/a/d;

    invoke-direct {v1, p0}, Lcom/google/ads/a/d;-><init>(Lcom/google/ads/a/c;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/a/c;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v1, v3, :cond_0

    invoke-static {v0, p1}, Lcom/google/ads/util/n;->a(Landroid/webkit/WebSettings;Lcom/google/ads/ar;)V

    :cond_0
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setScrollBarStyle(I)V

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/google/ads/util/y;

    invoke-direct {v0, p1}, Lcom/google/ads/util/y;-><init>(Lcom/google/ads/ar;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v0, v3, :cond_1

    new-instance v0, Lcom/google/ads/util/p;

    invoke-direct {v0, p1}, Lcom/google/ads/util/p;-><init>(Lcom/google/ads/ar;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/a/c;->d()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/AdActivity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    invoke-virtual {p0}, Lcom/google/ads/a/c;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/ads/a/c;->e:Z

    iget-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/ads/AdActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput-boolean v2, p0, Lcom/google/ads/a/c;->d:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/a/c;->c:Z

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/ads/a/c;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput-boolean v2, p0, Lcom/google/ads/a/c;->d:Z

    return-void
.end method

.method public final d()Lcom/google/ads/AdActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "An error occurred while destroying an AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/a/c;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/a/c;->d:Z

    return v0
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "An error occurred while loading data in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "An error occurred while loading a URL in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 10

    const v0, 0x7fffffff

    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/a/c;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/a/c;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/a/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    invoke-virtual {v6}, Lcom/google/ads/g;->a()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iget-object v7, p0, Lcom/google/ads/a/c;->b:Lcom/google/ads/g;

    invoke-virtual {v7}, Lcom/google/ads/g;->b()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    if-eq v2, v8, :cond_3

    if-ne v2, v9, :cond_8

    :cond_3
    move v2, v3

    :goto_1
    if-eq v4, v8, :cond_4

    if-ne v4, v9, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    int-to-float v4, v6

    const/high16 v8, 0x40c0

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_6

    if-le v7, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not enough space to show ad! Wants: <"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, Has: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/a/c;->setVisibility(I)V

    invoke-virtual {p0, v3, v1}, Lcom/google/ads/a/c;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v6, v7}, Lcom/google/ads/a/c;->setMeasuredDimension(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move v2, v0

    goto :goto_1
.end method

.method public final stopLoading()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "An error occurred while stopping loading in AdWebView:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
