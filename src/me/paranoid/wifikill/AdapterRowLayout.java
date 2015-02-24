// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;

public class AdapterRowLayout extends RelativeLayout
    implements Checkable
{

    private boolean a;
    private Drawable b;

    public AdapterRowLayout(Context context)
    {
        super(context);
        a = false;
        b = null;
    }

    public AdapterRowLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        b = null;
    }

    public AdapterRowLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
        b = null;
    }

    public boolean isChecked()
    {
        return a;
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        super.setBackgroundDrawable(drawable);
        b = drawable;
    }

    public void setChecked(boolean flag)
    {
        if (b == null)
        {
            b = getBackground();
        }
        a = flag;
        if (flag)
        {
            setBackgroundColor(Color.parseColor("#3033b5e5"));
            return;
        } else
        {
            setBackgroundDrawable(b);
            return;
        }
    }

    public void toggle()
    {
        boolean flag;
        if (!a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
