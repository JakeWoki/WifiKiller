// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import com.google.ads.at;
import com.google.ads.au;
import com.google.ads.av;
import com.google.ads.aw;
import com.google.ads.ax;
import com.google.ads.ay;
import com.google.ads.az;
import com.google.ads.bd;
import com.google.ads.be;
import com.google.ads.k;
import com.google.ads.l;
import com.google.ads.u;
import java.util.HashMap;

final class f extends HashMap
{

    f()
    {
        put("/open", new be());
        put("/canOpenURLs", new au());
        put("/close", new aw());
        put("/customClose", new ax());
        put("/appEvent", new at());
        put("/evalInOpener", new ay());
        put("/log", new bd());
        put("/click", new av());
        put("/httpTrack", new az());
        put("/touch", new k());
        put("/video", new l());
        put("/plusOne", new u());
    }
}
