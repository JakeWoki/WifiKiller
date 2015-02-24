.class final Lme/paranoid/wifikill/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/service/a;

.field final synthetic b:Lme/paranoid/wifikill/service/i;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/j;->b:Lme/paranoid/wifikill/service/i;

    iput-object p2, p0, Lme/paranoid/wifikill/service/j;->a:Lme/paranoid/wifikill/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lme/paranoid/wifikill/service/j;->b:Lme/paranoid/wifikill/service/i;

    iget-object v0, v0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, v0, Lme/paranoid/wifikill/service/WFKService;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lme/paranoid/wifikill/service/j;->a:Lme/paranoid/wifikill/service/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
