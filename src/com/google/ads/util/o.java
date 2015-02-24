// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;


final class o
{

    static final int a[];

    static 
    {
        a = new int[android.webkit.ConsoleMessage.MessageLevel.values().length];
        try
        {
            a[android.webkit.ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[android.webkit.ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[android.webkit.ConsoleMessage.MessageLevel.LOG.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[android.webkit.ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[android.webkit.ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
