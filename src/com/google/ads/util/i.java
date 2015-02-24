// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


// Referenced classes of package com.google.ads.util:
//            h

public final class i extends h
{

    private static final int c[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1
    };
    private static final int d[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1
    };
    private int e;
    private int f;
    private final int g[];

    public i(byte abyte0[])
    {
        a = abyte0;
        g = c;
        e = 0;
        f = 0;
    }

    public final boolean a(byte abyte0[], int j)
    {
        int k;
        int i1;
        byte abyte1[];
        int ai[];
        int j1;
        int k1;
        int l1;
        if (e == 6)
        {
            return false;
        }
        k = j + 0;
        int l = e;
        i1 = f;
        abyte1 = a;
        ai = g;
        j1 = 0;
        k1 = l;
        l1 = 0;
_L24:
        if (j1 >= k) goto _L2; else goto _L1
_L1:
        if (k1 != 0) goto _L4; else goto _L3
_L3:
        do
        {
            if (j1 + 4 > k)
            {
                break;
            }
            i1 = ai[0xff & abyte0[j1]] << 18 | ai[0xff & abyte0[j1 + 1]] << 12 | ai[0xff & abyte0[j1 + 2]] << 6 | ai[0xff & abyte0[j1 + 3]];
            if (i1 < 0)
            {
                break;
            }
            abyte1[l1 + 2] = (byte)i1;
            abyte1[l1 + 1] = (byte)(i1 >> 8);
            abyte1[l1] = (byte)(i1 >> 16);
            l1 += 3;
            j1 += 4;
        } while (true);
        if (j1 >= k) goto _L2; else goto _L4
_L4:
        int l2;
        int i3;
        l2 = j1 + 1;
        i3 = ai[0xff & abyte0[j1]];
        k1;
        JVM INSTR tableswitch 0 5: default 244
    //                   0 251
    //                   1 284
    //                   2 323
    //                   3 399
    //                   4 518
    //                   5 549;
           goto _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L5:
        j1 = l2;
        continue; /* Loop/switch isn't completed */
_L6:
        if (i3 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        k1++;
        i1 = i3;
        j1 = l2;
        continue; /* Loop/switch isn't completed */
        if (i3 == -1) goto _L5; else goto _L12
_L12:
        e = 6;
        return false;
_L7:
        if (i3 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        i1 = i3 | i1 << 6;
        k1++;
        j1 = l2;
        continue; /* Loop/switch isn't completed */
        if (i3 == -1) goto _L5; else goto _L13
_L13:
        e = 6;
        return false;
_L8:
        if (i3 >= 0)
        {
            i1 = i3 | i1 << 6;
            k1++;
            j1 = l2;
        } else
        {
            if (i3 != -2)
            {
                continue; /* Loop/switch isn't completed */
            }
            int j3 = l1 + 1;
            abyte1[l1] = (byte)(i1 >> 4);
            k1 = 4;
            l1 = j3;
            j1 = l2;
        }
        continue; /* Loop/switch isn't completed */
        if (i3 == -1) goto _L5; else goto _L14
_L14:
        e = 6;
        return false;
_L9:
        if (i3 >= 0)
        {
            i1 = i3 | i1 << 6;
            abyte1[l1 + 2] = (byte)i1;
            abyte1[l1 + 1] = (byte)(i1 >> 8);
            abyte1[l1] = (byte)(i1 >> 16);
            l1 += 3;
            j1 = l2;
            k1 = 0;
        } else
        {
            if (i3 != -2)
            {
                continue; /* Loop/switch isn't completed */
            }
            abyte1[l1 + 1] = (byte)(i1 >> 2);
            abyte1[l1] = (byte)(i1 >> 10);
            l1 += 2;
            k1 = 5;
            j1 = l2;
        }
        continue; /* Loop/switch isn't completed */
        if (i3 == -1) goto _L5; else goto _L15
_L15:
        e = 6;
        return false;
_L10:
        if (i3 != -2)
        {
            continue; /* Loop/switch isn't completed */
        }
        k1++;
        j1 = l2;
        continue; /* Loop/switch isn't completed */
        if (i3 == -1) goto _L5; else goto _L16
_L16:
        e = 6;
        return false;
_L11:
        if (i3 == -1) goto _L5; else goto _L17
_L17:
        e = 6;
        return false;
_L2:
        int i2 = i1;
        k1;
        JVM INSTR tableswitch 0 4: default 604
    //                   0 604
    //                   1 618
    //                   2 626
    //                   3 649
    //                   4 685;
           goto _L18 _L18 _L19 _L20 _L21 _L22
_L18:
        e = k1;
        b = l1;
        return true;
_L19:
        e = 6;
        return false;
_L20:
        int k2 = l1 + 1;
        abyte1[l1] = (byte)(i2 >> 4);
        l1 = k2;
        continue; /* Loop/switch isn't completed */
_L21:
        int j2 = l1 + 1;
        abyte1[l1] = (byte)(i2 >> 10);
        l1 = j2 + 1;
        abyte1[j2] = (byte)(i2 >> 2);
        if (true) goto _L18; else goto _L22
_L22:
        e = 6;
        return false;
        if (true) goto _L24; else goto _L23
_L23:
    }

}
