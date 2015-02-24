// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class v
    implements android.content.DialogInterface.OnClickListener
{

    final JsPromptResult a;
    final EditText b;

    v(JsPromptResult jspromptresult, EditText edittext)
    {
        a = jspromptresult;
        b = edittext;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.confirm(b.getText().toString());
    }
}
