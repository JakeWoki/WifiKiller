// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.os.AsyncTask;
import android.text.Html;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.ArrayList;
import me.paranoid.a.c;
import me.paranoid.wifikill.WiFiKill;
import me.paranoid.wifikill.service.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            h

final class i extends AsyncTask
{

    final h a;
    private int b;
    private boolean c;
    private boolean d;

    public i(h h1, int j)
    {
        a = h1;
        super();
        b = 0;
        c = false;
        d = false;
        b = j;
    }

    public final int a()
    {
        me.paranoid.a.c.a("---");
        c = true;
        while (!d) ;
        return b;
    }

    protected final Object doInBackground(Object aobj[])
    {
_L7:
        a a1;
        if (c || b >= me.paranoid.wifikill.fragment.h.a(a).size())
        {
            break MISSING_BLOCK_LABEL_181;
        }
        a1 = (a)me.paranoid.wifikill.fragment.h.a(a).get(b);
        int j = (100 * b) / me.paranoid.wifikill.fragment.h.a(a).size();
        Object aobj1[] = new Object[2];
        aobj1[0] = a1.a;
        aobj1[1] = Integer.valueOf(j);
        publishProgress(aobj1);
        h.b(a);
        JVM INSTR tableswitch 0 3: default 128
    //                   0 141
    //                   1 151
    //                   2 161
    //                   3 171;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_171;
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L8:
        b = 1 + b;
        if (true) goto _L7; else goto _L6
_L6:
        WiFiKill.a(a1.a);
          goto _L8
_L3:
        WiFiKill.b(a1.a);
          goto _L8
_L4:
        WiFiKill.c(a1.a);
          goto _L8
        WiFiKill.d(a1.a);
          goto _L8
        d = true;
        return Boolean.valueOf(c);
    }

    protected final void onPostExecute(Object obj)
    {
        Boolean boolean1 = (Boolean)obj;
        me.paranoid.a.c.a("---");
        if (boolean1.booleanValue())
        {
            break MISSING_BLOCK_LABEL_29;
        }
        me.paranoid.a.c.a("---");
        a.dismiss();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    protected final transient void onProgressUpdate(Object aobj[])
    {
        String s;
        Integer integer;
        s = (String)aobj[0];
        integer = (Integer)aobj[1];
        h.b(a);
        JVM INSTR tableswitch 0 3: default 52
    //                   0 86
    //                   1 112
    //                   2 138
    //                   3 164;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s1 = "";
_L7:
        me.paranoid.wifikill.fragment.h.c(a).setText(Html.fromHtml(s1));
        h.d(a).setProgress(integer.intValue());
        return;
_L2:
        s1 = (new StringBuilder("Attaching to: <b>")).append(s).append("</b>").toString();
        continue; /* Loop/switch isn't completed */
_L3:
        s1 = (new StringBuilder("Killing: <b>")).append(s).append("</b>").toString();
        continue; /* Loop/switch isn't completed */
_L4:
        s1 = (new StringBuilder("Reviving: <b>")).append(s).append("</b>").toString();
        continue; /* Loop/switch isn't completed */
_L5:
        s1 = (new StringBuilder("Detaching from: <b>")).append(s).append("</b>").toString();
        if (true) goto _L7; else goto _L6
_L6:
    }
}
