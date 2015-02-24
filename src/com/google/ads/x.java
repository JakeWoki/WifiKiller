// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.content.DialogInterface;
import com.google.ads.a.r;
import com.google.ads.a.s;
import java.util.HashMap;

// Referenced classes of package com.google.ads:
//            AdActivity

final class x
    implements android.content.DialogInterface.OnClickListener
{

    private r a;

    public x(r r)
    {
        a = r;
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("u", "market://details?id=com.google.android.apps.plus");
        AdActivity.a(a, new s("intent", hashmap));
    }
}
