package me.paranoid.wifikill.fragment;

import android.app.DialogFragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.ArrayList;
import me.paranoid.wifikill.R;

/* JADX INFO: loaded from: classes.dex */
public final class h extends DialogFragment {
    public ArrayList a;
    public i b;
    public TextView e;
    public ProgressBar f;
    public int c = -1;
    public int d = 0;
    public int g = 0;

    public static h a(me.paranoid.wifikill.a aVar, int i) {
        me.paranoid.a.c.a("---");
        h hVar = new h();
        ArrayList arrayListB = aVar.b();
        Bundle bundle = new Bundle();
        bundle.putSerializable("KEY_DEVICES", arrayListB);
        bundle.putInt("KEY_MODE", i);
        hVar.setArguments(bundle);
        return hVar;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.d = bundle.getInt("KEY_LAST_ITEM", 0);
        }
        me.paranoid.a.c.a("---");
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        me.paranoid.a.c.a("---");
        this.a = (ArrayList) getArguments().getSerializable("KEY_DEVICES");
        this.c = getArguments().getInt("KEY_MODE");
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        me.paranoid.a.c.a("---");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_kill_revive, viewGroup, false);
        this.e = (TextView) viewInflate.findViewById(R.id.message);
        this.f = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        this.f.setProgress(this.g);
        setCancelable(false);
        getDialog().setTitle("Please wait...");
        return viewInflate;
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        me.paranoid.a.c.a("---");
        this.b = new i(this, this.d);
        this.b.execute(new Object());
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        me.paranoid.a.c.a("---");
        bundle.putSerializable("KEY_DEVICES", this.a);
        if (this.b != null) {
            this.d = this.b.a();
            bundle.putInt("KEY_LAST_ITEM", this.d);
        }
    }
}
