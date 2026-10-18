package me.paranoid.wifikill;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import me.paranoid.wifikill.service.WFKService;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    final /* synthetic */ WiFiKill b;
    public boolean d;
    public Context e;
    public Messenger c = null;
    public final Messenger f = new Messenger(new i(this));
    public WFKService a = null;
    public ServiceConnection g = new h(this);

    public g(WiFiKill wiFiKill, Context context) {
        this.b = wiFiKill;
        this.e = context;
    }

    final void a() {
        me.paranoid.a.c.a("----");
        Intent intent = new Intent(this.e, (Class<?>) WFKService.class);
        this.b.startService(intent);
        this.b.bindService(intent, this.g, 0);
        this.d = true;
    }

    final boolean a(int i, Object obj) {
        if (!this.d || this.c == null) {
            return false;
        }
        try {
            this.c.send(Message.obtain(null, i, obj));
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }

    final void b() {
        if (this.d) {
            if (this.c != null) {
                try {
                    Message messageObtain = Message.obtain((Handler) null, 2);
                    messageObtain.replyTo = this.f;
                    this.c.send(messageObtain);
                } catch (RemoteException e) {
                }
            }
            this.b.unbindService(this.g);
        }
        this.d = false;
    }
}
