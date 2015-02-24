// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.util.AdUtil;
import com.google.ads.util.d;
import com.google.ads.util.m;
import com.google.ads.util.w;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.ads.a:
//            e, r, j, s

public class y extends WebViewClient
{

    private static final e c;
    protected r a;
    protected boolean b;
    private final Map d;
    private final boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    public y(r r1, Map map, boolean flag, boolean flag1)
    {
        a = r1;
        d = map;
        e = flag;
        f = flag1;
        b = false;
        g = false;
        h = false;
    }

    public static y a(r r1, Map map, boolean flag, boolean flag1)
    {
        if (AdUtil.a >= 11)
        {
            return new w(r1, map, flag, flag1);
        } else
        {
            return new y(r1, map, flag, flag1);
        }
    }

    public final void a()
    {
        b = true;
    }

    public final void b()
    {
        f = false;
    }

    public final void c()
    {
        g = true;
    }

    public final void d()
    {
        h = true;
    }

    public void onPageFinished(WebView webview, String s1)
    {
        if (g)
        {
            j j1 = a.h();
            if (j1 != null)
            {
                j1.a();
            } else
            {
                com.google.ads.util.d.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            g = false;
        }
        if (h)
        {
            e _tmp = c;
            com.google.ads.a.e.a(webview);
            h = false;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s1)
    {
        Uri uri;
        com.google.ads.util.d.a((new StringBuilder("shouldOverrideUrlLoading(\"")).append(s1).append("\")").toString());
        uri = Uri.parse(s1);
        c;
        if (!com.google.ads.a.e.a(uri))
        {
            break MISSING_BLOCK_LABEL_62;
        }
        c;
        com.google.ads.a.e.a(a, d, uri, webview);
        return true;
        if (!f)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        if (AdUtil.a(uri))
        {
            return super.shouldOverrideUrlLoading(webview, s1);
        }
        HashMap hashmap1 = new HashMap();
        hashmap1.put("u", s1);
        AdActivity.a(a, new s("intent", hashmap1));
        Throwable throwable;
        return true;
        if (!e)
        {
            break MISSING_BLOCK_LABEL_180;
        }
        HashMap hashmap = new HashMap();
        hashmap.put("u", uri.toString());
        AdActivity.a(a, new s("intent", hashmap));
        return true;
        try
        {
            com.google.ads.util.d.e((new StringBuilder("URL is not a GMSG and can't handle URL: ")).append(s1).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            com.google.ads.util.d.b("An unknown error occurred in shouldOverrideUrlLoading.", throwable);
            return true;
        }
        return true;
    }

    static 
    {
        c = (e)e.a.a();
    }
}
