// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.ads:
//            z

public final class ab
{

    private z a;
    private long b;

    public ab()
    {
        a = null;
        b = -1L;
    }

    public final void a(z z, int i)
    {
        a = z;
        b = TimeUnit.MILLISECONDS.convert(i, TimeUnit.SECONDS) + SystemClock.elapsedRealtime();
    }

    public final boolean a()
    {
        return a != null && SystemClock.elapsedRealtime() < b;
    }

    public final z b()
    {
        return a;
    }
}
