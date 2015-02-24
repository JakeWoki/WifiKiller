// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.a.e;
import com.google.ads.a.r;
import com.google.ads.util.d;
import com.google.ads.util.m;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as

public final class au
    implements as
{

    private static final e a;

    public au()
    {
    }

    public final void a(r r, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("urls");
        if (s == null)
        {
            d.e("Could not get the urls param from canOpenURLs gmsg.");
            return;
        }
        String as1[] = s.split(",");
        HashMap hashmap1 = new HashMap();
        PackageManager packagemanager = webview.getContext().getPackageManager();
        int i = as1.length;
        int j = 0;
        while (j < i) 
        {
            String s1 = as1[j];
            String as2[] = s1.split(";", 2);
            String s2 = as2[0];
            String s3;
            boolean flag;
            if (as2.length >= 2)
            {
                s3 = as2[1];
            } else
            {
                s3 = "android.intent.action.VIEW";
            }
            if (packagemanager.resolveActivity(new Intent(s3, Uri.parse(s2)), 0x10000) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            hashmap1.put(s1, Boolean.valueOf(flag));
            j++;
        }
        e _tmp = a;
        e.a(webview, hashmap1);
    }

    static 
    {
        a = (e)e.a.a();
    }
}
