// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import android.os.Handler;
import android.os.Message;
import java.io.Serializable;
import me.paranoid.a.c;

// Referenced classes of package me.paranoid.wifikill.service:
//            b

public final class a
    implements Serializable
{

    public String a;
    public String b;
    public String c;
    public String d;
    public int e;
    public int f;
    public int g;
    public b h;
    private String i;
    private Handler j;

    public a(String s, String s1, String s2, String s3)
    {
        h = new b();
        j = null;
        me.paranoid.a.c.a((new StringBuilder("!!!!!!! new dev vendor[")).append(s3).append("]").toString());
        a = s;
        b = s1;
        i = s2;
        d = s3;
        e = 0;
        f = 0;
        g = 0;
    }

    public final void a()
    {
        if (j == null)
        {
            return;
        } else
        {
            Message message = Message.obtain();
            message.obj = this;
            j.sendMessage(message);
            return;
        }
    }

    public final void a(int k)
    {
        f = k + f;
    }

    public final void a(Handler handler)
    {
        j = handler;
    }

    public final void a(String s)
    {
        i = s;
    }

    public final String b()
    {
        return i;
    }

    public final void b(int k)
    {
        g = k + g;
    }
}
