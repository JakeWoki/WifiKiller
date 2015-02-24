// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.util.d;
import java.lang.ref.WeakReference;
import java.util.Date;

// Referenced classes of package com.google.ads:
//            o

final class q
    implements Runnable
{

    private final WeakReference a;
    private final android.content.SharedPreferences.Editor b;

    public q(Activity activity)
    {
        this(activity, (byte)0);
    }

    private q(Activity activity, byte byte0)
    {
        a = new WeakReference(activity);
        b = null;
    }

    public final void run()
    {
        Activity activity = (Activity)a.get();
        String s;
        android.content.SharedPreferences.Editor editor;
        if (activity == null)
        {
            Cursor cursor;
            try
            {
                d.a("Activity was null while making a doritos cookie request.");
                return;
            }
            catch (Throwable throwable)
            {
                d.b("An unknown error occurred while sending a doritos request.", throwable);
            }
            return;
        }
        cursor = activity.getContentResolver().query(o.b, com.google.ads.o.d, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst() || cursor.getColumnNames().length <= 0) goto _L2; else goto _L3
_L3:
        s = cursor.getString(cursor.getColumnIndex(cursor.getColumnName(0)));
_L6:
        if (b != null) goto _L5; else goto _L4
_L4:
        editor = PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext()).edit();
_L7:
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_180;
        }
        editor.putString("drt", s);
        editor.putLong("drt_ts", (new Date()).getTime());
_L8:
        editor.commit();
        return;
_L2:
        d.a("Google+ app not installed, not storing doritos cookie");
        s = null;
          goto _L6
_L5:
        editor = b;
          goto _L7
        editor.putString("drt", "");
        editor.putLong("drt_ts", 0L);
          goto _L8
    }
}
