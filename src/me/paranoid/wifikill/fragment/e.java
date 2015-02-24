// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.widget.AbsListView;
import android.widget.ExpandableListView;
import me.paranoid.wifikill.service.a;
import me.paranoid.wifikill.service.b;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            a

final class e
    implements android.widget.AbsListView.OnScrollListener
{

    final me.paranoid.wifikill.fragment.a a;

    e(me.paranoid.wifikill.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public final void onScrollStateChanged(AbsListView abslistview, int i)
    {
        me.paranoid.wifikill.fragment.a.a(a, me.paranoid.wifikill.fragment.a.c(a));
        me.paranoid.wifikill.fragment.a.b(a, i);
        if (me.paranoid.wifikill.fragment.a.c(a) == 2 || me.paranoid.wifikill.fragment.a.c(a) == 1)
        {
            me.paranoid.wifikill.fragment.a.a(a, false);
        } else
        if (me.paranoid.wifikill.fragment.a.d(a) != 0)
        {
            int j = me.paranoid.wifikill.fragment.a.e(a).getFlatListPosition(ExpandableListView.getPackedPositionForGroup(-1 + me.paranoid.wifikill.fragment.a.a(a).h.getGroupCount()));
            if (me.paranoid.wifikill.fragment.a.e(a).getLastVisiblePosition() >= j - 2)
            {
                me.paranoid.wifikill.fragment.a.a(a, true);
                return;
            }
        }
    }
}
