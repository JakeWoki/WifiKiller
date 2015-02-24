// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;


public final class p extends Enum
{

    public static final p a;
    public static final p b;
    public static final p c;
    public static final p d;
    private static final p f[];
    public String e;

    private p(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static p valueOf(String s)
    {
        return (p)Enum.valueOf(com/google/ads/a/p, s);
    }

    public static p[] values()
    {
        return (p[])f.clone();
    }

    static 
    {
        a = new p("ONLINE_USING_BUFFERED_ADS", 0, "online_buffered");
        b = new p("ONLINE_SERVER_REQUEST", 1, "online_request");
        c = new p("OFFLINE_USING_BUFFERED_ADS", 2, "offline_buffered");
        d = new p("OFFLINE_EMPTY", 3, "offline_empty");
        p ap[] = new p[4];
        ap[0] = a;
        ap[1] = b;
        ap[2] = c;
        ap[3] = d;
        f = ap;
    }
}
