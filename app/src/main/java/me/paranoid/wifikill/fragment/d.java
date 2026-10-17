package me.paranoid.wifikill.fragment;

import android.widget.CompoundButton;
import me.paranoid.wifikill.WiFiKill;

/* JADX INFO: loaded from: classes.dex */
final class d implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            me.paranoid.a.c.a(compoundButton.getContext(), "Killing: " + this.a.d.a);
            WiFiKill.b(this.a.d.a);
        } else {
            me.paranoid.a.c.a(compoundButton.getContext(), "Reviving: " + this.a.d.a);
            WiFiKill.c(this.a.d.a);
        }
    }
}
