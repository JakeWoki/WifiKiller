.class final Lme/paranoid/wifikill/fragment/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/a;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/d;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Killing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/fragment/d;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v2}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;

    move-result-object v2

    iget-object v2, v2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/d;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reviving: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/fragment/d;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v2}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;

    move-result-object v2

    iget-object v2, v2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/d;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
