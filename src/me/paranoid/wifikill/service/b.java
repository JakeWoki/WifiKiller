// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.service;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

// Referenced classes of package me.paranoid.wifikill.service:
//            d, c

public final class b extends BaseExpandableListAdapter
    implements Serializable
{

    private ArrayList a;

    public b()
    {
        a = new ArrayList();
    }

    private d a(int i)
    {
        return (d)a.get(i);
    }

    private c b(int i, int j)
    {
        return (c)((d)a.get(i)).c.get(j);
    }

    public final String a(int i, int j)
    {
        d d1 = (d)a.get(i);
        if (j == -1)
        {
            return d1.a;
        } else
        {
            c c1 = (c)d1.c.get(j);
            return (new StringBuilder()).append(c1.a).append(c1.b).toString();
        }
    }

    public final void a(String s, String s1)
    {
        SimpleDateFormat simpledateformat;
        Date date;
        Iterator iterator;
        simpledateformat = new SimpleDateFormat("HH:mm:ss");
        date = new Date();
        iterator = a.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        d d1 = (d)iterator.next();
        if (!d1.a.equals(s)) goto _L4; else goto _L3
_L3:
        if (d1 == null)
        {
            d1 = new d(this, s, simpledateformat.format(date));
            a.add(d1);
        }
        String s2 = simpledateformat.format(date);
        d1.c.add(new c(d1.d, d1.a, s1, s2));
        return;
_L2:
        d1 = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public final Object getChild(int i, int j)
    {
        return b(i, j);
    }

    public final long getChildId(int i, int j)
    {
        return 0L;
    }

    public final View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        LayoutInflater layoutinflater = (LayoutInflater)viewgroup.getContext().getSystemService("layout_inflater");
        c c1 = b(i, j);
        if (view == null)
        {
            view = layoutinflater.inflate(0x7f030005, viewgroup, false);
        }
        TextView textview = (TextView)view.findViewById(0x7f090030);
        TextView textview1 = (TextView)view.findViewById(0x7f09002f);
        TextView textview2 = (TextView)view.findViewById(0x7f09002e);
        if (textview != null)
        {
            textview.setText(c1.a);
        }
        textview1.setText(c1.b);
        textview2.setText(c1.c);
        return view;
    }

    public final int getChildrenCount(int i)
    {
        return ((d)a.get(i)).c.size();
    }

    public final Object getGroup(int i)
    {
        return a(i);
    }

    public final int getGroupCount()
    {
        return a.size();
    }

    public final long getGroupId(int i)
    {
        return 0L;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        LayoutInflater layoutinflater = (LayoutInflater)viewgroup.getContext().getSystemService("layout_inflater");
        d d1 = a(i);
        if (view == null)
        {
            view = layoutinflater.inflate(0x7f030006, viewgroup, false);
        }
        TextView textview = (TextView)view.findViewById(0x7f090030);
        TextView textview1 = (TextView)view.findViewById(0x7f09002e);
        textview.setText(d1.a);
        textview1.setText(d1.b);
        return view;
    }

    public final boolean hasStableIds()
    {
        return false;
    }

    public final boolean isChildSelectable(int i, int j)
    {
        return true;
    }
}
