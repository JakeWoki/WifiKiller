.class final Lme/paranoid/wifikill/service/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/service/a;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lme/paranoid/wifikill/service/i;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/service/l;->c:Lme/paranoid/wifikill/service/i;

    iput-object p2, p0, Lme/paranoid/wifikill/service/l;->a:Lme/paranoid/wifikill/service/a;

    iput-object p3, p0, Lme/paranoid/wifikill/service/l;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lme/paranoid/wifikill/service/l;->a:Lme/paranoid/wifikill/service/a;

    iget-object v0, v0, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    iget-object v1, p0, Lme/paranoid/wifikill/service/l;->b:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lme/paranoid/wifikill/service/l;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lme/paranoid/wifikill/service/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
