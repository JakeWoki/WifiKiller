// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.a.a;
import com.google.ads.a.c;
import com.google.ads.a.e;
import com.google.ads.a.r;
import com.google.ads.util.AdUtil;
import com.google.ads.util.d;
import com.google.ads.util.m;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, AdActivity

public final class l
    implements as
{

    private static final e a;

    public l()
    {
    }

    private static int a(HashMap hashmap, String s, int i, DisplayMetrics displaymetrics)
    {
        String s1 = (String)hashmap.get(s);
        if (s1 != null)
        {
            float f;
            try
            {
                f = TypedValue.applyDimension(1, Integer.parseInt(s1), displaymetrics);
            }
            catch (NumberFormatException numberformatexception)
            {
                d.a((new StringBuilder("Could not parse \"")).append(s).append("\" in a video gmsg: ").append(s1).toString());
                return i;
            }
            i = (int)f;
        }
        return i;
    }

    public final void a(r r, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("action");
        if (s == null)
        {
            d.a("No \"action\" parameter in a video gmsg.");
            return;
        }
        c c1;
        AdActivity adactivity;
        if (webview instanceof c)
        {
            c1 = (c)webview;
            adactivity = c1.d();
            if (adactivity == null)
            {
                d.a("Could not get adActivity for a video gmsg.");
                return;
            }
        } else
        {
            d.a("Could not get adWebView for a video gmsg.");
            return;
        }
        boolean flag = s.equals("new");
        boolean flag1 = s.equals("position");
        if (flag || flag1)
        {
            DisplayMetrics displaymetrics = AdUtil.a(adactivity);
            int i = a(hashmap, "x", 0, displaymetrics);
            int j = a(hashmap, "y", 0, displaymetrics);
            int k = a(hashmap, "w", -1, displaymetrics);
            int i1 = a(hashmap, "h", -1, displaymetrics);
            if (flag && adactivity.a() == null)
            {
                adactivity.b(i, j, k, i1);
                return;
            } else
            {
                adactivity.a(i, j, k, i1);
                return;
            }
        }
        a a1 = adactivity.a();
        if (a1 == null)
        {
            e _tmp = a;
            e.a(c1, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
            return;
        }
        if (s.equals("click"))
        {
            DisplayMetrics displaymetrics1 = AdUtil.a(adactivity);
            int j1 = a(hashmap, "x", 0, displaymetrics1);
            int k1 = a(hashmap, "y", 0, displaymetrics1);
            long l1 = SystemClock.uptimeMillis();
            a1.a(MotionEvent.obtain(l1, l1, 0, j1, k1, 0));
            return;
        }
        if (s.equals("controls"))
        {
            String s2 = (String)hashmap.get("enabled");
            if (s2 == null)
            {
                d.a("No \"enabled\" parameter in a controls video gmsg.");
                return;
            }
            if (s2.equals("true"))
            {
                a1.a(true);
                return;
            } else
            {
                a1.a(false);
                return;
            }
        }
        if (s.equals("currentTime"))
        {
            String s1 = (String)hashmap.get("time");
            if (s1 == null)
            {
                d.a("No \"time\" parameter in a currentTime video gmsg.");
                return;
            }
            try
            {
                a1.a((int)(1000F * Float.parseFloat(s1)));
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                d.a((new StringBuilder("Could not parse \"time\" parameter: ")).append(s1).toString());
            }
            return;
        }
        if (s.equals("hide"))
        {
            a1.setVisibility(4);
            return;
        }
        if (s.equals("load"))
        {
            a1.a();
            return;
        }
        if (s.equals("pause"))
        {
            a1.b();
            return;
        }
        if (s.equals("play"))
        {
            a1.c();
            return;
        }
        if (s.equals("show"))
        {
            a1.setVisibility(0);
            return;
        }
        if (s.equals("src"))
        {
            a1.a((String)hashmap.get("src"));
            return;
        } else
        {
            d.a((new StringBuilder("Unknown video action: ")).append(s).toString());
            return;
        }
    }

    static 
    {
        a = (e)e.a.a();
    }
}
