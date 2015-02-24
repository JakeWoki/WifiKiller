// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.Switch;
import android.widget.TextView;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import me.paranoid.a.c;
import me.paranoid.wifikill.service.b;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            f, b, c, d, 
//            e

public final class a extends Fragment
    implements android.widget.AdapterView.OnItemLongClickListener
{

    private Switch a;
    private Switch b;
    private EditText c;
    private me.paranoid.wifikill.service.a d;
    private ExpandableListView e;
    private f f;
    private boolean g;
    private int h;
    private int i;

    public a()
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        g = true;
        h = 0;
        i = 0;
    }

    public a(me.paranoid.wifikill.service.a a1)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        g = true;
        h = 0;
        i = 0;
        d = a1;
        f = new f(this, (byte)0);
        a1.a(f);
    }

    static int a(a a1, int j)
    {
        a1.i = j;
        return j;
    }

    public static a a(me.paranoid.wifikill.service.a a1)
    {
        return new a(a1);
    }

    static me.paranoid.wifikill.service.a a(a a1)
    {
        return a1.d;
    }

    static void a(a a1, String s)
    {
        a1.d.a(s);
        File file = new File((new StringBuilder()).append(a1.getActivity().getApplicationContext().getFilesDir().getPath()).append("/devices").toString());
        file.mkdir();
        File file1 = new File(file, a1.d.b);
        try
        {
            BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter(file1));
            bufferedwriter.write(s);
            bufferedwriter.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        me.paranoid.wifikill.a.a().c();
    }

    static boolean a(a a1, boolean flag)
    {
        a1.g = flag;
        return flag;
    }

    static int b(a a1, int j)
    {
        a1.h = j;
        return j;
    }

    static Switch b(a a1)
    {
        return a1.a;
    }

    static int c(a a1)
    {
        return a1.h;
    }

    static int d(a a1)
    {
        return a1.i;
    }

    static ExpandableListView e(a a1)
    {
        return a1.e;
    }

    public final me.paranoid.wifikill.service.a a()
    {
        return d;
    }

    public final void b()
    {
        me.paranoid.a.c.a("refreshing");
        if (d.e == 0)
        {
            if (b.isChecked())
            {
                b.setChecked(false);
            }
            if (a.isChecked())
            {
                a.setChecked(false);
            }
        }
        if ((1 & d.e) != 0 && !b.isChecked())
        {
            b.setChecked(true);
        }
        if ((2 & d.e) != 0 && !a.isChecked())
        {
            a.setChecked(true);
        }
        d.h.notifyDataSetChanged();
        int j = e.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(-1 + d.h.getGroupCount()));
        if (g)
        {
            e.smoothScrollToPosition(j + 1, j + 1);
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030000, viewgroup, false);
    }

    public final boolean onItemLongClick(AdapterView adapterview, View view, int j, long l)
    {
        b b1 = d.h;
        long l1 = e.getExpandableListPosition(j);
        String s = b1.a(ExpandableListView.getPackedPositionGroup(l1), ExpandableListView.getPackedPositionChild(l1));
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder("http://")).append(s).toString())));
        return true;
    }

    public final void onViewCreated(View view, Bundle bundle)
    {
        boolean flag = true;
        TextView textview = (TextView)view.findViewById(0x7f09000c);
        a = (Switch)view.findViewById(0x7f09000b);
        b = (Switch)view.findViewById(0x7f09000a);
        c = (EditText)view.findViewById(0x7f090003);
        if (d == null)
        {
            return;
        }
        textview.setText(d.a);
        if (d.b() != null)
        {
            c.setText(d.b());
        }
        Switch switch1 = b;
        boolean flag1;
        Switch switch2;
        boolean flag2;
        Switch switch3;
        if ((1 & d.e) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        switch1.setChecked(flag1);
        switch2 = a;
        if ((2 & d.e) != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        switch2.setChecked(flag2);
        switch3 = a;
        if ((1 & d.e) == 0)
        {
            flag = false;
        }
        switch3.setEnabled(flag);
        c.setOnEditorActionListener(new me.paranoid.wifikill.fragment.b(this));
        b.setOnCheckedChangeListener(new me.paranoid.wifikill.fragment.c(this));
        a.setOnCheckedChangeListener(new d(this));
        e = (ExpandableListView)view.findViewById(0x7f090007);
        if (d != null)
        {
            e.setAdapter(d.h);
            e.setOnItemLongClickListener(this);
        }
        e.setOnScrollListener(new e(this));
    }
}
