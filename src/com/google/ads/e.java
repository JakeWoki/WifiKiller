// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    private static final e f[];
    private final String e;

    private e(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/google/ads/e, s);
    }

    public static e[] values()
    {
        return (e[])f.clone();
    }

    public final String toString()
    {
        return e;
    }

    static 
    {
        a = new e("INVALID_REQUEST", 0, "Invalid Ad request.");
        b = new e("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
        c = new e("NETWORK_ERROR", 2, "A network error occurred.");
        d = new e("INTERNAL_ERROR", 3, "There was an internal error.");
        e ae[] = new e[4];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        f = ae;
    }
}
