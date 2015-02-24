// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public final class g
{

    public static final g a = new g(-1, -2, "mb");
    public static final g b = new g(320, 50, "mb");
    public static final g c = new g(300, 250, "as");
    public static final g d = new g(468, 60, "as");
    public static final g e = new g(728, 90, "as");
    public static final g f = new g(160, 600, "as");
    private final int g;
    private final int h;
    private boolean i;
    private boolean j;
    private boolean k;
    private String l;

    public g(int i1, int j1)
    {
        this(i1, j1, null);
        if (f())
        {
            k = false;
            l = "mb";
            return;
        } else
        {
            k = true;
            return;
        }
    }

    private g(int i1, int j1, String s)
    {
        boolean flag = true;
        super();
        g = i1;
        h = j1;
        l = s;
        boolean flag1;
        if (i1 == -1)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        i = flag1;
        if (j1 != -2)
        {
            flag = false;
        }
        j = flag;
        k = false;
    }

    public static g a(g g1, Context context)
    {
        if (context == null || !g1.f())
        {
            if (g1.f())
            {
                g1 = b;
            }
            return g1;
        }
        int i1;
        int j1;
        if (g1.i)
        {
            DisplayMetrics displaymetrics1 = context.getResources().getDisplayMetrics();
            i1 = (int)((float)displaymetrics1.widthPixels / displaymetrics1.density);
        } else
        {
            i1 = g1.a();
        }
        if (g1.j)
        {
            DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
            int k1 = (int)((float)displaymetrics.heightPixels / displaymetrics.density);
            g g2;
            if (k1 <= 400)
            {
                j1 = 32;
            } else
            if (k1 <= 720)
            {
                j1 = 50;
            } else
            {
                j1 = 90;
            }
        } else
        {
            j1 = g1.b();
        }
        g2 = new g(i1, j1, g1.l);
        g2.j = g1.j;
        g2.i = g1.i;
        g2.k = g1.k;
        return g2;
    }

    private boolean f()
    {
        return g < 0 || h < 0;
    }

    public final int a()
    {
        if (g < 0)
        {
            throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
        } else
        {
            return g;
        }
    }

    public final int b()
    {
        if (h < 0)
        {
            throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
        } else
        {
            return h;
        }
    }

    public final boolean c()
    {
        return i;
    }

    public final boolean d()
    {
        return j;
    }

    public final boolean e()
    {
        return k;
    }

    public final boolean equals(Object obj)
    {
        g g1;
        if (obj instanceof g)
        {
            if (g == (g1 = (g)obj).g && h == g1.h)
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        return Integer.valueOf(g).hashCode() << 16 | 0xffff & Integer.valueOf(h).hashCode();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(a()).append("x").append(b());
        String s;
        if (l == null)
        {
            s = "";
        } else
        {
            s = (new StringBuilder("_")).append(l).toString();
        }
        return stringbuilder.append(s).toString();
    }

}
