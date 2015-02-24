.class public final Lcom/google/ads/ag;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/ag;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/ag;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/ag;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/google/ads/ag;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/ads/ag;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/ag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/ag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/ag;->d:Ljava/util/List;

    return-object v0
.end method
