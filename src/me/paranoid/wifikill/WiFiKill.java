// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SearchView;
import com.google.ads.AdView;
import com.google.ads.d;
import java.util.Iterator;
import java.util.List;
import me.paranoid.a.b;
import me.paranoid.a.c;
import me.paranoid.wifikill.fragment.DevicesFragment;
import me.paranoid.wifikill.fragment.StatusBarFragment;
import me.paranoid.wifikill.fragment.a;
import me.paranoid.wifikill.fragment.h;
import me.paranoid.wifikill.service.WFKService;

// Referenced classes of package me.paranoid.wifikill:
//            d, e, g, f, 
//            a, b, c, Preferences

public class WiFiKill extends Activity
{

    public static g a = null;
    public static me.paranoid.wifikill.a b = null;
    public static boolean c = true;
    private static final String d = null;
    private static Context n;
    private static SharedPreferences q;
    private static SharedPreferences r;
    private ActionBar e;
    private boolean f;
    private ProgressBar g;
    private StatusBarFragment h;
    private a i;
    private DevicesFragment j;
    private Menu k;
    private SearchView l;
    private ProgressDialog m;
    private android.os.PowerManager.WakeLock o;
    private AdView p;

    public WiFiKill()
    {
        f = false;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
    }

    public static SharedPreferences a()
    {
        return r;
    }

    static SearchView a(WiFiKill wifikill)
    {
        return wifikill.l;
    }

    static a a(WiFiKill wifikill, a a1)
    {
        wifikill.i = a1;
        return a1;
    }

    private void a(int i1)
    {
        me.paranoid.a.c.a((new StringBuilder("progress:")).append(i1).append(" / av=").append(k.findItem(0x7f090032).getActionView()).toString());
        if (k.findItem(0x7f090032).getActionView() == null)
        {
            LinearLayout linearlayout = new LinearLayout(n);
            linearlayout.setPadding(8, 8, 8, 8);
            linearlayout.addView(new ProgressBar(n));
            linearlayout.setOnClickListener(new me.paranoid.wifikill.d(this));
            k.findItem(0x7f090032).setActionView(linearlayout);
        }
        if (g == null)
        {
            g = (ProgressBar)findViewById(0x7f090026);
        }
        if (g.getAnimation() == null || (!g.getAnimation().hasStarted() || g.getAnimation().hasEnded()) && g.getVisibility() != 0)
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
            alphaanimation.setDuration(500L);
            alphaanimation.setFillAfter(true);
            alphaanimation.setAnimationListener(new e(this));
            g.startAnimation(alphaanimation);
        }
        g.setProgress(i1);
    }

    public static void a(String s)
    {
        me.paranoid.a.c.a((new StringBuilder("IP = ")).append(s).toString());
        a.a(108, s);
    }

    static void a(WiFiKill wifikill, int i1)
    {
        wifikill.a(i1);
    }

    static DevicesFragment b(WiFiKill wifikill)
    {
        return wifikill.j;
    }

    public static void b(String s)
    {
        me.paranoid.a.c.a((new StringBuilder("IP = ")).append(s).toString());
        a.a(110, s);
    }

    static Menu c(WiFiKill wifikill)
    {
        return wifikill.k;
    }

    public static void c(String s)
    {
        me.paranoid.a.c.a((new StringBuilder("IP = ")).append(s).toString());
        a.a(111, s);
    }

    static Context d()
    {
        return n;
    }

    static ProgressBar d(WiFiKill wifikill)
    {
        return wifikill.g;
    }

    public static void d(String s)
    {
        me.paranoid.a.c.a((new StringBuilder("IP = ")).append(s).toString());
        a.a(109, s);
    }

    static StatusBarFragment e(WiFiKill wifikill)
    {
        return wifikill.h;
    }

    private void e()
    {
        me.paranoid.a.c.a("");
        k.findItem(0x7f090032).setActionView(null);
        g = (ProgressBar)findViewById(0x7f090026);
        if (g.getAnimation() == null || g.getAnimation().hasEnded())
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(500L);
            alphaanimation.setFillAfter(true);
            alphaanimation.setAnimationListener(new f(this));
            g.startAnimation(alphaanimation);
        }
    }

    private void f()
    {
        me.paranoid.a.c.a("");
        g g1 = new g(this, this);
        a = g1;
        g1.a();
    }

    static void f(WiFiKill wifikill)
    {
        wifikill.e();
    }

    static ProgressDialog g(WiFiKill wifikill)
    {
        return wifikill.m;
    }

    private boolean g()
    {
        for (Iterator iterator = ((ActivityManager)getSystemService("activity")).getRunningServices(0x7fffffff).iterator(); iterator.hasNext();)
        {
            if (((android.app.ActivityManager.RunningServiceInfo)iterator.next()).service.getClassName().equals("me.paranoid.wifikill.service.WFKService"))
            {
                return true;
            }
        }

        return false;
    }

    static a h(WiFiKill wifikill)
    {
        return wifikill.i;
    }

    public final void a(boolean flag)
    {
        if (b == null || a == null)
        {
            return;
        }
        me.paranoid.wifikill.a a1 = b;
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 3;
        }
        me.paranoid.wifikill.fragment.h.a(a1, i1).show(getFragmentManager(), d);
    }

    final void b()
    {
        k.findItem(0x7f090031).setIcon(0x1080024);
        k.findItem(0x7f090031).setTitle("START");
        e();
        j.a(null);
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.setCustomAnimations(0x7f040000, 0x7f040003, 0x7f040000, 0x7f040003);
        fragmenttransaction.hide(j);
        try
        {
            getFragmentManager().popBackStack();
            fragmenttransaction.commit();
        }
        catch (Exception exception)
        {
            me.paranoid.a.c.a((new StringBuilder("error: ")).append(exception.getMessage()).toString());
        }
        h.b();
        if (a != null)
        {
            a.b();
            a = null;
        }
        f = false;
    }

    public final void b(boolean flag)
    {
        if (b == null || a == null)
        {
            return;
        }
        me.paranoid.wifikill.a a1 = b;
        int i1;
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 2;
        }
        me.paranoid.wifikill.fragment.h.a(a1, i1).show(getFragmentManager(), d);
    }

    final void c()
    {
        me.paranoid.a.c.a("start");
        a.a(3, null);
        b = new me.paranoid.wifikill.a(getApplicationContext(), a.a.a);
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.setCustomAnimations(0x7f040000, 0x7f040003, 0x7f040000, 0x7f040003);
        try
        {
            fragmenttransaction.show(j);
            fragmenttransaction.commit();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        b.c();
        j.a(b);
        h.a();
    }

    protected void onCreate(Bundle bundle)
    {
        n = this;
        String s = getPackageManager().getApplicationLabel(getApplicationInfo()).toString().toLowerCase();
        me.paranoid.a.c.a((new StringBuilder("!!! ")).append(s).toString());
        if (s.contains("free"))
        {
            c = false;
        }
        super.onCreate(bundle);
        q = getSharedPreferences("WiFiKill", 0);
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(this);
        r = sharedpreferences;
        if (sharedpreferences.getBoolean("pref_key_fullscreen", false))
        {
            getWindow().setFlags(1024, 1024);
        }
        setContentView(0x7f030003);
        o = ((PowerManager)getSystemService("power")).newWakeLock(6, "WiFiKill");
        e = getActionBar();
        e.setBackgroundDrawable(getResources().getDrawable(0x7f020000));
        j = (DevicesFragment)getFragmentManager().findFragmentById(0x7f090023);
        h = (StatusBarFragment)getFragmentManager().findFragmentById(0x7f090024);
        i = (a)getFragmentManager().findFragmentById(0x7f090029);
        getFragmentManager().beginTransaction().hide(j);
        if (!c)
        {
            p = (AdView)findViewById(0x7f090008);
            p.setVisibility(0);
            p.a(new d());
            me.paranoid.a.c.a(n, "Demo", "This is a demo version of the app, it has less options and other limitations.\n\nConsider using WiFiKill Downloader from http://paranoid.me , to get FULL version\n", "Try demo", "Get WiFiKill Downloader", new me.paranoid.wifikill.b(this));
        } else
        {
            View view = findViewById(0x7f090024);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams.addRule(12);
            view.setLayoutParams(layoutparams);
        }
        if (q.getBoolean("first_run", true))
        {
            me.paranoid.a.c.a(n, "Disclaimer", "This program is released \"as-is\" - without any warranty, responsibility or liability. I do not take any responsibility for anything you do using this application. Using (or even keeping) this app might be illegal in your country. Use at your own risk!");
            android.content.SharedPreferences.Editor editor = q.edit();
            editor.putBoolean("first_run", false);
            editor.commit();
        }
        f = g();
        me.paranoid.a.c.a((new StringBuilder("service_running = ")).append(f).toString());
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        me.paranoid.a.c.a("");
        getMenuInflater().inflate(0x7f080000, menu);
        k = menu;
        if (!f) goto _L2; else goto _L1
_L1:
        me.paranoid.a.c.a("");
        k.findItem(0x7f090031).setIcon(0x1080023);
        k.findItem(0x7f090031).setTitle("STOP");
        f();
_L4:
        return true;
_L2:
        if (!me.paranoid.a.b.a(n, "wfk", "wfk"))
        {
            me.paranoid.a.c.a(n, "Warning", "Unable to copy binary file, please reboot your phone and try again.");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        me.paranoid.a.c.a("");
        super.onDestroy();
        if (a != null)
        {
            a.b();
        }
        a = null;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag;
        flag = true;
        me.paranoid.a.c.a("");
        menuitem.getItemId();
        JVM INSTR tableswitch 2131296305 2131296310: default 52
    //                   2131296305 94
    //                   2131296306 54
    //                   2131296307 255
    //                   2131296308 332
    //                   2131296309 296
    //                   2131296310 318;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return false;
_L3:
        if (f)
        {
            me.paranoid.a.c.a(n, "initiating device scan");
            a.a(5, Boolean.valueOf(flag));
            me.paranoid.a.c.a("");
            a(0);
            return false;
        }
          goto _L1
_L2:
        me.paranoid.a.c.a("");
        if (f)
        {
            me.paranoid.a.c.a("start");
            m = new ProgressDialog(this);
            m.setTitle("Stopping service");
            m.setMessage("Please wait...");
            m.setCancelable(false);
            me.paranoid.a.c.a("showing");
            m.show();
            me.paranoid.a.c.a("sending message");
            a.a(4, null);
            me.paranoid.a.c.a("end");
        } else
        {
            if (me.paranoid.a.c.a(n) == null)
            {
                me.paranoid.a.c.a(n, "Error", "Not connected to any WiFi network!");
                return false;
            }
            menuitem.setIcon(0x1080023);
            menuitem.setTitle("STOP");
            f();
        }
        if (f)
        {
            flag = false;
        }
        f = flag;
        return false;
_L4:
        l = (SearchView)k.findItem(0x7f090033).getActionView();
        l.setOnQueryTextListener(new me.paranoid.wifikill.c(this));
        return false;
_L6:
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://forum.paranoid.me/")));
        return false;
_L7:
        me.paranoid.a.c.a(n, "About", "This program just a proof of concept, please check my other cool apps on my website: http://forum.paranoid.me/");
        return false;
_L5:
        startActivity(new Intent(this, me/paranoid/wifikill/Preferences));
        return false;
    }

    protected void onPause()
    {
        super.onPause();
        o.release();
    }

    protected void onResume()
    {
        me.paranoid.a.c.a("onResume() ---");
        super.onResume();
        o.acquire();
        j.a();
    }

}
