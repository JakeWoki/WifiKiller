// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import com.google.ads.a.r;
import com.google.ads.util.d;
import java.lang.ref.WeakReference;

public final class n
    implements Runnable
{

    private WeakReference a;

    public n(r r1)
    {
        a = new WeakReference(r1);
    }

    public final void run()
    {
        r r1 = (r)a.get();
        if (r1 == null)
        {
            d.a("The ad must be gone, so cancelling the refresh timer.");
            return;
        } else
        {
            r1.u();
            return;
        }
    }
}
