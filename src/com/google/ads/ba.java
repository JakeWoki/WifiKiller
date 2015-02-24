// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.j;
import com.google.ads.a.r;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, e

public final class ba
    implements as
{

    public ba()
    {
    }

    public final void a(r r1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("type");
        String s1 = (String)hashmap.get("errors");
        d.e((new StringBuilder("Invalid ")).append(s).append(" request error: ").append(s1).toString());
        j j1 = r1.h();
        if (j1 != null)
        {
            j1.a(e.a);
        }
    }
}
