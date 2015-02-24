// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.webkit.WebView;
import com.google.ads.ar;
import com.google.ads.g;
import com.google.ads.util.ab;
import java.util.LinkedList;

// Referenced classes of package com.google.ads.a:
//            r, x, c

final class q
    implements Runnable
{

    private final r a;
    private final WebView b;
    private final LinkedList c;
    private final int d;
    private final boolean e;
    private final String f;
    private final g g;

    public q(r r1, WebView webview, LinkedList linkedlist, int i, boolean flag, String s, g g1)
    {
        a = r1;
        b = webview;
        c = linkedlist;
        d = i;
        e = flag;
        f = s;
        g = g1;
    }

    public final void run()
    {
        if (b != null)
        {
            b.stopLoading();
            b.destroy();
        }
        a.a(c);
        a.a(d);
        a.a(e);
        a.a(f);
        if (g != null)
        {
            ((x)a.f().k.a()).b(g);
            a.i().a(g);
        }
        a.v();
    }
}
