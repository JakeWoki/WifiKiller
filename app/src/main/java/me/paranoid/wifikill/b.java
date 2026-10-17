package me.paranoid.wifikill;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class b implements DialogInterface.OnClickListener {
    final /* synthetic */ WiFiKill a;

    b(WiFiKill wiFiKill) {
        this.a = wiFiKill;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://paranoid.me/wifikill/downloader/")));
    }
}
