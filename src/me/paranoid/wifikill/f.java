// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.view.animation.Animation;
import android.widget.ProgressBar;

// Referenced classes of package me.paranoid.wifikill:
//            WiFiKill

final class f
    implements android.view.animation.Animation.AnimationListener
{

    final WiFiKill a;

    f(WiFiKill wifikill)
    {
        a = wifikill;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        WiFiKill.d(a).setVisibility(8);
    }

    public final void onAnimationRepeat(Animation animation)
    {
    }

    public final void onAnimationStart(Animation animation)
    {
    }
}
