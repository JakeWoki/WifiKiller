// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import com.google.ads.a.x;
import com.google.ads.b.a;
import com.google.ads.b.b;
import com.google.ads.b.c;
import com.google.ads.b.e;
import com.google.ads.util.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.ads:
//            aj, am, ai, d, 
//            ao, an

final class al
    implements Runnable
{

    private final aj a;
    private final String b;
    private final com.google.ads.d c;
    private final HashMap d;
    private final boolean e;
    private final WeakReference f;

    public al(aj aj1, Activity activity, String s, com.google.ads.d d1, HashMap hashmap)
    {
        a = aj1;
        b = s;
        f = new WeakReference(activity);
        c = d1;
        d = new HashMap(hashmap);
        String s1 = (String)d.remove("gwhirl_share_location");
        boolean flag;
        if ("1".equals(s1))
        {
            flag = true;
        } else
        {
            if (s1 != null && !"0".equals(s1))
            {
                com.google.ads.util.d.b((new StringBuilder("Received an illegal value, '")).append(s1).append("', for the special share location parameter from mediation server (expected '0' or '1'). Will not share the location.").toString());
            }
            flag = false;
        }
        e = flag;
    }

    private void a(String s, Throwable throwable, ai ai1)
    {
        com.google.ads.util.d.b(s, throwable);
        a.a(ai1);
    }

    public final void run()
    {
        b b1;
        Activity activity;
        com.google.ads.util.d.a((new StringBuilder("Trying to instantiate: ")).append(b).toString());
        b1 = (b)com/google/ads/b/b.cast(Class.forName(b).newInstance());
        activity = (Activity)f.get();
        if (activity == null)
        {
            Class class1;
            Class class2;
            try
            {
                throw new am("Activity became null while trying to instantiate adapter.");
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                a((new StringBuilder("Cannot find adapter class '")).append(b).append("'. Did you link the ad network's mediation adapter? Skipping ad network.").toString(), classnotfoundexception, com.google.ads.ai.e);
                return;
            }
            catch (Throwable throwable)
            {
                a("Error while creating adapter and loading ad from ad network. Skipping ad network.", throwable, ai.f);
            }
            break MISSING_BLOCK_LABEL_242;
        }
        a.a(b1);
        class1 = b1.c();
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        ((e)class1.newInstance()).a(d);
        class2 = b1.b();
        if (class2 == null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        c.a(class2);
        new a(c, activity, e);
        if (!a.a.a())
        {
            break MISSING_BLOCK_LABEL_276;
        }
        if (!(b1 instanceof com.google.ads.b.d))
        {
            throw new am((new StringBuilder("Adapter ")).append(b).append(" doesn't support the MediationInterstitialAdapter interface.").toString());
        }
        break MISSING_BLOCK_LABEL_243;
        return;
        com.google.ads.b.d d1 = (com.google.ads.b.d)b1;
        new ao(a);
        d1.d();
_L2:
        a.g();
        return;
        if (!(b1 instanceof c))
        {
            throw new am((new StringBuilder("Adapter ")).append(b).append(" doesn't support the MediationBannerAdapter interface").toString());
        }
        c c1 = (c)b1;
        new an(a);
        a.a.b();
        c1.d();
        if (true) goto _L2; else goto _L1
_L1:
    }
}
