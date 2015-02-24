.class final Lcom/google/ads/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/aj;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/d;

.field private final d:Ljava/util/HashMap;

.field private final e:Z

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/ads/aj;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    iput-object p3, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/al;->f:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/ads/al;->c:Lcom/google/ads/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/ads/al;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/ads/al;->d:Ljava/util/HashMap;

    const-string v1, "gwhirl_share_location"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/ads/al;->e:Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an illegal value, \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', for the special share location parameter from mediation server (expected \'0\' or \'1\'). Will not share the location."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/ai;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    invoke-virtual {v0, p3}, Lcom/google/ads/aj;->a(Lcom/google/ads/ai;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to instantiate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    const-class v1, Lcom/google/ads/b/b;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/b;

    iget-object v1, p0, Lcom/google/ads/al;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/ads/am;

    const-string v1, "Activity became null while trying to instantiate adapter."

    invoke-direct {v0, v1}, Lcom/google/ads/am;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find adapter class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Did you link the ad network\'s mediation adapter? Skipping ad network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/ai;->e:Lcom/google/ads/ai;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/al;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/ai;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    invoke-virtual {v2, v0}, Lcom/google/ads/aj;->a(Lcom/google/ads/b/b;)V

    invoke-interface {v0}, Lcom/google/ads/b/b;->c()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/b/e;

    iget-object v3, p0, Lcom/google/ads/al;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/ads/b/e;->a(Ljava/util/Map;)V

    :cond_1
    invoke-interface {v0}, Lcom/google/ads/b/b;->b()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/ads/al;->c:Lcom/google/ads/d;

    invoke-virtual {v3, v2}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Lcom/google/ads/b/a;

    iget-object v3, p0, Lcom/google/ads/al;->c:Lcom/google/ads/d;

    iget-boolean v4, p0, Lcom/google/ads/al;->e:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/ads/b/a;-><init>(Lcom/google/ads/d;Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    iget-object v1, v1, Lcom/google/ads/aj;->a:Lcom/google/ads/a/x;

    invoke-virtual {v1}, Lcom/google/ads/a/x;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/google/ads/b/d;

    if-nez v1, :cond_3

    new-instance v0, Lcom/google/ads/am;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationInterstitialAdapter interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/am;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Error while creating adapter and loading ad from ad network. Skipping ad network."

    sget-object v2, Lcom/google/ads/ai;->f:Lcom/google/ads/ai;

    invoke-direct {p0, v1, v0, v2}, Lcom/google/ads/al;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/ads/ai;)V

    goto :goto_0

    :cond_3
    :try_start_2
    check-cast v0, Lcom/google/ads/b/d;

    new-instance v1, Lcom/google/ads/ao;

    iget-object v2, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    invoke-direct {v1, v2}, Lcom/google/ads/ao;-><init>(Lcom/google/ads/aj;)V

    invoke-interface {v0}, Lcom/google/ads/b/d;->d()V

    :goto_1
    iget-object v0, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    invoke-virtual {v0}, Lcom/google/ads/aj;->g()V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/ads/b/c;

    if-nez v1, :cond_5

    new-instance v0, Lcom/google/ads/am;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationBannerAdapter interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/am;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Lcom/google/ads/b/c;

    new-instance v1, Lcom/google/ads/an;

    iget-object v2, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    invoke-direct {v1, v2}, Lcom/google/ads/an;-><init>(Lcom/google/ads/aj;)V

    iget-object v1, p0, Lcom/google/ads/al;->a:Lcom/google/ads/aj;

    iget-object v1, v1, Lcom/google/ads/aj;->a:Lcom/google/ads/a/x;

    invoke-virtual {v1}, Lcom/google/ads/a/x;->b()Lcom/google/ads/g;

    invoke-interface {v0}, Lcom/google/ads/b/c;->d()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
