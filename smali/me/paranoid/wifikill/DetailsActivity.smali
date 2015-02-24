.class public Lme/paranoid/wifikill/DetailsActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/DetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "WiFiKill"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lme/paranoid/wifikill/fragment/a;

    invoke-static {}, Lme/paranoid/wifikill/a;->a()Lme/paranoid/wifikill/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lme/paranoid/wifikill/a;->b(Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    invoke-direct {v1, v0}, Lme/paranoid/wifikill/fragment/a;-><init>(Lme/paranoid/wifikill/service/a;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/paranoid/wifikill/fragment/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v0, Lme/paranoid/wifikill/WiFiKill;->c:Z

    if-nez v0, :cond_0

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    iput-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->b:Lcom/google/ads/AdView;

    iget-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->b:Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->b:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/d;

    invoke-direct {v1}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    :cond_0
    return-void
.end method
