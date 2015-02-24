// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.a.c;
import com.google.ads.a.r;
import com.google.ads.a.x;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.d;
import com.google.ads.util.n;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, ar, ap, aq

public final class bc
    implements as
{

    public bc()
    {
    }

    private static void a(HashMap hashmap, String s, ac ac1)
    {
        try
        {
            String s1 = (String)hashmap.get(s);
            if (!TextUtils.isEmpty(s1))
            {
                ac1.a(Integer.valueOf(s1));
            }
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            d.a((new StringBuilder("Could not parse \"")).append(s).append("\" constant.").toString());
        }
    }

    private static void b(HashMap hashmap, String s, ac ac1)
    {
        try
        {
            String s1 = (String)hashmap.get(s);
            if (!TextUtils.isEmpty(s1))
            {
                ac1.a(new Long(s1));
            }
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            d.a((new StringBuilder("Could not parse \"")).append(s).append("\" constant.").toString());
        }
    }

    private static void c(HashMap hashmap, String s, ac ac1)
    {
        String s1 = (String)hashmap.get(s);
        if (!TextUtils.isEmpty(s1))
        {
            ac1.a(s1);
        }
    }

    public final void a(r r1, HashMap hashmap, WebView webview)
    {
        ar ar1;
        aq aq1;
        c c1;
        ar1 = r1.f();
        aq1 = (aq)((ap)ar1.a.a()).a.a();
        a(hashmap, "min_hwa_banner", aq1.a);
        a(hashmap, "min_hwa_overlay", aq1.b);
        c(hashmap, "mraid_banner_path", aq1.c);
        c(hashmap, "mraid_expanded_banner_path", aq1.d);
        c(hashmap, "mraid_interstitial_path", aq1.e);
        b(hashmap, "ac_max_size", aq1.f);
        b(hashmap, "ac_padding", aq1.g);
        b(hashmap, "ac_total_quota", aq1.h);
        b(hashmap, "db_total_quota", aq1.i);
        b(hashmap, "db_quota_per_origin", aq1.j);
        b(hashmap, "db_quota_step_size", aq1.k);
        c1 = r1.i();
        if (AdUtil.a >= 11)
        {
            n.a(c1.getSettings(), ar1);
            n.a(webview.getSettings(), ar1);
        }
        if (((x)ar1.k.a()).a()) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1;
        flag = c1.f();
        if (AdUtil.a < ((Integer)aq1.a.a()).intValue())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 || !flag) goto _L4; else goto _L3
_L3:
        d.a("Re-enabling hardware acceleration for a banner after reading constants.");
        c1.c();
_L2:
        aq1.l.a(Boolean.valueOf(true));
        return;
_L4:
        if (flag1 && !flag)
        {
            d.a("Disabling hardware acceleration for a banner after reading constants.");
            c1.b();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }
}
