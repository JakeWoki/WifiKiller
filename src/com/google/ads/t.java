// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.util.List;

public final class t
{

    public static boolean a(Context context)
    {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        return a(intent, context);
    }

    public static boolean a(Intent intent, Context context)
    {
        return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
    }
}
