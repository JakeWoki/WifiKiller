.class final Lme/paranoid/wifikill/fragment/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/a;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/b;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting name `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "` for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/b;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;

    move-result-object v1

    iget-object v1, v1, Lme/paranoid/wifikill/service/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/b;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "name saved"

    invoke-static {v0, v1}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/b;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/b;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    return v2
.end method
