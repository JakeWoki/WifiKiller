// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.view.View;
import me.paranoid.a.c;

// Referenced classes of package me.paranoid.wifikill:
//            WiFiKill, g

final class d
    implements android.view.View.OnClickListener
{

    final WiFiKill a;

    d(WiFiKill wifikill)
    {
        a = wifikill;
        super();
    }

    public final void onClick(View view)
    {
        WiFiKill.a.a(5, Boolean.valueOf(false));
        c.a(WiFiKill.d(), "scan interrupted - user request");
    }
}
