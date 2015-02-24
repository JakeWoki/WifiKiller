// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import java.util.concurrent.TimeoutException;
import me.paranoid.a.a;
import me.paranoid.a.c;
import me.paranoid.jniexec.JNIExec;

// Referenced classes of package me.paranoid.wifikill.service:
//            WFKService, a, j, k, 
//            l, m

final class i extends Thread
{

    public boolean a;
    final WFKService b;

    i(WFKService wfkservice)
    {
        b = wfkservice;
        super();
        a = false;
    }

    public final void run()
    {
_L7:
        if (a) goto _L2; else goto _L1
_L1:
        String s = WFKService.d(b).a(1000);
        if (!a) goto _L4; else goto _L3
_L3:
        c.a("User request for stop!");
_L2:
        int i1;
        c.a((new StringBuilder("wfk_pid = ")).append(WFKService.f(b)).toString());
        if (WFKService.f(b) != -1)
        {
            JNIExec.a((new StringBuilder("kill -INT ")).append(WFKService.f(b)).toString());
        }
        TimeoutException timeoutexception;
        String as[];
        boolean flag;
        me.paranoid.wifikill.service.a a1;
        me.paranoid.wifikill.service.a a2;
        me.paranoid.wifikill.service.a a3;
        int j1;
        if (WFKService.d(b).a == 512)
        {
            try
            {
                Thread.sleep(10000L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        }
        if (WFKService.f(b) != -1)
        {
            JNIExec.a((new StringBuilder("kill -9 ")).append(WFKService.f(b)).toString());
        }
        return;
_L4:
        if (s != null) goto _L6; else goto _L5
_L5:
        try
        {
            c.a("Crap unable to read stuffs");
            me.paranoid.wifikill.service.WFKService.a(b, "Service stopped unexpectedly");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (TimeoutException timeoutexception) { }
        if (!a) goto _L7; else goto _L2
_L6:
        if (s.startsWith("ERROR"))
        {
            me.paranoid.wifikill.service.WFKService.a(b, s.substring(8));
            return;
        }
        c.a((new StringBuilder("read [")).append(s).append("]").toString());
        if (!s.contains("***")) goto _L7; else goto _L8
_L8:
        as = s.substring(8).split(" ");
        flag = as[1].equals("SEARCH");
        if (!flag) goto _L10; else goto _L9
_L9:
        j1 = Integer.parseInt(as[2]);
        i1 = j1;
_L11:
        me.paranoid.wifikill.service.WFKService.a(b, 5, Integer.valueOf(i1));
          goto _L7
_L10:
label0:
        {
            if (!as[1].equals("DEVICE_NEW"))
            {
                break label0;
            }
            a1 = new me.paranoid.wifikill.service.a(as[2], as[3], me.paranoid.wifikill.service.WFKService.c(b, as[3]), me.paranoid.a.a.a(b.getApplicationContext(), as[3]));
            me.paranoid.wifikill.service.WFKService.a(b, new j(this, a1));
            me.paranoid.wifikill.service.WFKService.a(b, 106, a1);
        }
          goto _L7
        if (!as[1].equals("DEVICE_UPDATE"))
        {
            break MISSING_BLOCK_LABEL_485;
        }
        a3 = WFKService.b(b, as[2]);
        if (a3 != null)
        {
            break MISSING_BLOCK_LABEL_447;
        }
        c.a((new StringBuilder("No such device: ")).append(as[2]).toString());
          goto _L7
        me.paranoid.wifikill.service.WFKService.a(b, new k(this, a3, as));
        me.paranoid.wifikill.service.WFKService.a(b, 107, a3);
        a3.a();
          goto _L7
        if (!as[1].equals("DEVICE_HOST"))
        {
            break MISSING_BLOCK_LABEL_578;
        }
        a2 = WFKService.b(b, as[2]);
        if (a2 != null)
        {
            break MISSING_BLOCK_LABEL_540;
        }
        c.a((new StringBuilder("No such device: ")).append(as[2]).toString());
          goto _L7
        me.paranoid.wifikill.service.WFKService.a(b, new l(this, a2, as));
        me.paranoid.wifikill.service.WFKService.a(b, 107, a2);
        a2.a();
          goto _L7
label1:
        {
            if (!as[1].equals("DEVICE_NBNAME"))
            {
                break label1;
            }
            me.paranoid.wifikill.service.WFKService.a(b, new m(this, as));
        }
          goto _L7
        c.a((new StringBuilder("Unknown command: ")).append(s).toString());
          goto _L7
        Exception exception;
        exception;
        i1 = -1;
          goto _L11
    }
}
