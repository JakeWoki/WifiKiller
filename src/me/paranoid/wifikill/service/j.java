// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import java.util.ArrayList;

// Referenced classes of package me.paranoid.wifikill.service:
//            i, WFKService, a

final class j
    implements Runnable
{

    final a a;
    final i b;

    j(i k, a a1)
    {
        b = k;
        a = a1;
        super();
    }

    public final void run()
    {
        b.b.a.add(a);
    }
}
