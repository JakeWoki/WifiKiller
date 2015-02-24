// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.app.FragmentManager;
import android.widget.ListView;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            DevicesFragment

final class g
    implements android.app.FragmentManager.OnBackStackChangedListener
{

    final DevicesFragment a;

    g(DevicesFragment devicesfragment)
    {
        a = devicesfragment;
        super();
    }

    public final void onBackStackChanged()
    {
        if (DevicesFragment.a(a) && DevicesFragment.b(a) != -1 && a.getFragmentManager().getBackStackEntryCount() == 0)
        {
            a.getListView().setItemChecked(DevicesFragment.b(a), false);
            DevicesFragment.c(a);
            DevicesFragment.d(a);
        }
    }
}
