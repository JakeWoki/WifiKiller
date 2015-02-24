// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.r;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as

public final class at
    implements as
{

    public at()
    {
    }

    public final void a(r r1, HashMap hashmap, WebView webview)
    {
        if ((String)hashmap.get("name") == null)
        {
            d.b("Error: App event with no name parameter.");
            return;
        } else
        {
            hashmap.get("info");
            r1.s();
            return;
        }
    }
}
