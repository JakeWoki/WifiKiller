// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import me.paranoid.a.c;
import me.paranoid.wifikill.service.WFKService;

// Referenced classes of package me.paranoid.wifikill:
//            i, h, WiFiKill

public final class g
{

    public WFKService a;
    final WiFiKill b;
    private Messenger c;
    private boolean d;
    private Context e;
    private final Messenger f = new Messenger(new i(this));
    private ServiceConnection g;

    public g(WiFiKill wifikill, Context context)
    {
        b = wifikill;
        super();
        c = null;
        a = null;
        g = new h(this);
        e = context;
    }

    static Messenger a(g g1)
    {
        return g1.f;
    }

    static Messenger a(g g1, Messenger messenger)
    {
        g1.c = messenger;
        return messenger;
    }

    static Messenger b(g g1)
    {
        return g1.c;
    }

    final void a()
    {
        me.paranoid.a.c.a("----");
        Intent intent = new Intent(e, me/paranoid/wifikill/service/WFKService);
        b.startService(intent);
        b.bindService(intent, g, 0);
        d = true;
    }

    final boolean a(int j, Object obj)
    {
        if (!d || c == null)
        {
            return false;
        }
        try
        {
            Message message = Message.obtain(null, j, obj);
            c.send(message);
        }
        catch (RemoteException remoteexception)
        {
            return false;
        }
        return true;
    }

    final void b()
    {
        if (d)
        {
            if (c != null)
            {
                try
                {
                    Message message = Message.obtain(null, 2);
                    message.replyTo = f;
                    c.send(message);
                }
                catch (RemoteException remoteexception) { }
            }
            b.unbindService(g);
        }
        d = false;
    }
}
