// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.os.Build;

final class k
{

    static final k d = new k();
    static final k e = new k("unknown", "generic", "generic");
    public final String a;
    public final String b;
    public final String c;

    k()
    {
        a = Build.BOARD;
        b = Build.DEVICE;
        c = Build.BRAND;
    }

    private k(String s, String s1, String s2)
    {
        a = s;
        b = s1;
        c = s2;
    }

    private static boolean a(String s, String s1)
    {
        if (s != null)
        {
            return s.equals(s1);
        }
        return s == s1;
    }

    public final boolean equals(Object obj)
    {
        k k1;
        if (obj instanceof k)
        {
            if (a(a, (k1 = (k)obj).a) && a(b, k1.b) && a(c, k1.c))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        String s = a;
        int i = 0;
        if (s != null)
        {
            i = 0 + a.hashCode();
        }
        if (b != null)
        {
            i += b.hashCode();
        }
        if (c != null)
        {
            i += c.hashCode();
        }
        return i;
    }

}
