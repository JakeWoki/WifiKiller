// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.c;

import android.content.Context;
import android.graphics.Color;
import com.google.ads.d;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.google.ads.c:
//            b

public final class a extends d
{

    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private String i;
    private int j;
    private int k;
    private b l;
    private int m;
    private String n;

    public a()
    {
    }

    private static String a(int i1)
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(0xffffff & i1);
        return String.format(locale, "#%06x", aobj);
    }

    public final Map a(Context context)
    {
        com.google.ads.b.a.a a1 = (com.google.ads.b.a.a)a(com/google/ads/b/a/a);
        if (a1 == null)
        {
            a1 = new com.google.ads.b.a.a();
            a(((com.google.ads.b.h) (a1)));
        }
        if (b != null)
        {
            a1.d().put("q", b);
        }
        if (Color.alpha(c) != 0)
        {
            a1.d().put("bgcolor", a(c));
        }
        if (Color.alpha(d) == 255 && Color.alpha(e) == 255)
        {
            a1.d().put("gradientfrom", a(d));
            a1.d().put("gradientto", a(e));
        }
        if (Color.alpha(f) != 0)
        {
            a1.d().put("hcolor", a(f));
        }
        if (Color.alpha(g) != 0)
        {
            a1.d().put("dcolor", a(g));
        }
        if (Color.alpha(h) != 0)
        {
            a1.d().put("acolor", a(h));
        }
        if (i != null)
        {
            a1.d().put("font", i);
        }
        a1.d().put("headersize", Integer.toString(j));
        if (Color.alpha(k) != 0)
        {
            a1.d().put("bcolor", a(k));
        }
        if (l != null)
        {
            a1.d().put("btype", l.toString());
        }
        a1.d().put("bthick", Integer.toString(m));
        if (n != null)
        {
            a1.d().put("channel", n);
        }
        return super.a(context);
    }
}
