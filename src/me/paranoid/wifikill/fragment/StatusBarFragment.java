// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import android.widget.TextView;
import me.paranoid.wifikill.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            j, k

public class StatusBarFragment extends Fragment
{

    private TextView a;
    private TextView b;
    private Switch c;
    private Switch d;
    private a e;

    public StatusBarFragment()
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
    }

    static Switch a(StatusBarFragment statusbarfragment)
    {
        return statusbarfragment.d;
    }

    public final void a()
    {
        e = me.paranoid.wifikill.a.a();
        if (e == null)
        {
            return;
        }
        if (e.d() + e.e() > 0)
        {
            c.setEnabled(true);
            c.setClickable(true);
        }
        a.setText((new StringBuilder()).append(e.d()).toString());
        b.setText((new StringBuilder()).append(e.e()).toString());
    }

    public final void b()
    {
        c.setClickable(false);
        c.setChecked(false);
        c.setEnabled(false);
        d.setClickable(false);
        d.setChecked(false);
        d.setEnabled(false);
        b.setText("0");
        a.setText("0");
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        c.setOnCheckedChangeListener(new j(this));
        d.setOnCheckedChangeListener(new k(this));
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030004, viewgroup, false);
        b = (TextView)view.findViewById(0x7f09002d);
        a = (TextView)view.findViewById(0x7f09002c);
        d = (Switch)view.findViewById(0x7f09002a);
        c = (Switch)view.findViewById(0x7f09002b);
        d.setEnabled(false);
        c.setEnabled(false);
        return view;
    }
}
