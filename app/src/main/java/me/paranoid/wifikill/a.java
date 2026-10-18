package me.paranoid.wifikill;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class a extends BaseAdapter {
    private static a c = null;
    private Context a;
    private ArrayList b;

    public a(Context context, ArrayList arrayList) {
        this.a = context;
        this.b = arrayList;
        c = this;
    }

    public static a a() {
        return c;
    }

    private static String b(int i) {
        float f = i / 1024;
        float f2 = f / 1024.0f;
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        if (f2 > 1.0f) {
            return decimalFormat.format(f2) + "MB";
        }
        return f > 1.0f ? decimalFormat.format(f) + "kB" : i + "b";
    }

    public final int a(String str) {
        if (str == null || this.b == null) {
            return -1;
        }
        int i = 0;
        Iterator it = this.b.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return -1;
            }
            me.paranoid.wifikill.service.a aVar = (me.paranoid.wifikill.service.a) it.next();
            if (aVar.a.equals(str) || str.equals(aVar.b())) {
                return i2;
            }
            i = i2 + 1;
        }
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final me.paranoid.wifikill.service.a getItem(int i) {
        if (this.b == null || i < 0 || i >= this.b.size()) {
            return null;
        }
        return (me.paranoid.wifikill.service.a) this.b.get(i);
    }

    public final ArrayList b() {
        return this.b;
    }

    public final me.paranoid.wifikill.service.a b(String str) {
        if (str == null || this.b == null) {
            return null;
        }
        for (Object obj : this.b) {
            me.paranoid.wifikill.service.a aVar = (me.paranoid.wifikill.service.a) obj;
            if (aVar.a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    public final void c() {
        notifyDataSetChanged();
    }

    public final int d() {
        int i = 0;
        if (this.b == null) {
            return 0;
        }
        Iterator it = this.b.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = ((me.paranoid.wifikill.service.a) it.next()).e == 2 ? i2 + 1 : i2;
        }
    }

    public final int e() {
        if (this.b == null) {
            return 0;
        }
        return this.b.size() - d();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        if (this.b != null) {
            return this.b.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) this.a.getSystemService("layout_inflater");
        me.paranoid.wifikill.service.a item = getItem(i);
        if (view == null) {
            view = layoutInflater.inflate(R.layout.device, viewGroup, false);
        }
        ((TextView) view.findViewById(R.id.ip)).setText(item.a);
        ((TextView) view.findViewById(R.id.name)).setText(item.b());
        TextView textView = (TextView) view.findViewById(R.id.nbname);
        if (item.c == null || !WiFiKill.a().getBoolean("pref_key_show_nbname", true)) {
            textView.setVisibility(8);
        } else {
            textView.setText(item.c);
            textView.setVisibility(0);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.vendor);
        if (WiFiKill.a().getBoolean("pref_key_show_vendor", true)) {
            textView2.setText(item.d == null ? "unknown vendor" : item.d);
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
        TextView textView3 = (TextView) view.findViewById(R.id.hwaddr);
        if (WiFiKill.a().getBoolean("pref_key_show_hwaddr", true)) {
            textView3.setText(item.b);
            textView3.setVisibility(0);
        } else {
            textView3.setVisibility(8);
        }
        ((TextView) view.findViewById(R.id.up)).setText(b(item.f));
        ((TextView) view.findViewById(R.id.down)).setText(b(item.g));
        if (item.e == 0) {
            view.setBackgroundColor(Color.parseColor("#75000000"));
            view.findViewById(R.id.state).setBackgroundColor(Color.parseColor("#00FF0000"));
        } else if (item.e == 1) {
            view.setBackgroundResource(R.drawable.killed);
            view.findViewById(R.id.state).setBackgroundColor(Color.parseColor("#3333b5e5"));
            view.findViewById(R.id.state).setVisibility(0);
        } else if ((item.e & 2) != 0) {
            view.setBackgroundResource(R.drawable.killed);
            view.findViewById(R.id.state).setBackgroundColor(Color.parseColor("#33FF0000"));
            view.findViewById(R.id.state).setVisibility(0);
        }
        return view;
    }
}
