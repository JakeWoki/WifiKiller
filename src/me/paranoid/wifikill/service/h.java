// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import me.paranoid.jniexec.JNIExec;

// Referenced classes of package me.paranoid.wifikill.service:
//            g, WFKService

final class h extends Thread
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void run()
    {
        try
        {
            sleep(100L);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        if (WFKService.d(a.a) != null)
        {
            WFKService.d(a.a).a();
        }
        if (WFKService.e(a.a) != null)
        {
            WFKService.e(a.a).a();
        }
        WFKService.a(a.a, null);
    }
}
