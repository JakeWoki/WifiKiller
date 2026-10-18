package me.paranoid.wifikill.service;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class g extends Handler {
    final /* synthetic */ WFKService a;

    g(WFKService wFKService) {
        this.a = wFKService;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.a.g = (Activity) message.obj;
                this.a.f.add(message.replyTo);
                try {
                    message.replyTo.send(Message.obtain(null, 1, this.a));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
                break;
            case 2:
                this.a.f.remove(message.replyTo);
                break;
            case 3:
                WFKService.b(this.a);
                WFKService.c(this.a);
                break;
            case 4:
                new h(this).start();
                break;
            case 5:
                WFKService.a(this.a, ((Boolean) message.obj).booleanValue());
                break;
            case 108:
                WFKService.a(this.a, WFKService.b(this.a, (String) message.obj));
                break;
            case 109:
                WFKService.b(this.a, WFKService.b(this.a, (String) message.obj));
                break;
            case 110:
                WFKService.c(this.a, WFKService.b(this.a, (String) message.obj));
                break;
            case 111:
                WFKService.d(this.a, WFKService.b(this.a, (String) message.obj));
                break;
            default:
                super.handleMessage(message);
                break;
        }
    }
}
