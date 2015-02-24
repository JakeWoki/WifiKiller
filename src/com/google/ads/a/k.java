// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.webkit.WebView;
import com.google.ads.ar;
import com.google.ads.util.ab;
import com.google.ads.z;

// Referenced classes of package com.google.ads.a:
//            j, r, x

final class k
    implements Runnable
{

    final z a;
    final j b;

    k(j j1, z z)
    {
        b = j1;
        a = z;
        super();
    }

    public final void run()
    {
        if (j.a(b) != null)
        {
            j.a(b).stopLoading();
            j.a(b).destroy();
        }
        j.c(b).a(j.b(b));
        if (j.d(b) != null)
        {
            ((x)j.c(b).f().k.a()).b(j.d(b));
        }
        j.c(b).a(a);
    }
}
