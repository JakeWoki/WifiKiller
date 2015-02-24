// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.app.Activity;
import android.app.AlertDialog;
import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import com.google.ads.util.d;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.google.ads.a:
//            r, ac, ab

public final class aa
    implements android.gesture.GestureOverlayView.OnGesturePerformedListener
{

    private final GestureStore a;
    private Activity b;
    private r c;

    public aa(Activity activity, r r1, GestureStore gesturestore)
    {
        b = activity;
        c = r1;
        a = gesturestore;
    }

    static Activity a(aa aa1)
    {
        return aa1.b;
    }

    public final void onGesturePerformed(GestureOverlayView gestureoverlayview, Gesture gesture)
    {
        ArrayList arraylist = a.recognize(gesture);
        Prediction prediction;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); d.a((new StringBuilder("Gesture: '")).append(prediction.name).append("' = ").append(prediction.score).toString()))
        {
            prediction = (Prediction)iterator.next();
        }

        if (arraylist.size() == 0)
        {
            d.a("Gesture: No remotely reasonable predictions");
        } else
        if (((Prediction)arraylist.get(0)).score > 2D && "debug".equals(((Prediction)arraylist.get(0)).name) && c != null)
        {
            String s;
            if (c.b() == null)
            {
                s = "[No diagnostics available]";
            } else
            {
                s = c.b();
            }
            (new android.app.AlertDialog.Builder(b)).setMessage(s).setTitle("Ad Information").setPositiveButton("Share", new ac(this, s)).setNegativeButton("Close", new ab(this)).create().show();
            return;
        }
    }
}
