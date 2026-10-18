package me.paranoid.wifikill.service;

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
import me.paranoid.wifikill.R;

/* JADX INFO: loaded from: classes.dex */
public final class b extends BaseExpandableListAdapter implements Serializable {
    private ArrayList a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.widget.ExpandableListAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d getGroup(int i) {
        return (d) this.a.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.widget.ExpandableListAdapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c getChild(int i, int i2) {
        return (c) ((d) this.a.get(i)).c.get(i2);
    }

    public final String a(int i, int i2) {
        d dVar = (d) this.a.get(i);
        if (i2 == -1) {
            return dVar.a;
        }
        c cVar = (c) dVar.c.get(i2);
        return cVar.a + cVar.b;
    }

    public final void a(String str, String str2) {
        d dVar;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        Date date = new Date();
        Iterator it = this.a.iterator();
        do {
            if (!it.hasNext()) {
                dVar = null;
                break;
            }
            dVar = (d) it.next();
        } while (!dVar.a.equals(str));
        if (dVar == null) {
            dVar = new d(this, str, simpleDateFormat.format(date));
            this.a.add(dVar);
        }
        dVar.c.add(new c(dVar.d, dVar.a, str2, simpleDateFormat.format(date)));
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getChildId(int i, int i2) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) viewGroup.getContext().getSystemService("layout_inflater");
        c child = getChild(i, i2);
        if (view == null) {
            view = layoutInflater.inflate(R.layout.url_child_view, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.host);
        TextView textView2 = (TextView) view.findViewById(R.id.path);
        TextView textView3 = (TextView) view.findViewById(R.id.date);
        if (textView != null) {
            textView.setText(child.a);
        }
        textView2.setText(child.b);
        textView3.setText(child.c);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getChildrenCount(int i) {
        return ((d) this.a.get(i)).c.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        return this.a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int i) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) viewGroup.getContext().getSystemService("layout_inflater");
        d group = getGroup(i);
        if (view == null) {
            view = layoutInflater.inflate(R.layout.url_group_view, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.host);
        TextView textView2 = (TextView) view.findViewById(R.id.date);
        textView.setText(group.a);
        textView2.setText(group.b);
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean isChildSelectable(int i, int i2) {
        return true;
    }
}
