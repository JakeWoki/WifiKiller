// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.ar;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ab;
import com.google.ads.util.d;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

// Referenced classes of package com.google.ads.a:
//            u, j, r, v

public final class t
    implements Runnable
{

    private final j a;
    private final r b;
    private final v c;
    private volatile boolean d;
    private boolean e;
    private String f;
    private Thread g;

    t(j j1, r r1)
    {
        this(j1, r1, ((v) (new u())));
    }

    private t(j j1, r r1, v v1)
    {
        g = null;
        a = j1;
        b = r1;
        c = v1;
    }

    private void a(HttpURLConnection httpurlconnection)
    {
        String s9;
        String as[];
        String s4;
        String s5;
label0:
        {
            int i = 0;
            String s = httpurlconnection.getHeaderField("X-Afma-Debug-Dialog");
            if (!TextUtils.isEmpty(s))
            {
                a.e(s);
            }
            String s1 = httpurlconnection.getHeaderField("X-Afma-Tracking-Urls");
            if (!TextUtils.isEmpty(s1))
            {
                String as2[] = s1.trim().split("\\s+");
                int j1 = as2.length;
                for (int k1 = 0; k1 < j1; k1++)
                {
                    String s11 = as2[k1];
                    b.b(s11);
                }

            }
            String s2 = httpurlconnection.getHeaderField("X-Afma-Click-Tracking-Urls");
            if (!TextUtils.isEmpty(s2))
            {
                String as1[] = s2.trim().split("\\s+");
                for (int i1 = as1.length; i < i1; i++)
                {
                    String s10 = as1[i];
                    a.a(s10);
                }

            }
            String s3 = httpurlconnection.getHeaderField("X-Afma-Refresh-Rate");
            if (TextUtils.isEmpty(s3))
            {
                break label0;
            }
            String s6;
            String s7;
            String s8;
            long l1;
            float f1;
            float f2;
            try
            {
                f2 = Float.parseFloat(s3);
            }
            catch (NumberFormatException numberformatexception3)
            {
                com.google.ads.util.d.d((new StringBuilder("Could not get refresh value: ")).append(s3).toString(), numberformatexception3);
                break label0;
            }
            if (f2 > 0.0F)
            {
                b.a(f2);
                if (!b.o())
                {
                    b.e();
                }
            } else
            if (b.o())
            {
                b.d();
            }
        }
        s4 = httpurlconnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (!TextUtils.isEmpty(s4))
        {
            try
            {
                f1 = Float.parseFloat(s4);
                b.a((long)(f1 * 1000F));
            }
            catch (NumberFormatException numberformatexception2)
            {
                com.google.ads.util.d.d((new StringBuilder("Could not get timeout value: ")).append(s4).toString(), numberformatexception2);
            }
        }
        s5 = httpurlconnection.getHeaderField("X-Afma-Orientation");
        if (!TextUtils.isEmpty(s5))
        {
            if (s5.equals("portrait"))
            {
                a.a(AdUtil.b());
            } else
            if (s5.equals("landscape"))
            {
                a.a(AdUtil.a());
            }
        }
        if (!TextUtils.isEmpty(httpurlconnection.getHeaderField("X-Afma-Doritos-Cache-Life")))
        {
            try
            {
                l1 = Long.parseLong(httpurlconnection.getHeaderField("X-Afma-Doritos-Cache-Life"));
                b.b(l1);
            }
            catch (NumberFormatException numberformatexception1)
            {
                com.google.ads.util.d.e((new StringBuilder("Got bad value of Doritos cookie cache life from header: ")).append(httpurlconnection.getHeaderField("X-Afma-Doritos-Cache-Life")).append(". Using default value instead.").toString());
            }
        }
        s6 = httpurlconnection.getHeaderField("Cache-Control");
        if (!TextUtils.isEmpty(s6))
        {
            a.c(s6);
        }
        s7 = httpurlconnection.getHeaderField("X-Afma-Mediation");
        if (!TextUtils.isEmpty(s7))
        {
            a.a(Boolean.valueOf(s7).booleanValue());
        }
        s8 = httpurlconnection.getHeaderField("Content-Type");
        if (!TextUtils.isEmpty(s8))
        {
            a.b(s8);
        }
        s9 = httpurlconnection.getHeaderField("X-Afma-Ad-Size");
        if (TextUtils.isEmpty(s9))
        {
            break MISSING_BLOCK_LABEL_443;
        }
        as = s9.split("x", 2);
        if (as.length == 2)
        {
            break MISSING_BLOCK_LABEL_575;
        }
        com.google.ads.util.d.e((new StringBuilder("Could not parse size header: ")).append(s9).toString());
        return;
        int k;
        int l;
        try
        {
            k = Integer.parseInt(as[0]);
            l = Integer.parseInt(as[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            com.google.ads.util.d.e((new StringBuilder("Could not parse size header: ")).append(s9).toString());
            return;
        }
        a.a(new g(k, l));
        return;
    }

    final void a()
    {
        d = true;
    }

    final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (g == null)
        {
            f = s;
            d = false;
            g = new Thread(this);
            g.start();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(boolean flag)
    {
        e = flag;
    }

    public final void run()
    {
_L13:
        if (d) goto _L2; else goto _L1
_L1:
        HttpURLConnection httpurlconnection;
        URL url = new URL(f);
        httpurlconnection = c.a(url);
        String s = PreferenceManager.getDefaultSharedPreferences((Context)b.f().f.a()).getString("drt", "");
        if (!e || TextUtils.isEmpty(s)) goto _L4; else goto _L3
_L3:
        if (AdUtil.a != 8) goto _L6; else goto _L5
_L5:
        httpurlconnection.addRequestProperty("X-Afma-drt-Cookie", s);
_L4:
        int i;
        AdUtil.a(httpurlconnection, (Context)b.f().f.a());
        httpurlconnection.setInstanceFollowRedirects(false);
        httpurlconnection.connect();
        i = httpurlconnection.getResponseCode();
        if (300 > i || i >= 400) goto _L8; else goto _L7
_L7:
        String s2 = httpurlconnection.getHeaderField("Location");
        if (s2 != null) goto _L10; else goto _L9
_L9:
        com.google.ads.util.d.c((new StringBuilder("Could not get redirect location from a ")).append(i).append(" redirect.").toString());
        a.a(e.d);
        d = true;
_L11:
        httpurlconnection.disconnect();
        continue; /* Loop/switch isn't completed */
        MalformedURLException malformedurlexception;
        malformedurlexception;
        com.google.ads.util.d.b("Received malformed ad url from javascript.", malformedurlexception);
        a.a(e.d);
_L2:
        return;
_L6:
        httpurlconnection.addRequestProperty("Cookie", s);
          goto _L4
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
        IOException ioexception;
        ioexception;
        com.google.ads.util.d.d("IOException connecting to ad url.", ioexception);
        a.a(e.c);
        return;
_L10:
        a(httpurlconnection);
        f = s2;
          goto _L11
_L8:
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        String s1;
label0:
        {
            a(httpurlconnection);
            s1 = AdUtil.a(new InputStreamReader(httpurlconnection.getInputStream())).trim();
            com.google.ads.util.d.a((new StringBuilder("Response content is: ")).append(s1).toString());
            if (!TextUtils.isEmpty(s1))
            {
                break label0;
            }
            com.google.ads.util.d.a((new StringBuilder("Response message is null or zero length: ")).append(s1).toString());
            a.a(e.b);
            d = true;
        }
          goto _L11
        a.a(s1, f);
        d = true;
          goto _L11
        if (i != 400)
        {
            break MISSING_BLOCK_LABEL_449;
        }
        com.google.ads.util.d.c("Bad request");
        a.a(e.a);
        d = true;
          goto _L11
        com.google.ads.util.d.c((new StringBuilder("Invalid response code: ")).append(i).toString());
        a.a(e.d);
        d = true;
          goto _L11
        Throwable throwable;
        throwable;
        com.google.ads.util.d.b("An unknown error occurred in AdResponseLoader.", throwable);
        a.a(e.d);
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }
}
