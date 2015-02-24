// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ListFragment;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import me.paranoid.a.c;
import me.paranoid.wifikill.DetailsActivity;
import me.paranoid.wifikill.service.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            a, g

public class DevicesFragment extends ListFragment
{

    private boolean a;
    private me.paranoid.wifikill.a b;
    private String c;
    private int d;

    public DevicesFragment()
    {
        b = null;
        c = null;
        d = -1;
    }

    private void a(int i, a a1)
    {
        c = a1.a;
        d = i;
        me.paranoid.a.c.a((new StringBuilder("position= ")).append(i).append(" dual=").append(a).toString());
        if (a)
        {
            getListView().setChoiceMode(1);
            getListView().setItemChecked(i, true);
            FragmentManager fragmentmanager = getFragmentManager();
            me.paranoid.wifikill.fragment.a a2 = (me.paranoid.wifikill.fragment.a)fragmentmanager.findFragmentById(0x7f090029);
            if (a2 == null || a2.a() == null || !a2.a().a.equals(a1.a))
            {
                FragmentTransaction fragmenttransaction = fragmentmanager.beginTransaction();
                fragmenttransaction.setCustomAnimations(0x7f040000, 0x7f040003, 0x7f040000, 0x7f040003);
                fragmenttransaction.addToBackStack(a1.a);
                if (fragmentmanager.getBackStackEntryCount() != 0)
                {
                    fragmentmanager.popBackStack();
                }
                fragmenttransaction.replace(0x7f090029, me.paranoid.wifikill.fragment.a.a(a1));
                fragmenttransaction.commit();
            }
            return;
        } else
        {
            Intent intent = new Intent();
            intent.setClass(getActivity(), me/paranoid/wifikill/DetailsActivity);
            intent.putExtra("ip", a1.a);
            startActivity(intent);
            return;
        }
    }

    static boolean a(DevicesFragment devicesfragment)
    {
        return devicesfragment.a;
    }

    static int b(DevicesFragment devicesfragment)
    {
        return devicesfragment.d;
    }

    static int c(DevicesFragment devicesfragment)
    {
        devicesfragment.d = -1;
        return -1;
    }

    static String d(DevicesFragment devicesfragment)
    {
        devicesfragment.c = null;
        return null;
    }

    public final void a()
    {
        if (b != null)
        {
            b.notifyDataSetChanged();
        }
    }

    public final void a(me.paranoid.wifikill.a a1)
    {
        me.paranoid.a.c.a((new StringBuilder("adapter = ")).append(a1).toString());
        b = a1;
        setListAdapter(a1);
        if (a && c != null && a1 != null)
        {
            int i = a1.a(c);
            a(i, a1.a(i));
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        me.paranoid.a.c.a("start");
        super.onActivityCreated(bundle);
        View view = getActivity().findViewById(0x7f090029);
        boolean flag;
        if (view != null && view.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        if (bundle != null)
        {
            c = bundle.getString("current_dev", null);
        }
        setListAdapter(new me.paranoid.wifikill.a(getActivity(), null));
        if (a)
        {
            getListView().setChoiceMode(1);
        }
        getListView().setCacheColorHint(Color.parseColor("#00000000"));
        getFragmentManager().addOnBackStackChangedListener(new g(this));
    }

    public void onListItemClick(ListView listview, View view, int i, long l)
    {
        Log.d(getClass().getName(), "onListItemClick");
        a(i, b.a(i));
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (a)
        {
            bundle.putString("current_dev", c);
        }
    }
}
