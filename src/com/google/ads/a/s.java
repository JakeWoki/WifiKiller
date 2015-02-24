// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.os.Bundle;
import java.util.HashMap;

public final class s
{

    private String a;
    private HashMap b;

    public s(Bundle bundle)
    {
        a = bundle.getString("action");
        java.io.Serializable serializable = bundle.getSerializable("params");
        HashMap hashmap;
        if (serializable instanceof HashMap)
        {
            hashmap = (HashMap)serializable;
        } else
        {
            hashmap = null;
        }
        b = hashmap;
    }

    private s(String s1)
    {
        a = s1;
    }

    public s(String s1, HashMap hashmap)
    {
        this(s1);
        b = hashmap;
    }

    public final Bundle a()
    {
        Bundle bundle = new Bundle();
        bundle.putString("action", a);
        bundle.putSerializable("params", b);
        return bundle;
    }

    public final String b()
    {
        return a;
    }

    public final HashMap c()
    {
        return b;
    }
}
