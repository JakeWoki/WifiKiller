package me.paranoid.wifikill.fragment;

import android.app.FragmentManager;

/* JADX INFO: loaded from: classes.dex */
final class g implements FragmentManager.OnBackStackChangedListener {
    final /* synthetic */ DevicesFragment a;

    g(DevicesFragment devicesFragment) {
        this.a = devicesFragment;
    }

    @Override // android.app.FragmentManager.OnBackStackChangedListener
    public final void onBackStackChanged() {
        if (this.a.a && this.a.d != -1 && this.a.getFragmentManager().getBackStackEntryCount() == 0) {
            this.a.getListView().setItemChecked(this.a.d, false);
            DevicesFragment.c(this.a);
            DevicesFragment.d(this.a);
        }
    }
}
