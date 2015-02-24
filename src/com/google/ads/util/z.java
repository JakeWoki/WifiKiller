// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.google.ads.util:
//            d, aa

public abstract class z
{

    private static final Object a = new Object();
    private static int b = 0;
    private static HashMap c = new HashMap();
    private final ArrayList d;
    public final int o;

    public z()
    {
        d = new ArrayList();
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        Integer integer;
        int i = b;
        b = i + 1;
        o = i;
        integer = (Integer)c.get(getClass());
        if (integer != null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        c.put(getClass(), Integer.valueOf(1));
_L1:
        obj;
        JVM INSTR monitorexit ;
        com.google.ads.util.d.d((new StringBuilder("State created: ")).append(toString()).toString());
        return;
        c.put(getClass(), Integer.valueOf(1 + integer.intValue()));
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    static void a(z z1, aa aa)
    {
        z1.d.add(aa);
    }

    protected void finalize()
    {
        synchronized (a)
        {
            c.put(getClass(), Integer.valueOf(-1 + ((Integer)c.get(getClass())).intValue()));
        }
        super.finalize();
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append("[").append(o).append("]").toString();
    }

}
