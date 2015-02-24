// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.as;
import com.google.ads.util.AdUtil;
import com.google.ads.util.d;
import com.google.ads.util.m;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.ads.a:
//            g, h, f, r

public final class e
{

    public static final m a = new g();
    public static final Map b = Collections.unmodifiableMap(new h());
    public static final Map c = Collections.unmodifiableMap(new f());
    private static final e d = new e();

    public e()
    {
    }

    static e a()
    {
        return d;
    }

    public static void a(WebView webview)
    {
        a(webview, "onshow", "{'version': 'afma-sdk-a-v6.2.1'}");
    }

    public static void a(WebView webview, String s)
    {
        com.google.ads.util.d.a((new StringBuilder("Sending JS to a WebView: ")).append(s).toString());
        webview.loadUrl((new StringBuilder("javascript:")).append(s).toString());
    }

    public static void a(WebView webview, String s, String s1)
    {
        if (s1 != null)
        {
            a(webview, (new StringBuilder()).append("AFMA_ReceiveMessage").append("('").append(s).append("', ").append(s1).append(");").toString());
            return;
        } else
        {
            a(webview, (new StringBuilder()).append("AFMA_ReceiveMessage").append("('").append(s).append("');").toString());
            return;
        }
    }

    public static void a(WebView webview, Map map)
    {
        a(webview, "openableURLs", (new JSONObject(map)).toString());
    }

    public static void a(r r, Map map, Uri uri, WebView webview)
    {
        HashMap hashmap = AdUtil.b(uri);
        if (hashmap == null)
        {
            com.google.ads.util.d.e("An error occurred while parsing the message parameters.");
            return;
        }
        String s;
        if (c(uri))
        {
            String s1 = uri.getHost();
            if (s1 == null)
            {
                com.google.ads.util.d.e("An error occurred while parsing the AMSG parameters.");
                s = null;
            } else
            if (s1.equals("launch"))
            {
                hashmap.put("a", "intent");
                hashmap.put("u", hashmap.get("url"));
                hashmap.remove("url");
                s = "/open";
            } else
            if (s1.equals("closecanvas"))
            {
                s = "/close";
            } else
            if (s1.equals("log"))
            {
                s = "/log";
            } else
            {
                com.google.ads.util.d.e((new StringBuilder("An error occurred while parsing the AMSG: ")).append(uri.toString()).toString());
                s = null;
            }
        } else
        if (b(uri))
        {
            s = uri.getPath();
        } else
        {
            com.google.ads.util.d.e("Message was neither a GMSG nor an AMSG.");
            s = null;
        }
        if (s == null)
        {
            com.google.ads.util.d.e("An error occurred while parsing the message.");
            return;
        }
        as as1 = (as)map.get(s);
        if (as1 == null)
        {
            com.google.ads.util.d.e((new StringBuilder("No AdResponse found, <message: ")).append(s).append(">").toString());
            return;
        } else
        {
            as1.a(r, hashmap, webview);
            return;
        }
    }

    public static boolean a(Uri uri)
    {
        while (uri == null || !uri.isHierarchical() || !b(uri) && !c(uri)) 
        {
            return false;
        }
        return true;
    }

    public static void b(WebView webview)
    {
        a(webview, "onhide", null);
    }

    private static boolean b(Uri uri)
    {
        String s = uri.getScheme();
        String s1;
        if (s != null && s.equals("gmsg"))
        {
            if ((s1 = uri.getAuthority()) != null && s1.equals("mobileads.google.com"))
            {
                return true;
            }
        }
        return false;
    }

    private static boolean c(Uri uri)
    {
        String s = uri.getScheme();
        return s != null && s.equals("admob");
    }

}
