// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.webkit.WebView;

// Referenced classes of package com.google.ads.a:
//            j

final class o
    implements Runnable
{

    final j a;
    private final String b;
    private final String c;
    private final WebView d;

    public o(j j, WebView webview, String s, String s1)
    {
        a = j;
        super();
        d = webview;
        b = s;
        c = s1;
    }

    public final void run()
    {
        if (c != null)
        {
            d.loadDataWithBaseURL(b, c, "text/html", "utf-8", null);
            return;
        } else
        {
            d.loadUrl(b);
            return;
        }
    }
}
