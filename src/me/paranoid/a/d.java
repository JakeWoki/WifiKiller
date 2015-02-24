// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.a;

import android.content.DialogInterface;

final class d
    implements android.content.DialogInterface.OnClickListener
{

    d()
    {
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }
}
