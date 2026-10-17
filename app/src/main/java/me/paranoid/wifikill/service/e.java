package me.paranoid.wifikill.service;

/* JADX INFO: loaded from: classes.dex */
final class e implements me.paranoid.jniexec.b {
    final /* synthetic */ WFKService a;

    e(WFKService wFKService) {
        this.a = wFKService;
    }

    @Override // me.paranoid.jniexec.b
    public final void a() {
        if (this.a.h.a == 0 || this.a.h.a == 1) {
            return;
        }
        this.a.a("Service crashed... died... vaporized... my bad, sorry");
    }
}
