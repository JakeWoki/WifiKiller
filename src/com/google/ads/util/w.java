// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.ads.a.j;
import com.google.ads.a.r;
import com.google.ads.a.y;
import com.google.ads.ap;
import com.google.ads.aq;
import com.google.ads.ar;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

// Referenced classes of package com.google.ads.util:
//            AdUtil, ab, ac, d

public final class w extends y
{

    public w(r r1, Map map, boolean flag, boolean flag1)
    {
        super(r1, map, flag, flag1);
    }

    private static WebResourceResponse a(String s, Context context)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        WebResourceResponse webresourceresponse;
        AdUtil.a(httpurlconnection, context.getApplicationContext());
        httpurlconnection.connect();
        webresourceresponse = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(AdUtil.a(new InputStreamReader(httpurlconnection.getInputStream())).getBytes("UTF-8")));
        httpurlconnection.disconnect();
        return webresourceresponse;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public final WebResourceResponse shouldInterceptRequest(WebView webview, String s)
    {
        if (!"mraid.js".equalsIgnoreCase((new File(s)).getName())) goto _L2; else goto _L1
_L1:
        j j1 = a.h();
        if (j1 == null) goto _L4; else goto _L3
_L3:
        j1.b();
_L8:
        aq aq1 = (aq)((ap)a.f().a.a()).a.a();
        if (a.f().b()) goto _L6; else goto _L5
_L5:
        if (b)
        {
            String s3 = (String)aq1.d.a();
            d.a((new StringBuilder("shouldInterceptRequest(")).append(s3).append(")").toString());
            return a(s3, webview.getContext());
        }
          goto _L7
_L4:
        a.a(true);
          goto _L8
        IOException ioexception;
        ioexception;
        d.d("IOException fetching MRAID JS.", ioexception);
_L2:
        return super.shouldInterceptRequest(webview, s);
_L7:
        String s2 = (String)aq1.c.a();
        d.a((new StringBuilder("shouldInterceptRequest(")).append(s2).append(")").toString());
        return a(s2, webview.getContext());
_L6:
        WebResourceResponse webresourceresponse;
        String s1 = (String)aq1.e.a();
        d.a((new StringBuilder("shouldInterceptRequest(")).append(s1).append(")").toString());
        webresourceresponse = a(s1, webview.getContext());
        return webresourceresponse;
        Throwable throwable;
        throwable;
        d.b("An unknown error occurred fetching MRAID JS.", throwable);
        if (true) goto _L2; else goto _L9
_L9:
    }
}
