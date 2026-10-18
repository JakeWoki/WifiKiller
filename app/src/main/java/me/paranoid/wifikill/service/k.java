package me.paranoid.wifikill.service;

/* JADX INFO: loaded from: classes.dex */
final class k implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ String[] b;
    final /* synthetic */ i c;

    k(i iVar, a aVar, String[] strArr) {
        this.c = iVar;
        this.a = aVar;
        this.b = strArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a(Integer.parseInt(this.b[3]));
        this.a.b(Integer.parseInt(this.b[4]));
    }
}
