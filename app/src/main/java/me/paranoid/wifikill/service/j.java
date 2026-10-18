package me.paranoid.wifikill.service;

/* JADX INFO: loaded from: classes.dex */
final class j implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ i b;

    j(i iVar, a aVar) {
        this.b = iVar;
        this.a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.b.a.add(this.a);
    }
}
