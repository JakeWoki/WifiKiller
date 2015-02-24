.class final Lcom/google/ads/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/a/r;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/a/t;

.field private final d:Lcom/google/ads/e;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/a/r;Landroid/webkit/WebView;Lcom/google/ads/a/t;Lcom/google/ads/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/m;->a:Lcom/google/ads/a/r;

    iput-object p2, p0, Lcom/google/ads/a/m;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/a/m;->c:Lcom/google/ads/a/t;

    iput-object p4, p0, Lcom/google/ads/a/m;->d:Lcom/google/ads/e;

    iput-boolean p5, p0, Lcom/google/ads/a/m;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/m;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/m;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/a/m;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/m;->c:Lcom/google/ads/a/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/a/m;->c:Lcom/google/ads/a/t;

    invoke-virtual {v0}, Lcom/google/ads/a/t;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/a/m;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/m;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->i()Lcom/google/ads/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/c;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/a/m;->a:Lcom/google/ads/a/r;

    iget-object v1, p0, Lcom/google/ads/a/m;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/r;->a(Lcom/google/ads/e;)V

    return-void
.end method
