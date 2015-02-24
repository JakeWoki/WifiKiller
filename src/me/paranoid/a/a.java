// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.a;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package me.paranoid.a:
//            c, b

public final class a
{

    private static Map a = new HashMap();

    public static String a(Context context, String s)
    {
        int i;
        String s1;
        File file;
        int j;
        i = 0;
        s1 = s.replaceAll(":|-", "").substring(0, 6).toUpperCase();
        c.a((new StringBuilder("searching: [")).append(s1).append("]").toString());
        String s2 = (String)a.get(s1);
        if (s2 != null)
        {
            c.a((new StringBuilder("found in cache: ")).append(s2).toString());
            return s2;
        }
        file = new File((new StringBuilder()).append(context.getFilesDir().getPath()).append("/oui").toString());
        if (!file.exists())
        {
            b.a(context, "oui", "oui");
        }
        j = 16815;
        RandomAccessFile randomaccessfile = new RandomAccessFile(file, "r");
_L9:
        if (i > j) goto _L2; else goto _L1
_L1:
        int k = i + j;
        int l;
        String as[];
        int i1;
        l = k / 2;
        randomaccessfile.seek(l * 128);
        as = randomaccessfile.readLine().split(";");
        i1 = as[0].compareTo(s1);
        if (i1 < 0)
        {
            i = l + 1;
            continue; /* Loop/switch isn't completed */
        }
          goto _L3
_L7:
        String s3;
        a.put(s1, as[1].replace("\n|  ", "").trim());
        randomaccessfile.close();
        c.a((new StringBuilder("found vendor: ")).append((String)a.get(s1)).toString());
        s3 = (String)a.get(s1);
        return s3;
_L2:
        RandomAccessFile randomaccessfile1 = randomaccessfile;
_L4:
        Exception exception1;
        c.a((new StringBuilder("Unable to find: ")).append(s1).toString());
        a.put(s1, "unknown vendor");
        Exception exception2;
        if (randomaccessfile1 != null)
        {
            try
            {
                randomaccessfile1.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        return null;
        exception2;
        exception1 = exception2;
        randomaccessfile1 = null;
_L5:
        exception1.printStackTrace();
          goto _L4
        Exception exception;
        exception;
        randomaccessfile1 = randomaccessfile;
        exception1 = exception;
          goto _L5
_L3:
        if (i1 <= 0) goto _L7; else goto _L6
_L6:
        j = l - 1;
        if (true) goto _L9; else goto _L8
_L8:
    }

}
