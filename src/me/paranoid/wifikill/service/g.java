// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.ArrayList;

// Referenced classes of package me.paranoid.wifikill.service:
//            WFKService, h

final class g extends Handler
{

    final WFKService a;

    g(WFKService wfkservice)
    {
        a = wfkservice;
        super();
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 1: // '\001'
            WFKService.a(a, (Activity)message.obj);
            WFKService.a(a).add(message.replyTo);
            try
            {
                message.replyTo.send(Message.obtain(null, 1, a));
                return;
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
            return;

        case 2: // '\002'
            WFKService.a(a).remove(message.replyTo);
            return;

        case 3: // '\003'
            WFKService.b(a);
            WFKService.c(a);
            return;

        case 4: // '\004'
            (new h(this)).start();
            return;

        case 5: // '\005'
            WFKService.a(a, ((Boolean)message.obj).booleanValue());
            return;

        case 108: // 'l'
            WFKService.a(a, WFKService.b(a, (String)message.obj));
            return;

        case 109: // 'm'
            WFKService.b(a, WFKService.b(a, (String)message.obj));
            return;

        case 110: // 'n'
            WFKService.c(a, WFKService.b(a, (String)message.obj));
            return;

        case 111: // 'o'
            WFKService.d(a, WFKService.b(a, (String)message.obj));
            return;
        }
    }
}
