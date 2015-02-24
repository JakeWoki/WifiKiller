// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.app.AlertDialog;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.ads.a.c;
import com.google.ads.ap;
import com.google.ads.aq;
import com.google.ads.ar;

// Referenced classes of package com.google.ads.util:
//            v, u, t, s, 
//            r, q, o, d, 
//            ab, ac

public class p extends WebChromeClient
{

    private final ar a;

    public p(ar ar1)
    {
        a = ar1;
    }

    private static boolean a(WebView webview, String s1, String s2, String s3, JsResult jsresult, JsPromptResult jspromptresult, boolean flag)
    {
        if (webview instanceof c)
        {
            com.google.ads.AdActivity adactivity = ((c)webview).d();
            if (adactivity != null)
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(adactivity);
                builder.setTitle(s1);
                if (flag)
                {
                    LinearLayout linearlayout = new LinearLayout(adactivity);
                    linearlayout.setOrientation(1);
                    TextView textview = new TextView(adactivity);
                    textview.setText(s2);
                    EditText edittext = new EditText(adactivity);
                    edittext.setText(s3);
                    linearlayout.addView(textview);
                    linearlayout.addView(edittext);
                    builder.setView(linearlayout).setPositiveButton(0x104000a, new v(jspromptresult, edittext)).setNegativeButton(0x1040000, new u(jspromptresult)).setOnCancelListener(new t(jspromptresult)).create().show();
                    return true;
                } else
                {
                    builder.setMessage(s2).setPositiveButton(0x104000a, new s(jsresult)).setNegativeButton(0x1040000, new r(jsresult)).setOnCancelListener(new q(jsresult)).create().show();
                    return true;
                }
            }
        }
        return false;
    }

    public void onCloseWindow(WebView webview)
    {
        if (webview instanceof c)
        {
            ((c)webview).a();
        }
    }

    public boolean onConsoleMessage(ConsoleMessage consolemessage)
    {
        String s1 = (new StringBuilder("JS: ")).append(consolemessage.message()).append(" (").append(consolemessage.sourceId()).append(":").append(consolemessage.lineNumber()).append(")").toString();
        o.a[consolemessage.messageLevel().ordinal()];
        JVM INSTR tableswitch 1 5: default 96
    //                   1 102
    //                   2 109
    //                   3 116
    //                   4 116
    //                   5 123;
           goto _L1 _L2 _L3 _L4 _L4 _L5
_L1:
        return super.onConsoleMessage(consolemessage);
_L2:
        d.b(s1);
        continue; /* Loop/switch isn't completed */
_L3:
        d.e(s1);
        continue; /* Loop/switch isn't completed */
_L4:
        com.google.ads.util.d.c(s1);
        continue; /* Loop/switch isn't completed */
_L5:
        d.a(s1);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void onExceededDatabaseQuota(String s1, String s2, long l, long l1, long l2, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        aq aq1;
        long l3;
        aq1 = (aq)((ap)a.a.a()).a.a();
        l3 = ((Long)aq1.i.a()).longValue() - l2;
        if (l3 <= 0L)
        {
            quotaupdater.updateQuota(l);
            return;
        }
        if (l != 0L) goto _L2; else goto _L1
_L1:
        if (l1 > l3 || l1 > ((Long)aq1.j.a()).longValue())
        {
            l1 = 0L;
        }
_L4:
        quotaupdater.updateQuota(l1);
        return;
_L2:
        if (l1 != 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        l = Math.min(l + Math.min(((Long)aq1.k.a()).longValue(), l3), ((Long)aq1.j.a()).longValue());
_L6:
        l1 = l;
        if (true) goto _L4; else goto _L3
_L3:
        if (l1 > Math.min(((Long)aq1.j.a()).longValue() - l, l3)) goto _L6; else goto _L5
_L5:
        l += l1;
          goto _L6
    }

    public boolean onJsAlert(WebView webview, String s1, String s2, JsResult jsresult)
    {
        return a(webview, s1, s2, null, jsresult, null, false);
    }

    public boolean onJsBeforeUnload(WebView webview, String s1, String s2, JsResult jsresult)
    {
        return a(webview, s1, s2, null, jsresult, null, false);
    }

    public boolean onJsConfirm(WebView webview, String s1, String s2, JsResult jsresult)
    {
        return a(webview, s1, s2, null, jsresult, null, false);
    }

    public boolean onJsPrompt(WebView webview, String s1, String s2, String s3, JsPromptResult jspromptresult)
    {
        return a(webview, s1, s2, s3, null, jspromptresult, true);
    }

    public void onReachedMaxAppCacheSize(long l, long l1, android.webkit.WebStorage.QuotaUpdater quotaupdater)
    {
        aq aq1 = (aq)((ap)a.a.a()).a.a();
        long l2 = ((Long)aq1.h.a()).longValue() - l1;
        long l3 = l + ((Long)aq1.g.a()).longValue();
        if (l2 < l3)
        {
            quotaupdater.updateQuota(0L);
            return;
        } else
        {
            quotaupdater.updateQuota(l3);
            return;
        }
    }

    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        customviewcallback.onCustomViewHidden();
    }
}
