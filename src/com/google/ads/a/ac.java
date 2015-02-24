// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.google.ads.a:
//            aa

final class ac
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final aa b;

    ac(aa aa1, String s)
    {
        b = aa1;
        a = s;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        aa.a(b).startActivity(Intent.createChooser((new Intent("android.intent.action.SEND")).setType("text/plain").putExtra("android.intent.extra.TEXT", a), "Share via"));
    }
}
