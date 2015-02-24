// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.util.Log;

// Referenced classes of package com.google.ads.util:
//            e, f

public final class d
{

    public static f a = null;
    private static int b = 5;

    private static void a()
    {
        if (a != null)
        {
            f _tmp = a;
        }
    }

    public static void a(String s)
    {
        if (a("Ads", 3))
        {
            Log.d("Ads", s);
        }
        e _tmp = e.b;
        a();
    }

    public static void a(String s, Throwable throwable)
    {
        if (a("Ads", 3))
        {
            Log.d("Ads", s, throwable);
        }
        e _tmp = e.b;
        a();
    }

    private static boolean a(String s, int i)
    {
label0:
        {
            boolean flag;
            boolean flag1;
            if (i >= b)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                boolean flag2 = Log.isLoggable(s, i);
                flag1 = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        return flag1;
    }

    public static void b(String s)
    {
        if (a("Ads", 6))
        {
            Log.e("Ads", s);
        }
        e _tmp = e.e;
        a();
    }

    public static void b(String s, Throwable throwable)
    {
        if (a("Ads", 6))
        {
            Log.e("Ads", s, throwable);
        }
        e _tmp = e.e;
        a();
    }

    public static void c(String s)
    {
        if (a("Ads", 4))
        {
            Log.i("Ads", s);
        }
        e _tmp = e.c;
        a();
    }

    public static void c(String s, Throwable throwable)
    {
        if (a("Ads", 4))
        {
            Log.i("Ads", s, throwable);
        }
        e _tmp = e.c;
        a();
    }

    public static void d(String s)
    {
        if (a("Ads", 2))
        {
            Log.v("Ads", s);
        }
        e _tmp = e.a;
        a();
    }

    public static void d(String s, Throwable throwable)
    {
        if (a("Ads", 5))
        {
            Log.w("Ads", s, throwable);
        }
        e _tmp = e.d;
        a();
    }

    public static void e(String s)
    {
        if (a("Ads", 5))
        {
            Log.w("Ads", s);
        }
        e _tmp = e.d;
        a();
    }

}
