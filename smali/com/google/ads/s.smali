.class final Lcom/google/ads/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/s;->b:Landroid/webkit/WebView;

    iput-boolean p2, p0, Lcom/google/ads/s;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/s;->b:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lcom/google/ads/s;->a:Z

    invoke-static {v0, v1}, Lcom/google/ads/p;->a(Landroid/webkit/WebView;Z)V

    return-void
.end method
