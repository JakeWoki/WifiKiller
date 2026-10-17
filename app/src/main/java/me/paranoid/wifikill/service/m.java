package me.paranoid.wifikill.service;

/* JADX INFO: loaded from: classes.dex */
final class m implements Runnable {
    final /* synthetic */ String[] a;
    final /* synthetic */ i b;

    m(i iVar, String[] strArr) {
        this.b = iVar;
        this.a = strArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVarB = WFKService.b(this.b.b, this.a[2]);
        if (aVarB == null) {
            me.paranoid.a.c.a("No such device: " + this.a[2]);
        } else {
            if (this.a.length < 4) {
                me.paranoid.a.c.a("device without name :/");
                return;
            }
            aVarB.c = this.a[3];
            this.b.b.a(107, aVarB);
            aVarB.a();
        }
    }
}
