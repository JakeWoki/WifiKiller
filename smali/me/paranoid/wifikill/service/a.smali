.class public final Lme/paranoid/wifikill/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lme/paranoid/wifikill/service/b;

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lme/paranoid/wifikill/service/b;

    invoke-direct {v0}, Lme/paranoid/wifikill/service/b;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lme/paranoid/wifikill/service/a;->j:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!!!!!!! new dev vendor["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lme/paranoid/wifikill/service/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lme/paranoid/wifikill/service/a;->i:Ljava/lang/String;

    iput-object p4, p0, Lme/paranoid/wifikill/service/a;->d:Ljava/lang/String;

    iput v2, p0, Lme/paranoid/wifikill/service/a;->e:I

    iput v2, p0, Lme/paranoid/wifikill/service/a;->f:I

    iput v2, p0, Lme/paranoid/wifikill/service/a;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lme/paranoid/wifikill/service/a;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lme/paranoid/wifikill/service/a;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/service/a;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lme/paranoid/wifikill/service/a;->f:I

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/a;->j:Landroid/os/Handler;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/a;->i:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lme/paranoid/wifikill/service/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lme/paranoid/wifikill/service/a;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lme/paranoid/wifikill/service/a;->g:I

    return-void
.end method
