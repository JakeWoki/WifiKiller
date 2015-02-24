.class public final Lme/paranoid/wifikill/fragment/a;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Landroid/widget/Switch;

.field private b:Landroid/widget/Switch;

.field private c:Landroid/widget/EditText;

.field private d:Lme/paranoid/wifikill/service/a;

.field private e:Landroid/widget/ExpandableListView;

.field private f:Lme/paranoid/wifikill/fragment/f;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->c:Landroid/widget/EditText;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/paranoid/wifikill/fragment/a;->g:Z

    iput v1, p0, Lme/paranoid/wifikill/fragment/a;->h:I

    iput v1, p0, Lme/paranoid/wifikill/fragment/a;->i:I

    return-void
.end method

.method public constructor <init>(Lme/paranoid/wifikill/service/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->c:Landroid/widget/EditText;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/paranoid/wifikill/fragment/a;->g:Z

    iput v1, p0, Lme/paranoid/wifikill/fragment/a;->h:I

    iput v1, p0, Lme/paranoid/wifikill/fragment/a;->i:I

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    new-instance v0, Lme/paranoid/wifikill/fragment/f;

    invoke-direct {v0, p0, v1}, Lme/paranoid/wifikill/fragment/f;-><init>(Lme/paranoid/wifikill/fragment/a;B)V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->f:Lme/paranoid/wifikill/fragment/f;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->f:Lme/paranoid/wifikill/fragment/f;

    invoke-virtual {p1, v0}, Lme/paranoid/wifikill/service/a;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/a;I)I
    .locals 0

    iput p1, p0, Lme/paranoid/wifikill/fragment/a;->i:I

    return p1
.end method

.method public static a(Lme/paranoid/wifikill/service/a;)Lme/paranoid/wifikill/fragment/a;
    .locals 1

    new-instance v0, Lme/paranoid/wifikill/fragment/a;

    invoke-direct {v0, p0}, Lme/paranoid/wifikill/fragment/a;-><init>(Lme/paranoid/wifikill/service/a;)V

    return-object v0
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    return-object v0
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/a;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    invoke-virtual {v0, p1}, Lme/paranoid/wifikill/service/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/devices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget-object v2, v2, Lme/paranoid/wifikill/service/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lme/paranoid/wifikill/a;->a()Lme/paranoid/wifikill/a;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->c()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lme/paranoid/wifikill/fragment/a;->g:Z

    return p1
.end method

.method static synthetic b(Lme/paranoid/wifikill/fragment/a;I)I
    .locals 0

    iput p1, p0, Lme/paranoid/wifikill/fragment/a;->h:I

    return p1
.end method

.method static synthetic b(Lme/paranoid/wifikill/fragment/a;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic c(Lme/paranoid/wifikill/fragment/a;)I
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/fragment/a;->h:I

    return v0
.end method

.method static synthetic d(Lme/paranoid/wifikill/fragment/a;)I
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/fragment/a;->i:I

    return v0
.end method

.method static synthetic e(Lme/paranoid/wifikill/fragment/a;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public final a()Lme/paranoid/wifikill/service/a;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    return-object v0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "refreshing"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget v0, v0, Lme/paranoid/wifikill/service/a;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget v0, v0, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget v0, v0, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/b;->notifyDataSetChanged()V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget-object v1, v1, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    invoke-virtual {v1}, Lme/paranoid/wifikill/service/b;->getGroupCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    iget-boolean v1, p0, Lme/paranoid/wifikill/fragment/a;->g:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    :cond_4
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/high16 v0, 0x7f03

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p3}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lme/paranoid/wifikill/service/b;->a(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lme/paranoid/wifikill/fragment/a;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    const v1, 0x7f09000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    const v1, 0x7f090003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/paranoid/wifikill/fragment/a;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget-object v1, v1, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    invoke-virtual {v1}, Lme/paranoid/wifikill/service/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget v0, v0, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget v0, v0, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget v1, v1, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->c:Landroid/widget/EditText;

    new-instance v1, Lme/paranoid/wifikill/fragment/b;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/b;-><init>(Lme/paranoid/wifikill/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->b:Landroid/widget/Switch;

    new-instance v1, Lme/paranoid/wifikill/fragment/c;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/c;-><init>(Lme/paranoid/wifikill/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->a:Landroid/widget/Switch;

    new-instance v1, Lme/paranoid/wifikill/fragment/d;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/d;-><init>(Lme/paranoid/wifikill/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/a;->d:Lme/paranoid/wifikill/service/a;

    iget-object v1, v1, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_2
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/a;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lme/paranoid/wifikill/fragment/e;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/e;-><init>(Lme/paranoid/wifikill/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method
