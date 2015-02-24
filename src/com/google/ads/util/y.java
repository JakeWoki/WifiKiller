// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.view.View;
import com.google.ads.ar;

// Referenced classes of package com.google.ads.util:
//            p

public final class y extends p
{

    public y(ar ar)
    {
        super(ar);
    }

    public final void onShowCustomView(View view, int i, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        customviewcallback.onCustomViewHidden();
    }
}
