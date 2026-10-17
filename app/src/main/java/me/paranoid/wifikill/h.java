package me.paranoid.wifikill;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class h implements ServiceConnection {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.a.c = new Messenger(iBinder);
        try {
            Message messageObtain = Message.obtain((Handler) null, 1);
            messageObtain.replyTo = this.a.f;
            messageObtain.obj = WiFiKill.n;
            this.a.c.send(messageObtain);
        } catch (RemoteException e) {
            me.paranoid.a.c.a("Service crashed... darn!");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.a.c = null;
    }
}
