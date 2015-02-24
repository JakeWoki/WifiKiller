// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.content.Context;
import com.google.ads.g;

public final class x
{

    public static final x a = new x(null, true);
    private g b;
    private final boolean c;

    private x(g g1, boolean flag)
    {
        b = g1;
        c = flag;
    }

    public static x a(g g1)
    {
        return a(g1, null);
    }

    public static x a(g g1, Context context)
    {
        return new x(g.a(g1, context), false);
    }

    public final boolean a()
    {
        return c;
    }

    public final g b()
    {
        return b;
    }

    public final void b(g g1)
    {
        if (!c)
        {
            b = g1;
        }
    }

}
