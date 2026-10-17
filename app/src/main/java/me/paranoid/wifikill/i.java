package me.paranoid.wifikill;

import android.os.Handler;
import android.os.Message;
import me.paranoid.wifikill.service.WFKService;

/* JADX INFO: loaded from: classes.dex */
final class i extends Handler {
    final /* synthetic */ g a;

    i(g gVar) {
        this.a = gVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        me.paranoid.a.c.a("msg = " + message);
        switch (message.what) {
            case 1:
                this.a.a = (WFKService) message.obj;
                this.a.b.c();
                break;
            case 4:
                if (this.a.b.m != null) {
                    this.a.b.m.dismiss();
                }
                me.paranoid.a.c.a("service stop obj=" + message.obj);
                if (message.obj != null) {
                    me.paranoid.a.c.a(WiFiKill.n, "Service error", message.obj.toString());
                }
                this.a.b.b();
                break;
            case 5:
                int iIntValue = ((Integer) message.obj).intValue();
                if (iIntValue >= 0 && iIntValue <= 100) {
                    this.a.b.a(iIntValue);
                } else {
                    this.a.b.e();
                }
                break;
            case 106:
                WiFiKill.b.notifyDataSetChanged();
                WiFiKill.b.c();
                this.a.b.h.a();
                break;
            case 107:
                WiFiKill.b.c();
                if (this.a.b.i == null) {
                    this.a.b.i = (me.paranoid.wifikill.fragment.a) this.a.b.getFragmentManager().findFragmentById(R.id.details);
                }
                if (this.a.b.i != null) {
                    try {
                        this.a.b.i.b();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                this.a.b.h.a();
                break;
            default:
                me.paranoid.a.c.a("ignoring uninteresting message\n");
                break;
        }
    }
}
