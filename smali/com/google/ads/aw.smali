.class public final Lcom/google/ads/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/a/r;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1

    instance-of v0, p3, Lcom/google/ads/a/c;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/ads/a/c;

    invoke-virtual {p3}, Lcom/google/ads/a/c;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
