// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


// Referenced classes of package com.google.ads.util:
//            aa, z, d

public final class ac extends aa
{

    final z d;
    private boolean e;

    public ac(z z1, String s)
    {
        d = z1;
        super(z1, s, (byte)0);
        e = false;
        e = false;
    }

    public ac(z z1, String s, Object obj)
    {
        d = z1;
        super(z1, s, obj, (byte)0);
        e = false;
        e = false;
    }

    public final Object a()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = a;
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.d.d((new StringBuilder("State changed - ")).append(d.toString()).append(".").append(b).append(": '").append(obj).append("' <-- '").append(a).append("'.").toString());
        a = obj;
        e = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(super.toString());
        String s;
        if (e)
        {
            s = " (*)";
        } else
        {
            s = "";
        }
        return stringbuilder.append(s).toString();
    }
}
