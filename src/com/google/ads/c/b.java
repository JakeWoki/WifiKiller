// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.c;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    private static final b f[];
    private String e;

    private b(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/google/ads/c/b, s);
    }

    public static b[] values()
    {
        return (b[])f.clone();
    }

    public final String toString()
    {
        return e;
    }

    static 
    {
        a = new b("NONE", 0, "none");
        b = new b("DASHED", 1, "dashed");
        c = new b("DOTTED", 2, "dotted");
        d = new b("SOLID", 3, "solid");
        b ab[] = new b[4];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        f = ab;
    }
}
