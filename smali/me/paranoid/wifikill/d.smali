.class final Lme/paranoid/wifikill/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/WiFiKill;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/WiFiKill;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/d;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->a:Lme/paranoid/wifikill/g;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lme/paranoid/wifikill/g;->a(ILjava/lang/Object;)Z

    invoke-static {}, Lme/paranoid/wifikill/WiFiKill;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "scan interrupted - user request"

    invoke-static {v0, v1}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
