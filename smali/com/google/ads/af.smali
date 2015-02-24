.class final Lcom/google/ads/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/aj;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/ads/ag;

.field final synthetic d:Lcom/google/ads/ac;


# direct methods
.method constructor <init>(Lcom/google/ads/ac;Lcom/google/ads/aj;Landroid/view/View;Lcom/google/ads/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/af;->d:Lcom/google/ads/ac;

    iput-object p2, p0, Lcom/google/ads/af;->a:Lcom/google/ads/aj;

    iput-object p3, p0, Lcom/google/ads/af;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/af;->d:Lcom/google/ads/ac;

    iget-object v1, p0, Lcom/google/ads/af;->a:Lcom/google/ads/aj;

    invoke-static {v0, v1}, Lcom/google/ads/ac;->a(Lcom/google/ads/ac;Lcom/google/ads/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/af;->d:Lcom/google/ads/ac;

    invoke-static {v0}, Lcom/google/ads/ac;->c(Lcom/google/ads/ac;)Lcom/google/ads/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/af;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/ads/af;->a:Lcom/google/ads/aj;

    iget-object v3, p0, Lcom/google/ads/af;->c:Lcom/google/ads/ag;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/a/r;->a(Landroid/view/View;Lcom/google/ads/aj;Lcom/google/ads/ag;)V

    goto :goto_0
.end method
