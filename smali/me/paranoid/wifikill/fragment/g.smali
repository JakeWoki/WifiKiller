.class final Lme/paranoid/wifikill/fragment/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/DevicesFragment;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/fragment/DevicesFragment;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->a(Lme/paranoid/wifikill/fragment/DevicesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->b(Lme/paranoid/wifikill/fragment/DevicesFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/DevicesFragment;->b(Lme/paranoid/wifikill/fragment/DevicesFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->c(Lme/paranoid/wifikill/fragment/DevicesFragment;)I

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/g;->a:Lme/paranoid/wifikill/fragment/DevicesFragment;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->d(Lme/paranoid/wifikill/fragment/DevicesFragment;)Ljava/lang/String;

    :cond_0
    return-void
.end method
