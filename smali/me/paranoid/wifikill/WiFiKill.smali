.class public Lme/paranoid/wifikill/WiFiKill;
.super Landroid/app/Activity;


# static fields
.field public static a:Lme/paranoid/wifikill/g;

.field public static b:Lme/paranoid/wifikill/a;

.field public static c:Z

.field private static final d:Ljava/lang/String;

.field private static n:Landroid/content/Context;

.field private static q:Landroid/content/SharedPreferences;

.field private static r:Landroid/content/SharedPreferences;


# instance fields
.field private e:Landroid/app/ActionBar;

.field private f:Z

.field private g:Landroid/widget/ProgressBar;

.field private h:Lme/paranoid/wifikill/fragment/StatusBarFragment;

.field private i:Lme/paranoid/wifikill/fragment/a;

.field private j:Lme/paranoid/wifikill/fragment/DevicesFragment;

.field private k:Landroid/view/Menu;

.field private l:Landroid/widget/SearchView;

.field private m:Landroid/app/ProgressDialog;

.field private o:Landroid/os/PowerManager$WakeLock;

.field private p:Lcom/google/ads/AdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->d:Ljava/lang/String;

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    const/4 v0, 0x1

    sput-boolean v0, Lme/paranoid/wifikill/WiFiKill;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->h:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->i:Lme/paranoid/wifikill/fragment/a;

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->l:Landroid/widget/SearchView;

    iput-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static a()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->r:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lme/paranoid/wifikill/WiFiKill;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->l:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic a(Lme/paranoid/wifikill/WiFiKill;Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/fragment/a;
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/WiFiKill;->i:Lme/paranoid/wifikill/fragment/a;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const v3, 0x7f090032

    const/16 v2, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / av="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/ProgressBar;

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lme/paranoid/wifikill/d;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/d;-><init>(Lme/paranoid/wifikill/WiFiKill;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    :cond_1
    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lme/paranoid/wifikill/e;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/e;-><init>(Lme/paranoid/wifikill/WiFiKill;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p0}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/WiFiKill;I)V
    .locals 0

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/WiFiKill;->a(I)V

    return-void
.end method

.method static synthetic b(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/DevicesFragment;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p0}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lme/paranoid/wifikill/WiFiKill;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p0}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lme/paranoid/wifikill/WiFiKill;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IP = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p0}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method static synthetic e(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/StatusBarFragment;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->h:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    return-object v0
.end method

.method private e()V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    const v1, 0x7f090032

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lme/paranoid/wifikill/f;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/f;-><init>(Lme/paranoid/wifikill/WiFiKill;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    new-instance v0, Lme/paranoid/wifikill/g;

    invoke-direct {v0, p0, p0}, Lme/paranoid/wifikill/g;-><init>(Lme/paranoid/wifikill/WiFiKill;Landroid/content/Context;)V

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    invoke-virtual {v0}, Lme/paranoid/wifikill/g;->a()V

    return-void
.end method

.method static synthetic f(Lme/paranoid/wifikill/WiFiKill;)V
    .locals 0

    invoke-direct {p0}, Lme/paranoid/wifikill/WiFiKill;->e()V

    return-void
.end method

.method static synthetic g(Lme/paranoid/wifikill/WiFiKill;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private g()Z
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "me.paranoid.wifikill.service.WFKService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/a;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->i:Lme/paranoid/wifikill/fragment/a;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    if-eqz v0, :cond_0

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lme/paranoid/wifikill/fragment/h;->a(Lme/paranoid/wifikill/a;I)Lme/paranoid/wifikill/fragment/h;

    move-result-object v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lme/paranoid/wifikill/fragment/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method final b()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f090031

    const v3, 0x7f040003

    const/high16 v2, 0x7f04

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "START"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lme/paranoid/wifikill/WiFiKill;->e()V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0, v5}, Lme/paranoid/wifikill/fragment/DevicesFragment;->a(Lme/paranoid/wifikill/a;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :try_start_0
    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->h:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b()V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    if-eqz v0, :cond_0

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    invoke-virtual {v0}, Lme/paranoid/wifikill/g;->b()V

    sput-object v5, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    if-eqz v0, :cond_0

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lme/paranoid/wifikill/fragment/h;->a(Lme/paranoid/wifikill/a;I)Lme/paranoid/wifikill/fragment/h;

    move-result-object v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lme/paranoid/wifikill/fragment/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method final c()V
    .locals 5

    const v4, 0x7f040003

    const/high16 v3, 0x7f04

    const-string v0, "start"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    new-instance v0, Lme/paranoid/wifikill/a;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    iget-object v2, v2, Lme/paranoid/wifikill/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v2, v2, Lme/paranoid/wifikill/service/WFKService;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lme/paranoid/wifikill/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    :try_start_0
    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->c()V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    sget-object v1, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0, v1}, Lme/paranoid/wifikill/fragment/DevicesFragment;->a(Lme/paranoid/wifikill/a;)V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->h:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v4, 0x7f090024

    const/16 v3, 0x400

    const/4 v6, 0x0

    sput-object p0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const-string v1, "free"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v6, Lme/paranoid/wifikill/WiFiKill;->c:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WiFiKill"

    invoke-virtual {p0, v0, v6}, Lme/paranoid/wifikill/WiFiKill;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->q:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->r:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_fullscreen"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->setContentView(I)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "WiFiKill"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->e:Landroid/app/ActionBar;

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->e:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/fragment/DevicesFragment;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/fragment/StatusBarFragment;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->h:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/fragment/a;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->i:Lme/paranoid/wifikill/fragment/a;

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    sget-boolean v0, Lme/paranoid/wifikill/WiFiKill;->c:Z

    if-nez v0, :cond_3

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->p:Lcom/google/ads/AdView;

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->p:Lcom/google/ads/AdView;

    invoke-virtual {v0, v6}, Lcom/google/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->p:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/d;

    invoke-direct {v1}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v1, "Demo"

    const-string v2, "This is a demo version of the app, it has less options and other limitations.\n\nConsider using WiFiKill Downloader from http://paranoid.me , to get FULL version\n"

    const-string v3, "Try demo"

    const-string v4, "Get WiFiKill Downloader"

    new-instance v5, Lme/paranoid/wifikill/b;

    invoke-direct {v5, p0}, Lme/paranoid/wifikill/b;-><init>(Lme/paranoid/wifikill/WiFiKill;)V

    invoke-static/range {v0 .. v5}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->q:Landroid/content/SharedPreferences;

    const-string v1, "first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v1, "Disclaimer"

    const-string v2, "This program is released \"as-is\" - without any warranty, responsibility or liability. I do not take any responsibility for anything you do using this application. Using (or even keeping) this app might be illegal in your country. Use at your own risk!"

    invoke-static {v0, v1, v2}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_run"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-direct {p0}, Lme/paranoid/wifikill/WiFiKill;->g()Z

    move-result v0

    iput-boolean v0, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service_running = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v4}, Lme/paranoid/wifikill/WiFiKill;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v2, 0x7f090031

    const-string v0, ""

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/WiFiKill;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    iget-boolean v0, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "STOP"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lme/paranoid/wifikill/WiFiKill;->f()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v1, "wfk"

    const-string v2, "wfk"

    invoke-static {v0, v1, v2}, Lme/paranoid/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v1, "Warning"

    const-string v2, "Unable to copy binary file, please reboot your phone and try again."

    invoke-static {v0, v1, v2}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    if-eqz v0, :cond_0

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    invoke-virtual {v0}, Lme/paranoid/wifikill/g;->b()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-boolean v2, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    if-eqz v2, :cond_0

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v3, "initiating device scan"

    invoke-static {v2, v3}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    const-string v0, ""

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lme/paranoid/wifikill/WiFiKill;->a(I)V

    goto :goto_0

    :pswitch_1
    const-string v2, ""

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-boolean v2, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    if-eqz v2, :cond_1

    const-string v2, "start"

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    const-string v3, "Stopping service"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    const-string v3, "Please wait..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string v2, "showing"

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/WiFiKill;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    const-string v2, "sending message"

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    const-string v2, "end"

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    :goto_1
    iget-boolean v2, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lme/paranoid/wifikill/WiFiKill;->f:Z

    goto :goto_0

    :cond_1
    sget-object v2, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    invoke-static {v2}, Lme/paranoid/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v2, "Error"

    const-string v3, "Not connected to any WiFi network!"

    invoke-static {v0, v2, v3}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v2, 0x1080023

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v2, "STOP"

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lme/paranoid/wifikill/WiFiKill;->f()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->k:Landroid/view/Menu;

    const v2, 0x7f090033

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->l:Landroid/widget/SearchView;

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->l:Landroid/widget/SearchView;

    new-instance v2, Lme/paranoid/wifikill/c;

    invoke-direct {v2, p0}, Lme/paranoid/wifikill/c;-><init>(Lme/paranoid/wifikill/WiFiKill;)V

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://forum.paranoid.me/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->n:Landroid/content/Context;

    const-string v2, "About"

    const-string v3, "This program just a proof of concept, please check my other cool apps on my website: http://forum.paranoid.me/"

    invoke-static {v0, v2, v3}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lme/paranoid/wifikill/Preferences;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/WiFiKill;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090031
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "onResume() ---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lme/paranoid/wifikill/WiFiKill;->j:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->a()V

    return-void
.end method
