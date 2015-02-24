// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.a.r;
import com.google.ads.a.s;
import com.google.ads.util.ab;
import com.google.ads.util.ad;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            as, ar, p, t, 
//            x, v, AdActivity

public final class u
    implements as
{

    public u()
    {
    }

    public final void a(r r1, HashMap hashmap, WebView webview)
    {
        Context context;
        String s1;
        context = (Context)r1.f().f.a();
        s1 = (String)hashmap.get("a");
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (!s1.equals("resize")) goto _L4; else goto _L3
_L3:
        p.a(webview, (String)hashmap.get("u"));
_L6:
        return;
_L4:
        if (s1.equals("state"))
        {
            p.a((Activity)r1.f().e.a(), webview, (String)hashmap.get("u"));
            return;
        }
_L2:
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        if (!t.a(intent, context))
        {
            if (t.a(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.plus")), context))
            {
                if (!TextUtils.isEmpty((CharSequence)hashmap.get("d")) && !TextUtils.isEmpty((CharSequence)hashmap.get("o")) && !TextUtils.isEmpty((CharSequence)hashmap.get("c")))
                {
                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
                    builder.setMessage((CharSequence)hashmap.get("d")).setPositiveButton((CharSequence)hashmap.get("o"), new x(r1)).setNegativeButton((CharSequence)hashmap.get("c"), new v());
                    builder.create().show();
                    return;
                } else
                {
                    HashMap hashmap1 = new HashMap();
                    hashmap1.put("u", "market://details?id=com.google.android.apps.plus");
                    AdActivity.a(r1, new s("intent", hashmap1));
                    return;
                }
            }
        } else
        {
            AdActivity.a(r1, new s("plusone", hashmap));
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
