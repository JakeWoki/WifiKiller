.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/ads/a;


# instance fields
.field private a:Lcom/google/ads/a/r;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/a/i; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/a/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;[Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/ads/g;

    invoke-direct {v0, v1, v1}, Lcom/google/ads/g;-><init>(II)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/ads/AdView;->a([Lcom/google/ads/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "adSize"

    const/4 v4, 0x1

    invoke-direct {p0, v1, p1, p2, v4}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/AdView;->a(Ljava/lang/String;)[Lcom/google/ads/g;
    :try_end_0
    .catch Lcom/google/ads/a/i; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_1
    array-length v2, v7

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lcom/google/ads/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attribute \"adSize\" invalid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/google/ads/a/i; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_0
    const-string v3, "Could not initialize AdView"

    invoke-virtual {v2, v3}, Lcom/google/ads/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    aget-object v1, v1, v8

    :goto_1
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lcom/google/ads/a/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lcom/google/ads/a/i;->b(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    const-string v1, "adUnitId"

    const-string v2, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p2, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    if-nez v1, :cond_4

    new-instance v1, Lcom/google/ads/a/i;

    const-string v2, "Required XML attribute \"adUnitId\" missing"

    invoke-direct {v1, v2}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v1, v8

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, "Ads by Google"

    const/4 v4, -0x1

    const/4 v1, 0x0

    aget-object v5, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    goto :goto_2

    :cond_5
    const-string v1, "adUnitId"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "loadAdOnCreate"

    invoke-direct {p0, v1, p1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v4

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const/4 v5, 0x0

    aget-object v5, v7, v5

    invoke-direct {p0, v1, v5, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    const/4 v5, 0x0

    aget-object v5, v7, v5

    invoke-direct {p0, v1, v5, p2}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    array-length v5, v7

    if-ne v5, v3, :cond_7

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-direct {p0, v1, v3, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    :goto_4
    if-eqz v4, :cond_1

    const-string v1, "testDevices"

    invoke-direct {p0, v1, p1, p2}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/ads/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Lcom/google/ads/d;

    invoke-direct {v2}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/ads/d;->b(Ljava/util/Set;)Lcom/google/ads/d;

    move-result-object v1

    const-string v2, "keywords"

    invoke-direct {p0, v2, p1, p2}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/d;->a(Ljava/util/Set;)Lcom/google/ads/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    goto/16 :goto_2

    :cond_7
    new-instance v3, Lcom/google/ads/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/google/ads/g;-><init>(II)V

    invoke-direct {p0, v1, v3, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/ads/AdView;->a([Lcom/google/ads/g;)V

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/google/ads/a/i;

    const-string v2, "AdView was initialized with a Context that wasn\'t an Activity."

    invoke-direct {v1, v2}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/google/ads/a/i; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    sget-object v1, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;
    .locals 6

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^@([^:]+)\\:(.*)$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "^@([^:]+)\\:(.*)$"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^@([^:]+)\\:(.*)$"

    const-string v3, "@$2"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "@string/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":string/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p4, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/ads/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required XML attribute \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/google/ads/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find resource for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v0, Lcom/google/ads/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x2

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v0, Lcom/google/ads/a/r;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/a/r;-><init>(Lcom/google/ads/a;Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    invoke-static {p1, v0}, Lcom/google/ads/a/z;->a(Landroid/app/Activity;Lcom/google/ads/a/r;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Gestures disabled: Not supported on this version of Android."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v5, v6, v6}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v4, 0x11

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-nez p5, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez p5, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v3}, Lcom/google/ads/g;->a()I

    move-result v4

    invoke-static {p1, v4}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/ads/g;->b()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-static {p2}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private varargs a([Lcom/google/ads/g;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lcom/google/ads/g;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->f()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v1, p1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "^@([^:]+)\\:(.*)$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "^@([^:]+)\\:(.*)$"

    const-string v5, "$1"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "^@([^:]+)\\:(.*)$"

    const-string v6, "@$2"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v5, "@bool/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":bool/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v6, v1, v5, v4}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, v5, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    iget v0, v5, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/google/ads/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find resource for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/ads/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Lcom/google/ads/g;
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    new-array v4, v0, [Lcom/google/ads/g;

    move v0, v1

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_a

    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "[xX]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    aget-object v2, v5, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    :try_start_0
    const-string v2, "FULL_WIDTH"

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    move v6, v2

    :goto_1
    const-string v2, "AUTO_HEIGHT"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x2

    :goto_2
    new-instance v5, Lcom/google/ads/g;

    invoke-direct {v5, v6, v2}, Lcom/google/ads/g;-><init>(II)V

    move-object v2, v5

    :goto_3
    if-nez v2, :cond_9

    move-object v0, v3

    :goto_4
    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_2
    const-string v5, "BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    goto :goto_3

    :cond_3
    const-string v5, "SMART_BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v2, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    goto :goto_3

    :cond_4
    const-string v5, "IAB_MRECT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v2, Lcom/google/ads/g;->c:Lcom/google/ads/g;

    goto :goto_3

    :cond_5
    const-string v5, "IAB_BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v2, Lcom/google/ads/g;->d:Lcom/google/ads/g;

    goto :goto_3

    :cond_6
    const-string v5, "IAB_LEADERBOARD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v2, Lcom/google/ads/g;->e:Lcom/google/ads/g;

    goto :goto_3

    :cond_7
    const-string v5, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/ads/g;->f:Lcom/google/ads/g;

    goto :goto_3

    :cond_8
    move-object v2, v3

    goto :goto_3

    :cond_9
    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_4
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ads/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0, p1}, Lcom/google/ads/a/r;->a(Lcom/google/ads/d;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->o()Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/a/r;

    invoke-virtual {v0}, Lcom/google/ads/a/r;->i()Lcom/google/ads/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/a/c;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
