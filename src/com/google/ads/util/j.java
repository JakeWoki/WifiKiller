// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


// Referenced classes of package com.google.ads.util:
//            h, g

public final class j extends h
{

    static final boolean g;
    private static final byte h[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte i[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    public int c;
    public final boolean d = false;
    public final boolean e = false;
    public final boolean f = false;
    private final byte j[] = new byte[2];
    private int k;
    private final byte l[];

    public j()
    {
        a = null;
        l = i;
        c = 0;
        int i1;
        if (e)
        {
            i1 = 19;
        } else
        {
            i1 = -1;
        }
        k = i1;
    }

    public final boolean a(byte abyte0[], int i1)
    {
        byte abyte1[];
        byte abyte2[];
        int j1;
        int k1;
        abyte1 = l;
        abyte2 = a;
        j1 = k;
        k1 = i1 + 0;
        c;
        JVM INSTR tableswitch 0 2: default 52
    //                   0 341
    //                   1 350
    //                   2 405;
           goto _L1 _L2 _L3 _L4
_L1:
        int i2;
        int j2;
        i2 = -1;
        j2 = 0;
_L6:
        int k2;
        int l2;
        if (i2 != -1)
        {
            abyte2[0] = abyte1[0x3f & i2 >> 18];
            abyte2[1] = abyte1[0x3f & i2 >> 12];
            abyte2[2] = abyte1[0x3f & i2 >> 6];
            byte byte3 = 4;
            abyte2[3] = abyte1[i2 & 0x3f];
            int k9 = j1 - 1;
            int l1;
            int i3;
            int j3;
            byte byte0;
            int k3;
            int l3;
            int i4;
            byte byte1;
            int j4;
            int k4;
            int l4;
            int i5;
            int j5;
            int k5;
            int l5;
            byte abyte3[];
            int i6;
            int j6;
            byte byte2;
            int k6;
            int l6;
            int i7;
            int j7;
            int k7;
            int l7;
            int i8;
            int j8;
            int k8;
            int l8;
            int i9;
            int j9;
            int l9;
            if (k9 == 0)
            {
                if (f)
                {
                    byte3 = 5;
                    abyte2[4] = 13;
                }
                l2 = byte3 + 1;
                abyte2[byte3] = 10;
                k2 = 19;
            } else
            {
                k2 = k9;
                l2 = byte3;
            }
        } else
        {
            k2 = j1;
            l2 = 0;
        }
        while (j2 + 3 <= k1) 
        {
            j8 = (0xff & abyte0[j2]) << 16 | (0xff & abyte0[j2 + 1]) << 8 | 0xff & abyte0[j2 + 2];
            abyte2[l2] = abyte1[0x3f & j8 >> 18];
            abyte2[l2 + 1] = abyte1[0x3f & j8 >> 12];
            abyte2[l2 + 2] = abyte1[0x3f & j8 >> 6];
            abyte2[l2 + 3] = abyte1[j8 & 0x3f];
            k8 = j2 + 3;
            l8 = l2 + 4;
            i9 = k2 - 1;
            if (i9 == 0)
            {
                if (f)
                {
                    j9 = l8 + 1;
                    abyte2[l8] = 13;
                } else
                {
                    j9 = l8;
                }
                l2 = j9 + 1;
                abyte2[j9] = 10;
                j2 = k8;
                k2 = 19;
            } else
            {
                k2 = i9;
                l2 = l8;
                j2 = k8;
            }
        }
          goto _L5
_L2:
        i2 = -1;
        j2 = 0;
          goto _L6
_L3:
        if (2 > k1) goto _L1; else goto _L7
_L7:
        l9 = (0xff & j[0]) << 16 | (0xff & abyte0[0]) << 8 | 0xff & abyte0[1];
        c = 0;
        i2 = l9;
        j2 = 2;
          goto _L6
_L4:
        if (k1 <= 0) goto _L1; else goto _L8
_L8:
        l1 = (0xff & j[0]) << 16 | (0xff & j[1]) << 8 | 0xff & abyte0[0];
        c = 0;
        i2 = l1;
        j2 = 1;
          goto _L6
_L5:
        if (j2 - c != k1 - 1) goto _L10; else goto _L9
_L9:
        if (c > 0)
        {
            byte2 = j[0];
            k6 = 1;
        } else
        {
            j6 = j2 + 1;
            byte2 = abyte0[j2];
            j2 = j6;
            k6 = 0;
        }
        l6 = (byte2 & 0xff) << 4;
        c = c - k6;
        i7 = l2 + 1;
        abyte2[l2] = abyte1[0x3f & l6 >> 6];
        j7 = i7 + 1;
        abyte2[i7] = abyte1[l6 & 0x3f];
        if (d)
        {
            i8 = j7 + 1;
            abyte2[j7] = 61;
            j7 = i8 + 1;
            abyte2[i8] = 61;
        }
        if (e)
        {
            if (f)
            {
                l7 = j7 + 1;
                abyte2[j7] = 13;
                j7 = l7;
            }
            k7 = j7 + 1;
            abyte2[j7] = 10;
            j7 = k7;
        }
        l2 = j7;
_L12:
        if (!g && c != 0)
        {
            throw new AssertionError();
        }
          goto _L11
_L10:
        if (j2 - c == k1 - 2)
        {
            if (c > 1)
            {
                byte0 = j[0];
                k3 = 1;
            } else
            {
                j3 = j2 + 1;
                byte0 = abyte0[j2];
                j2 = j3;
                k3 = 0;
            }
            l3 = (byte0 & 0xff) << 10;
            if (c > 0)
            {
                abyte3 = j;
                i6 = k3 + 1;
                byte1 = abyte3[k3];
                k3 = i6;
            } else
            {
                i4 = j2 + 1;
                byte1 = abyte0[j2];
                j2 = i4;
            }
            j4 = l3 | (byte1 & 0xff) << 2;
            c = c - k3;
            k4 = l2 + 1;
            abyte2[l2] = abyte1[0x3f & j4 >> 12];
            l4 = k4 + 1;
            abyte2[k4] = abyte1[0x3f & j4 >> 6];
            i5 = l4 + 1;
            abyte2[l4] = abyte1[j4 & 0x3f];
            if (d)
            {
                j5 = i5 + 1;
                abyte2[i5] = 61;
            } else
            {
                j5 = i5;
            }
            if (e)
            {
                if (f)
                {
                    l5 = j5 + 1;
                    abyte2[j5] = 13;
                    j5 = l5;
                }
                k5 = j5 + 1;
                abyte2[j5] = 10;
                j5 = k5;
            }
            l2 = j5;
        } else
        if (e && l2 > 0 && k2 != 19)
        {
            if (f)
            {
                i3 = l2 + 1;
                abyte2[l2] = 13;
            } else
            {
                i3 = l2;
            }
            l2 = i3 + 1;
            abyte2[i3] = 10;
        }
        if (true) goto _L12; else goto _L11
_L11:
        if (!g && j2 != k1)
        {
            throw new AssertionError();
        } else
        {
            b = l2;
            k = k2;
            return true;
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
        g = flag;
    }
}
