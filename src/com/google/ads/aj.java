// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.a.x;
import com.google.ads.util.b;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            ak, al, ai, ag, 
//            ac, d

public final class aj
{

    final x a;
    private final ag b;
    private boolean c;
    private boolean d;
    private ai e;
    private final ac f;
    private com.google.ads.b.b g;
    private boolean h;
    private boolean i;
    private View j;
    private final Handler k = new Handler(Looper.getMainLooper());
    private final String l;
    private final d m;
    private final HashMap n;

    public aj(ac ac, x x, ag ag, String s, d d1, HashMap hashmap)
    {
        com.google.ads.util.b.a(TextUtils.isEmpty(s));
        f = ac;
        a = x;
        b = ag;
        l = s;
        m = d1;
        n = hashmap;
        c = false;
        d = false;
        e = null;
        g = null;
        h = false;
        i = false;
        j = null;
    }

    static com.google.ads.b.b a(aj aj1)
    {
        return aj1.g;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.b.a(h, "destroy() called but startLoadAdTask has not been called.");
        k.post(new ak(this));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Activity activity)
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.b.b(h, "startLoadAdTask has already been called.");
        h = true;
        k.post(new al(this, activity, l, m, n));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(ai ai1)
    {
        this;
        JVM INSTR monitorenter ;
        d = false;
        c = true;
        e = ai1;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(com.google.ads.b.b b1)
    {
        this;
        JVM INSTR monitorenter ;
        g = b1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean b()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = c;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean c()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        com.google.ads.util.b.a(c, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
        flag = d;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final ai d()
    {
        this;
        JVM INSTR monitorenter ;
        if (e != null) goto _L2; else goto _L1
_L1:
        ai ai1 = ai.d;
_L4:
        this;
        JVM INSTR monitorexit ;
        return ai1;
_L2:
        ai1 = e;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final View e()
    {
        this;
        JVM INSTR monitorenter ;
        View view;
        com.google.ads.util.b.a(c, "getAdView() called when isLoadAdTaskDone() is false.");
        view = j;
        this;
        JVM INSTR monitorexit ;
        return view;
        Exception exception;
        exception;
        throw exception;
    }

    public final String f()
    {
        this;
        JVM INSTR monitorenter ;
        if (g == null) goto _L2; else goto _L1
_L1:
        String s1 = g.getClass().getName();
        String s = s1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = "\"adapter was not created.\"";
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final void g()
    {
        this;
        JVM INSTR monitorenter ;
        i = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final boolean h()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = i;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }
}
