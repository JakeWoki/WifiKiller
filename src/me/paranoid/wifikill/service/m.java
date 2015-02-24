// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import me.paranoid.a.c;

// Referenced classes of package me.paranoid.wifikill.service:
//            i, WFKService, a

final class m
    implements Runnable
{

    final String a[];
    final i b;

    m(i j, String as[])
    {
        b = j;
        a = as;
        super();
    }

    public final void run()
    {
        a a1 = WFKService.b(b.b, a[2]);
        if (a1 == null)
        {
            c.a((new StringBuilder("No such device: ")).append(a[2]).toString());
            return;
        }
        if (a.length < 4)
        {
            c.a("device without name :/");
            return;
        } else
        {
            a1.c = a[3];
            WFKService.a(b.b, 107, a1);
            a1.a();
            return;
        }
    }
}
