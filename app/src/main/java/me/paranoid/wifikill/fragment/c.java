package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import me.paranoid.wifikill.WiFiKill;

/* JADX INFO: loaded from: classes.dex */
final class c implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ a a;

    c(a aVar) {
        this.a = aVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            WiFiKill.a(this.a.d.a);
            me.paranoid.a.c.a(compoundButton.getContext(), "Attaching to: " + this.a.d.a);
            this.a.a.setEnabled(true);
        } else {
            WiFiKill.d(this.a.d.a);
            me.paranoid.a.c.a(compoundButton.getContext(), "Detaching from: " + this.a.d.a);
            this.a.a.setEnabled(false);
        }
    }
}
