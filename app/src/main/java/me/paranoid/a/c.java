package me.paranoid.a;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.wifi.WifiManager;
import android.os.Vibrator;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static String a(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager != null && wifiManager.isWifiEnabled() && wifiManager.getConnectionInfo() != null) {
                int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
                if (ipAddress != 0) {
                    return (ipAddress & 255) + "." + ((ipAddress >> 8) & 255) + "." + ((ipAddress >> 16) & 255) + "." + ((ipAddress >> 24) & 255);
                }
            }
        } catch (Exception ignored) {
        }
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.isUp() || networkInterface.isLoopback()) {
                    continue;
                }
                for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                    if ((inetAddress instanceof Inet4Address) && !inetAddress.isLoopbackAddress() && inetAddress.isSiteLocalAddress()) {
                        return inetAddress.getHostAddress();
                    }
                }
            }
        } catch (Exception ignored) {
        }
        return null;
    }

    public static void a(Context context, String str) {
        Toast.makeText(context, str, 0).show();
    }

    public static void a(Context context, String str, String str2) {
        a(context, str, str2, "OK", null, null);
    }

    public static void a(Context context, String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener) {
        ((Vibrator) context.getSystemService("vibrator")).vibrate(30L);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).create();
        alertDialogCreate.setTitle(str);
        alertDialogCreate.setButton(-1, str3, (DialogInterface.OnClickListener) null);
        TextView textView = new TextView(context);
        textView.setPadding(16, 16, 16, 16);
        textView.setTextSize(18.0f);
        SpannableString spannableString = new SpannableString(Html.fromHtml(str2));
        Linkify.addLinks(spannableString, 1);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString);
        alertDialogCreate.setView(textView);
        new d();
        if (onClickListener != null) {
            alertDialogCreate.setButton(-3, str4, onClickListener);
        }
        try {
            alertDialogCreate.show();
        } catch (Exception e) {
            a("Unable to show dialog! [" + str + " - " + str2 + "]");
        }
    }

    public static void a(String str) {
        try {
            throw new Exception("hack :-)");
        } catch (Exception e) {
            String[] strArrSplit = e.getStackTrace()[1].getClassName().split("\\.");
            Log.d("paranoid.me_" + strArrSplit[strArrSplit.length - 1], "[" + e.getStackTrace()[1].getMethodName() + ":" + e.getStackTrace()[1].getLineNumber() + "] " + str);
        }
    }
}
