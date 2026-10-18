package me.paranoid.wifikill;

import android.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
final class c implements SearchView.OnQueryTextListener {
    final /* synthetic */ WiFiKill a;

    c(WiFiKill wiFiKill) {
        this.a = wiFiKill;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public final boolean onQueryTextChange(String str) {
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public final boolean onQueryTextSubmit(String str) {
        int iA = WiFiKill.b.a(str);
        me.paranoid.a.c.a("pos = " + iA);
        if (iA == -1) {
            return false;
        }
        this.a.l.setQuery("", false);
        this.a.j.getListView().setSelection(iA);
        this.a.j.getListView().requestFocus();
        this.a.k.findItem(R.id.menu_search).collapseActionView();
        return true;
    }
}
