// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.a;

import android.app.AlertDialog;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Vibrator;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

// Referenced classes of package me.paranoid.a:
//            d

public final class c
{

    public static String a(Context context)
    {
        WifiManager wifimanager = (WifiManager)context.getSystemService("wifi");
        if (wifimanager == null || !wifimanager.isWifiEnabled() || wifimanager.getConnectionInfo() == null || wifimanager.getConnectionInfo().getIpAddress() == 0)
        {
            return null;
        } else
        {
            int i = wifimanager.getConnectionInfo().getIpAddress();
            return (new StringBuilder()).append(i & 0xff).append(".").append(0xff & i >> 8).append(".").append(0xff & i >> 16).append(".").append(0xff & i >> 24).toString();
        }
    }

    public static void a(Context context, String s)
    {
        Toast.makeText(context, s, 0).show();
    }

    public static void a(Context context, String s, String s1)
    {
        a(context, s, s1, "OK", null, null);
    }

    public static void a(Context context, String s, String s1, String s2, String s3, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        ((Vibrator)context.getSystemService("vibrator")).vibrate(30L);
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(context)).create();
        alertdialog.setTitle(s);
        alertdialog.setButton(-1, s2, null);
        TextView textview = new TextView(context);
        textview.setPadding(16, 16, 16, 16);
        textview.setTextSize(18F);
        SpannableString spannablestring = new SpannableString(Html.fromHtml(s1));
        Linkify.addLinks(spannablestring, 1);
        textview.setMovementMethod(LinkMovementMethod.getInstance());
        textview.setText(spannablestring);
        alertdialog.setView(textview);
        new d();
        if (onclicklistener != null)
        {
            alertdialog.setButton(-3, s3, onclicklistener);
        }
        try
        {
            alertdialog.show();
            return;
        }
        catch (Exception exception)
        {
            a((new StringBuilder("Unable to show dialog! [")).append(s).append(" - ").append(s1).append("]").toString());
        }
    }

    public static void a(String s)
    {
        try
        {
            throw new Exception("hack :-)");
        }
        catch (Exception exception)
        {
            String as[] = exception.getStackTrace()[1].getClassName().split("\\.");
            String s1 = as[-1 + as.length];
            String s2 = (new StringBuilder("paranoid.me_")).append(s1).toString();
            String s3 = exception.getStackTrace()[1].getMethodName();
            int i = exception.getStackTrace()[1].getLineNumber();
            Log.d(s2, (new StringBuilder("[")).append(s3).append(":").append(i).append("] ").append(s).toString());
            return;
        }
    }
}
