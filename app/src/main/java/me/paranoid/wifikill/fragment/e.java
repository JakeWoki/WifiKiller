package me.paranoid.wifikill.fragment;

import android.widget.AbsListView;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes.dex */
final class e implements AbsListView.OnScrollListener {
    final /* synthetic */ a a;

    e(a aVar) {
        this.a = aVar;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        this.a.i = this.a.h;
        this.a.h = i;
        if (this.a.h == 2 || this.a.h == 1) {
            this.a.g = false;
        } else if (this.a.i != 0) {
            if (this.a.e.getLastVisiblePosition() >= this.a.e.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(this.a.d.h.getGroupCount() - 1)) - 2) {
                this.a.g = true;
            }
        }
    }
}
