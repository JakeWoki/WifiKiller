// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.r;
import com.google.ads.a.s;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, b

public final class be
    implements as
{

    private b a;

    public be()
    {
        this(new b());
    }

    private be(b b1)
    {
        a = b1;
    }

    public final void a(r r, HashMap hashmap, WebView webview)
    {
        String s1 = (String)hashmap.get("a");
        if (s1 == null)
        {
            d.a("Could not get the action parameter for open GMSG.");
            return;
        }
        if (s1.equals("webapp"))
        {
            b _tmp = a;
            b.a(r, new s("webapp", hashmap));
            return;
        }
        if (s1.equals("expand"))
        {
            b _tmp1 = a;
            b.a(r, new s("expand", hashmap));
            return;
        } else
        {
            b _tmp2 = a;
            b.a(r, new s("intent", hashmap));
            return;
        }
    }
}
