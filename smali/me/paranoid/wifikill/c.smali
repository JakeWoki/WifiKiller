.class final Lme/paranoid/wifikill/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/WiFiKill;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/WiFiKill;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/c;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v1, p1}, Lme/paranoid/wifikill/a;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lme/paranoid/wifikill/c;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v2}, Lme/paranoid/wifikill/WiFiKill;->a(Lme/paranoid/wifikill/WiFiKill;)Landroid/widget/SearchView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/c;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->b(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/DevicesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lme/paranoid/wifikill/c;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->b(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/DevicesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lme/paranoid/wifikill/c;->a:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->c(Lme/paranoid/wifikill/WiFiKill;)Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090033

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    const/4 v0, 0x1

    goto :goto_0
.end method
