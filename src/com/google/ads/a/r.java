// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.ads.AdActivity;
import com.google.ads.AdView;
import com.google.ads.a;
import com.google.ads.ac;
import com.google.ads.ag;
import com.google.ads.aj;
import com.google.ads.ap;
import com.google.ads.aq;
import com.google.ads.ar;
import com.google.ads.c;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.i;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.p;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ab;
import com.google.ads.util.ad;
import com.google.ads.util.d;
import com.google.ads.y;
import com.google.ads.z;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.ads.a:
//            w, x, c, e, 
//            y, j

public final class r
{

    private static final Object a = new Object();
    private final ar b;
    private j c;
    private com.google.ads.d d;
    private w e;
    private com.google.ads.a.c f;
    private com.google.ads.a.y g;
    private Handler h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private SharedPreferences o;
    private long p;
    private n q;
    private boolean r;
    private LinkedList s;
    private LinkedList t;
    private int u;
    private Boolean v;
    private com.google.ads.ab w;
    private ac x;
    private ag y;
    private String z;

    public r(a a1, Activity activity, g g1, String s1, ViewGroup viewgroup)
    {
        u = -1;
        z = null;
        r = false;
        e = new w();
        c = null;
        d = null;
        k = false;
        h = new Handler();
        p = 60000L;
        l = false;
        n = false;
        m = true;
        if (activity == null)
        {
            ap ap2 = ap.a();
            AdView adview1;
            i j1;
            x x2;
            if (a1 instanceof AdView)
            {
                adview1 = (AdView)a1;
            } else
            {
                adview1 = null;
            }
            if (a1 instanceof i)
            {
                j1 = (i)a1;
            } else
            {
                j1 = null;
            }
            if (g1 == null)
            {
                x2 = com.google.ads.a.x.a;
            } else
            {
                x2 = com.google.ads.a.x.a(g1);
            }
            b = new ar(ap2, a1, adview1, j1, s1, null, null, viewgroup, x2);
            return;
        }
        ap ap1;
        AdView adview;
        i i1;
        Context context;
        x x1;
        synchronized (a)
        {
            o = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
            i = 60000L;
        }
        ap1 = ap.a();
        if (a1 instanceof AdView)
        {
            adview = (AdView)a1;
        } else
        {
            adview = null;
        }
        if (a1 instanceof i)
        {
            i1 = (i)a1;
        } else
        {
            i1 = null;
        }
        context = activity.getApplicationContext();
        if (g1 == null)
        {
            x1 = com.google.ads.a.x.a;
        } else
        {
            x1 = com.google.ads.a.x.a(g1, activity.getApplicationContext());
        }
        b = new ar(ap1, a1, adview, i1, s1, activity, context, viewgroup, x1);
        q = new n(this);
        s = new LinkedList();
        t = new LinkedList();
        a();
        AdUtil.h((Context)b.f.a());
        w = new com.google.ads.ab();
        x = new ac(this);
        v = null;
        y = null;
    }

    private void a(View view)
    {
        ((ViewGroup)b.g.a()).removeAllViews();
        ((ViewGroup)b.g.a()).addView(view);
    }

    private void a(List list, String s1, String s2, String s3, Boolean boolean1, String s4, String s5)
    {
        String s6 = AdUtil.a((Context)b.f.a());
        y y1 = com.google.ads.y.a();
        String s7 = y1.b().toString();
        String s8 = y1.c().toString();
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            String s9 = ((String)iterator.next()).replaceAll("@gw_adlocid@", (String)b.d.a()).replaceAll("@gw_qdata@", s3).replaceAll("@gw_sdkver@", "afma-sdk-a-v6.2.1").replaceAll("@gw_sessid@", s7).replaceAll("@gw_seqnum@", s8).replaceAll("@gw_devid@", s6);
            if (s2 != null)
            {
                s9 = s9.replaceAll("@gw_adnetid@", s2);
            }
            if (s1 != null)
            {
                s9 = s9.replaceAll("@gw_allocid@", s1);
            }
            if (s4 != null)
            {
                s9 = s9.replaceAll("@gw_adt@", s4);
            }
            if (s5 != null)
            {
                s9 = s9.replaceAll("@gw_aec@", s5);
            }
            if (boolean1 != null)
            {
                String s10;
                if (boolean1.booleanValue())
                {
                    s10 = "1";
                } else
                {
                    s10 = "0";
                }
                s9 = s9.replaceAll("@gw_adnetrefresh@", s10);
            }
            (new Thread(new m(s9, (Context)b.f.a()))).start();
        }
        e.b();
    }

    private boolean w()
    {
        this;
        JVM INSTR monitorenter ;
        j j1 = c;
        boolean flag;
        if (j1 != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private void x()
    {
        this;
        JVM INSTR monitorenter ;
        Activity activity = (Activity)b.e.a();
        if (activity != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.d.e("activity was null while trying to ping tracking URLs.");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = s.iterator();
        while (iterator.hasNext()) 
        {
            (new Thread(new m((String)iterator.next(), activity.getApplicationContext()))).start();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void y()
    {
        this;
        JVM INSTR monitorenter ;
        Activity activity = (Activity)b.e.a();
        if (activity != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.d.e("activity was null while trying to ping click tracking URLs.");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = t.iterator();
        while (iterator.hasNext()) 
        {
            (new Thread(new m((String)iterator.next(), activity.getApplicationContext()))).start();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        f = new com.google.ads.a.c(b, ((x)b.k.a()).b());
        f.setVisibility(8);
        g = com.google.ads.a.y.a(this, com.google.ads.a.e.c, true, b.b());
        f.setWebViewClient(g);
        aq aq1 = (aq)((ap)b.a.a()).a.a();
        if (AdUtil.a < ((Integer)aq1.a.a()).intValue() && !((x)b.k.a()).a())
        {
            com.google.ads.util.d.a("Disabling hardware acceleration for a banner.");
            f.b();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(float f1)
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = p;
        p = (long)(1000F * f1);
        if (o() && p != l1)
        {
            d();
            e();
        }
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
        u = i1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(long l1)
    {
        synchronized (a)
        {
            android.content.SharedPreferences.Editor editor = o.edit();
            editor.putLong((new StringBuilder("Timeout")).append(b.d).toString(), l1);
            editor.commit();
            if (r)
            {
                i = l1;
            }
        }
    }

    public final void a(View view, aj aj, ag ag1)
    {
        this;
        JVM INSTR monitorenter ;
        Boolean boolean1;
        Object obj;
        com.google.ads.util.d.a("AdManager.onReceiveGWhirlAd() called.");
        k = true;
        y = ag1;
        if (!b.a())
        {
            break MISSING_BLOCK_LABEL_108;
        }
        a(view);
        boolean1 = Boolean.valueOf(false);
        obj = ag1.d();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        obj = new ArrayList();
        ((List) (obj)).add("http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@");
        String s1 = ag1.b();
        a(((List) (obj)), ag1.a(), s1, ag1.c(), boolean1, e.d(), e.e());
        x.a(aj);
        if ((c)b.m.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(com.google.ads.d d1)
    {
        this;
        JVM INSTR monitorenter ;
        if (!w()) goto _L2; else goto _L1
_L1:
        com.google.ads.util.d.e("loadAd called while the ad is already loading, so aborting.");
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!AdActivity.c()) goto _L4; else goto _L3
_L3:
        com.google.ads.util.d.e("loadAd called while an interstitial or landing page is displayed, so aborting");
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L4:
        if (!AdUtil.c((Context)b.f.a()) || !AdUtil.b((Context)b.f.a())) goto _L5; else goto _L6
_L6:
        long l1 = o.getLong("GoogleAdMobDoritosLife", 60000L);
        if (com.google.ads.p.a((Context)b.f.a(), l1))
        {
            com.google.ads.p.a((Activity)b.e.a());
        }
        k = false;
        s.clear();
        d = d1;
        if (!w.a())
        {
            break MISSING_BLOCK_LABEL_173;
        }
        x.a(w.b(), d1);
          goto _L5
        c = new j(this);
        c.a(d1);
          goto _L5
    }

    public final void a(e e1)
    {
        this;
        JVM INSTR monitorenter ;
        c = null;
        if (e1 == e.c)
        {
            a(60F);
            if (!o())
            {
                e();
                n = true;
            }
        }
        if (!b.b()) goto _L2; else goto _L1
_L1:
        if (e1 != e.b) goto _L4; else goto _L3
_L3:
        e.B();
_L2:
        com.google.ads.util.d.c((new StringBuilder("onFailedToReceiveAd(")).append(e1).append(")").toString());
        if ((c)b.m.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        if (e1 != e.c) goto _L2; else goto _L5
_L5:
        e.z();
          goto _L2
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(z z1)
    {
        this;
        JVM INSTR monitorenter ;
        c = null;
        if (!z1.d()) goto _L2; else goto _L1
_L1:
        a(z1.e());
        if (!l)
        {
            e();
        }
_L4:
        x.a(z1, d);
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!l) goto _L4; else goto _L3
_L3:
        d();
          goto _L4
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Runnable runnable)
    {
        h.post(runnable);
    }

    public final void a(String s1)
    {
        android.net.Uri uri = (new android.net.Uri.Builder()).encodedQuery(s1).build();
        StringBuilder stringbuilder = new StringBuilder();
        java.util.HashMap hashmap = AdUtil.b(uri);
        String s2;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); stringbuilder.append(s2).append(" = ").append((String)hashmap.get(s2)).append("\n"))
        {
            s2 = (String)iterator.next();
        }

        z = stringbuilder.toString().trim();
        if (TextUtils.isEmpty(z))
        {
            z = null;
        }
    }

    protected final void a(LinkedList linkedlist)
    {
        this;
        JVM INSTR monitorenter ;
        String s1;
        for (Iterator iterator = linkedlist.iterator(); iterator.hasNext(); com.google.ads.util.d.a((new StringBuilder("Adding a click tracking URL: ")).append(s1).toString()))
        {
            s1 = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_56;
        Exception exception;
        exception;
        throw exception;
        t = linkedlist;
        this;
        JVM INSTR monitorexit ;
    }

    public final void a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        j = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String b()
    {
        return z;
    }

    public final void b(long l1)
    {
        this;
        JVM INSTR monitorenter ;
        if (l1 <= 0L)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        o.edit().putLong("GoogleAdMobDoritosLife", l1).commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b(z z1)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        String s1;
        com.google.ads.util.d.a("AdManager.onGWhirlNoFill() called.");
        obj = z1.i();
        s1 = z1.c();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        obj = new ArrayList();
        ((List) (obj)).add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@");
        a(((List) (obj)), null, null, s1, null, e.d(), e.e());
        if ((c)b.m.a() != null)
        {
            b.h.a();
            e.b;
        }
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
        com.google.ads.util.d.a((new StringBuilder("Adding a tracking URL: ")).append(s1).toString());
        s.add(s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b(boolean flag)
    {
        v = Boolean.valueOf(flag);
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        m = false;
        com.google.ads.util.d.a("Refreshing is no longer allowed on this AdView.");
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void d()
    {
        this;
        JVM INSTR monitorenter ;
        if (!l) goto _L2; else goto _L1
_L1:
        com.google.ads.util.d.a("Disabling refreshing.");
        h.removeCallbacks(q);
        l = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.google.ads.util.d.a("Refreshing is already disabled.");
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void e()
    {
        this;
        JVM INSTR monitorenter ;
        n = false;
        if (!b.a())
        {
            break MISSING_BLOCK_LABEL_107;
        }
        if (!m) goto _L2; else goto _L1
_L1:
        if (l) goto _L4; else goto _L3
_L3:
        com.google.ads.util.d.a((new StringBuilder("Enabling refreshing every ")).append(p).append(" milliseconds.").toString());
        h.postDelayed(q, p);
        l = true;
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        com.google.ads.util.d.a("Refreshing is already enabled.");
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L2:
        com.google.ads.util.d.a("Refreshing disabled on this AdView");
          goto _L5
        com.google.ads.util.d.a("Tried to enable refreshing on something other than an AdView.");
          goto _L5
    }

    public final ar f()
    {
        return b;
    }

    public final com.google.ads.ab g()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.ab ab1 = w;
        this;
        JVM INSTR monitorexit ;
        return ab1;
        Exception exception;
        exception;
        throw exception;
    }

    public final j h()
    {
        this;
        JVM INSTR monitorenter ;
        j j1 = c;
        this;
        JVM INSTR monitorexit ;
        return j1;
        Exception exception;
        exception;
        throw exception;
    }

    public final com.google.ads.a.c i()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.a.c c1 = f;
        this;
        JVM INSTR monitorexit ;
        return c1;
        Exception exception;
        exception;
        throw exception;
    }

    public final com.google.ads.a.y j()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.a.y y1 = g;
        this;
        JVM INSTR monitorexit ;
        return y1;
        Exception exception;
        exception;
        throw exception;
    }

    public final w k()
    {
        return e;
    }

    public final int l()
    {
        this;
        JVM INSTR monitorenter ;
        int i1 = u;
        this;
        JVM INSTR monitorexit ;
        return i1;
        Exception exception;
        exception;
        throw exception;
    }

    public final long m()
    {
        return i;
    }

    public final boolean n()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = j;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean o()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = l;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final void p()
    {
        this;
        JVM INSTR monitorenter ;
        e.C();
        com.google.ads.util.d.c("onDismissScreen()");
        if ((c)b.m.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void q()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.d.c("onPresentScreen()");
        if ((c)b.m.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void r()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.d.c("onLeaveApplication()");
        if ((c)b.m.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void s()
    {
        this;
        JVM INSTR monitorenter ;
        if ((h)b.n.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void t()
    {
        e.f();
        y();
    }

    public final void u()
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        if (!b.a()) goto _L2; else goto _L1
_L1:
        if (!((AdView)b.i.a()).isShown() || !AdUtil.d()) goto _L4; else goto _L3
_L3:
        com.google.ads.util.d.c("Refreshing ad.");
        a(d);
_L7:
        if (!n) goto _L6; else goto _L5
_L5:
        d();
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        com.google.ads.util.d.a("Not refreshing because the ad is not visible.");
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        h.postDelayed(q, p);
          goto _L8
_L2:
        com.google.ads.util.d.a("Tried to refresh an ad that wasn't an AdView.");
          goto _L8
        com.google.ads.util.d.a("Tried to refresh before calling loadAd().");
          goto _L8
    }

    protected final void v()
    {
        this;
        JVM INSTR monitorenter ;
        c = null;
        k = true;
        f.setVisibility(0);
        if (b.a())
        {
            a(f);
        }
        e.g();
        if (b.a())
        {
            x();
        }
        com.google.ads.util.d.c("onReceiveAd()");
        if ((c)b.m.a() != null)
        {
            b.h.a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
