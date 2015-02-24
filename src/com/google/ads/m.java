// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.d;
import java.net.HttpURLConnection;
import java.net.URL;

public final class m
    implements Runnable
{

    private final Context a;
    private final String b;

    public m(String s, Context context)
    {
        b = s;
        a = context;
    }

    public final void run()
    {
        HttpURLConnection httpurlconnection;
        d.a((new StringBuilder("Pinging URL: ")).append(b).toString());
        httpurlconnection = (HttpURLConnection)(new URL(b)).openConnection();
        int i;
        AdUtil.a(httpurlconnection, a);
        httpurlconnection.setInstanceFollowRedirects(true);
        httpurlconnection.connect();
        i = httpurlconnection.getResponseCode();
        if (i >= 200 && i < 300)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        d.e((new StringBuilder("Did not receive 2XX (got ")).append(i).append(") from pinging URL: ").append(b).toString());
        Exception exception;
        try
        {
            httpurlconnection.disconnect();
            return;
        }
        catch (Throwable throwable)
        {
            d.d((new StringBuilder("Unable to ping the URL: ")).append(b).toString(), throwable);
        }
        break MISSING_BLOCK_LABEL_147;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }
}
