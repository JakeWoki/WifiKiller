.class final Lme/paranoid/wifikill/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/WiFiKill;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/WiFiKill;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/b;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lme/paranoid/wifikill/b;->a:Lme/paranoid/wifikill/WiFiKill;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://paranoid.me/wifikill/downloader/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lme/paranoid/wifikill/WiFiKill;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
