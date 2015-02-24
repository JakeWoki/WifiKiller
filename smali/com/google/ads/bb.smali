.class public final Lcom/google/ads/bb;
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
    .locals 8

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "afma_notify_dt"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "drt_include"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v3, "request_scenario"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "1"

    const-string v6, "use_webview_loadurl"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lcom/google/ads/a/p;->d:Lcom/google/ads/a/p;

    iget-object v6, v6, Lcom/google/ads/a/p;->e:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v3, Lcom/google/ads/a/p;->d:Lcom/google/ads/a/p;

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received ad url: <url: \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" type: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\" afmaNotifyDt: \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" useWebViewLoadUrl: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/a/r;->h()Lcom/google/ads/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/google/ads/a/j;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/ads/a/j;->a(Lcom/google/ads/a/p;)V

    invoke-virtual {v1, v5}, Lcom/google/ads/a/j;->c(Z)V

    invoke-virtual {v1, v0}, Lcom/google/ads/a/j;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v6, Lcom/google/ads/a/p;->c:Lcom/google/ads/a/p;

    iget-object v6, v6, Lcom/google/ads/a/p;->e:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v3, Lcom/google/ads/a/p;->c:Lcom/google/ads/a/p;

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/p;

    iget-object v6, v6, Lcom/google/ads/a/p;->e:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/p;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/p;

    goto :goto_0
.end method
