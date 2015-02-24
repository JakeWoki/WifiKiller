// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;

// Referenced classes of package com.google.ads:
//            p

final class s
    implements Runnable
{

    private final boolean a;
    private final WebView b;

    public s(WebView webview, boolean flag)
    {
        b = webview;
        a = flag;
    }

    public final void run()
    {
        p.a(b, a);
    }
}
