package me.paranoid.jniexec;

/* JADX INFO: loaded from: classes.dex */
final class a implements Runnable {
    final /* synthetic */ JNIExec a;

    a(JNIExec jNIExec) {
        this.a = jNIExec;
    }

    @Override // java.lang.Runnable
    public final void run() {
        JNIExec.a(this.a);
    }
}
