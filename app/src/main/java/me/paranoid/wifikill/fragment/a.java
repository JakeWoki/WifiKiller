package me.paranoid.wifikill.fragment;

import android.app.Fragment;
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
import me.paranoid.wifikill.R;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Fragment implements AdapterView.OnItemLongClickListener {
    public Switch a;
    public Switch b;
    public EditText c;
    public me.paranoid.wifikill.service.a d;
    public ExpandableListView e;
    public f f;
    public boolean g;
    public int h;
    public int i;

    public a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = true;
        this.h = 0;
        this.i = 0;
    }

    public a(me.paranoid.wifikill.service.a aVar) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = true;
        this.h = 0;
        this.i = 0;
        this.d = aVar;
        this.f = new f(this, (byte) 0);
        aVar.a(this.f);
    }

    public static a a(me.paranoid.wifikill.service.a aVar) {
        return new a(aVar);
    }

    static /* synthetic */ void a(a aVar, String str) {
        aVar.d.a(str);
        File file = new File(aVar.getActivity().getApplicationContext().getFilesDir().getPath() + "/devices");
        file.mkdir();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(file, aVar.d.b)));
            bufferedWriter.write(str);
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        me.paranoid.wifikill.a.a().c();
    }

    public final me.paranoid.wifikill.service.a a() {
        return this.d;
    }

    public final void b() {
        me.paranoid.a.c.a("refreshing");
        if (this.d.e == 0) {
            if (this.b.isChecked()) {
                this.b.setChecked(false);
            }
            if (this.a.isChecked()) {
                this.a.setChecked(false);
            }
        }
        if ((this.d.e & 1) != 0 && !this.b.isChecked()) {
            this.b.setChecked(true);
        }
        if ((this.d.e & 2) != 0 && !this.a.isChecked()) {
            this.a.setChecked(true);
        }
        this.d.h.notifyDataSetChanged();
        int flatListPosition = this.e.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(this.d.h.getGroupCount() - 1));
        if (this.g) {
            this.e.smoothScrollToPosition(flatListPosition + 1, flatListPosition + 1);
        }
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.details, viewGroup, false);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
        me.paranoid.wifikill.service.b bVar = this.d.h;
        long expandableListPosition = this.e.getExpandableListPosition(i);
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://" + bVar.a(ExpandableListView.getPackedPositionGroup(expandableListPosition), ExpandableListView.getPackedPositionChild(expandableListPosition)))));
        return true;
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        TextView textView = (TextView) view.findViewById(R.id.detail_ip);
        this.a = (Switch) view.findViewById(R.id.kill_switch);
        this.b = (Switch) view.findViewById(R.id.attach_switch);
        this.c = (EditText) view.findViewById(R.id.name);
        if (this.d == null) {
            return;
        }
        textView.setText(this.d.a);
        if (this.d.b() != null) {
            this.c.setText(this.d.b());
        }
        this.b.setChecked((this.d.e & 1) != 0);
        this.a.setChecked((this.d.e & 2) != 0);
        this.a.setEnabled((this.d.e & 1) != 0);
        this.c.setOnEditorActionListener(new b(this));
        this.b.setOnCheckedChangeListener(new c(this));
        this.a.setOnCheckedChangeListener(new d(this));
        this.e = (ExpandableListView) view.findViewById(R.id.url);
        if (this.d != null) {
            this.e.setAdapter(this.d.h);
            this.e.setOnItemLongClickListener(this);
        }
        this.e.setOnScrollListener(new e(this));
    }
}
