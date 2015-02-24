// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.ar;
import com.google.ads.g;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ab;
import com.google.ads.util.d;
import com.google.ads.util.n;
import com.google.ads.util.p;
import com.google.ads.util.y;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.ads.a:
//            d

public final class c extends WebView
{

    private WeakReference a;
    private g b;
    private boolean c;
    private boolean d;
    private boolean e;

    public c(ar ar1, g g1)
    {
        super((Context)ar1.f.a());
        b = g1;
        a = null;
        c = false;
        d = false;
        e = false;
        setBackgroundColor(0);
        AdUtil.a(this);
        WebSettings websettings = getSettings();
        websettings.setSupportMultipleWindows(false);
        websettings.setJavaScriptEnabled(true);
        websettings.setSavePassword(false);
        setDownloadListener(new com.google.ads.a.d(this));
        if (AdUtil.a >= 11)
        {
            n.a(websettings, ar1);
        }
        setScrollBarStyle(0x2000000);
        if (AdUtil.a >= 14)
        {
            setWebChromeClient(new y(ar1));
        } else
        if (AdUtil.a >= 11)
        {
            setWebChromeClient(new p(ar1));
            return;
        }
    }

    public final void a()
    {
        AdActivity adactivity = d();
        if (adactivity != null)
        {
            adactivity.finish();
        }
    }

    public final void a(AdActivity adactivity)
    {
        a = new WeakReference(adactivity);
    }

    public final void a(g g1)
    {
        this;
        JVM INSTR monitorenter ;
        b = g1;
        requestLayout();
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
        if (a != null)
        {
            AdActivity adactivity = (AdActivity)a.get();
            if (adactivity != null)
            {
                adactivity.a(flag);
            }
        }
    }

    public final void b()
    {
        if (AdUtil.a >= 11)
        {
            setLayerType(1, null);
        }
        d = true;
    }

    public final void b(boolean flag)
    {
        c = flag;
    }

    public final void c()
    {
        if (d && AdUtil.a >= 11)
        {
            setLayerType(0, null);
        }
        d = false;
    }

    public final AdActivity d()
    {
        if (a != null)
        {
            return (AdActivity)a.get();
        } else
        {
            return null;
        }
    }

    public final void destroy()
    {
        try
        {
            super.destroy();
            setWebViewClient(new WebViewClient());
            return;
        }
        catch (Throwable throwable)
        {
            com.google.ads.util.d.b("An error occurred while destroying an AdWebView:", throwable);
        }
    }

    public final boolean e()
    {
        return e;
    }

    public final boolean f()
    {
        return d;
    }

    public final void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
    {
        try
        {
            super.loadDataWithBaseURL(s, s1, s2, s3, s4);
            return;
        }
        catch (Throwable throwable)
        {
            com.google.ads.util.d.b("An error occurred while loading data in AdWebView:", throwable);
        }
    }

    public final void loadUrl(String s)
    {
        try
        {
            super.loadUrl(s);
            return;
        }
        catch (Throwable throwable)
        {
            com.google.ads.util.d.b("An error occurred while loading a URL in AdWebView:", throwable);
        }
    }

    protected final void onMeasure(int i, int j)
    {
        int k = 0x7fffffff;
        this;
        JVM INSTR monitorenter ;
        if (!isInEditMode()) goto _L2; else goto _L1
_L1:
        super.onMeasure(i, j);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (b != null && !c)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        super.onMeasure(i, j);
          goto _L3
        Exception exception;
        exception;
        throw exception;
        int l;
        int i1;
        int j1;
        int k1;
        float f1;
        int l1;
        int i2;
        l = android.view.View.MeasureSpec.getMode(i);
        i1 = android.view.View.MeasureSpec.getSize(i);
        j1 = android.view.View.MeasureSpec.getMode(j);
        k1 = android.view.View.MeasureSpec.getSize(j);
        f1 = getContext().getResources().getDisplayMetrics().density;
        l1 = (int)(f1 * (float)b.a());
        i2 = (int)(f1 * (float)b.b());
        break MISSING_BLOCK_LABEL_118;
_L4:
        com.google.ads.util.d.e((new StringBuilder("Not enough space to show ad! Wants: <")).append(l1).append(", ").append(i2).append(">, Has: <").append(i1).append(", ").append(k1).append(">").toString());
        setVisibility(8);
        setMeasuredDimension(i1, k1);
          goto _L3
_L5:
        setMeasuredDimension(l1, i2);
          goto _L3
        int j2;
        if (l != 0x80000000 && l != 0x40000000)
        {
            j2 = k;
        } else
        {
            j2 = i1;
        }
        if (j1 == 0x80000000 || j1 == 0x40000000)
        {
            k = k1;
        }
        if ((float)l1 - f1 * 6F <= (float)j2 && i2 <= k) goto _L5; else goto _L4
    }

    public final void stopLoading()
    {
        try
        {
            super.stopLoading();
            return;
        }
        catch (Throwable throwable)
        {
            com.google.ads.util.d.d("An error occurred while stopping loading in AdWebView:", throwable);
        }
    }
}
