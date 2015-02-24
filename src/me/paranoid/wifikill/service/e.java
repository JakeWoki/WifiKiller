// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import me.paranoid.jniexec.JNIExec;
import me.paranoid.jniexec.b;

// Referenced classes of package me.paranoid.wifikill.service:
//            WFKService

final class e
    implements b
{

    final WFKService a;

    e(WFKService wfkservice)
    {
        a = wfkservice;
        super();
    }

    public final void a()
    {
        if (WFKService.d(a).a != 0 && WFKService.d(a).a != 1)
        {
            WFKService.a(a, "Service crashed... died... vaporized... my bad, sorry");
        }
    }
}
