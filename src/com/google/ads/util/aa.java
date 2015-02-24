// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


// Referenced classes of package com.google.ads.util:
//            z

public abstract class aa
{

    protected Object a;
    protected final String b;
    final z c;

    private aa(z z1, String s)
    {
        this(z1, s, null);
    }

    aa(z z1, String s, byte byte0)
    {
        this(z1, s);
    }

    private aa(z z1, String s, Object obj)
    {
        c = z1;
        super();
        b = s;
        z.a(z1, this);
        a = obj;
    }

    aa(z z1, String s, Object obj, byte byte0)
    {
        this(z1, s, obj);
    }

    public String toString()
    {
        return (new StringBuilder()).append(c.toString()).append(".").append(b).append(" = ").append(a).toString();
    }
}
