// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


public final class ai extends Enum
{

    public static final ai a;
    public static final ai b;
    public static final ai c;
    public static final ai d;
    public static final ai e;
    public static final ai f;
    private static final ai g[];

    private ai(String s, int i)
    {
        super(s, i);
    }

    public static ai valueOf(String s)
    {
        return (ai)Enum.valueOf(com/google/ads/ai, s);
    }

    public static ai[] values()
    {
        return (ai[])g.clone();
    }

    static 
    {
        a = new ai("AD", 0);
        b = new ai("NO_FILL", 1);
        c = new ai("ERROR", 2);
        d = new ai("TIMEOUT", 3);
        e = new ai("NOT_FOUND", 4);
        f = new ai("EXCEPTION", 5);
        ai aai[] = new ai[6];
        aai[0] = a;
        aai[1] = b;
        aai[2] = c;
        aai[3] = d;
        aai[4] = e;
        aai[5] = f;
        g = aai;
    }
}
