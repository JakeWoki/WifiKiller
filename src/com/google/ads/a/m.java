// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.webkit.WebView;
import com.google.ads.e;

// Referenced classes of package com.google.ads.a:
//            t, r, c

final class m
    implements Runnable
{

    private final r a;
    private final WebView b;
    private final t c;
    private final e d;
    private final boolean e;

    public m(r r1, WebView webview, t t1, e e1, boolean flag)
    {
        a = r1;
        b = webview;
        c = t1;
        d = e1;
        e = flag;
    }

    public final void run()
    {
        if (b != null)
        {
            b.stopLoading();
            b.destroy();
        }
        if (c != null)
        {
            c.a();
        }
        if (e)
        {
            c c1 = a.i();
            c1.stopLoading();
            c1.setVisibility(8);
        }
        a.a(d);
    }
}
