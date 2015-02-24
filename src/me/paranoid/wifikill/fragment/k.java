// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import me.paranoid.wifikill.WiFiKill;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            StatusBarFragment

final class k
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final StatusBarFragment a;

    k(StatusBarFragment statusbarfragment)
    {
        a = statusbarfragment;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        ((WiFiKill)a.getActivity()).b(flag);
    }
}
