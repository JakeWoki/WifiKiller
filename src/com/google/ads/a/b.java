// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.os.Handler;
import com.google.ads.util.d;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.ads.a:
//            a

final class b
    implements Runnable
{

    private WeakReference a;
    private Handler b;

    public b(a a1)
    {
        a = new WeakReference(a1);
        b = new Handler();
    }

    public final void a()
    {
        b.postDelayed(this, 250L);
    }

    public final void run()
    {
        a a1 = (a)a.get();
        if (a1 == null)
        {
            d.d("The video must be gone, so cancelling the timeupdate task.");
            return;
        } else
        {
            a1.e();
            b.postDelayed(this, 250L);
            return;
        }
    }
}
