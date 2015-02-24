// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


public final class w extends Enum
{

    public static final w a;
    public static final w b;
    private static final w d[];
    public String c;

    private w(String s, int i, String s1)
    {
        super(s, i);
        c = s1;
    }

    public static w valueOf(String s)
    {
        return (w)Enum.valueOf(com/google/ads/w, s);
    }

    public static w[] values()
    {
        return (w[])d.clone();
    }

    static 
    {
        a = new w("AD", 0, "ad");
        b = new w("APP", 1, "app");
        w aw[] = new w[2];
        aw[0] = a;
        aw[1] = b;
        d = aw;
    }
}
