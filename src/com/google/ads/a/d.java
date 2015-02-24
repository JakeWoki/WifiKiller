// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.google.ads.util.AdUtil;

// Referenced classes of package com.google.ads.a:
//            c

final class d
    implements DownloadListener
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public final void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
        Intent intent;
        com.google.ads.AdActivity adactivity;
        try
        {
            intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(s), s3);
            adactivity = a.d();
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            com.google.ads.util.d.a((new StringBuilder("Couldn't find an Activity to view url/mimetype: ")).append(s).append(" / ").append(s3).toString());
            return;
        }
        catch (Throwable throwable)
        {
            com.google.ads.util.d.b((new StringBuilder("Unknown error trying to start activity to view URL: ")).append(s).toString(), throwable);
            return;
        }
        if (adactivity == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (AdUtil.a(intent, adactivity))
        {
            adactivity.startActivity(intent);
        }
    }
}
