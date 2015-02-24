// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.text.TextUtils;
import android.util.Log;

// Referenced classes of package com.google.ads.util:
//            c

public final class b
{

    private static boolean a = Log.isLoggable("GoogleAdsAssertion", 3);

    public static void a(Object obj)
    {
        boolean flag;
        if (obj != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c(flag, "Assertion that an object is not null failed.");
    }

    public static void a(Object obj, Object obj1)
    {
        boolean flag;
        if (obj == obj1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c(flag, (new StringBuilder("Assertion that 'a' and 'b' refer to the same object failed.a: ")).append(obj).append(", b: ").append(obj1).toString());
    }

    public static void a(String s)
    {
        boolean flag;
        if (!TextUtils.isEmpty(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c(flag, (new StringBuilder("Expected a non empty string, got: ")).append(s).toString());
    }

    public static void a(boolean flag)
    {
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        c(flag1, "Assertion failed.");
    }

    public static void a(boolean flag, String s)
    {
        c(flag, s);
    }

    public static void b(boolean flag, String s)
    {
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        c(flag1, s);
    }

    private static void c(boolean flag, String s)
    {
        while (!Log.isLoggable("GoogleAdsAssertion", 3) && !a || flag) 
        {
            return;
        }
        c c1 = new c(s);
        Log.d("GoogleAdsAssertion", s, c1);
        throw c1;
    }

}
