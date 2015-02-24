// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.view.Menu;
import android.view.MenuItem;
import android.widget.ListView;
import android.widget.SearchView;
import me.paranoid.wifikill.fragment.DevicesFragment;

// Referenced classes of package me.paranoid.wifikill:
//            WiFiKill, a

final class c
    implements android.widget.SearchView.OnQueryTextListener
{

    final WiFiKill a;

    c(WiFiKill wifikill)
    {
        a = wifikill;
        super();
    }

    public final boolean onQueryTextChange(String s)
    {
        return false;
    }

    public final boolean onQueryTextSubmit(String s)
    {
        int i = WiFiKill.b.a(s);
        me.paranoid.a.c.a((new StringBuilder("pos = ")).append(i).toString());
        if (i == -1)
        {
            return false;
        } else
        {
            WiFiKill.a(a).setQuery("", false);
            WiFiKill.b(a).getListView().setSelection(i);
            WiFiKill.b(a).getListView().requestFocus();
            WiFiKill.c(a).findItem(0x7f090033).collapseActionView();
            return true;
        }
    }
}
