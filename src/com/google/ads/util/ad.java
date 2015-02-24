// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import java.lang.ref.WeakReference;

// Referenced classes of package com.google.ads.util:
//            aa, z

public final class ad extends aa
{

    final z d;

    public ad(z z1, String s, Object obj)
    {
        d = z1;
        super(z1, s, new WeakReference(obj), (byte)0);
    }

    public final Object a()
    {
        return ((WeakReference)a).get();
    }

    public final String toString()
    {
        return (new StringBuilder()).append(d.toString()).append(".").append(b).append(" = ").append(a()).append(" (?)").toString();
    }
}
