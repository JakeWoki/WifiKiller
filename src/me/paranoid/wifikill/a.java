// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package me.paranoid.wifikill:
//            WiFiKill

public final class a extends BaseAdapter
{

    private static a c = null;
    private Context a;
    private ArrayList b;

    public a(Context context, ArrayList arraylist)
    {
        a = context;
        b = arraylist;
        c = this;
    }

    public static a a()
    {
        return c;
    }

    private static String b(int i)
    {
        float f = i / 1024;
        float f1 = f / 1024F;
        DecimalFormat decimalformat = new DecimalFormat("#.##");
        if (f1 > 1.0F)
        {
            return (new StringBuilder()).append(decimalformat.format(f1)).append("MB").toString();
        }
        if (f > 1.0F)
        {
            return (new StringBuilder()).append(decimalformat.format(f)).append("kB").toString();
        } else
        {
            return (new StringBuilder()).append(i).append("b").toString();
        }
    }

    public final int a(String s)
    {
        Iterator iterator = b.iterator();
        for (int i = 0; iterator.hasNext(); i++)
        {
            me.paranoid.wifikill.service.a a1 = (me.paranoid.wifikill.service.a)iterator.next();
            if (a1.a.equals(s) || s.equals(a1.b()))
            {
                return i;
            }
        }

        return -1;
    }

    public final me.paranoid.wifikill.service.a a(int i)
    {
        return (me.paranoid.wifikill.service.a)b.get(i);
    }

    public final ArrayList b()
    {
        return b;
    }

    public final me.paranoid.wifikill.service.a b(String s)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            me.paranoid.wifikill.service.a a1 = (me.paranoid.wifikill.service.a)iterator.next();
            if (a1.a.equals(s))
            {
                return a1;
            }
        }

        return null;
    }

    public final void c()
    {
        notifyDataSetChanged();
    }

    public final int d()
    {
        if (b == null)
        {
            return 0;
        }
        Iterator iterator = b.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            int j;
            if (((me.paranoid.wifikill.service.a)iterator.next()).e == 2)
            {
                j = i + 1;
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public final int e()
    {
        return b.size() - d();
    }

    public final int getCount()
    {
        if (b != null)
        {
            return b.size();
        } else
        {
            return 0;
        }
    }

    public final Object getItem(int i)
    {
        return a(i);
    }

    public final long getItemId(int i)
    {
        ArrayList arraylist = b;
        arraylist;
        JVM INSTR monitorenter ;
        long l = i;
        return l;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        LayoutInflater layoutinflater = (LayoutInflater)a.getSystemService("layout_inflater");
        me.paranoid.wifikill.service.a a1 = a(i);
        if (view == null)
        {
            view = layoutinflater.inflate(0x7f030001, viewgroup, false);
        }
        ((TextView)view.findViewById(0x7f090014)).setText(a1.a);
        ((TextView)view.findViewById(0x7f090003)).setText(a1.b());
        TextView textview = (TextView)view.findViewById(0x7f090015);
        TextView textview1;
        TextView textview2;
        if (a1.c != null && WiFiKill.a().getBoolean("pref_key_show_nbname", true))
        {
            textview.setText(a1.c);
            textview.setVisibility(0);
        } else
        {
            textview.setVisibility(8);
        }
        textview1 = (TextView)view.findViewById(0x7f09001b);
        if (WiFiKill.a().getBoolean("pref_key_show_vendor", true))
        {
            String s;
            if (a1.d == null)
            {
                s = "unknown vendor";
            } else
            {
                s = a1.d;
            }
            textview1.setText(s);
            textview1.setVisibility(0);
        } else
        {
            textview1.setVisibility(8);
        }
        textview2 = (TextView)view.findViewById(0x7f09001c);
        if (WiFiKill.a().getBoolean("pref_key_show_hwaddr", true))
        {
            textview2.setText(a1.b);
            textview2.setVisibility(0);
        } else
        {
            textview2.setVisibility(8);
        }
        ((TextView)view.findViewById(0x7f090018)).setText(b(a1.f));
        ((TextView)view.findViewById(0x7f09001a)).setText(b(a1.g));
        if (a1.e == 0)
        {
            view.setBackgroundColor(Color.parseColor("#75000000"));
            view.findViewById(0x7f090012).setBackgroundColor(Color.parseColor("#00FF0000"));
        } else
        {
            if (a1.e == 1)
            {
                view.setBackgroundResource(0x7f02000b);
                view.findViewById(0x7f090012).setBackgroundColor(Color.parseColor("#3333b5e5"));
                view.findViewById(0x7f090012).setVisibility(0);
                return view;
            }
            if ((2 & a1.e) != 0)
            {
                view.setBackgroundResource(0x7f02000b);
                view.findViewById(0x7f090012).setBackgroundColor(Color.parseColor("#33FF0000"));
                view.findViewById(0x7f090012).setVisibility(0);
                return view;
            }
        }
        return view;
    }

}
