// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.a.r;
import com.google.ads.a.w;
import com.google.ads.util.d;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.google.ads:
//            az

public final class av extends az
{

    public av()
    {
    }

    public final void a(r r1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("u");
        if (s == null)
        {
            d.e("Could not get URL from click gmsg.");
            return;
        }
        w w1 = r1.k();
        if (w1 != null)
        {
            Uri uri = Uri.parse(s);
            String s1 = uri.getHost();
            if (s1 != null && s1.toLowerCase(Locale.US).endsWith(".admob.com"))
            {
                String s2 = uri.getPath();
                String s3 = null;
                if (s2 != null)
                {
                    String as[] = s2.split("/");
                    int i = as.length;
                    s3 = null;
                    if (i >= 4)
                    {
                        s3 = (new StringBuilder()).append(as[2]).append("/").append(as[3]).toString();
                    }
                }
                w1.a(s3);
            }
        }
        super.a(r1, hashmap, webview);
    }
}
