// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import com.google.ads.a.r;

// Referenced classes of package com.google.ads:
//            ac, z

final class ae
    implements Runnable
{

    final z a;
    final ac b;

    ae(ac ac1, z z)
    {
        b = ac1;
        a = z;
        super();
    }

    public final void run()
    {
        ac.c(b).b(a);
    }
}
