// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import com.google.ads.util.d;

public final class i extends Exception
{

    public final boolean a;

    public i(String s)
    {
        super(s);
        a = true;
    }

    public i(String s, Throwable throwable)
    {
        super(s, throwable);
        a = true;
    }

    public final void a(String s)
    {
        d.b(c(s));
        d.a(null, this);
    }

    public final void b(String s)
    {
        String s1 = c(s);
        if (!a)
        {
            this = null;
        }
        throw new RuntimeException(s1, this);
    }

    public final String c(String s)
    {
        if (a)
        {
            s = (new StringBuilder()).append(s).append(": ").append(getMessage()).toString();
        }
        return s;
    }
}
