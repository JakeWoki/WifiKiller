package me.paranoid.wifikill.service;

import java.util.concurrent.TimeoutException;
import me.paranoid.jniexec.JNIExec;

/* JADX INFO: loaded from: classes.dex */
final class i extends Thread {
    public boolean a = false;
    final /* synthetic */ WFKService b;

    i(WFKService wFKService) {
        this.b = wFKService;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003a  */
    /* JADX WARN: Code duplicated, block: B:13:0x005e  */
    /* JADX WARN: Code duplicated, block: B:17:0x006b  */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i;
        while (!this.a) {
            try {
                String strA = this.b.h.a(1000);
                if (this.a) {
                    me.paranoid.a.c.a("User request for stop!");
                    break;
                }
                if (strA == null) {
                    me.paranoid.a.c.a("Crap unable to read stuffs");
                    this.b.a("Service stopped unexpectedly");
                    return;
                }
                if (strA.startsWith("ERROR")) {
                    this.b.a(strA.substring(8));
                    return;
                }
                me.paranoid.a.c.a("read [" + strA + "]");
                if (strA.contains("***")) {
                    String[] strArrSplit = strA.substring(8).split(" ");
                    if (strArrSplit[1].equals("SEARCH")) {
                        try {
                            i = Integer.parseInt(strArrSplit[2]);
                        } catch (Exception e) {
                            i = -1;
                        }
                        this.b.a(5, Integer.valueOf(i));
                    } else if (strArrSplit[1].equals("DEVICE_NEW")) {
                        a aVar = new a(strArrSplit[2], strArrSplit[3], this.b.b(strArrSplit[3]), me.paranoid.a.a.a(this.b.getApplicationContext(), strArrSplit[3]));
                        WFKService.a(this.b, new j(this, aVar));
                        this.b.a(106, aVar);
                    } else if (strArrSplit[1].equals("DEVICE_UPDATE")) {
                        a aVarB = WFKService.b(this.b, strArrSplit[2]);
                        if (aVarB == null) {
                            me.paranoid.a.c.a("No such device: " + strArrSplit[2]);
                        } else {
                            WFKService.a(this.b, new k(this, aVarB, strArrSplit));
                            this.b.a(107, aVarB);
                            aVarB.a();
                        }
                    } else if (strArrSplit[1].equals("DEVICE_HOST")) {
                        a aVarB2 = WFKService.b(this.b, strArrSplit[2]);
                        if (aVarB2 == null) {
                            me.paranoid.a.c.a("No such device: " + strArrSplit[2]);
                        } else {
                            WFKService.a(this.b, new l(this, aVarB2, strArrSplit));
                            this.b.a(107, aVarB2);
                            aVarB2.a();
                        }
                    } else if (strArrSplit[1].equals("DEVICE_NBNAME")) {
                        WFKService.a(this.b, new m(this, strArrSplit));
                    } else {
                        me.paranoid.a.c.a("Unknown command: " + strA);
                    }
                }
            } catch (TimeoutException e2) {
                if (this.a) {
                    me.paranoid.a.c.a("wfk_pid = " + this.b.j);
                    if (this.b.j != -1) {
                        JNIExec.a("kill -INT " + this.b.j);
                    }
                    if (this.b.h.a == 512) {
                        try {
                            Thread.sleep(10000L);
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (this.b.j != -1) {
                        JNIExec.a("kill -9 " + this.b.j);
                    }
                }
            }
        }
        me.paranoid.a.c.a("wfk_pid = " + this.b.j);
        if (this.b.j != -1) {
            JNIExec.a("kill -INT " + this.b.j);
        }
        if (this.b.h.a == 512) {
            try {
                Thread.sleep(10000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (this.b.j != -1) {
            JNIExec.a("kill -9 " + this.b.j);
        }
    }
}
