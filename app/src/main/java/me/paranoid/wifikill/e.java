package me.paranoid.wifikill;

import android.view.animation.Animation;

/* JADX INFO: loaded from: classes.dex */
final class e implements Animation.AnimationListener {
    final /* synthetic */ WiFiKill a;

    e(WiFiKill wiFiKill) {
        this.a = wiFiKill;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.a.g.setVisibility(0);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
