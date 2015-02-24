.class public final Lcom/google/ads/at;
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

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Error: App event with no name parameter."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "info"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ads/a/r;->s()V

    goto :goto_0
.end method
