// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeoutException;
import me.paranoid.a.c;
import me.paranoid.jniexec.JNIExec;
import me.paranoid.wifikill.WiFiKill;

// Referenced classes of package me.paranoid.wifikill.service:
//            g, i, a, e, 
//            f

public class WFKService extends Service
{

    public ArrayList a;
    public boolean b;
    final Messenger c = new Messenger(new g(this));
    private NotificationManager d;
    private int e;
    private ArrayList f;
    private Activity g;
    private JNIExec h;
    private JNIExec i;
    private int j;
    private i k;

    public WFKService()
    {
        e = 31337;
        f = new ArrayList();
        g = null;
        h = null;
        i = null;
        j = -1;
        k = null;
        a = new ArrayList();
        b = false;
    }

    static Activity a(WFKService wfkservice, Activity activity)
    {
        wfkservice.g = activity;
        return activity;
    }

    static ArrayList a(WFKService wfkservice)
    {
        return wfkservice.f;
    }

    private void a(int l, Object obj)
    {
        int i1 = -1 + f.size();
        while (i1 >= 0) 
        {
            try
            {
                ((Messenger)f.get(i1)).send(Message.obtain(null, l, obj));
            }
            catch (RemoteException remoteexception)
            {
                f.remove(i1);
            }
            i1--;
        }
    }

    private void a(String s)
    {
        me.paranoid.a.c.a((new StringBuilder("error=")).append(s).toString());
        if (k != null)
        {
            k.a = true;
            k.interrupt();
            try
            {
                k.join();
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        }
        JNIExec.a("iptables -D FORWARD -j ACCEPT && iptables -t nat -D POSTROUTING -j MASQUERADE");
        a.clear();
        a(4, s);
        stopSelf();
    }

    static void a(WFKService wfkservice, int l, Object obj)
    {
        wfkservice.a(l, obj);
    }

    static void a(WFKService wfkservice, Runnable runnable)
    {
        if (wfkservice.g == null)
        {
            runnable.run();
            return;
        } else
        {
            wfkservice.g.runOnUiThread(runnable);
            return;
        }
    }

    static void a(WFKService wfkservice, String s)
    {
        wfkservice.a(s);
    }

    static void a(WFKService wfkservice, a a1)
    {
        me.paranoid.a.c.a("---");
        wfkservice.a(a1);
        wfkservice.h.b((new StringBuilder("1")).append(a1.a).append("\n").toString());
        a1.e = 1 | a1.e;
        wfkservice.a(107, a1);
    }

    static void a(WFKService wfkservice, boolean flag)
    {
        me.paranoid.a.c.a("---");
        JNIExec jniexec = wfkservice.h;
        String s;
        if (flag)
        {
            s = "r\n";
        } else
        {
            s = "R\n";
        }
        jniexec.b(s);
    }

    private void a(a a1)
    {
        i.b((new StringBuilder("iptables -D FORWARD -s ")).append(a1.a).append(" -p tcp -j REJECT --reject-with tcp-reset\n").toString());
        i.b((new StringBuilder("iptables -D FORWARD -s ")).append(a1.a).append(" -p udp -j REJECT --reject-with icmp-port-unreachable\n").toString());
    }

    private String b(String s)
    {
        String s1 = null;
        File file = new File((new StringBuilder()).append(getApplicationContext().getFilesDir().getPath()).append("/devices/").append(s).toString());
        if (!file.exists())
        {
            return null;
        }
        try
        {
            BufferedReader bufferedreader = new BufferedReader(new FileReader(file));
            s1 = bufferedreader.readLine();
            bufferedreader.close();
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
            return s1;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return s1;
        }
        return s1;
    }

    static a b(WFKService wfkservice, String s)
    {
        for (Iterator iterator = wfkservice.a.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1.a.equals(s))
            {
                return a1;
            }
        }

        return null;
    }

    static void b(WFKService wfkservice)
    {
        Notification notification = new Notification(0x7f02000a, "WiFiKill", System.currentTimeMillis());
        notification.setLatestEventInfo(wfkservice, "WiFiKill", "is running", PendingIntent.getActivity(wfkservice, 0, new Intent(wfkservice, me/paranoid/wifikill/WiFiKill), 0));
        notification.flags = 2 | notification.flags;
        wfkservice.startForeground(wfkservice.e, notification);
    }

    static void b(WFKService wfkservice, a a1)
    {
        me.paranoid.a.c.a("---");
        wfkservice.h.b((new StringBuilder("0")).append(a1.a).append("\n").toString());
        wfkservice.a(a1);
        a1.e = 0;
        wfkservice.a(107, a1);
    }

    static String c(WFKService wfkservice, String s)
    {
        return wfkservice.b(s);
    }

    static void c(WFKService wfkservice)
    {
        String s;
        s = (new StringBuilder()).append(wfkservice.getApplicationContext().getFilesDir().getPath()).append("/wfk").toString();
        me.paranoid.a.c.a("begin");
        if (wfkservice.k != null) goto _L2; else goto _L1
_L1:
        String s1;
        if (!(new File(s)).exists())
        {
            wfkservice.a("Binary file not present!");
        }
        JNIExec.a((new StringBuilder("chmod 777 ")).append(s).toString());
        JNIExec.a("iptables -F; iptables -X && iptables -t nat -F; iptables -t nat -Xiptables -P FORWARD ACCEPT && iptables -I FORWARD -j ACCEPT && iptables -t nat -I POSTROUTING -j MASQUERADE &&echo 1 > /proc/sys/net/ipv4/ip_forward");
        wfkservice.h = new JNIExec(new e(wfkservice));
        wfkservice.i = new JNIExec(new f(wfkservice));
        wfkservice.h.c((new StringBuilder()).append(s).append(" ").append(me.paranoid.a.c.a(wfkservice.getApplicationContext())).toString());
        s1 = null;
_L6:
        String s3 = wfkservice.h.a(0);
        String s2 = s3;
_L4:
        if (s2 == null || !s2.startsWith("ERROR"))
        {
            break; /* Loop/switch isn't completed */
        }
        wfkservice.a(s2.substring(8));
_L2:
        return;
        TimeoutException timeoutexception;
        timeoutexception;
        timeoutexception.printStackTrace();
        s2 = s1;
        if (true) goto _L4; else goto _L3
_L3:
        me.paranoid.a.c.a((new StringBuilder("read: ")).append(s2).toString());
        if (s2 == null || s2.contains("PID"))
        {
            if (s2 == null)
            {
                wfkservice.a("Unable to start service, do you have root?");
                return;
            } else
            {
                wfkservice.j = Integer.parseInt(s2.split("PID ")[1]);
                wfkservice.k = new i(wfkservice);
                wfkservice.k.start();
                return;
            }
        }
        s1 = s2;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static void c(WFKService wfkservice, a a1)
    {
        me.paranoid.a.c.a("---");
        wfkservice.i.b((new StringBuilder("iptables -I FORWARD -s ")).append(a1.a).append(" -p tcp -j REJECT --reject-with tcp-reset\n").toString());
        wfkservice.i.b((new StringBuilder("iptables -I FORWARD -s ")).append(a1.a).append(" -p udp -j REJECT --reject-with icmp-port-unreachable\n").toString());
        a1.e = 2 | a1.e;
        wfkservice.a(107, a1);
    }

    static JNIExec d(WFKService wfkservice)
    {
        return wfkservice.h;
    }

    static void d(WFKService wfkservice, a a1)
    {
        me.paranoid.a.c.a("---");
        int l = 3;
        do
        {
            int i1 = l - 1;
            if (l > 0)
            {
                wfkservice.a(a1);
                l = i1;
            } else
            {
                a1.e = -3 & a1.e;
                wfkservice.a(107, a1);
                return;
            }
        } while (true);
    }

    static JNIExec e(WFKService wfkservice)
    {
        return wfkservice.i;
    }

    static int f(WFKService wfkservice)
    {
        return wfkservice.j;
    }

    public IBinder onBind(Intent intent)
    {
        me.paranoid.a.c.a("---");
        return c.getBinder();
    }

    public void onCreate()
    {
        d = (NotificationManager)getSystemService("notification");
    }

    public void onDestroy()
    {
        me.paranoid.a.c.a("---");
        stopForeground(true);
        d.cancel(e);
        me.paranoid.a.c.a(this, "WiFiKill service stopped");
    }

    public int onStartCommand(Intent intent, int l, int i1)
    {
        return 2;
    }

    public boolean onUnbind(Intent intent)
    {
        me.paranoid.a.c.a("---");
        g = null;
        return true;
    }
}
