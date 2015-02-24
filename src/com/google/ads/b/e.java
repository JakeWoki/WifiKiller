// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.b;

import com.google.ads.util.d;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.ads.b:
//            g, f

public abstract class e
{

    public e()
    {
    }

    public final void a(Map map)
    {
        HashMap hashmap = new HashMap();
        Field afield[] = getClass().getFields();
        int i = afield.length;
        for (int j = 0; j < i; j++)
        {
            Field field2 = afield[j];
            g g1 = (g)field2.getAnnotation(com/google/ads/b/g);
            if (g1 != null)
            {
                hashmap.put(g1.a(), field2);
            }
        }

        if (hashmap.isEmpty())
        {
            d.e("No server options fields detected.  To suppress this message either add a field with the @Parameter annotation, or override the load() method");
        }
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Field field1 = (Field)hashmap.remove(entry.getKey());
            if (field1 != null)
            {
                try
                {
                    field1.set(this, entry.getValue());
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    d.b((new StringBuilder("Server Option '")).append((String)entry.getKey()).append("' could not be set: Illegal Access").toString());
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    d.b((new StringBuilder("Server Option '")).append((String)entry.getKey()).append("' could not be set: Bad Type").toString());
                }
            } else
            {
                d.e((new StringBuilder("Unexpected Server Option: ")).append((String)entry.getKey()).append(" = '").append((String)entry.getValue()).append("'").toString());
            }
        }

        String s = null;
        Iterator iterator1 = hashmap.values().iterator();
        while (iterator1.hasNext()) 
        {
            Field field = (Field)iterator1.next();
            String s1;
            if (((g)field.getAnnotation(com/google/ads/b/g)).b())
            {
                d.b((new StringBuilder("Required Server Option missing: ")).append(((g)field.getAnnotation(com/google/ads/b/g)).a()).toString());
                StringBuilder stringbuilder = new StringBuilder();
                String s2;
                if (s == null)
                {
                    s2 = "";
                } else
                {
                    s2 = (new StringBuilder()).append(s).append(", ").toString();
                }
                s1 = stringbuilder.append(s2).append(((g)field.getAnnotation(com/google/ads/b/g)).a()).toString();
            } else
            {
                s1 = s;
            }
            s = s1;
        }
        if (s != null)
        {
            throw new f((new StringBuilder("Required Server Option(s) missing: ")).append(s).toString());
        } else
        {
            return;
        }
    }
}
