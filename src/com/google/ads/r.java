// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.d;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.ads:
//            o, s

final class r
    implements Runnable
{

    private final WeakReference a;
    private final WebView b;
    private final String c;

    public r(Activity activity, WebView webview, String s1)
    {
        a = new WeakReference(activity);
        c = s1;
        b = webview;
    }

    public final void run()
    {
        Uri uri;
        Activity activity;
        uri = Uri.withAppendedPath(o.a, c);
        activity = (Activity)a.get();
        boolean flag;
        if (activity == null)
        {
            Cursor cursor;
            try
            {
                d.a("Activity was null while getting the +1 button state.");
                return;
            }
            catch (Throwable throwable)
            {
                d.b("An unknown error occurred while updating the +1 state.", throwable);
            }
            return;
        }
        cursor = activity.getContentResolver().query(uri, o.c, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        if (cursor.getInt(cursor.getColumnIndex("has_plus1")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L5:
        b.post(new s(b, flag));
        return;
_L2:
        d.a("Google+ app not installed, showing ad as not +1'd");
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
