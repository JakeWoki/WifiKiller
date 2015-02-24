// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            a

final class f extends Handler
{

    final a a;

    private f(a a1)
    {
        a = a1;
        super();
    }

    f(a a1, byte byte0)
    {
        this(a1);
    }

    public final void handleMessage(Message message)
    {
        try
        {
            a.b();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }
}
