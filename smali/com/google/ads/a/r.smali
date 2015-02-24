.class public final Lcom/google/ads/a/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/ads/ar;

.field private c:Lcom/google/ads/a/j;

.field private d:Lcom/google/ads/d;

.field private e:Lcom/google/ads/a/w;

.field private f:Lcom/google/ads/a/c;

.field private g:Lcom/google/ads/a/y;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/n;

.field private r:Z

.field private s:Ljava/util/LinkedList;

.field private t:Ljava/util/LinkedList;

.field private u:I

.field private v:Ljava/lang/Boolean;

.field private w:Lcom/google/ads/ab;

.field private x:Lcom/google/ads/ac;

.field private y:Lcom/google/ads/ag;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/a/r;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/a;Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/a/r;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/r;->z:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/r;->r:Z

    new-instance v0, Lcom/google/ads/a/w;

    invoke-direct {v0}, Lcom/google/ads/a/w;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/r;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/r;->h:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/ads/a/r;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/r;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/r;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/r;->m:Z

    if-nez p2, :cond_3

    new-instance v0, Lcom/google/ads/ar;

    invoke-static {}, Lcom/google/ads/ap;->a()Lcom/google/ads/ap;

    move-result-object v1

    instance-of v2, p1, Lcom/google/ads/AdView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/google/ads/AdView;

    move-object v3, v2

    :goto_0
    instance-of v2, p1, Lcom/google/ads/i;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/google/ads/i;

    move-object v4, v2

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p3, :cond_2

    sget-object v9, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/x;

    :goto_2
    move-object v2, p1

    move-object v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/ar;-><init>(Lcom/google/ads/ap;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/a/x;)V

    iput-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    :goto_3
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/ads/a/x;->a(Lcom/google/ads/g;)Lcom/google/ads/a/x;

    move-result-object v9

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/ads/a/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/r;->o:Landroid/content/SharedPreferences;

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/google/ads/a/r;->i:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/ads/ar;

    invoke-static {}, Lcom/google/ads/ap;->a()Lcom/google/ads/ap;

    move-result-object v1

    instance-of v2, p1, Lcom/google/ads/AdView;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/google/ads/AdView;

    move-object v3, v2

    :goto_4
    instance-of v2, p1, Lcom/google/ads/i;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/google/ads/i;

    move-object v4, v2

    :goto_5
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-nez p3, :cond_6

    sget-object v9, Lcom/google/ads/a/x;->a:Lcom/google/ads/a/x;

    :goto_6
    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/ar;-><init>(Lcom/google/ads/ap;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/a/x;)V

    iput-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    new-instance v0, Lcom/google/ads/n;

    invoke-direct {v0, p0}, Lcom/google/ads/n;-><init>(Lcom/google/ads/a/r;)V

    iput-object v0, p0, Lcom/google/ads/a/r;->q:Lcom/google/ads/n;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/r;->s:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/r;->t:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/google/ads/a/r;->a()V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    new-instance v0, Lcom/google/ads/ab;

    invoke-direct {v0}, Lcom/google/ads/ab;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/r;->w:Lcom/google/ads/ab;

    new-instance v0, Lcom/google/ads/ac;

    invoke-direct {v0, p0}, Lcom/google/ads/ac;-><init>(Lcom/google/ads/a/r;)V

    iput-object v0, p0, Lcom/google/ads/a/r;->x:Lcom/google/ads/ac;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/r;->v:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/r;->y:Lcom/google/ads/ag;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/google/ads/a/x;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/a/x;

    move-result-object v9

    goto :goto_6
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->g:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->g:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/ads/y;->a()Lcom/google/ads/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/y;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ads/y;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v1, v1, Lcom/google/ads/ar;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "@gw_adlocid@"

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_qdata@"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sdkver@"

    const-string v6, "afma-sdk-a-v6.2.1"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sessid@"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_seqnum@"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_devid@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v0, "@gw_adnetid@"

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "@gw_allocid@"

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p6, :cond_2

    const-string v0, "@gw_adt@"

    invoke-virtual {v1, v0, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p7, :cond_3

    const-string v0, "@gw_aec@"

    invoke-virtual {v1, v0, p7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_1
    const-string v6, "@gw_adnetrefresh@"

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_4
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/google/ads/m;

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v7, v1, v0}, Lcom/google/ads/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "0"

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->b()V

    return-void
.end method

.method private declared-synchronized w()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized x()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/a/r;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized y()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/a/r;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/ads/a/c;

    iget-object v2, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/x;

    invoke-virtual {v0}, Lcom/google/ads/a/x;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/a/c;-><init>(Lcom/google/ads/ar;Lcom/google/ads/g;)V

    iput-object v1, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;

    iget-object v0, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    sget-object v0, Lcom/google/ads/a/e;->c:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v2}, Lcom/google/ads/ar;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/a/y;->a(Lcom/google/ads/a/r;Ljava/util/Map;ZZ)Lcom/google/ads/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/r;->g:Lcom/google/ads/a/y;

    iget-object v0, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;

    iget-object v1, p0, Lcom/google/ads/a/r;->g:Lcom/google/ads/a/y;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ap;

    iget-object v0, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/aq;

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/aq;->a:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/x;

    invoke-virtual {v0}, Lcom/google/ads/a/x;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;

    invoke-virtual {v0}, Lcom/google/ads/a/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/a/r;->p:J

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/a/r;->p:J

    invoke-virtual {p0}, Lcom/google/ads/a/r;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ads/a/r;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/a/r;->d()V

    invoke-virtual {p0}, Lcom/google/ads/a/r;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/a/r;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4

    sget-object v1, Lcom/google/ads/a/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v3, v3, Lcom/google/ads/ar;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/google/ads/a/r;->r:Z

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/ads/a/r;->i:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/View;Lcom/google/ads/aj;Lcom/google/ads/ag;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/r;->k:Z

    iput-object p3, p0, Lcom/google/ads/a/r;->y:Lcom/google/ads/ag;

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/ads/a/r;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/ads/ag;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/ag;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/ads/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/ads/ag;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/a/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/a/r;->x:Lcom/google/ads/ac;

    invoke-virtual {v0, p2}, Lcom/google/ads/ac;->a(Lcom/google/ads/aj;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/d;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/a/r;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->o:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/p;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->e:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/p;->a(Landroid/app/Activity;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/r;->k:Z

    iget-object v0, p0, Lcom/google/ads/a/r;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/d;

    iget-object v0, p0, Lcom/google/ads/a/r;->w:Lcom/google/ads/ab;

    invoke-virtual {v0}, Lcom/google/ads/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/a/r;->x:Lcom/google/ads/ac;

    iget-object v1, p0, Lcom/google/ads/a/r;->w:Lcom/google/ads/ab;

    invoke-virtual {v1}, Lcom/google/ads/ab;->b()Lcom/google/ads/z;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/ac;->a(Lcom/google/ads/z;Lcom/google/ads/d;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/ads/a/j;

    invoke-direct {v0, p0}, Lcom/google/ads/a/j;-><init>(Lcom/google/ads/a/r;)V

    iput-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;

    iget-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;

    invoke-virtual {v0, p1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x4270

    invoke-virtual {p0, v0}, Lcom/google/ads/a/r;->a(F)V

    invoke-virtual {p0}, Lcom/google/ads/a/r;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/a/r;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/r;->n:Z

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->B()V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailedToReceiveAd("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/z;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;

    invoke-virtual {p1}, Lcom/google/ads/z;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/z;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/a/r;->a(F)V

    iget-boolean v0, p0, Lcom/google/ads/a/r;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/a/r;->e()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/a/r;->x:Lcom/google/ads/ac;

    iget-object v1, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/ac;->a(Lcom/google/ads/z;Lcom/google/ads/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/a/r;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/a/r;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/r;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/r;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/ads/a/r;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/r;->z:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding a click tracking URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/a/r;->t:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/a/r;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/r;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/ads/z;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/z;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/z;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/a/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding a tracking URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/r;->v:Ljava/lang/Boolean;

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/a/r;->m:Z

    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/a/r;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/a/r;->q:Lcom/google/ads/n;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/r;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/a/r;->n:Z

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/a/r;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/a/r;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling refreshing every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/ads/a/r;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/a/r;->q:Lcom/google/ads/n;

    iget-wide v2, p0, Lcom/google/ads/a/r;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/r;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final f()Lcom/google/ads/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    return-object v0
.end method

.method public final declared-synchronized g()Lcom/google/ads/ab;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->w:Lcom/google/ads/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lcom/google/ads/a/j;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Lcom/google/ads/a/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/ads/a/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->g:Lcom/google/ads/a/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Lcom/google/ads/a/w;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    return-object v0
.end method

.method public final declared-synchronized l()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/a/r;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/a/r;->i:J

    return-wide v0
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/a/r;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/a/r;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->C()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->n:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->f()V

    invoke-direct {p0}, Lcom/google/ads/a/r;->y()V

    return-void
.end method

.method public final declared-synchronized u()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/a/r;->a(Lcom/google/ads/d;)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/a/r;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/a/r;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/a/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/a/r;->q:Lcom/google/ads/n;

    iget-wide v2, p0, Lcom/google/ads/a/r;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected final declared-synchronized v()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/r;->k:Z

    iget-object v0, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->f:Lcom/google/ads/a/c;

    invoke-direct {p0, v0}, Lcom/google/ads/a/r;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/r;->e:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->g()V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    invoke-virtual {v0}, Lcom/google/ads/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/ads/a/r;->x()V

    :cond_1
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->m:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Lcom/google/ads/ar;

    iget-object v0, v0, Lcom/google/ads/ar;->h:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
