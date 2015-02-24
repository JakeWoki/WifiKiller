// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;
    public static final a e;
    public static final a f;
    private static final a g[];

    private a(String s, int i)
    {
        super(s, i);
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/google/ads/util/a, s);
    }

    public static a[] values()
    {
        return (a[])g.clone();
    }

    static 
    {
        a = new a("INVALID", 0);
        b = new a("SPEAKER", 1);
        c = new a("HEADPHONES", 2);
        d = new a("VIBRATE", 3);
        e = new a("EMULATOR", 4);
        f = new a("OTHER", 5);
        a aa[] = new a[6];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        aa[3] = d;
        aa[4] = e;
        aa[5] = f;
        g = aa;
    }
}
