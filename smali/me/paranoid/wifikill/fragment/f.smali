.class final Lme/paranoid/wifikill/fragment/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/a;


# direct methods
.method private constructor <init>(Lme/paranoid/wifikill/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/f;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/paranoid/wifikill/fragment/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/fragment/f;-><init>(Lme/paranoid/wifikill/fragment/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/f;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
