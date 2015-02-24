// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import com.google.ads.a.r;
import com.google.ads.a.s;
import com.google.ads.util.ad;
import com.google.ads.util.d;

// Referenced classes of package com.google.ads:
//            AdActivity, ar

public final class b
{

    public b()
    {
    }

    public static void a(r r1, s s1)
    {
        Object obj = com.google.ads.AdActivity.d();
        obj;
        JVM INSTR monitorenter ;
        if (AdActivity.f() != null) goto _L2; else goto _L1
_L1:
        AdActivity.a(r1);
_L4:
        obj;
        JVM INSTR monitorexit ;
        Activity activity;
        activity = (Activity)r1.f().e.a();
        if (activity == null)
        {
            d.e("activity was null while launching an AdActivity.");
            return;
        }
        break MISSING_BLOCK_LABEL_65;
_L2:
        if (AdActivity.f() == r1) goto _L4; else goto _L3
_L3:
        d.b("Tried to launch a new AdActivity with a different AdManager.");
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Intent intent = new Intent(activity.getApplicationContext(), com/google/ads/AdActivity);
        intent.putExtra("com.google.ads.AdOpener", s1.a());
        try
        {
            d.a("Launching AdActivity.");
            activity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            d.b("Activity not found.", activitynotfoundexception);
        }
        return;
    }

    public static boolean a()
    {
        Object obj = com.google.ads.AdActivity.d();
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (AdActivity.e() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }
}
