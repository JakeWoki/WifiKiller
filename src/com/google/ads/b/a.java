// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.b;

import android.content.Context;
import com.google.ads.d;

public final class a
{

    private d a;
    private boolean b;
    private boolean c;

    public a(d d1, Context context, boolean flag)
    {
        a = d1;
        c = flag;
        if (context == null)
        {
            b = true;
            return;
        } else
        {
            b = d1.b(context);
            return;
        }
    }
}
