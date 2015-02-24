// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import android.widget.Switch;
import me.paranoid.a.c;
import me.paranoid.wifikill.WiFiKill;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            StatusBarFragment

final class j
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final StatusBarFragment a;

    j(StatusBarFragment statusbarfragment)
    {
        a = statusbarfragment;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        android.app.Activity activity = a.getActivity();
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        if (flag)
        {
            s = "Attaching to";
        } else
        {
            s = "Detaching from";
        }
        c.a(activity, stringbuilder.append(s).append(" all devices").toString());
        ((WiFiKill)a.getActivity()).a(flag);
        StatusBarFragment.a(a).setEnabled(flag);
    }
}
