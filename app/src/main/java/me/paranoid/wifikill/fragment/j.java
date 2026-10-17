package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import me.paranoid.wifikill.WiFiKill;

/* JADX INFO: loaded from: classes.dex */
final class j implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ StatusBarFragment a;

    j(StatusBarFragment statusBarFragment) {
        this.a = statusBarFragment;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        me.paranoid.a.c.a(this.a.getActivity(), (z ? "Attaching to" : "Detaching from") + " all devices");
        ((WiFiKill) this.a.getActivity()).a(z);
        this.a.d.setEnabled(z);
    }
}
