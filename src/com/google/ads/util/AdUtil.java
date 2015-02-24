// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.ads.util:
//            l, d, g, k, 
//            a

public final class AdUtil
{

    public static final int a;
    private static Boolean b = null;
    private static String c = null;
    private static String d;
    private static String e = null;
    private static AudioManager f;
    private static boolean g = true;
    private static boolean h = false;
    private static String i = null;

    public static int a()
    {
        return a < 9 ? 0 : 6;
    }

    public static int a(Context context, DisplayMetrics displaymetrics)
    {
        if (a >= 4)
        {
            return l.a(context, displaymetrics);
        } else
        {
            return displaymetrics.heightPixels;
        }
    }

    public static DisplayMetrics a(Activity activity)
    {
        if (activity.getWindowManager() == null)
        {
            return null;
        } else
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            return displaymetrics;
        }
    }

    public static String a(Context context)
    {
        if (c == null)
        {
            String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            String s1;
            if (s == null || c())
            {
                s1 = a("emulator");
            } else
            {
                s1 = a(s);
            }
            if (s1 == null)
            {
                return null;
            }
            c = s1.toUpperCase(Locale.US);
        }
        return c;
    }

    public static String a(Location location)
    {
        if (location == null)
        {
            return null;
        } else
        {
            Locale locale = Locale.US;
            Object aobj[] = new Object[4];
            aobj[0] = Long.valueOf(1000L * location.getTime());
            aobj[1] = Long.valueOf((long)(10000000D * location.getLatitude()));
            aobj[2] = Long.valueOf((long)(10000000D * location.getLongitude()));
            aobj[3] = Long.valueOf((long)(1000F * location.getAccuracy()));
            String s = c(String.format(locale, "role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", aobj));
            return (new StringBuilder("e1+")).append(s).toString();
        }
    }

    public static String a(Readable readable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        CharBuffer charbuffer = CharBuffer.allocate(2048);
        do
        {
            int j = readable.read(charbuffer);
            if (j != -1)
            {
                charbuffer.flip();
                stringbuilder.append(charbuffer, 0, j);
            } else
            {
                return stringbuilder.toString();
            }
        } while (true);
    }

    public static String a(String s)
    {
        String s1 = null;
        if (s != null)
        {
            int j = s.length();
            s1 = null;
            if (j > 0)
            {
                String s2;
                try
                {
                    MessageDigest messagedigest = MessageDigest.getInstance("MD5");
                    messagedigest.update(s.getBytes(), 0, s.length());
                    Locale locale = Locale.US;
                    Object aobj[] = new Object[1];
                    aobj[0] = new BigInteger(1, messagedigest.digest());
                    s2 = String.format(locale, "%032X", aobj);
                }
                catch (NoSuchAlgorithmException nosuchalgorithmexception)
                {
                    return s.substring(0, 32);
                }
                s1 = s2;
            }
        }
        return s1;
    }

    public static String a(Map map)
    {
        String s;
        try
        {
            s = b(map).toString();
        }
        catch (JSONException jsonexception)
        {
            com.google.ads.util.d.d("JsonException in serialization: ", jsonexception);
            return null;
        }
        return s;
    }

    private static JSONArray a(Set set)
    {
        JSONArray jsonarray = new JSONArray();
        if (set == null || set.isEmpty())
        {
            return jsonarray;
        }
        for (Iterator iterator = set.iterator(); iterator.hasNext();)
        {
            Object obj = iterator.next();
            if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float))
            {
                jsonarray.put(obj);
            } else
            if (obj instanceof Map)
            {
                try
                {
                    jsonarray.put(b((Map)obj));
                }
                catch (ClassCastException classcastexception1)
                {
                    com.google.ads.util.d.d("Unknown map type in json serialization: ", classcastexception1);
                }
            } else
            if (obj instanceof Set)
            {
                try
                {
                    jsonarray.put(a((Set)obj));
                }
                catch (ClassCastException classcastexception)
                {
                    com.google.ads.util.d.d("Unknown map type in json serialization: ", classcastexception);
                }
            } else
            {
                com.google.ads.util.d.e((new StringBuilder("Unknown value in json serialization: ")).append(obj).toString());
            }
        }

        return jsonarray;
    }

    public static void a(WebView webview)
    {
        String s = i(webview.getContext().getApplicationContext());
        webview.getSettings().setUserAgentString(s);
    }

    public static void a(HttpURLConnection httpurlconnection, Context context)
    {
        httpurlconnection.setRequestProperty("User-Agent", i(context));
    }

    public static void a(boolean flag)
    {
        g = flag;
    }

    private static boolean a(int j, int i1, String s)
    {
        if ((j & i1) == 0)
        {
            com.google.ads.util.d.b((new StringBuilder("The android:configChanges value of the com.google.ads.AdActivity must include ")).append(s).append(".").toString());
            return false;
        } else
        {
            return true;
        }
    }

    public static boolean a(Intent intent, Context context)
    {
        return context.getPackageManager().resolveActivity(intent, 0x10000) != null;
    }

    public static boolean a(Uri uri)
    {
        String s;
        if (uri != null)
        {
            if ("http".equalsIgnoreCase(s = uri.getScheme()) || "https".equalsIgnoreCase(s))
            {
                return true;
            }
        }
        return false;
    }

    public static int b()
    {
        return a < 9 ? 1 : 7;
    }

    public static int b(Context context, DisplayMetrics displaymetrics)
    {
        if (a >= 4)
        {
            return l.b(context, displaymetrics);
        } else
        {
            return displaymetrics.widthPixels;
        }
    }

    private static int b(String s)
    {
        int j;
        try
        {
            j = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            com.google.ads.util.d.e((new StringBuilder("The Android SDK version couldn't be parsed to an int: ")).append(android.os.Build.VERSION.SDK).toString());
            com.google.ads.util.d.e("Defaulting to Android SDK version 3.");
            return 3;
        }
        return j;
    }

    public static HashMap b(Uri uri)
    {
        if (uri == null)
        {
            return null;
        }
        HashMap hashmap = new HashMap();
        String s = uri.getEncodedQuery();
        if (s != null)
        {
            String as[] = s.split("&");
            int j = as.length;
            int i1 = 0;
            while (i1 < j) 
            {
                String s1 = as[i1];
                int j1 = s1.indexOf("=");
                if (j1 < 0)
                {
                    hashmap.put(Uri.decode(s1), null);
                } else
                {
                    hashmap.put(Uri.decode(s1.substring(0, j1)), Uri.decode(s1.substring(j1 + 1, s1.length())));
                }
                i1++;
            }
        }
        return hashmap;
    }

    private static JSONObject b(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        if (map == null || map.isEmpty())
        {
            return jsonobject;
        }
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj = map.get(s);
            if ((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float))
            {
                jsonobject.put(s, obj);
            } else
            if (obj instanceof Map)
            {
                try
                {
                    jsonobject.put(s, b((Map)obj));
                }
                catch (ClassCastException classcastexception1)
                {
                    com.google.ads.util.d.d("Unknown map type in json serialization: ", classcastexception1);
                }
            } else
            if (obj instanceof Set)
            {
                try
                {
                    jsonobject.put(s, a((Set)obj));
                }
                catch (ClassCastException classcastexception)
                {
                    com.google.ads.util.d.d("Unknown map type in json serialization: ", classcastexception);
                }
            } else
            {
                com.google.ads.util.d.e((new StringBuilder("Unknown value in json serialization: ")).append(obj).toString());
            }
        }

        return jsonobject;
    }

    public static boolean b(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        String s = context.getPackageName();
        if (packagemanager.checkPermission("android.permission.INTERNET", s) == -1)
        {
            com.google.ads.util.d.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
        if (packagemanager.checkPermission("android.permission.ACCESS_NETWORK_STATE", s) == -1)
        {
            com.google.ads.util.d.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            return false;
        } else
        {
            return true;
        }
    }

    private static String c(String s)
    {
        String s1;
        try
        {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, new SecretKeySpec(new byte[] {
                10, 55, -112, -47, -6, 7, 11, 75, -7, -121, 
                121, 69, 80, -61, 15, 5
            }, "AES"));
            byte abyte0[] = cipher.getIV();
            byte abyte1[] = cipher.doFinal(s.getBytes());
            byte abyte2[] = new byte[abyte0.length + abyte1.length];
            System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
            System.arraycopy(abyte1, 0, abyte2, abyte0.length, abyte1.length);
            s1 = com.google.ads.util.g.a(abyte2);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            return null;
        }
        return s1;
    }

    public static boolean c()
    {
        return k.d.equals(k.e);
    }

    public static boolean c(Context context)
    {
        ResolveInfo resolveinfo;
        if (b != null)
        {
            return b.booleanValue();
        }
        resolveinfo = context.getPackageManager().resolveActivity(new Intent(context, com/google/ads/AdActivity), 0x10000);
        b = Boolean.valueOf(true);
        if (resolveinfo != null && resolveinfo.activityInfo != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.d.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
        b = Boolean.valueOf(false);
_L4:
        return b.booleanValue();
_L2:
        if (!a(resolveinfo.activityInfo.configChanges, 16, "keyboard"))
        {
            b = Boolean.valueOf(false);
        }
        if (!a(resolveinfo.activityInfo.configChanges, 32, "keyboardHidden"))
        {
            b = Boolean.valueOf(false);
        }
        if (!a(resolveinfo.activityInfo.configChanges, 128, "orientation"))
        {
            b = Boolean.valueOf(false);
        }
        if (!a(resolveinfo.activityInfo.configChanges, 256, "screenLayout"))
        {
            b = Boolean.valueOf(false);
        }
        if (!a(resolveinfo.activityInfo.configChanges, 512, "uiMode"))
        {
            b = Boolean.valueOf(false);
        }
        if (!a(resolveinfo.activityInfo.configChanges, 1024, "screenSize"))
        {
            b = Boolean.valueOf(false);
        }
        if (!a(resolveinfo.activityInfo.configChanges, 2048, "smallestScreenSize"))
        {
            b = Boolean.valueOf(false);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String d(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return null;
        }
        switch (networkinfo.getType())
        {
        default:
            return "unknown";

        case 0: // '\0'
            return "ed";

        case 1: // '\001'
            return "wi";
        }
    }

    public static boolean d()
    {
        return g;
    }

    public static String e(Context context)
    {
        if (d == null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            PackageManager packagemanager = context.getPackageManager();
            List list = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 0x10000);
            if (list == null || list.size() == 0)
            {
                stringbuilder.append("m");
            }
            List list1 = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 0x10000);
            if (list1 == null || list1.size() == 0)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append("a");
            }
            List list2 = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("tel://6509313940")), 0x10000);
            if (list2 == null || list2.size() == 0)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append("t");
            }
            d = stringbuilder.toString();
        }
        return d;
    }

    public static String f(Context context)
    {
        if (e == null) goto _L2; else goto _L1
_L1:
        String s = e;
_L4:
        return s;
_L2:
        PackageManager packagemanager;
        ResolveInfo resolveinfo;
        ActivityInfo activityinfo;
        PackageInfo packageinfo;
        String s1;
        try
        {
            packagemanager = context.getPackageManager();
            resolveinfo = packagemanager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads")), 0x10000);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        s = null;
        if (resolveinfo == null) goto _L4; else goto _L3
_L3:
        activityinfo = resolveinfo.activityInfo;
        s = null;
        if (activityinfo == null) goto _L4; else goto _L5
_L5:
        packageinfo = packagemanager.getPackageInfo(activityinfo.packageName, 0);
        s = null;
        if (packageinfo == null) goto _L4; else goto _L6
_L6:
        s1 = (new StringBuilder()).append(packageinfo.versionCode).append(".").append(activityinfo.packageName).toString();
        e = s1;
        return s1;
    }

    public static a g(Context context)
    {
        if (f == null)
        {
            f = (AudioManager)context.getSystemService("audio");
        }
        a _tmp = a.f;
        int j = f.getMode();
        if (c())
        {
            return a.e;
        }
        if (f.isMusicActive() || f.isSpeakerphoneOn() || j == 2 || j == 1)
        {
            return a.d;
        }
        int i1 = f.getRingerMode();
        if (i1 == 0 || i1 == 1)
        {
            return a.d;
        } else
        {
            return a.b;
        }
    }

    public static void h(Context context)
    {
        if (h)
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(new UserActivityReceiver(), intentfilter);
            h = true;
            return;
        }
    }

    private static String i(Context context)
    {
        if (i == null)
        {
            String s = (new WebView(context)).getSettings().getUserAgentString();
            if (s == null || s.length() == 0 || s.equals("Java0"))
            {
                String s1 = System.getProperty("os.name", "Linux");
                String s2 = (new StringBuilder("Android ")).append(android.os.Build.VERSION.RELEASE).toString();
                Locale locale = Locale.getDefault();
                String s3 = locale.getLanguage().toLowerCase(Locale.US);
                if (s3.length() == 0)
                {
                    s3 = "en";
                }
                String s4 = locale.getCountry().toLowerCase(Locale.US);
                if (s4.length() > 0)
                {
                    s3 = (new StringBuilder()).append(s3).append("-").append(s4).toString();
                }
                String s5 = (new StringBuilder()).append(Build.MODEL).append(" Build/").append(Build.ID).toString();
                s = (new StringBuilder("Mozilla/5.0 (")).append(s1).append("; U; ").append(s2).append("; ").append(s3).append("; ").append(s5).append(") AppleWebKit/0.0 (KHTML, like Gecko) Version/0.0 Mobile Safari/0.0").toString();
            }
            i = (new StringBuilder()).append(s).append(" (Mobile; afma-sdk-a-v6.2.1)").toString();
        }
        return i;
    }

    static 
    {
        a = b(android.os.Build.VERSION.SDK);
    }

    private class UserActivityReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT"))
            {
                AdUtil.a(true);
            } else
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
            {
                AdUtil.a(false);
                return;
            }
        }

        public UserActivityReceiver()
        {
        }
    }

}
