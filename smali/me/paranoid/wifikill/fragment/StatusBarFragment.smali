.class public Lme/paranoid/wifikill/fragment/StatusBarFragment;
.super Landroid/app/Fragment;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Switch;

.field private d:Landroid/widget/Switch;

.field private e:Lme/paranoid/wifikill/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/StatusBarFragment;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lme/paranoid/wifikill/a;->a()Lme/paranoid/wifikill/a;

    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->d()I

    move-result v0

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    invoke-virtual {v1}, Lme/paranoid/wifikill/a;->e()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_1
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    invoke-virtual {v2}, Lme/paranoid/wifikill/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    invoke-virtual {v2}, Lme/paranoid/wifikill/a;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    new-instance v1, Lme/paranoid/wifikill/fragment/j;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/j;-><init>(Lme/paranoid/wifikill/fragment/StatusBarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    new-instance v1, Lme/paranoid/wifikill/fragment/k;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/k;-><init>(Lme/paranoid/wifikill/fragment/StatusBarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f030004

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f09002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f09002c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f09002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    const v0, 0x7f09002b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    return-object v1
.end method
