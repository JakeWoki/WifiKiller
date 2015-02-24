// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.os.SystemClock;
import com.google.ads.ai;
import com.google.ads.util.d;
import java.util.Iterator;
import java.util.LinkedList;

public final class w
{

    private static long f = 0L;
    private static long g = 0L;
    private static long h = 0L;
    private static long i = 0L;
    private static long j = -1L;
    private final LinkedList a = new LinkedList();
    private long b;
    private long c;
    private long d;
    private final LinkedList e = new LinkedList();
    private boolean k;
    private boolean l;
    private String m;
    private long n;
    private final LinkedList o = new LinkedList();
    private final LinkedList p = new LinkedList();

    public w()
    {
        k = false;
        l = false;
        a();
    }

    public static long E()
    {
        if (j == -1L)
        {
            j = SystemClock.elapsedRealtime();
            return 0L;
        } else
        {
            return SystemClock.elapsedRealtime() - j;
        }
    }

    protected static long o()
    {
        return f;
    }

    protected final boolean A()
    {
        return l;
    }

    protected final void B()
    {
        com.google.ads.util.d.d("Interstitial no fill.");
        l = true;
    }

    public final void C()
    {
        com.google.ads.util.d.d("Landing page dismissed.");
        e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected final String D()
    {
        return m;
    }

    protected final void a()
    {
        this;
        JVM INSTR monitorenter ;
        a.clear();
        b = 0L;
        c = 0L;
        d = 0L;
        e.clear();
        n = -1L;
        o.clear();
        p.clear();
        k = false;
        l = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(ai ai1)
    {
        this;
        JVM INSTR monitorenter ;
        o.add(Long.valueOf(SystemClock.elapsedRealtime() - n));
        p.add(ai1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(String s1)
    {
        com.google.ads.util.d.d((new StringBuilder("Prior impression ticket = ")).append(s1).toString());
        m = s1;
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        o.clear();
        p.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        n = SystemClock.elapsedRealtime();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String d()
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        long l1;
        for (Iterator iterator = o.iterator(); iterator.hasNext(); stringbuilder.append(l1))
        {
            l1 = ((Long)iterator.next()).longValue();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(",");
            }
        }

        break MISSING_BLOCK_LABEL_70;
        Exception exception;
        exception;
        throw exception;
        String s1 = stringbuilder.toString();
        this;
        JVM INSTR monitorexit ;
        return s1;
    }

    public final String e()
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        ai ai1;
        for (Iterator iterator = p.iterator(); iterator.hasNext(); stringbuilder.append(ai1.ordinal()))
        {
            ai1 = (ai)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(",");
            }
        }

        break MISSING_BLOCK_LABEL_70;
        Exception exception;
        exception;
        throw exception;
        String s1 = stringbuilder.toString();
        this;
        JVM INSTR monitorexit ;
        return s1;
    }

    protected final void f()
    {
        com.google.ads.util.d.d("Ad clicked.");
        a.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    protected final void g()
    {
        com.google.ads.util.d.d("Ad request loaded.");
        b = SystemClock.elapsedRealtime();
    }

    protected final void h()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.d.d("Ad request before rendering.");
        c = SystemClock.elapsedRealtime();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void i()
    {
        com.google.ads.util.d.d("Ad request started.");
        d = SystemClock.elapsedRealtime();
        f = 1L + f;
    }

    protected final long j()
    {
        if (a.size() != e.size())
        {
            return -1L;
        } else
        {
            return (long)a.size();
        }
    }

    protected final String k()
    {
        if (a.isEmpty() || a.size() != e.size())
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i1 = 0; i1 < a.size(); i1++)
        {
            if (i1 != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Long.toString(((Long)e.get(i1)).longValue() - ((Long)a.get(i1)).longValue()));
        }

        return stringbuilder.toString();
    }

    protected final String l()
    {
        if (a.isEmpty())
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i1 = 0; i1 < a.size(); i1++)
        {
            if (i1 != 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(Long.toString(((Long)a.get(i1)).longValue() - b));
        }

        return stringbuilder.toString();
    }

    protected final long m()
    {
        return b - d;
    }

    protected final long n()
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        long l2;
        l1 = c;
        l2 = d;
        long l3 = l1 - l2;
        this;
        JVM INSTR monitorexit ;
        return l3;
        Exception exception;
        exception;
        throw exception;
    }

    protected final long p()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = g;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void q()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.d.d("Ad request network error");
        g = 1L + g;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void r()
    {
        this;
        JVM INSTR monitorenter ;
        g = 0L;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final long s()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = h;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void t()
    {
        this;
        JVM INSTR monitorenter ;
        h = 1L + h;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void u()
    {
        this;
        JVM INSTR monitorenter ;
        h = 0L;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final long v()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = i;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void w()
    {
        this;
        JVM INSTR monitorenter ;
        i = 1L + i;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void x()
    {
        this;
        JVM INSTR monitorenter ;
        i = 0L;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final boolean y()
    {
        return k;
    }

    protected final void z()
    {
        com.google.ads.util.d.d("Interstitial network error.");
        k = true;
    }

}
