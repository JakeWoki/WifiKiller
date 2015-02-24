// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.content.Context;
import android.webkit.WebSettings;
import com.google.ads.ap;
import com.google.ads.aq;
import com.google.ads.ar;
import java.io.File;

// Referenced classes of package com.google.ads.util:
//            ab, ac

public final class n
{

    public static void a(WebSettings websettings, ar ar1)
    {
        Context context = (Context)ar1.f.a();
        aq aq1 = (aq)((ap)ar1.a.a()).a.a();
        websettings.setAppCacheEnabled(true);
        websettings.setAppCacheMaxSize(((Long)aq1.f.a()).longValue());
        websettings.setAppCachePath((new File(context.getCacheDir(), "admob")).getAbsolutePath());
        websettings.setDatabaseEnabled(true);
        websettings.setDatabasePath(context.getDatabasePath("admob").getAbsolutePath());
        websettings.setDomStorageEnabled(true);
        websettings.setSupportZoom(true);
        websettings.setBuiltInZoomControls(true);
        websettings.setDisplayZoomControls(false);
    }
}
