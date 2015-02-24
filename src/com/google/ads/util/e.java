// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    private static final e g[];
    public final int f;

    private e(String s, int i, int j)
    {
        super(s, i);
        f = j;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/google/ads/util/e, s);
    }

    public static e[] values()
    {
        return (e[])g.clone();
    }

    static 
    {
        a = new e("VERBOSE", 0, 2);
        b = new e("DEBUG", 1, 3);
        c = new e("INFO", 2, 4);
        d = new e("WARN", 3, 5);
        e = new e("ERROR", 4, 6);
        e ae[] = new e[5];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        ae[4] = e;
        g = ae;
    }
}
