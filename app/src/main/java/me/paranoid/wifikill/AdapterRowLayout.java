package me.paranoid.wifikill;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public class AdapterRowLayout extends RelativeLayout implements Checkable {
    private boolean a;
    private Drawable b;

    public AdapterRowLayout(Context context) {
        super(context);
        this.a = false;
        this.b = null;
    }

    public AdapterRowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        this.b = null;
    }

    public AdapterRowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        this.b = null;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.a;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        this.b = drawable;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.b == null) {
            this.b = getBackground();
        }
        this.a = z;
        if (z) {
            setBackgroundColor(Color.parseColor("#3033b5e5"));
        } else {
            setBackgroundDrawable(this.b);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.a = !this.a;
    }
}
