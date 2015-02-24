// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.app.FragmentManager;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;
import me.paranoid.a.c;
import me.paranoid.wifikill.fragment.StatusBarFragment;
import me.paranoid.wifikill.fragment.a;
import me.paranoid.wifikill.service.WFKService;

// Referenced classes of package me.paranoid.wifikill:
//            g, WiFiKill, a

final class i extends Handler
{

    final g a;

    i(g g1)
    {
        a = g1;
        super();
    }

    public final void handleMessage(Message message)
    {
        c.a((new StringBuilder("msg = ")).append(message).toString());
        switch (message.what)
        {
        default:
            c.a("ignoring uninteresting message\n");
            return;

        case 1: // '\001'
            a.a = (WFKService)message.obj;
            a.b.c();
            return;

        case 106: // 'j'
            WiFiKill.b.notifyDataSetChanged();
            WiFiKill.b.c();
            WiFiKill.e(a.b).a();
            return;

        case 5: // '\005'
            int j = ((Integer)message.obj).intValue();
            if (j >= 0 && j <= 100)
            {
                me.paranoid.wifikill.WiFiKill.a(a.b, j);
                return;
            } else
            {
                WiFiKill.f(a.b);
                return;
            }

        case 4: // '\004'
            if (WiFiKill.g(a.b) != null)
            {
                WiFiKill.g(a.b).dismiss();
            }
            c.a((new StringBuilder("service stop obj=")).append(message.obj).toString());
            if (message.obj != null)
            {
                c.a(WiFiKill.d(), "Service error", message.obj.toString());
            }
            a.b.b();
            return;

        case 107: // 'k'
            WiFiKill.b.c();
            break;
        }
        if (WiFiKill.h(a.b) == null)
        {
            me.paranoid.wifikill.WiFiKill.a(a.b, (a)a.b.getFragmentManager().findFragmentById(0x7f090029));
        }
        if (WiFiKill.h(a.b) != null)
        {
            try
            {
                WiFiKill.h(a.b).b();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        WiFiKill.e(a.b).a();
    }
}
