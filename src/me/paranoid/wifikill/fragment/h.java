// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.ArrayList;
import me.paranoid.a.c;
import me.paranoid.wifikill.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            i

public final class h extends DialogFragment
{

    private ArrayList a;
    private i b;
    private int c;
    private int d;
    private TextView e;
    private ProgressBar f;
    private int g;

    public h()
    {
        c = -1;
        d = 0;
        g = 0;
    }

    static ArrayList a(h h1)
    {
        return h1.a;
    }

    public static h a(a a1, int j)
    {
        me.paranoid.a.c.a("---");
        h h1 = new h();
        ArrayList arraylist = a1.b();
        Bundle bundle = new Bundle();
        bundle.putSerializable("KEY_DEVICES", arraylist);
        bundle.putInt("KEY_MODE", j);
        h1.setArguments(bundle);
        return h1;
    }

    static int b(h h1)
    {
        return h1.c;
    }

    static TextView c(h h1)
    {
        return h1.e;
    }

    static ProgressBar d(h h1)
    {
        return h1.f;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle != null)
        {
            d = bundle.getInt("KEY_LAST_ITEM", 0);
        }
        me.paranoid.a.c.a("---");
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        me.paranoid.a.c.a("---");
        a = (ArrayList)getArguments().getSerializable("KEY_DEVICES");
        c = getArguments().getInt("KEY_MODE");
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        me.paranoid.a.c.a("---");
        View view = layoutinflater.inflate(0x7f030002, viewgroup, false);
        e = (TextView)view.findViewById(0x7f090020);
        f = (ProgressBar)view.findViewById(0x7f09001d);
        f.setProgress(g);
        setCancelable(false);
        getDialog().setTitle("Please wait...");
        return view;
    }

    public final void onResume()
    {
        super.onResume();
        me.paranoid.a.c.a("---");
        b = new i(this, d);
        i j = b;
        Object aobj[] = new Object[1];
        aobj[0] = new Object();
        j.execute(aobj);
    }

    public final void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        me.paranoid.a.c.a("---");
        bundle.putSerializable("KEY_DEVICES", a);
        if (b != null)
        {
            d = b.a();
            bundle.putInt("KEY_LAST_ITEM", d);
        }
    }
}
