// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import android.widget.Switch;
import me.paranoid.wifikill.WiFiKill;
import me.paranoid.wifikill.service.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            a

final class c
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final me.paranoid.wifikill.fragment.a a;

    c(me.paranoid.wifikill.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            WiFiKill.a(me.paranoid.wifikill.fragment.a.a(a).a);
            me.paranoid.a.c.a(compoundbutton.getContext(), (new StringBuilder("Attaching to: ")).append(me.paranoid.wifikill.fragment.a.a(a).a).toString());
            me.paranoid.wifikill.fragment.a.b(a).setEnabled(true);
            return;
        } else
        {
            WiFiKill.d(me.paranoid.wifikill.fragment.a.a(a).a);
            me.paranoid.a.c.a(compoundbutton.getContext(), (new StringBuilder("Detaching from: ")).append(me.paranoid.wifikill.fragment.a.a(a).a).toString());
            me.paranoid.wifikill.fragment.a.b(a).setEnabled(false);
            return;
        }
    }
}
