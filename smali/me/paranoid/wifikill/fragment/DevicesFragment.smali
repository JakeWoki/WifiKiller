.class public Lme/paranoid/wifikill/fragment/DevicesFragment;
.super Landroid/app/ListFragment;


# instance fields
.field private a:Z

.field private b:Lme/paranoid/wifikill/a;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->b:Lme/paranoid/wifikill/a;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->d:I

    return-void
.end method

.method private a(ILme/paranoid/wifikill/service/a;)V
    .locals 6

    const v5, 0x7f090029

    const v4, 0x7f040003

    const/high16 v3, 0x7f04

    const/4 v2, 0x1

    iget-object v0, p2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    iput p1, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/fragment/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->a()Lme/paranoid/wifikill/service/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->a()Lme/paranoid/wifikill/service/a;

    move-result-object v0

    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    iget-object v2, p2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    iget-object v2, p2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_1
    invoke-static {p2}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/service/a;)Lme/paranoid/wifikill/fragment/a;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lme/paranoid/wifikill/DetailsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "ip"

    iget-object v2, p2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/DevicesFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    return v0
.end method

.method static synthetic b(Lme/paranoid/wifikill/fragment/DevicesFragment;)I
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->d:I

    return v0
.end method

.method static synthetic c(Lme/paranoid/wifikill/fragment/DevicesFragment;)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->d:I

    return v0
.end method

.method static synthetic d(Lme/paranoid/wifikill/fragment/DevicesFragment;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->b:Lme/paranoid/wifikill/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a(Lme/paranoid/wifikill/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adapter = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {p0, p1}, Lme/paranoid/wifikill/fragment/DevicesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lme/paranoid/wifikill/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lme/paranoid/wifikill/a;->a(I)Lme/paranoid/wifikill/service/a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lme/paranoid/wifikill/fragment/DevicesFragment;->a(ILme/paranoid/wifikill/service/a;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v0, "start"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    if-eqz p1, :cond_0

    const-string v0, "current_dev"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    :cond_0
    new-instance v0, Lme/paranoid/wifikill/a;

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lme/paranoid/wifikill/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_1
    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lme/paranoid/wifikill/fragment/g;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/g;-><init>(Lme/paranoid/wifikill/fragment/DevicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onListItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0, p3}, Lme/paranoid/wifikill/a;->a(I)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lme/paranoid/wifikill/fragment/DevicesFragment;->a(ILme/paranoid/wifikill/service/a;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "current_dev"

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/DevicesFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
