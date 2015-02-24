// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.google.ads.a.x;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.ad;
import com.google.ads.util.z;

// Referenced classes of package com.google.ads:
//            ap, a, AdView, i

public final class ar extends z
{

    public final ab a;
    public final ac b = new ac(this, "currentAd", null);
    public final ac c = new ac(this, "nextAd", null);
    public final ab d;
    public final ad e;
    public final ab f;
    public final ab g;
    public final ab h;
    public final ab i;
    public final ab j;
    public final ab k;
    public final ac l = new ac(this, "adSizes", null);
    public final ac m = new ac(this, "adListener");
    public final ac n = new ac(this, "appEventListener");

    public ar(ap ap, a a1, AdView adview, i i1, String s, Activity activity, Context context, 
            ViewGroup viewgroup, x x1)
    {
        a = new ab(this, "appState", ap);
        h = new ab(this, "ad", a1);
        i = new ab(this, "adView", adview);
        k = new ab(this, "adType", x1);
        d = new ab(this, "adUnitId", s);
        e = new ad(this, "activity", activity);
        j = new ab(this, "interstitialAd", i1);
        g = new ab(this, "bannerContainer", viewgroup);
        f = new ab(this, "applicationContext", context);
    }

    public final boolean a()
    {
        return !b();
    }

    public final boolean b()
    {
        return ((x)k.a()).a();
    }
}
