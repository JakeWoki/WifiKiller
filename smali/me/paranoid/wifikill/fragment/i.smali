.class final Lme/paranoid/wifikill/fragment/i;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/h;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lme/paranoid/wifikill/fragment/h;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    iput-boolean v0, p0, Lme/paranoid/wifikill/fragment/i;->c:Z

    iput-boolean v0, p0, Lme/paranoid/wifikill/fragment/i;->d:Z

    iput p2, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/paranoid/wifikill/fragment/i;->c:Z

    :cond_0
    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/i;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    return v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    :goto_0
    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/i;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/h;->a(Lme/paranoid/wifikill/fragment/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/h;->a(Lme/paranoid/wifikill/fragment/h;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/a;

    iget v1, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v2}, Lme/paranoid/wifikill/fragment/h;->a(Lme/paranoid/wifikill/fragment/h;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lme/paranoid/wifikill/fragment/i;->publishProgress([Ljava/lang/Object;)V

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/h;->b(Lme/paranoid/wifikill/fragment/h;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget v0, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/paranoid/wifikill/fragment/i;->b:I

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->b(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->c(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iput-boolean v5, p0, Lme/paranoid/wifikill/fragment/i;->d:Z

    iget-boolean v0, p0, Lme/paranoid/wifikill/fragment/i;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "---"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/h;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4

    const-string v2, ""

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v3}, Lme/paranoid/wifikill/fragment/h;->b(Lme/paranoid/wifikill/fragment/h;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    :goto_0
    iget-object v2, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v2}, Lme/paranoid/wifikill/fragment/h;->c(Lme/paranoid/wifikill/fragment/h;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/i;->a:Lme/paranoid/wifikill/fragment/h;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/h;->d(Lme/paranoid/wifikill/fragment/h;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attaching to: <b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Killing: <b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reviving: <b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detaching from: <b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
