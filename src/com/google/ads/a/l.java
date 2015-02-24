// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;


// Referenced classes of package com.google.ads.a:
//            p

final class l
{

    static final int a[];

    static 
    {
        a = new int[p.values().length];
        try
        {
            a[p.b.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[p.a.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[p.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[p.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
