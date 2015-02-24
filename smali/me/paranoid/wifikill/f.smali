.class final Lme/paranoid/wifikill/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/WiFiKill;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/WiFiKill;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/f;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lme/paranoid/wifikill/f;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->d(Lme/paranoid/wifikill/WiFiKill;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
