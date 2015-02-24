// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package me.paranoid.wifikill:
//            WiFiKill

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final WiFiKill a;

    b(WiFiKill wifikill)
    {
        a = wifikill;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://paranoid.me/wifikill/downloader/")));
    }
}
