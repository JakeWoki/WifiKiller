// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import com.google.ads.util.b;
import com.google.ads.util.d;

// Referenced classes of package com.google.ads:
//            aj

final class ak
    implements Runnable
{

    final aj a;

    ak(aj aj1)
    {
        a = aj1;
        super();
    }

    public final void run()
    {
        if (a.h())
        {
            b.a(aj.a(a));
            try
            {
                aj.a(a).a();
            }
            catch (Throwable throwable)
            {
                d.b((new StringBuilder("Error while destroying adapter (")).append(a.f()).append("):").toString(), throwable);
                return;
            }
            d.a((new StringBuilder("Called destroy() for adapter with class: ")).append(aj.a(a).getClass().getName()).toString());
        }
    }
}
