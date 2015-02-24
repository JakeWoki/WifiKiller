// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;


// Referenced classes of package me.paranoid.wifikill.service:
//            a, b, i

final class l
    implements Runnable
{

    final a a;
    final String b[];
    final i c;

    l(i i, a a1, String as[])
    {
        c = i;
        a = a1;
        b = as;
        super();
    }

    public final void run()
    {
        a.h.a(b[3], b[4]);
    }
}
