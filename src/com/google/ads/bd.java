// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.webkit.WebView;
import com.google.ads.a.r;
import com.google.ads.util.d;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as

public final class bd
    implements as
{

    public bd()
    {
    }

    public final void a(r r, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("string");
        String s1 = (String)hashmap.get("afma_notify_dt");
        d.c((new StringBuilder("Received log message: <\"string\": \"")).append(s).append("\", \"afmaNotifyDt\": \"").append(s1).append("\">").toString());
    }
}
