package me.paranoid.wifikill.fragment;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class f extends Handler {
    final /* synthetic */ a a;

    private f(a aVar) {
        this.a = aVar;
    }

    /* synthetic */ f(a aVar, byte b) {
        this(aVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            this.a.b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
