// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import com.google.ads.a.r;
import com.google.ads.a.w;
import com.google.ads.a.x;
import com.google.ads.util.ab;
import com.google.ads.util.ad;
import com.google.ads.util.b;
import com.google.ads.util.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.ads:
//            z, j, ag, ar, 
//            ae, aj, af, ad, 
//            d

public final class ac
{

    private final r a;
    private aj b;
    private Object c;
    private Thread d;
    private Object e;
    private boolean f;
    private Object g;

    protected ac()
    {
        b = null;
        c = new Object();
        d = null;
        e = new Object();
        f = false;
        g = new Object();
        a = null;
    }

    public ac(r r1)
    {
        b = null;
        c = new Object();
        d = null;
        e = new Object();
        f = false;
        g = new Object();
        com.google.ads.util.b.a(r1);
        a = r1;
    }

    static Object a(ac ac1)
    {
        return ac1.e;
    }

    static void a(ac ac1, z z1, com.google.ads.d d1)
    {
        long l;
        HashMap hashmap;
        List list2;
        ag ag1;
        String s3;
        Activity activity;
        List list;
        Iterator iterator;
        j j1;
        List list1;
        String s;
        String s1;
        String s2;
        Iterator iterator1;
        synchronized (ac1.e)
        {
            com.google.ads.util.b.a(Thread.currentThread(), ac1.d);
        }
        list = z1.f();
        if (z1.a())
        {
            l = z1.b();
        } else
        {
            l = 10000L;
        }
        iterator = list.iterator();
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_289;
        }
        j1 = (j)iterator.next();
        com.google.ads.util.d.a((new StringBuilder("Looking to fetch ads from network: ")).append(j1.b()).toString());
        list1 = j1.c();
        hashmap = j1.e();
        list2 = j1.d();
        s = j1.a();
        s1 = j1.b();
        s2 = z1.c();
        if (list2 == null)
        {
            list2 = z1.g();
        }
        ag1 = new ag(s, s1, s2, list2, z1.h(), z1.i());
        iterator1 = list1.iterator();
_L6:
        if (!iterator1.hasNext())
        {
            break MISSING_BLOCK_LABEL_48;
        }
        s3 = (String)iterator1.next();
        activity = (Activity)ac1.a.f().e.a();
        if (activity != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.d.a("Activity is null while mediating.  Terminating mediation thread.");
_L4:
        return;
_L2:
        ac1.a.k().c();
        if (ac1.a(s3, activity, d1, ag1, hashmap, l)) goto _L4; else goto _L3
_L3:
        if (!ac1.b()) goto _L6; else goto _L5
_L5:
        com.google.ads.util.d.a("GWController.destroy() called. Terminating mediation thread.");
        return;
        ac1.a.a(new ae(ac1, z1));
        return;
    }

    private boolean a()
    {
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (d != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean a(ac ac1, aj aj1)
    {
        return ac1.b(aj1);
    }

    private boolean a(String s, Activity activity, com.google.ads.d d1, ag ag1, HashMap hashmap, long l)
    {
        aj aj1 = new aj(this, (x)a.f().k.a(), ag1, s, d1, hashmap);
        aj1;
        JVM INSTR monitorenter ;
        aj1.a(activity);
_L1:
        if (aj1.b() || l <= 0L)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        long l1;
        long l2;
        l1 = SystemClock.elapsedRealtime();
        aj1.wait(l);
        l2 = SystemClock.elapsedRealtime();
        l -= l2 - l1;
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        com.google.ads.util.d.a((new StringBuilder("Interrupted while waiting for ad network to load ad using adapter class: ")).append(s).toString());
        a.k().a(aj1.d());
        if (!aj1.b() || !aj1.c())
        {
            break MISSING_BLOCK_LABEL_190;
        }
        if (!a.f().b())
        {
            break MISSING_BLOCK_LABEL_180;
        }
        android.view.View view = null;
_L2:
        a.a(new af(this, aj1, view, ag1));
        aj1;
        JVM INSTR monitorexit ;
        return true;
        view = aj1.e();
          goto _L2
        aj1.a();
        aj1;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        throw exception;
    }

    static Thread b(ac ac1)
    {
        ac1.d = null;
        return null;
    }

    private boolean b()
    {
        boolean flag;
        synchronized (g)
        {
            flag = f;
        }
        return flag;
    }

    private boolean b(aj aj1)
    {
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        if (!b())
        {
            break MISSING_BLOCK_LABEL_22;
        }
        aj1.a();
        return true;
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        throw exception;
    }

    static r c(ac ac1)
    {
        return ac1.a;
    }

    public final void a(aj aj1)
    {
        synchronized (c)
        {
            if (b != aj1)
            {
                if (b != null)
                {
                    b.a();
                }
                b = aj1;
            }
        }
    }

    public final void a(z z1, com.google.ads.d d1)
    {
        r r1;
label0:
        {
            synchronized (e)
            {
                if (!a())
                {
                    break label0;
                }
                com.google.ads.util.d.c("Mediation thread is not done executing previous mediation  request. Ignoring new mediation request");
            }
            return;
        }
        r1 = a;
        if (z1.j() == null) goto _L2; else goto _L1
_L1:
        if (!r1.f().b()) goto _L4; else goto _L3
_L3:
        if (!z1.j().a())
        {
            com.google.ads.util.d.e("InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify 'interstitial' as the ad-type in the mediation UI.");
        }
_L2:
        d = new Thread(new com.google.ads.ad(this, z1, d1));
        d.start();
        obj;
        JVM INSTR monitorexit ;
        return;
_L4:
        g g1;
label1:
        {
            g1 = ((x)r1.f().k.a()).b();
            if (!z1.j().a())
            {
                break label1;
            }
            com.google.ads.util.d.e((new StringBuilder("AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  (")).append(g1).append(") in the ad-type field in the mediation UI.").toString());
        }
          goto _L2
        g g2 = z1.j().b();
        if (g2 == g1) goto _L2; else goto _L5
_L5:
        com.google.ads.util.d.e((new StringBuilder("Mediation server returned ad size: '")).append(g2).append("', while the AdView was created with ad size: '").append(g1).append("'. Using the ad-size passed to the AdView on creation.").toString());
          goto _L2
    }
}
