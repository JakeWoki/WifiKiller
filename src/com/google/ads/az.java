// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.Context;
import android.webkit.WebView;
import com.google.ads.a.r;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, m

public class az
    implements as
{

    public az()
    {
    }

    public void a(r r, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("u");
        if (s == null)
        {
            d.e("Could not get URL from click gmsg.");
            return;
        } else
        {
            (new Thread(new m(s, webview.getContext().getApplicationContext()))).start();
            return;
        }
    }
}
