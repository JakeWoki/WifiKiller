.class final Lcom/google/ads/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/z;

.field final synthetic b:Lcom/google/ads/a/j;


# direct methods
.method constructor <init>(Lcom/google/ads/a/j;Lcom/google/ads/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    iput-object p2, p0, Lcom/google/ads/a/k;->a:Lcom/google/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->a(Lcom/google/ads/a/j;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->a(Lcom/google/ads/a/j;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->a(Lcom/google/ads/a/j;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->c(Lcom/google/ads/a/j;)Lcom/google/ads/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v1}, Lcom/google/ads/a/j;->b(Lcom/google/ads/a/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->d(Lcom/google/ads/a/j;)Lcom/google/ads/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->c(Lcom/google/ads/a/j;)Lcom/google/ads/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/x;

    iget-object v1, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v1}, Lcom/google/ads/a/j;->d(Lcom/google/ads/a/j;)Lcom/google/ads/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/x;->b(Lcom/google/ads/g;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/a/k;->b:Lcom/google/ads/a/j;

    invoke-static {v0}, Lcom/google/ads/a/j;->c(Lcom/google/ads/a/j;)Lcom/google/ads/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/k;->a:Lcom/google/ads/z;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/r;->a(Lcom/google/ads/z;)V

    return-void
.end method
