// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

final class t
    implements android.content.DialogInterface.OnCancelListener
{

    final JsPromptResult a;

    t(JsPromptResult jspromptresult)
    {
        a = jspromptresult;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        a.cancel();
    }
}
