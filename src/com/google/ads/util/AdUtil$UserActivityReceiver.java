// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.google.ads.util:
//            AdUtil

public class  extends BroadcastReceiver
{

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("android.intent.action.USER_PRESENT"))
        {
            AdUtil.a(true);
        } else
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
        {
            AdUtil.a(false);
            return;
        }
    }

    public ()
    {
    }
}
