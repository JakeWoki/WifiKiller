package me.paranoid.wifikill;

import android.app.Activity;
import android.os.Bundle;
import android.os.PowerManager;

/* JADX INFO: loaded from: classes.dex */
public class DetailsActivity extends Activity {
    private PowerManager.WakeLock a;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = ((PowerManager) getSystemService("power")).newWakeLock(6, "WiFiKill");
        if (getResources().getConfiguration().orientation == 2) {
            finish();
            return;
        }
        getActionBar().setBackgroundDrawable(getResources().getDrawable(R.drawable.action_bar));
        if (bundle == null) {
            me.paranoid.wifikill.fragment.a aVar = new me.paranoid.wifikill.fragment.a(me.paranoid.wifikill.a.a().b(getIntent().getExtras().getString("ip")));
            aVar.setArguments(getIntent().getExtras());
            getFragmentManager().beginTransaction().add(android.R.id.content, aVar).commit();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.a != null && this.a.isHeld()) {
            this.a.release();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.a.acquire();
    }
}
