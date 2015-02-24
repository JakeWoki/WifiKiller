// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import java.io.UnsupportedEncodingException;

// Referenced classes of package com.google.ads.util:
//            j, i

public class g
{

    static final boolean a;

    private g()
    {
    }

    public static String a(byte abyte0[])
    {
        int k;
        j j1;
        int l;
        k = abyte0.length;
        j1 = new j();
        l = 4 * (k / 3);
        if (!j1.d) goto _L2; else goto _L1
_L1:
        if (k % 3 > 0)
        {
            l += 4;
        }
_L9:
        if (!j1.e || k <= 0) goto _L4; else goto _L3
_L3:
        int i1;
        i1 = 1 + (k - 1) / 57;
        break MISSING_BLOCK_LABEL_55;
_L7:
        try
        {
            j1.a = new byte[k1];
            j1.a(abyte0, k);
            if (!a && j1.b != k1)
            {
                throw new AssertionError();
            }
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
          goto _L5
_L2:
        String s;
        switch (k % 3)
        {
        case 0: // '\0'
        default:
            if (false)
            {
            }
            break;

        case 1: // '\001'
            l += 2;
            break;

        case 2: // '\002'
            l += 3;
            break;
        }
        break; /* Loop/switch isn't completed */
_L5:
        s = new String(j1.a, "US-ASCII");
        return s;
_L4:
        k1 = l;
        continue; /* Loop/switch isn't completed */
        byte byte0;
        int k1;
        if (j1.f)
        {
            byte0 = 2;
        } else
        {
            byte0 = 1;
        }
        k1 = l + byte0 * i1;
        if (true) goto _L7; else goto _L6
_L6:
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static byte[] a(String s)
    {
        byte abyte0[] = s.getBytes();
        int k = abyte0.length;
        i l = new i(new byte[(k * 3) / 4]);
        if (!l.a(abyte0, k))
        {
            throw new IllegalArgumentException("bad base-64");
        }
        if (l.b == l.a.length)
        {
            return l.a;
        } else
        {
            byte abyte1[] = new byte[l.b];
            System.arraycopy(l.a, 0, abyte1, 0, l.b);
            return abyte1;
        }
    }

    static 
    {
        boolean flag;
        if (!com/google/ads/util/g.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
