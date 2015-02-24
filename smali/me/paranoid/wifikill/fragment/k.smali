.class final Lme/paranoid/wifikill/fragment/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/StatusBarFragment;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/fragment/StatusBarFragment;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/k;->a:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/k;->a:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/WiFiKill;

    invoke-virtual {v0, p2}, Lme/paranoid/wifikill/WiFiKill;->b(Z)V

    return-void
.end method
