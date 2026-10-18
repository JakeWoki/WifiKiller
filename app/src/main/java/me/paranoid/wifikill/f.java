package me.paranoid.wifikill;

import android.view.animation.Animation;

/* JADX INFO: loaded from: classes.dex */
final class f implements Animation.AnimationListener {
    final /* synthetic */ WiFiKill a;

    f(WiFiKill wiFiKill) {
        this.a = wiFiKill;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.a.g.setVisibility(8);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
