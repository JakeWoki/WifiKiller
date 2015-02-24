.class final Lme/paranoid/wifikill/service/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lme/paranoid/wifikill/service/i;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/i;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/m;->b:Lme/paranoid/wifikill/service/i;

    iput-object p2, p0, Lme/paranoid/wifikill/service/m;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lme/paranoid/wifikill/service/m;->b:Lme/paranoid/wifikill/service/i;

    iget-object v0, v0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    iget-object v1, p0, Lme/paranoid/wifikill/service/m;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lme/paranoid/wifikill/service/m;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lme/paranoid/wifikill/service/m;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const-string v0, "device without name :/"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lme/paranoid/wifikill/service/m;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, v0, Lme/paranoid/wifikill/service/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lme/paranoid/wifikill/service/m;->b:Lme/paranoid/wifikill/service/i;

    iget-object v1, v1, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v2, 0x6b

    invoke-static {v1, v2, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->a()V

    goto :goto_0
.end method
