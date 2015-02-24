// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public final class y
{

    private static y c = null;
    private final BigInteger a = d();
    private BigInteger b;

    private y()
    {
        b = BigInteger.ONE;
    }

    public static y a()
    {
        com/google/ads/y;
        JVM INSTR monitorenter ;
        y y1;
        if (c == null)
        {
            c = new y();
        }
        y1 = c;
        com/google/ads/y;
        JVM INSTR monitorexit ;
        return y1;
        Exception exception;
        exception;
        throw exception;
    }

    private static BigInteger d()
    {
        BigInteger biginteger;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            UUID uuid = UUID.randomUUID();
            messagedigest.update(BigInteger.valueOf(uuid.getLeastSignificantBits()).toByteArray());
            messagedigest.update(BigInteger.valueOf(uuid.getMostSignificantBits()).toByteArray());
            byte abyte0[] = new byte[9];
            abyte0[0] = 0;
            System.arraycopy(messagedigest.digest(), 0, abyte0, 1, 8);
            biginteger = new BigInteger(abyte0);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException("Cannot find MD5 message digest algorithm.");
        }
        return biginteger;
    }

    public final BigInteger b()
    {
        this;
        JVM INSTR monitorenter ;
        BigInteger biginteger = a;
        this;
        JVM INSTR monitorexit ;
        return biginteger;
        Exception exception;
        exception;
        throw exception;
    }

    public final BigInteger c()
    {
        this;
        JVM INSTR monitorenter ;
        BigInteger biginteger;
        biginteger = b;
        b = b.add(BigInteger.ONE);
        this;
        JVM INSTR monitorexit ;
        return biginteger;
        Exception exception;
        exception;
        throw exception;
    }

}
