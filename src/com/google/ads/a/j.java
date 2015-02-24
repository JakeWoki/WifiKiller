// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.google.ads.AdView;
import com.google.ads.ap;
import com.google.ads.aq;
import com.google.ads.ar;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import com.google.ads.util.ab;
import com.google.ads.util.ac;
import com.google.ads.util.ad;
import com.google.ads.util.d;
import com.google.ads.y;
import com.google.ads.z;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

// Referenced classes of package com.google.ads.a:
//            p, r, c, e, 
//            y, t, w, x, 
//            n, m, o, l, 
//            k, q

public final class j
    implements Runnable
{

    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private t g;
    private r h;
    private com.google.ads.d i;
    private WebView j;
    private String k;
    private LinkedList l;
    private String m;
    private g n;
    private volatile boolean o;
    private boolean p;
    private e q;
    private boolean r;
    private int s;
    private Thread t;
    private boolean u;
    private p v;

    protected j()
    {
        v = p.b;
    }

    public j(r r1)
    {
        v = p.b;
        h = r1;
        k = null;
        b = null;
        c = null;
        d = null;
        l = new LinkedList();
        q = null;
        r = false;
        s = -1;
        f = false;
        p = false;
        m = null;
        n = null;
        if ((Activity)r1.f().e.a() != null)
        {
            j = new c(r1.f(), null);
            j.setWebViewClient(com.google.ads.a.y.a(r1, e.b, false, false));
            j.setVisibility(8);
            j.setWillNotDraw(true);
            g = new t(this, r1);
            return;
        } else
        {
            j = null;
            g = null;
            com.google.ads.util.d.e("activity was null while trying to create an AdLoader.");
            return;
        }
    }

    static WebView a(j j1)
    {
        return j1.j;
    }

    private String a(Map map, Activity activity)
    {
        int i1 = 0;
        Context context = activity.getApplicationContext();
        w w1 = h.k();
        long l1 = w1.m();
        if (l1 > 0L)
        {
            map.put("prl", Long.valueOf(l1));
        }
        long l2 = w1.n();
        if (l2 > 0L)
        {
            map.put("prnl", Long.valueOf(l2));
        }
        String s1 = w1.l();
        if (s1 != null)
        {
            map.put("ppcl", s1);
        }
        String s2 = w1.k();
        if (s2 != null)
        {
            map.put("pcl", s2);
        }
        long l3 = w1.j();
        if (l3 > 0L)
        {
            map.put("pcc", Long.valueOf(l3));
        }
        map.put("preqs", Long.valueOf(w.o()));
        map.put("oar", Long.valueOf(w1.p()));
        map.put("bas_on", Long.valueOf(w1.s()));
        map.put("bas_off", Long.valueOf(w1.v()));
        if (w1.y())
        {
            map.put("aoi_timeout", "true");
        }
        if (w1.A())
        {
            map.put("aoi_nofill", "true");
        }
        String s3 = w1.D();
        if (s3 != null)
        {
            map.put("pit", s3);
        }
        map.put("ptime", Long.valueOf(w.E()));
        w1.a();
        w1.i();
        String s4;
        PackageInfo packageinfo;
        int j1;
        String s5;
        String s6;
        String s7;
        DisplayMetrics displaymetrics;
        if (h.f().b())
        {
            map.put("format", "interstitial_mb");
        } else
        {
            g g1 = ((x)h.f().k.a()).b();
            if (g1.c())
            {
                map.put("smart_w", "full");
            }
            if (g1.d())
            {
                map.put("smart_h", "auto");
            }
            if (!g1.e())
            {
                map.put("format", g1.toString());
            } else
            {
                HashMap hashmap = new HashMap();
                hashmap.put("w", Integer.valueOf(g1.a()));
                hashmap.put("h", Integer.valueOf(g1.b()));
                map.put("ad_frame", hashmap);
            }
        }
        map.put("slotname", h.f().d.a());
        map.put("js", "afma-sdk-a-v6.2.1");
        s4 = context.getPackageName();
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(s4, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new n(this, "NameNotFoundException");
        }
        j1 = packageinfo.versionCode;
        s5 = AdUtil.f(context);
        if (!TextUtils.isEmpty(s5))
        {
            map.put("mv", s5);
        }
        map.put("msid", context.getPackageName());
        map.put("app_name", (new StringBuilder()).append(j1).append(".android.").append(context.getPackageName()).toString());
        map.put("isu", AdUtil.a(context));
        s6 = AdUtil.d(context);
        if (s6 == null)
        {
            s6 = "null";
        }
        map.put("net", s6);
        s7 = AdUtil.e(context);
        if (s7 != null && s7.length() != 0)
        {
            map.put("cap", s7);
        }
        map.put("u_audio", Integer.valueOf(AdUtil.g(context).ordinal()));
        displaymetrics = AdUtil.a(activity);
        map.put("u_sd", Float.valueOf(displaymetrics.density));
        map.put("u_h", Integer.valueOf(AdUtil.a(context, displaymetrics)));
        map.put("u_w", Integer.valueOf(AdUtil.b(context, displaymetrics)));
        map.put("hl", Locale.getDefault().getLanguage());
        if (h.f().i != null && h.f().i.a() != null)
        {
            AdView adview = (AdView)h.f().i.a();
            if (adview.getParent() != null)
            {
                int ai[] = new int[2];
                adview.getLocationOnScreen(ai);
                int i2 = ai[0];
                int j2 = ai[1];
                DisplayMetrics displaymetrics1 = ((Context)h.f().f.a()).getResources().getDisplayMetrics();
                int k2 = displaymetrics1.widthPixels;
                int i3 = displaymetrics1.heightPixels;
                StringBuilder stringbuilder;
                g ag[];
                TelephonyManager telephonymanager;
                String s8;
                StringBuilder stringbuilder1;
                String s9;
                StringBuilder stringbuilder2;
                StringBuilder stringbuilder3;
                String s10;
                int k1;
                g g2;
                int j3;
                HashMap hashmap1;
                if (adview.isShown() && i2 + adview.getWidth() > 0 && j2 + adview.getHeight() > 0 && i2 <= k2 && j2 <= i3)
                {
                    j3 = 1;
                } else
                {
                    j3 = 0;
                }
                hashmap1 = new HashMap();
                hashmap1.put("x", Integer.valueOf(i2));
                hashmap1.put("y", Integer.valueOf(j2));
                hashmap1.put("width", Integer.valueOf(adview.getWidth()));
                hashmap1.put("height", Integer.valueOf(adview.getHeight()));
                hashmap1.put("visible", Integer.valueOf(j3));
                map.put("ad_pos", hashmap1);
            }
        }
        stringbuilder = new StringBuilder();
        ag = (g[])h.f().l.a();
        if (ag != null)
        {
            for (k1 = ag.length; i1 < k1; i1++)
            {
                g2 = ag[i1];
                if (stringbuilder.length() != 0)
                {
                    stringbuilder.append("|");
                }
                stringbuilder.append((new StringBuilder()).append(g2.a()).append("x").append(g2.b()).toString());
            }

            map.put("sz", stringbuilder.toString());
        }
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        map.put("carrier", telephonymanager.getNetworkOperator());
        map.put("gnt", Integer.valueOf(telephonymanager.getNetworkType()));
        if (AdUtil.c())
        {
            map.put("simulator", Integer.valueOf(1));
        }
        map.put("session_id", y.a().b().toString());
        map.put("seq_num", y.a().c().toString());
        s8 = AdUtil.a(map);
        if (((Boolean)((aq)((ap)h.f().a.a()).a.a()).l.a()).booleanValue())
        {
            stringbuilder1 = new StringBuilder();
            s9 = c();
        } else
        {
            stringbuilder1 = (new StringBuilder()).append(c());
            com.google.ads.d _tmp = i;
            s9 = "AFMA_getSdkConstants();";
        }
        stringbuilder2 = stringbuilder1.append(s9);
        com.google.ads.d _tmp1 = i;
        stringbuilder3 = stringbuilder2.append("AFMA_buildAdURL(").append(s8).append(");");
        com.google.ads.d _tmp2 = i;
        s10 = stringbuilder3.append("</script></head><body></body></html>").toString();
        com.google.ads.util.d.c((new StringBuilder("adRequestUrlHtml: ")).append(s10).toString());
        return s10;
    }

    private void a(e e1, boolean flag)
    {
        h.a(new m(h, j, g, e1, flag));
    }

    static String b(j j1)
    {
        return j1.m;
    }

    static r c(j j1)
    {
        return j1.h;
    }

    private String c()
    {
        if (i instanceof com.google.ads.c.a)
        {
            return "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>";
        } else
        {
            return "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>";
        }
    }

    static g d(j j1)
    {
        return j1.n;
    }

    protected final void a()
    {
        this;
        JVM INSTR monitorenter ;
        r = true;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        s = i1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(p p1)
    {
        this;
        JVM INSTR monitorenter ;
        v = p1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void a(com.google.ads.d d1)
    {
        i = d1;
        o = false;
        t = new Thread(this);
        t.start();
    }

    public final void a(e e1)
    {
        this;
        JVM INSTR monitorenter ;
        q = e1;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(g g1)
    {
        this;
        JVM INSTR monitorenter ;
        n = g1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        l.add(s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void a(String s1, String s2)
    {
        this;
        JVM INSTR monitorenter ;
        b = s2;
        c = s1;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        f = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        p = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void b(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        e = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        u = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void c(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        d = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        a = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void d(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        k = s1;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void e(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        m = s1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void run()
    {
        this;
        JVM INSTR monitorenter ;
        if (j != null && g != null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        com.google.ads.util.d.e("adRequestWebView was null while trying to load an ad.");
        a(e.d, false);
        this;
        JVM INSTR monitorexit ;
        return;
        Activity activity = (Activity)h.f().e.a();
        if (activity != null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        com.google.ads.util.d.e("activity was null while forming an ad request.");
        a(e.d, false);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        long l1;
        long l2;
        Map map;
        Object obj;
        l1 = h.m();
        l2 = SystemClock.elapsedRealtime();
        map = i.a((Context)h.f().f.a());
        obj = map.get("extras");
        if (!(obj instanceof Map)) goto _L2; else goto _L1
_L1:
        Map map1;
        Object obj3;
        map1 = (Map)obj;
        Object obj1 = map1.get("_adUrl");
        if (obj1 instanceof String)
        {
            b = (String)obj1;
        }
        Object obj2 = map1.get("_requestUrl");
        if (obj2 instanceof String)
        {
            k = (String)obj2;
        }
        obj3 = map1.get("_orientation");
        if (!(obj3 instanceof String)) goto _L4; else goto _L3
_L3:
        if (!obj3.equals("p")) goto _L6; else goto _L5
_L5:
        s = 1;
_L4:
        Object obj4 = map1.get("_norefresh");
        if ((obj4 instanceof String) && obj4.equals("t"))
        {
            h.c();
        }
_L2:
        if (b != null) goto _L8; else goto _L7
_L7:
        String s2 = k;
        if (s2 != null) goto _L10; else goto _L9
_L9:
        String s3 = a(map, activity);
        Throwable throwable;
        n n1;
        String s4;
        long l7;
        long l8;
        boolean flag2;
        if (i instanceof com.google.ads.c.a)
        {
            s4 = "http://www.gstatic.com/safa/";
        } else
        {
            s4 = "http://media.admob.com/";
        }
        h.a(new o(this, j, s4, s3));
        l7 = SystemClock.elapsedRealtime();
        l8 = l1 - (l7 - l2);
        if (l8 <= 0L)
        {
            break MISSING_BLOCK_LABEL_367;
        }
        wait(l8);
        flag2 = o;
        if (!flag2) goto _L12; else goto _L11
_L11:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        if (!obj3.equals("l")) goto _L4; else goto _L13
_L13:
        s = 0;
          goto _L4
        throwable;
        com.google.ads.util.d.b("An unknown error occurred in AdLoader.", throwable);
        a(e.d, true);
_L54:
        this;
        JVM INSTR monitorexit ;
        return;
        n1;
        com.google.ads.util.d.c((new StringBuilder("Caught internal exception: ")).append(n1).toString());
        a(e.d, false);
        this;
        JVM INSTR monitorexit ;
        return;
        InterruptedException interruptedexception2;
        interruptedexception2;
        com.google.ads.util.d.a((new StringBuilder("AdLoader InterruptedException while getting the URL: ")).append(interruptedexception2).toString());
        this;
        JVM INSTR monitorexit ;
        return;
_L12:
        if (q == null)
        {
            break MISSING_BLOCK_LABEL_506;
        }
        a(q, false);
        this;
        JVM INSTR monitorexit ;
        return;
        if (k != null) goto _L10; else goto _L14
_L14:
        com.google.ads.util.d.c((new StringBuilder("AdLoader timed out after ")).append(l1).append("ms while getting the URL.").toString());
        a(e.c, false);
        this;
        JVM INSTR monitorexit ;
        return;
_L10:
        w w1 = h.k();
        com.google.ads.a.l.a[v.ordinal()];
        JVM INSTR tableswitch 1 4: default 600
    //                   1 677
    //                   2 701
    //                   3 715
    //                   4 734;
           goto _L15 _L16 _L17 _L18 _L19
_L15:
        if (a) goto _L21; else goto _L20
_L20:
        long l5;
        com.google.ads.util.d.a("Not using loadUrl().");
        g.a(u);
        g.a(k);
        l5 = SystemClock.elapsedRealtime();
        long l6 = l1 - (l5 - l2);
        if (l6 <= 0L) goto _L23; else goto _L22
_L22:
        wait(l6);
_L23:
        boolean flag1 = o;
        if (!flag1) goto _L25; else goto _L24
_L24:
        this;
        JVM INSTR monitorexit ;
        return;
_L16:
        w1.r();
        w1.u();
        w1.x();
        com.google.ads.util.d.c("Request scenario: Online server request.");
          goto _L15
_L17:
        w1.t();
        com.google.ads.util.d.c("Request scenario: Online using buffered ads.");
          goto _L15
_L18:
        w1.w();
        w1.q();
        com.google.ads.util.d.c("Request scenario: Offline using buffered ads.");
          goto _L15
_L19:
        w1.q();
        com.google.ads.util.d.c("Request scenario: Offline with no buffered ads.");
        com.google.ads.util.d.c("Network is unavailable.  Aborting ad request.");
        a(e.c, false);
        this;
        JVM INSTR monitorexit ;
        return;
        InterruptedException interruptedexception1;
        interruptedexception1;
        com.google.ads.util.d.a((new StringBuilder("AdLoader InterruptedException while getting the ad server's response: ")).append(interruptedexception1).toString());
        this;
        JVM INSTR monitorexit ;
        return;
_L25:
        if (q == null) goto _L27; else goto _L26
_L26:
        a(q, false);
        this;
        JVM INSTR monitorexit ;
        return;
_L27:
        if (c != null) goto _L8; else goto _L28
_L28:
        com.google.ads.util.d.c((new StringBuilder("AdLoader timed out after ")).append(l1).append("ms while waiting for the ad server's response.").toString());
        a(e.c, false);
        this;
        JVM INSTR monitorexit ;
        return;
_L21:
        b = k;
        com.google.ads.util.d.a((new StringBuilder("Using loadUrl.  adBaseUrl: ")).append(b).toString());
_L8:
        if (a) goto _L30; else goto _L29
_L29:
        if (!f) goto _L32; else goto _L31
_L31:
        h.b(true);
        if (!TextUtils.isEmpty(e)) goto _L34; else goto _L33
_L33:
        com.google.ads.util.d.b("Got a mediation response with no content type. Aborting mediation.");
        a(e.d, false);
_L37:
        this;
        JVM INSTR monitorexit ;
        return;
_L34:
        if (e.startsWith("application/json")) goto _L36; else goto _L35
_L35:
        com.google.ads.util.d.b((new StringBuilder("Got a mediation response with a content type: '")).append(e).append("'. Expected something starting with 'application/json'. Aborting mediation.").toString());
        a(e.d, false);
          goto _L37
        JSONException jsonexception;
        jsonexception;
        com.google.ads.util.d.b("AdLoader can't parse gWhirl server configuration.", jsonexception);
        a(e.d, false);
          goto _L37
_L36:
        z z1;
        String s1;
        com.google.ads.ab ab1;
        z1 = z.a(c);
        s1 = d;
        ab1 = h.g();
        if (s1 == null) goto _L39; else goto _L38
_L38:
        if (s1.contains("no-store") || s1.contains("no-cache")) goto _L39; else goto _L40
_L40:
        Matcher matcher;
        boolean flag;
        matcher = Pattern.compile("max-age\\s*=\\s*(\\d+)").matcher(s1);
        flag = matcher.find();
        if (!flag) goto _L42; else goto _L41
_L41:
        int i1 = Integer.parseInt(matcher.group(1));
        ab1.a(z1, i1);
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        com.google.ads.util.d.c(String.format(locale, "Caching gWhirl configuration for: %d seconds", aobj));
_L39:
        h.a(new k(this, z1));
          goto _L37
        NumberFormatException numberformatexception;
        numberformatexception;
        com.google.ads.util.d.b("Caught exception trying to parse cache control directive. Overflow?", numberformatexception);
          goto _L39
_L42:
        com.google.ads.util.d.c((new StringBuilder("Unrecognized cacheControlDirective: '")).append(s1).append("'. Not caching configuration.").toString());
          goto _L39
_L32:
        if (e == null || !e.startsWith("application/json") && !e.startsWith("text/javascript")) goto _L44; else goto _L43
_L43:
        com.google.ads.util.d.b((new StringBuilder("Expected HTML but received ")).append(e).append(".").toString());
        a(e.d, false);
        this;
        JVM INSTR monitorexit ;
        return;
_L44:
        if (h.f().l.a() == null) goto _L46; else goto _L45
_L45:
        if (n != null) goto _L48; else goto _L47
_L47:
        com.google.ads.util.d.b("Multiple supported ad sizes were specified, but the server did not respond with a size.");
        a(e.d, false);
        this;
        JVM INSTR monitorexit ;
        return;
_L48:
        if (Arrays.asList((Object[])h.f().l.a()).contains(n)) goto _L30; else goto _L49
_L49:
        com.google.ads.util.d.b((new StringBuilder("The ad server did not respond with a supported AdSize: ")).append(n).toString());
        a(e.d, false);
        this;
        JVM INSTR monitorexit ;
        return;
_L46:
        if (n != null)
        {
            com.google.ads.util.d.e("adSize was expected to be null in AdLoader.");
            n = null;
        }
_L30:
        long l3;
        h.b(false);
        c c1 = h.i();
        h.j().c();
        h.k().h();
        h.a(new o(this, c1, b, c));
        l3 = SystemClock.elapsedRealtime();
        long l4 = l1 - (l3 - l2);
        if (l4 <= 0L) goto _L51; else goto _L50
_L50:
        wait(l4);
_L51:
        if (!r) goto _L53; else goto _L52
_L52:
        h.a(new q(h, j, l, s, p, m, n));
          goto _L54
        InterruptedException interruptedexception;
        interruptedexception;
        com.google.ads.util.d.a((new StringBuilder("AdLoader InterruptedException while loading the HTML: ")).append(interruptedexception).toString());
        this;
        JVM INSTR monitorexit ;
        return;
_L53:
        com.google.ads.util.d.c((new StringBuilder("AdLoader timed out after ")).append(l1).append("ms while loading the HTML.").toString());
        a(e.c, true);
          goto _L54
    }
}
