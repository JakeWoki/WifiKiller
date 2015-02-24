// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.view.View;
import com.google.ads.a.r;
import com.google.ads.util.d;

// Referenced classes of package com.google.ads:
//            ac, aj, ag

final class af
    implements Runnable
{

    final aj a;
    final View b;
    final ag c;
    final ac d;

    af(ac ac1, aj aj, View view, ag ag)
    {
        d = ac1;
        a = aj;
        b = view;
        c = ag;
        super();
    }

    public final void run()
    {
        if (ac.a(d, a))
        {
            com.google.ads.util.d.a("Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation.");
            return;
        } else
        {
            ac.c(d).a(b, a, c);
            return;
        }
    }
}
