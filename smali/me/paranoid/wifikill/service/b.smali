.class public final Lme/paranoid/wifikill/service/b;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(I)Lme/paranoid/wifikill/service/d;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/d;

    return-object v0
.end method

.method private b(II)Lme/paranoid/wifikill/service/c;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/d;

    iget-object v0, v0, Lme/paranoid/wifikill/service/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/c;

    return-object v0
.end method


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/d;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v0, v0, Lme/paranoid/wifikill/service/d;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lme/paranoid/wifikill/service/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lme/paranoid/wifikill/service/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lme/paranoid/wifikill/service/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    iget-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/d;

    iget-object v5, v0, Lme/paranoid/wifikill/service/d;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lme/paranoid/wifikill/service/d;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lme/paranoid/wifikill/service/d;-><init>(Lme/paranoid/wifikill/service/b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lme/paranoid/wifikill/service/d;->c:Ljava/util/ArrayList;

    new-instance v3, Lme/paranoid/wifikill/service/c;

    iget-object v4, v0, Lme/paranoid/wifikill/service/d;->d:Lme/paranoid/wifikill/service/b;

    iget-object v0, v0, Lme/paranoid/wifikill/service/d;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v0, p2, v1}, Lme/paranoid/wifikill/service/c;-><init>(Lme/paranoid/wifikill/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lme/paranoid/wifikill/service/b;->b(II)Lme/paranoid/wifikill/service/c;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0, p1, p2}, Lme/paranoid/wifikill/service/b;->b(II)Lme/paranoid/wifikill/service/c;

    move-result-object v3

    if-nez p4, :cond_0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    :cond_0
    const v0, 0x7f090030

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09002f

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09002e

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lme/paranoid/wifikill/service/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v3, Lme/paranoid/wifikill/service/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lme/paranoid/wifikill/service/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/d;

    iget-object v0, v0, Lme/paranoid/wifikill/service/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/b;->a(I)Lme/paranoid/wifikill/service/d;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/service/b;->a(I)Lme/paranoid/wifikill/service/d;

    move-result-object v2

    if-nez p3, :cond_0

    const v1, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    const v0, 0x7f090030

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09002e

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v2, Lme/paranoid/wifikill/service/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lme/paranoid/wifikill/service/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
