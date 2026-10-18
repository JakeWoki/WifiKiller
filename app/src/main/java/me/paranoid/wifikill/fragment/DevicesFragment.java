package me.paranoid.wifikill.fragment;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ListFragment;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import me.paranoid.wifikill.DetailsActivity;
import me.paranoid.wifikill.R;

/* JADX INFO: loaded from: classes.dex */
public class DevicesFragment extends ListFragment {
    public boolean a;
    public me.paranoid.wifikill.a b = null;
    public String c = null;
    public int d = -1;

    public void a(int i, me.paranoid.wifikill.service.a aVar) {
        this.c = aVar.a;
        this.d = i;
        me.paranoid.a.c.a("position= " + i + " dual=" + this.a);
        if (!this.a) {
            Intent intent = new Intent();
            intent.setClass(getActivity(), DetailsActivity.class);
            intent.putExtra("ip", aVar.a);
            startActivity(intent);
            return;
        }
        getListView().setChoiceMode(1);
        getListView().setItemChecked(i, true);
        FragmentManager fragmentManager = getFragmentManager();
        a aVar2 = (a) fragmentManager.findFragmentById(R.id.details);
        if (aVar2 == null || aVar2.a() == null || !aVar2.a().a.equals(aVar.a)) {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit, R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit);
            fragmentTransactionBeginTransaction.addToBackStack(aVar.a);
            if (fragmentManager.getBackStackEntryCount() != 0) {
                fragmentManager.popBackStack();
            }
            fragmentTransactionBeginTransaction.replace(R.id.details, me.paranoid.wifikill.fragment.a.a(aVar));
            fragmentTransactionBeginTransaction.commit();
        }
    }

    static /* synthetic */ int c(DevicesFragment devicesFragment) {
        devicesFragment.d = -1;
        return -1;
    }

    static /* synthetic */ String d(DevicesFragment devicesFragment) {
        devicesFragment.c = null;
        return null;
    }

    public final void a() {
        if (this.b != null) {
            this.b.notifyDataSetChanged();
        }
    }

    public final void a(me.paranoid.wifikill.a aVar) {
        me.paranoid.a.c.a("adapter = " + aVar);
        this.b = aVar;
        setListAdapter(aVar);
        if (!this.a || this.c == null || aVar == null) {
            return;
        }
        int iA = aVar.a(this.c);
        if (iA < 0 || iA >= aVar.getCount()) {
            // The previously selected device may have disappeared after a scan.
            // Clear the stale selection rather than indexing the list with -1.
            this.c = null;
            this.d = -1;
            return;
        }
        me.paranoid.wifikill.service.a selectedDevice = aVar.getItem(iA);
        if (selectedDevice != null) {
            a(iA, selectedDevice);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        me.paranoid.a.c.a("start");
        super.onActivityCreated(bundle);
        View viewFindViewById = getActivity().findViewById(R.id.details);
        this.a = viewFindViewById != null && viewFindViewById.getVisibility() == 0;
        if (bundle != null) {
            this.c = bundle.getString("current_dev", null);
        }
        setListAdapter(new me.paranoid.wifikill.a(getActivity(), null));
        if (this.a) {
            getListView().setChoiceMode(1);
        }
        getListView().setCacheColorHint(Color.parseColor("#00000000"));
        getFragmentManager().addOnBackStackChangedListener(new g(this));
    }

    @Override // android.app.ListFragment
    public void onListItemClick(ListView listView, View view, int i, long j) {
        Log.d(getClass().getName(), "onListItemClick");
        a(i, this.b.getItem(i));
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.a) {
            bundle.putString("current_dev", this.c);
        }
    }
}
