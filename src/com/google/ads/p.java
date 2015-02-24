// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.webkit.WebView;
import com.google.ads.a.e;
import com.google.ads.util.m;
import java.util.Date;
import java.util.Locale;

// Referenced classes of package com.google.ads:
//            q, r, t

public final class p
{

    private static final e a;

    public static void a(Activity activity)
    {
        (new Thread(new q(activity))).start();
    }

    public static void a(Activity activity, WebView webview, String s)
    {
        (new Thread(new r(activity, webview, s))).start();
    }

    public static void a(WebView webview, String s)
    {
        e _tmp = a;
        e.a(webview, String.format(Locale.US, "(G_resizeIframe(%s))", new Object[] {
            s
        }));
    }

    public static void a(WebView webview, boolean flag)
    {
        e _tmp = a;
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(flag);
        e.a(webview, String.format(locale, "(G_updatePlusOne(%b))", aobj));
    }

    public static boolean a(Context context, long l)
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        return t.a(context) && (!sharedpreferences.contains("drt") || !sharedpreferences.contains("drt_ts") || sharedpreferences.getLong("drt_ts", 0L) < (new Date()).getTime() - l);
    }

    static 
    {
        a = (e)e.a.a();
    }
}
