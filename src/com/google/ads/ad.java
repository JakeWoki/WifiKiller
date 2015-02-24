// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;


// Referenced classes of package com.google.ads:
//            ac, z, d

final class ad
    implements Runnable
{

    final z a;
    final d b;
    final ac c;

    ad(ac ac1, z z, d d)
    {
        c = ac1;
        a = z;
        b = d;
        super();
    }

    public final void run()
    {
        ac.a(c, a, b);
        synchronized (ac.a(c))
        {
            ac.b(c);
        }
    }
}
