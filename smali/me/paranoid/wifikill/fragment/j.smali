.class final Lme/paranoid/wifikill/fragment/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/StatusBarFragment;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/fragment/StatusBarFragment;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/j;->a:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/j;->a:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "Attaching to"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " all devices"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/j;->a:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/WiFiKill;

    invoke-virtual {v0, p2}, Lme/paranoid/wifikill/WiFiKill;->a(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/j;->a:Lme/paranoid/wifikill/fragment/StatusBarFragment;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a(Lme/paranoid/wifikill/fragment/StatusBarFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void

    :cond_0
    const-string v0, "Detaching from"

    goto :goto_0
.end method
