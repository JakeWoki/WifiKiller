.class final Lcom/google/ads/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/z;

.field final synthetic b:Lcom/google/ads/ac;


# direct methods
.method constructor <init>(Lcom/google/ads/ac;Lcom/google/ads/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/ae;->b:Lcom/google/ads/ac;

    iput-object p2, p0, Lcom/google/ads/ae;->a:Lcom/google/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/ae;->b:Lcom/google/ads/ac;

    invoke-static {v0}, Lcom/google/ads/ac;->c(Lcom/google/ads/ac;)Lcom/google/ads/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/ae;->a:Lcom/google/ads/z;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/r;->b(Lcom/google/ads/z;)V

    return-void
.end method
