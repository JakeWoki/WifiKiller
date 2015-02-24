// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.c;
import com.google.ads.a.r;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as

public final class ax
    implements as
{

    public ax()
    {
    }

    public final void a(r r, HashMap hashmap, WebView webview)
    {
        if (webview instanceof c)
        {
            ((c)webview).a("1".equals(hashmap.get("custom_close")));
            return;
        } else
        {
            d.b("Trying to set a custom close icon on a WebView that isn't an AdWebView");
            return;
        }
    }
}
