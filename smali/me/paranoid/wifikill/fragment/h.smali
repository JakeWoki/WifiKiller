.class public final Lme/paranoid/wifikill/fragment/h;
.super Landroid/app/DialogFragment;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lme/paranoid/wifikill/fragment/i;

.field private c:I

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lme/paranoid/wifikill/fragment/h;->c:I

    iput v1, p0, Lme/paranoid/wifikill/fragment/h;->d:I

    iput v1, p0, Lme/paranoid/wifikill/fragment/h;->g:I

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/h;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Lme/paranoid/wifikill/a;I)Lme/paranoid/wifikill/fragment/h;
    .locals 4

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    new-instance v0, Lme/paranoid/wifikill/fragment/h;

    invoke-direct {v0}, Lme/paranoid/wifikill/fragment/h;-><init>()V

    invoke-virtual {p0}, Lme/paranoid/wifikill/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KEY_DEVICES"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "KEY_MODE"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lme/paranoid/wifikill/fragment/h;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lme/paranoid/wifikill/fragment/h;)I
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/fragment/h;->c:I

    return v0
.end method

.method static synthetic c(Lme/paranoid/wifikill/fragment/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lme/paranoid/wifikill/fragment/h;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "KEY_LAST_ITEM"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lme/paranoid/wifikill/fragment/h;->d:I

    :cond_0
    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_DEVICES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lme/paranoid/wifikill/fragment/h;->c:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const v0, 0x7f030002

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/h;->e:Landroid/widget/TextView;

    const v0, 0x7f09001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/h;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->f:Landroid/widget/ProgressBar;

    iget v2, p0, Lme/paranoid/wifikill/fragment/h;->g:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0, v3}, Lme/paranoid/wifikill/fragment/h;->setCancelable(Z)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/h;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v2, "Please wait..."

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    new-instance v0, Lme/paranoid/wifikill/fragment/i;

    iget v1, p0, Lme/paranoid/wifikill/fragment/h;->d:I

    invoke-direct {v0, p0, v1}, Lme/paranoid/wifikill/fragment/i;-><init>(Lme/paranoid/wifikill/fragment/h;I)V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/h;->b:Lme/paranoid/wifikill/fragment/i;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->b:Lme/paranoid/wifikill/fragment/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lme/paranoid/wifikill/fragment/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const-string v0, "KEY_DEVICES"

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->b:Lme/paranoid/wifikill/fragment/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/h;->b:Lme/paranoid/wifikill/fragment/i;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/i;->a()I

    move-result v0

    iput v0, p0, Lme/paranoid/wifikill/fragment/h;->d:I

    const-string v0, "KEY_LAST_ITEM"

    iget v1, p0, Lme/paranoid/wifikill/fragment/h;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
