// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.c;
import com.google.ads.a.e;
import com.google.ads.a.r;
import com.google.ads.util.d;
import com.google.ads.util.m;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, AdActivity

public final class ay
    implements as
{

    private static final e a;

    public ay()
    {
    }

    public final void a(r r, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("js");
        if (s == null)
        {
            d.b("Could not get the JS to evaluate.");
            return;
        }
        AdActivity adactivity;
        if (webview instanceof c)
        {
            adactivity = ((c)webview).d();
            if (adactivity == null)
            {
                d.b("Could not get the AdActivity from the AdWebView.");
                return;
            }
        } else
        {
            d.b("Trying to evaluate JS in a WebView that isn't an AdWebView");
            return;
        }
        c c1 = adactivity.b();
        if (c1 == null)
        {
            d.b("Could not get the opening WebView.");
            return;
        } else
        {
            e _tmp = a;
            e.a(c1, s);
            return;
        }
    }

    static 
    {
        a = (e)e.a.a();
    }
}
