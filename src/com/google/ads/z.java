// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import com.google.ads.a.x;
import com.google.ads.util.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.google.ads:
//            aa, j, g

public final class z
{

    private static final Map a = Collections.unmodifiableMap(new aa());
    private final String b;
    private final String c;
    private final List d;
    private final Integer e;
    private final Integer f;
    private final List g;
    private final List h;
    private final List i;

    private z(String s, String s1, List list, Integer integer, Integer integer1, List list1, List list2, 
            List list3)
    {
        com.google.ads.util.b.a(s);
        b = s;
        c = s1;
        d = list;
        e = integer;
        f = integer1;
        g = list1;
        h = list2;
        i = list3;
    }

    private static j a(JSONObject jsonobject)
    {
        String s = jsonobject.getString("id");
        String s1 = jsonobject.optString("allocation_id", null);
        JSONArray jsonarray = jsonobject.getJSONArray("adapters");
        ArrayList arraylist = new ArrayList(jsonarray.length());
        for (int k = 0; k < jsonarray.length(); k++)
        {
            arraylist.add(jsonarray.getString(k));
        }

        List list = a(jsonobject, "imp_urls");
        JSONObject jsonobject1 = jsonobject.optJSONObject("data");
        HashMap hashmap = new HashMap(0);
        HashMap hashmap1;
        if (jsonobject1 != null)
        {
            hashmap1 = new HashMap(jsonobject1.length());
            String s2;
            for (Iterator iterator = jsonobject1.keys(); iterator.hasNext(); hashmap1.put(s2, jsonobject1.getString(s2)))
            {
                s2 = (String)iterator.next();
            }

        } else
        {
            hashmap1 = hashmap;
        }
        return new j(s1, s, arraylist, list, hashmap1);
    }

    public static z a(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        String s1 = jsonobject.getString("qdata");
        String s2;
        JSONArray jsonarray;
        ArrayList arraylist;
        if (jsonobject.has("ad_type"))
        {
            s2 = jsonobject.getString("ad_type");
        } else
        {
            s2 = null;
        }
        jsonarray = jsonobject.getJSONArray("ad_networks");
        arraylist = new ArrayList(jsonarray.length());
        for (int k = 0; k < jsonarray.length(); k++)
        {
            arraylist.add(a(jsonarray.getJSONObject(k)));
        }

        JSONObject jsonobject1 = jsonobject.optJSONObject("settings");
        Integer integer;
        Integer integer1;
        List list;
        List list1;
        List list2;
        if (jsonobject1 != null)
        {
            boolean flag;
            Integer integer2;
            if (jsonobject1.has("refresh"))
            {
                integer = Integer.valueOf(jsonobject1.getInt("refresh"));
            } else
            {
                integer = null;
            }
            flag = jsonobject1.has("ad_network_timeout_millis");
            integer2 = null;
            if (flag)
            {
                integer2 = Integer.valueOf(jsonobject1.getInt("ad_network_timeout_millis"));
            }
            list = a(jsonobject1, "imp_urls");
            list1 = a(jsonobject1, "click_urls");
            list2 = a(jsonobject1, "nofill_urls");
            integer1 = integer2;
        } else
        {
            integer = null;
            integer1 = null;
            list = null;
            list1 = null;
            list2 = null;
        }
        return new z(s1, s2, arraylist, integer, integer1, list, list1, list2);
    }

    private static List a(JSONObject jsonobject, String s)
    {
        JSONArray jsonarray = jsonobject.optJSONArray(s);
        if (jsonarray != null)
        {
            ArrayList arraylist = new ArrayList(jsonarray.length());
            for (int k = 0; k < jsonarray.length(); k++)
            {
                arraylist.add(jsonarray.getString(k));
            }

            return arraylist;
        } else
        {
            return null;
        }
    }

    public final boolean a()
    {
        return f != null;
    }

    public final int b()
    {
        return f.intValue();
    }

    public final String c()
    {
        return b;
    }

    public final boolean d()
    {
        return e != null;
    }

    public final int e()
    {
        return e.intValue();
    }

    public final List f()
    {
        return d;
    }

    public final List g()
    {
        return g;
    }

    public final List h()
    {
        return h;
    }

    public final List i()
    {
        return i;
    }

    public final x j()
    {
        if (c == null)
        {
            return null;
        }
        if ("interstitial".equals(c))
        {
            return x.a;
        }
        g g1 = (g)a.get(c);
        if (g1 != null)
        {
            return x.a(g1);
        } else
        {
            return null;
        }
    }

}
