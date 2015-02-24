.class final Lme/paranoid/wifikill/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;

.field final synthetic d:Lme/paranoid/wifikill/service/b;


# direct methods
.method public constructor <init>(Lme/paranoid/wifikill/service/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lme/paranoid/wifikill/service/d;->d:Lme/paranoid/wifikill/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/service/d;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lme/paranoid/wifikill/service/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lme/paranoid/wifikill/service/d;->b:Ljava/lang/String;

    return-void
.end method
