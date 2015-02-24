// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import me.paranoid.a.c;
import me.paranoid.wifikill.WiFiKill;
import me.paranoid.wifikill.service.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            a

final class d
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final me.paranoid.wifikill.fragment.a a;

    d(me.paranoid.wifikill.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            c.a(compoundbutton.getContext(), (new StringBuilder("Killing: ")).append(me.paranoid.wifikill.fragment.a.a(a).a).toString());
            WiFiKill.b(me.paranoid.wifikill.fragment.a.a(a).a);
            return;
        } else
        {
            c.a(compoundbutton.getContext(), (new StringBuilder("Reviving: ")).append(me.paranoid.wifikill.fragment.a.a(a).a).toString());
            WiFiKill.c(me.paranoid.wifikill.fragment.a.a(a).a);
            return;
        }
    }
}
