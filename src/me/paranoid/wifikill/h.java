// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import me.paranoid.a.c;

// Referenced classes of package me.paranoid.wifikill:
//            g, WiFiKill

final class h
    implements ServiceConnection
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        g.a(a, new Messenger(ibinder));
        try
        {
            Message message = Message.obtain(null, 1);
            message.replyTo = g.a(a);
            message.obj = WiFiKill.d();
            g.b(a).send(message);
            return;
        }
        catch (RemoteException remoteexception)
        {
            c.a("Service crashed... darn!");
        }
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        g.a(a, null);
    }
}
