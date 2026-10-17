package me.paranoid.wifikill.fragment;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import android.widget.TextView;
import me.paranoid.wifikill.R;

/* JADX INFO: loaded from: classes.dex */
public class StatusBarFragment extends Fragment {
    public TextView a = null;
    public TextView b = null;
    public Switch c = null;
    public Switch d = null;
    public me.paranoid.wifikill.a e = null;

    public final void a() {
        this.e = me.paranoid.wifikill.a.a();
        if (this.e == null) {
            return;
        }
        if (this.e.d() + this.e.e() > 0) {
            this.c.setEnabled(true);
            this.c.setClickable(true);
        }
        this.a.setText(new StringBuilder().append(this.e.d()).toString());
        this.b.setText(new StringBuilder().append(this.e.e()).toString());
    }

    public final void b() {
        this.c.setClickable(false);
        this.c.setChecked(false);
        this.c.setEnabled(false);
        this.d.setClickable(false);
        this.d.setChecked(false);
        this.d.setEnabled(false);
        this.b.setText("0");
        this.a.setText("0");
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.c.setOnCheckedChangeListener(new j(this));
        this.d.setOnCheckedChangeListener(new k(this));
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.status_bar, viewGroup, false);
        this.b = (TextView) viewInflate.findViewById(R.id.offline);
        this.a = (TextView) viewInflate.findViewById(R.id.online);
        this.d = (Switch) viewInflate.findViewById(R.id.kill_all);
        this.c = (Switch) viewInflate.findViewById(R.id.attach_all);
        this.d.setEnabled(false);
        this.c.setEnabled(false);
        return viewInflate;
    }
}
