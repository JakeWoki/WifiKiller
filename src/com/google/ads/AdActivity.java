// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.google.ads.a.a;
import com.google.ads.a.c;
import com.google.ads.a.e;
import com.google.ads.a.r;
import com.google.ads.a.s;
import com.google.ads.a.y;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.d;
import com.google.ads.util.m;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            b, p, ar, ap, 
//            aq, w

public class AdActivity extends Activity
    implements android.view.View.OnClickListener
{

    private static final e a;
    private static final Object b = new Object();
    private static AdActivity c = null;
    private static r d = null;
    private static AdActivity e = null;
    private static AdActivity f = null;
    private static final b g = new b();
    private c h;
    private FrameLayout i;
    private int j;
    private ViewGroup k;
    private boolean l;
    private long m;
    private RelativeLayout n;
    private AdActivity o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private a t;

    public AdActivity()
    {
        k = null;
        o = null;
    }

    static r a(r r1)
    {
        d = r1;
        return r1;
    }

    private void a(c c1, boolean flag, int i1, boolean flag1, boolean flag2)
    {
label0:
        {
label1:
            {
                requestWindowFeature(1);
                Window window = getWindow();
                window.setFlags(1024, 1024);
                android.view.ViewParent viewparent;
                if (AdUtil.a >= 11)
                {
                    if (r)
                    {
                        com.google.ads.util.d.a("Enabling hardware acceleration on the AdActivity window.");
                        window.setFlags(0x1000000, 0x1000000);
                    } else
                    {
                        com.google.ads.util.d.a("Disabling hardware acceleration on the AdActivity WebView.");
                        c1.b();
                    }
                }
                viewparent = c1.getParent();
                if (viewparent != null)
                {
                    if (!flag1)
                    {
                        break label0;
                    }
                    if (!(viewparent instanceof ViewGroup))
                    {
                        break label1;
                    }
                    k = (ViewGroup)viewparent;
                    k.removeView(c1);
                }
                if (c1.d() != null)
                {
                    a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
                } else
                {
                    setRequestedOrientation(i1);
                    c1.a(this);
                    int j1;
                    FrameLayout framelayout;
                    android.widget.RelativeLayout.LayoutParams layoutparams;
                    if (flag1)
                    {
                        j1 = 50;
                    } else
                    {
                        j1 = 32;
                    }
                    j = (int)TypedValue.applyDimension(1, j1, getResources().getDisplayMetrics());
                    i = new FrameLayout(getApplicationContext());
                    i.setMinimumWidth(j);
                    i.setMinimumHeight(j);
                    i.setOnClickListener(this);
                    a(flag2);
                    framelayout = i;
                    n.addView(c1, -1, -1);
                    layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    if (flag1)
                    {
                        layoutparams.addRule(10);
                        layoutparams.addRule(11);
                    } else
                    {
                        layoutparams.addRule(10);
                        layoutparams.addRule(9);
                    }
                    n.addView(framelayout, layoutparams);
                    n.setKeepScreenOn(true);
                    setContentView(n);
                    n.getRootView().setBackgroundColor(0xff000000);
                    if (flag)
                    {
                        e _tmp = a;
                        com.google.ads.a.e.a(c1);
                        return;
                    }
                }
                return;
            }
            a("MRAID banner was not a child of a ViewGroup.");
            return;
        }
        a("Interstitial created with an AdWebView that has a parent.");
    }

    public static void a(r r1, s s1)
    {
        b _tmp = g;
        com.google.ads.b.a(r1, s1);
    }

    private void a(String s1)
    {
        com.google.ads.util.d.b(s1);
        finish();
    }

    private void a(String s1, Throwable throwable)
    {
        com.google.ads.util.d.b(s1, throwable);
        finish();
    }

    private void b(r r1)
    {
        h = null;
        m = SystemClock.elapsedRealtime();
        p = true;
        synchronized (b)
        {
            if (c == null)
            {
                c = this;
                r1.r();
            }
        }
    }

    private static android.widget.RelativeLayout.LayoutParams c(int i1, int j1, int k1, int l1)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(k1, l1);
        layoutparams.setMargins(i1, j1, 0, 0);
        layoutparams.addRule(10);
        layoutparams.addRule(9);
        return layoutparams;
    }

    public static boolean c()
    {
        b _tmp = g;
        return com.google.ads.b.a();
    }

    static Object d()
    {
        return b;
    }

    static AdActivity e()
    {
        return e;
    }

    static r f()
    {
        return d;
    }

    private void g()
    {
        if (l) goto _L2; else goto _L1
_L1:
        if (h == null) goto _L4; else goto _L3
_L3:
        a;
        com.google.ads.a.e.b(h);
        h.a(null);
        h.b(false);
        if (q || n == null || k == null) goto _L4; else goto _L5
_L5:
        if (!r || s) goto _L7; else goto _L6
_L6:
        com.google.ads.util.d.a("Disabling hardware acceleration on collapsing MRAID WebView.");
        h.b();
_L13:
        n.removeView(h);
        k.addView(h);
_L4:
        if (t != null)
        {
            t.d();
            t = null;
        }
        if (this == c)
        {
            c = null;
        }
        f = o;
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        if (d != null && q && h != null)
        {
            if (h == d.i())
            {
                d.a();
            }
            h.stopLoading();
        }
        if (this != e) goto _L9; else goto _L8
_L8:
        e = null;
        if (d == null) goto _L11; else goto _L10
_L10:
        d.p();
        d = null;
_L9:
        l = true;
        com.google.ads.util.d.a("AdActivity is closing.");
_L2:
        return;
_L7:
        if (!r && s)
        {
            com.google.ads.util.d.a("Re-enabling hardware acceleration on collapsing MRAID WebView.");
            h.c();
        }
        continue; /* Loop/switch isn't completed */
_L11:
        com.google.ads.util.d.e("currentAdManager is null while trying to destroy AdActivity.");
          goto _L9
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public final a a()
    {
        return t;
    }

    public final void a(int i1, int j1, int k1, int l1)
    {
        if (t != null)
        {
            t.setLayoutParams(c(i1, j1, k1, l1));
            t.requestLayout();
        }
    }

    public final void a(boolean flag)
    {
        if (i != null)
        {
            i.removeAllViews();
            if (!flag)
            {
                ImageButton imagebutton = new ImageButton(this);
                imagebutton.setImageResource(0x1080017);
                imagebutton.setBackgroundColor(0);
                imagebutton.setOnClickListener(this);
                imagebutton.setPadding(0, 0, 0, 0);
                android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(j, j, 17);
                i.addView(imagebutton, layoutparams);
            }
        }
    }

    public final c b()
    {
        if (o != null)
        {
            return o.h;
        }
        synchronized (b)
        {
            if (d != null)
            {
                break MISSING_BLOCK_LABEL_42;
            }
            com.google.ads.util.d.e("currentAdManager was null while trying to get the opening AdWebView.");
        }
        return null;
        exception;
        throw exception;
        c c1 = d.i();
        if (c1 != h)
        {
            return c1;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
    }

    public final void b(int i1, int j1, int k1, int l1)
    {
label0:
        {
            if (t != null)
            {
                break MISSING_BLOCK_LABEL_88;
            }
            t = new a(this, h);
            n.addView(t, 0, c(i1, j1, k1, l1));
            synchronized (b)
            {
                if (d != null)
                {
                    break label0;
                }
                com.google.ads.util.d.e("currentAdManager was null while trying to get the opening AdWebView.");
            }
            return;
        }
        d.j().b();
        obj;
        JVM INSTR monitorexit ;
        return;
    }

    public void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        if (b() == null || intent == null || intent.getExtras() == null || intent.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION") == null || intent.getExtras().getString("com.google.circles.platform.result.extra.ACTION") == null) goto _L2; else goto _L1
_L1:
        String s1;
        String s2;
        s1 = intent.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION");
        s2 = intent.getExtras().getString("com.google.circles.platform.result.extra.ACTION");
        if (!s1.equals("yes")) goto _L2; else goto _L3
_L3:
        if (!s2.equals("insert")) goto _L5; else goto _L4
_L4:
        com.google.ads.p.a(b(), true);
_L2:
        finish();
        return;
_L5:
        if (s2.equals("delete"))
        {
            com.google.ads.p.a(b(), false);
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public void onClick(View view)
    {
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        l = false;
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        r r1;
        boolean flag;
        aq aq1;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        r1 = d;
        if (e == null)
        {
            e = this;
            r1.q();
        }
        if (o == null && f != null)
        {
            o = f;
        }
        f = this;
        if (r1.f().a() && e == this || r1.f().b() && o == e)
        {
            r1.t();
        }
        flag = r1.n();
        aq1 = (aq)((ap)r1.f().a.a()).a.a();
        Exception exception;
        boolean flag1;
        boolean flag2;
        Bundle bundle1;
        if (AdUtil.a >= ((Integer)aq1.a.a()).intValue())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        s = flag1;
        if (AdUtil.a >= ((Integer)aq1.b.a()).intValue())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        r = flag2;
        obj;
        JVM INSTR monitorexit ;
        n = null;
        p = false;
        q = true;
        t = null;
        bundle1 = getIntent().getBundleExtra("com.google.ads.AdOpener");
        if (bundle1 == null)
        {
            a("Could not get the Bundle used to create AdActivity.");
            return;
        }
        break MISSING_BLOCK_LABEL_274;
        a("Could not get currentAdManager.");
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        s s1 = new s(bundle1);
        String s2 = s1.b();
        HashMap hashmap = s1.c();
        if (s2.equals("plusone"))
        {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.putExtras(getIntent().getExtras());
            intent.putExtra("com.google.circles.platform.intent.extra.ENTITY", (String)hashmap.get("u"));
            intent.putExtra("com.google.circles.platform.intent.extra.ENTITY_TYPE", com.google.ads.w.a.c);
            intent.putExtra("com.google.circles.platform.intent.extra.ACTION", (String)hashmap.get("a"));
            b(r1);
            try
            {
                com.google.ads.util.d.a("Launching Google+ intent from AdActivity.");
                startActivityForResult(intent, 0);
                return;
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                a(activitynotfoundexception.getMessage(), activitynotfoundexception);
            }
            return;
        }
        if (s2.equals("intent"))
        {
            if (hashmap == null)
            {
                a("Could not get the paramMap in launchIntent()");
                return;
            }
            String s7 = (String)hashmap.get("u");
            if (s7 == null)
            {
                a("Could not get the URL parameter in launchIntent().");
                return;
            }
            String s8 = (String)hashmap.get("i");
            String s9 = (String)hashmap.get("m");
            Uri uri = Uri.parse(s7);
            Intent intent1;
            if (s8 == null)
            {
                intent1 = new Intent("android.intent.action.VIEW", uri);
            } else
            {
                intent1 = new Intent(s8, uri);
            }
            if (s9 != null)
            {
                intent1.setDataAndType(uri, s9);
            }
            b(r1);
            try
            {
                com.google.ads.util.d.a((new StringBuilder("Launching an intent from AdActivity: ")).append(intent1.getAction()).append(" - ").append(uri).toString());
                startActivity(intent1);
                return;
            }
            catch (ActivityNotFoundException activitynotfoundexception1)
            {
                a(activitynotfoundexception1.getMessage(), activitynotfoundexception1);
            }
            return;
        }
        n = new RelativeLayout(getApplicationContext());
        if (s2.equals("webapp"))
        {
            h = new c(r1.f(), null);
            java.util.Map map = e.c;
            boolean flag6;
            y y1;
            String s3;
            String s4;
            String s5;
            String s6;
            int j1;
            c c1;
            boolean flag7;
            if (!flag)
            {
                flag6 = true;
            } else
            {
                flag6 = false;
            }
            y1 = y.a(r1, map, true, flag6);
            y1.d();
            if (flag)
            {
                y1.a();
            }
            h.setWebViewClient(y1);
            s3 = (String)hashmap.get("u");
            s4 = (String)hashmap.get("baseurl");
            s5 = (String)hashmap.get("html");
            if (s3 != null)
            {
                h.loadUrl(s3);
            } else
            if (s5 != null)
            {
                h.loadDataWithBaseURL(s4, s5, "text/html", "utf-8", null);
            } else
            {
                a("Could not get the URL or HTML parameter to show a web app.");
                return;
            }
            s6 = (String)hashmap.get("o");
            if ("p".equals(s6))
            {
                j1 = AdUtil.b();
            } else
            if ("l".equals(s6))
            {
                j1 = AdUtil.a();
            } else
            if (this == e)
            {
                j1 = r1.l();
            } else
            {
                j1 = -1;
            }
            c1 = h;
            if (hashmap != null && "1".equals(hashmap.get("custom_close")))
            {
                flag7 = true;
            } else
            {
                flag7 = false;
            }
            a(c1, false, j1, flag, flag7);
            return;
        }
        if (s2.equals("interstitial") || s2.equals("expand"))
        {
            h = r1.i();
            int i1 = r1.l();
            if (s2.equals("expand"))
            {
                h.b(true);
                q = false;
                boolean flag4 = false;
                if (hashmap != null)
                {
                    boolean flag5 = "1".equals(hashmap.get("custom_close"));
                    flag4 = false;
                    if (flag5)
                    {
                        flag4 = true;
                    }
                }
                boolean flag3;
                if (r && !s)
                {
                    com.google.ads.util.d.a("Re-enabling hardware acceleration on expanding MRAID WebView.");
                    h.c();
                    flag3 = flag4;
                } else
                {
                    flag3 = flag4;
                }
            } else
            {
                flag3 = h.e();
            }
            a(h, true, i1, flag, flag3);
            return;
        } else
        {
            a((new StringBuilder("Unknown AdOpener, <action: ")).append(s2).append(">").toString());
            return;
        }
    }

    public void onDestroy()
    {
        if (n != null)
        {
            n.removeAllViews();
        }
        if (isFinishing())
        {
            g();
            if (q && h != null)
            {
                h.stopLoading();
                h.destroy();
                h = null;
            }
        }
        super.onDestroy();
    }

    public void onPause()
    {
        if (isFinishing())
        {
            g();
        }
        super.onPause();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        if (p && flag && SystemClock.elapsedRealtime() - m > 250L)
        {
            com.google.ads.util.d.d("Launcher AdActivity got focus and is closing.");
            finish();
        }
        super.onWindowFocusChanged(flag);
    }

    static 
    {
        a = (e)e.a.a();
    }
}
