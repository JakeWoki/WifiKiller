// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.j;
import com.google.ads.a.p;
import com.google.ads.a.r;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as

public final class bb
    implements as
{

    public bb()
    {
    }

    public final void a(r r1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("url");
        String s1 = (String)hashmap.get("type");
        String s2 = (String)hashmap.get("afma_notify_dt");
        boolean flag = "1".equals(hashmap.get("drt_include"));
        String s3 = (String)hashmap.get("request_scenario");
        boolean flag1 = "1".equals(hashmap.get("use_webview_loadurl"));
        p p1;
        j j1;
        if (p.d.e.equals(s3))
        {
            p1 = p.d;
        } else
        if (p.c.e.equals(s3))
        {
            p1 = p.c;
        } else
        if (p.a.e.equals(s3))
        {
            p1 = p.a;
        } else
        {
            p1 = p.b;
        }
        d.c((new StringBuilder("Received ad url: <url: \"")).append(s).append("\" type: \"").append(s1).append("\" afmaNotifyDt: \"").append(s2).append("\" useWebViewLoadUrl: \"").append(flag1).append("\">").toString());
        j1 = r1.h();
        if (j1 != null)
        {
            j1.b(flag);
            j1.a(p1);
            j1.c(flag1);
            j1.d(s);
        }
    }
}
