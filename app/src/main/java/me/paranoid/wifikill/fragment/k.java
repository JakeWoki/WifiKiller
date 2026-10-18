package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import me.paranoid.wifikill.WiFiKill;

/* JADX INFO: loaded from: classes.dex */
final class k implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ StatusBarFragment a;

    k(StatusBarFragment statusBarFragment) {
        this.a = statusBarFragment;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ((WiFiKill) this.a.getActivity()).b(z);
    }
}
