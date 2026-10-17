package me.paranoid.wifikill;

import android.Manifest;
import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ActivityManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SearchView;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import me.paranoid.wifikill.fragment.DevicesFragment;
import me.paranoid.wifikill.fragment.StatusBarFragment;

/* JADX INFO: loaded from: classes.dex */
public class WiFiKill extends Activity {
    public static Context n;
    public static SharedPreferences q;
    public static SharedPreferences r;
    public ActionBar e;
    public boolean f = false;
    public ProgressBar g = null;
    public StatusBarFragment h = null;
    public me.paranoid.wifikill.fragment.a i = null;
    public DevicesFragment j = null;
    public Menu k = null;
    public SearchView l = null;
    public ProgressDialog m = null;
    public PowerManager.WakeLock o;
    public static final String d = null;
    public static g a = null;
    public static a b = null;
    public static boolean c = true;

    public static SharedPreferences a() {
        return r;
    }

    /* JADX INFO: Access modifiers changed from: public */
    public void a(int i) {
        me.paranoid.a.c.a("progress:" + i + " / av=" + this.k.findItem(R.id.menu_refresh).getActionView());
        if (this.k.findItem(R.id.menu_refresh).getActionView() == null) {
            LinearLayout linearLayout = new LinearLayout(n);
            linearLayout.setPadding(8, 8, 8, 8);
            linearLayout.addView(new ProgressBar(n));
            linearLayout.setOnClickListener(new d(this));
            this.k.findItem(R.id.menu_refresh).setActionView(linearLayout);
        }
        if (this.g == null) {
            this.g = (ProgressBar) findViewById(R.id.search_progress);
        }
        if (this.g.getAnimation() == null || ((!this.g.getAnimation().hasStarted() || this.g.getAnimation().hasEnded()) && this.g.getVisibility() != 0)) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new e(this));
            this.g.startAnimation(alphaAnimation);
        }
        this.g.setProgress(i);
    }

    public static void a(String str) {
        me.paranoid.a.c.a("IP = " + str);
        a.a(108, str);
    }

    public static void b(String str) {
        me.paranoid.a.c.a("IP = " + str);
        a.a(110, str);
    }

    public static void c(String str) {
        me.paranoid.a.c.a("IP = " + str);
        a.a(111, str);
    }

    public static void d(String str) {
        me.paranoid.a.c.a("IP = " + str);
        a.a(109, str);
    }

    /* JADX INFO: Access modifiers changed from: public */
    public void e() {
        me.paranoid.a.c.a("");
        this.k.findItem(R.id.menu_refresh).setActionView((View) null);
        this.g = (ProgressBar) findViewById(R.id.search_progress);
        if (this.g.getAnimation() == null || this.g.getAnimation().hasEnded()) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new f(this));
            this.g.startAnimation(alphaAnimation);
        }
    }

    public void f() {
        me.paranoid.a.c.a("");
        g gVar = new g(this, this);
        a = gVar;
        gVar.a();
    }

    public boolean g() {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (it.next().service.getClassName().equals("me.paranoid.wifikill.service.WFKService")) {
                return true;
            }
        }
        return false;
    }

    public final void a(boolean z) {
        if (b == null || a == null) {
            return;
        }
        me.paranoid.wifikill.fragment.h.a(b, z ? 0 : 3).show(getFragmentManager(), d);
    }

    final void b() {
        this.k.findItem(R.id.menu_power).setIcon(android.R.drawable.ic_media_play);
        this.k.findItem(R.id.menu_power).setTitle("START");
        e();
        this.j.a((a) null);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit, R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit);
        fragmentTransactionBeginTransaction.hide(this.j);
        try {
            getFragmentManager().popBackStack();
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e) {
            me.paranoid.a.c.a("error: " + e.getMessage());
        }
        this.h.b();
        if (a != null) {
            a.b();
            a = null;
        }
        this.f = false;
    }

    public final void b(boolean z) {
        if (b == null || a == null) {
            return;
        }
        me.paranoid.wifikill.fragment.h.a(b, z ? 1 : 2).show(getFragmentManager(), d);
    }

    final void c() {
        me.paranoid.a.c.a("start");
        a.a(3, (Object) null);
        b = new a(getApplicationContext(), a.a.a);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit, R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit);
        try {
            fragmentTransactionBeginTransaction.show(this.j);
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        b.c();
        this.j.a(b);
        this.h.a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        n = this;
        String lowerCase = getPackageManager().getApplicationLabel(getApplicationInfo()).toString().toLowerCase();
        me.paranoid.a.c.a("!!! " + lowerCase);
        if (lowerCase.contains("free")) {
            c = false;
        }
        super.onCreate(bundle);
        q = getSharedPreferences("WiFiKill", 0);
        requestNeededPermissions();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        r = defaultSharedPreferences;
        if (defaultSharedPreferences.getBoolean("pref_key_fullscreen", false)) {
            getWindow().setFlags(1024, 1024);
        }
        setContentView(R.layout.main);
        this.o = ((PowerManager) getSystemService("power")).newWakeLock(6, "WiFiKill");
        this.e = getActionBar();
        this.e.setBackgroundDrawable(getResources().getDrawable(R.drawable.action_bar));
        this.j = (DevicesFragment) getFragmentManager().findFragmentById(R.id.device_list);
        this.h = (StatusBarFragment) getFragmentManager().findFragmentById(R.id.status_bar);
        this.i = (me.paranoid.wifikill.fragment.a) getFragmentManager().findFragmentById(R.id.details);
        getFragmentManager().beginTransaction().hide(this.j);
        View viewFindViewById = findViewById(R.id.status_bar);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        viewFindViewById.setLayoutParams(layoutParams);
        if (q.getBoolean("first_run", true)) {
            me.paranoid.a.c.a(n, "Disclaimer", "This program is released \"as-is\" - without any warranty, responsibility or liability. I do not take any responsibility for anything you do using this application. Using (or even keeping) this app might be illegal in your country. Use at your own risk!");
            SharedPreferences.Editor editorEdit = q.edit();
            editorEdit.putBoolean("first_run", false);
            editorEdit.commit();
        }
        if (!q.getBoolean("root_warned", false) && !hasRoot()) {
            new AlertDialog.Builder(this)
                    .setTitle("未检测到 Root")
                    .setMessage("WiFiKill 的扫描与断网依赖 root 和 32 位 wfk 二进制。未 root 的手机只能打开界面，无法真正断网。")
                    .setPositiveButton("知道了", null)
                    .show();
            q.edit().putBoolean("root_warned", true).apply();
        }
        this.f = g();
        me.paranoid.a.c.a("service_running = " + this.f);
    }

    public void requestNeededPermissions() {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        ArrayList<String> permissions = new ArrayList<>();
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.ACCESS_FINE_LOCATION);
        }
        if (Build.VERSION.SDK_INT >= 33) {
            if (checkSelfPermission("android.permission.NEARBY_WIFI_DEVICES") != PackageManager.PERMISSION_GRANTED) {
                permissions.add("android.permission.NEARBY_WIFI_DEVICES");
            }
            if (checkSelfPermission("android.permission.POST_NOTIFICATIONS") != PackageManager.PERMISSION_GRANTED) {
                permissions.add("android.permission.POST_NOTIFICATIONS");
            }
        }
        if (!permissions.isEmpty()) {
            requestPermissions(permissions.toArray(new String[0]), 1);
        }
    }

    public boolean hasRoot() {
        try {
            Process process = Runtime.getRuntime().exec(new String[]{"sh", "-c", "command -v su"});
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String path = reader.readLine();
            reader.close();
            process.waitFor();
            return path != null && path.length() > 0;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        me.paranoid.a.c.a("");
        getMenuInflater().inflate(R.menu.main, menu);
        this.k = menu;
        if (!this.f) {
            if (me.paranoid.a.b.a(n, "wfk", "wfk")) {
                return true;
            }
            me.paranoid.a.c.a(n, "Warning", "Unable to copy binary file, please reboot your phone and try again.");
            return true;
        }
        me.paranoid.a.c.a("");
        this.k.findItem(R.id.menu_power).setIcon(android.R.drawable.ic_media_pause);
        this.k.findItem(R.id.menu_power).setTitle("STOP");
        f();
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        me.paranoid.a.c.a("");
        super.onDestroy();
        if (a != null) {
            a.b();
        }
        a = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        me.paranoid.a.c.a("");
        switch (menuItem.getItemId()) {
            case R.id.menu_power /* 2131296305 */:
                me.paranoid.a.c.a("");
                if (!this.f) {
                    if (me.paranoid.a.c.a(n) == null) {
                        me.paranoid.a.c.a(n, "Error", "Not connected to any WiFi network!");
                    } else {
                        menuItem.setIcon(android.R.drawable.ic_media_pause);
                        menuItem.setTitle("STOP");
                        f();
                    }
                    return false;
                }
                me.paranoid.a.c.a("start");
                this.m = new ProgressDialog(this);
                this.m.setTitle("Stopping service");
                this.m.setMessage("Please wait...");
                this.m.setCancelable(false);
                me.paranoid.a.c.a("showing");
                this.m.show();
                me.paranoid.a.c.a("sending message");
                a.a(4, (Object) null);
                me.paranoid.a.c.a("end");
                this.f = this.f ? false : true;
                return false;
            case R.id.menu_refresh /* 2131296306 */:
                if (this.f) {
                    me.paranoid.a.c.a(n, "initiating device scan");
                    a.a(5, (Object) true);
                    me.paranoid.a.c.a("");
                    a(0);
                }
                return false;
            case R.id.menu_search /* 2131296307 */:
                this.l = (SearchView) this.k.findItem(R.id.menu_search).getActionView();
                this.l.setOnQueryTextListener(new c(this));
                return false;
            case R.id.menu_preferences /* 2131296308 */:
                startActivity(new Intent(this, (Class<?>) Preferences.class));
                return false;
            case R.id.menu_help /* 2131296309 */:
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://forum.paranoid.me/")));
                return false;
            case R.id.menu_about /* 2131296310 */:
                me.paranoid.a.c.a(n, "About", "This program just a proof of concept, please check my other cool apps on my website: http://forum.paranoid.me/");
                return false;
            case R.id.menu_export_inventory:
                exportDeviceInventory();
                return true;
            case R.id.menu_wifi_audit:
                startActivity(new Intent(this, WiFiAuditActivity.class));
                return true;
            default:
                return false;
        }
    }

    /**
     * Share a read-only snapshot of devices that are already present in the
     * current list. This does not trigger a scan or change network state.
     */
    private void exportDeviceInventory() {
        me.paranoid.wifikill.a adapter = me.paranoid.wifikill.a.a();
        if (adapter == null || adapter.getCount() == 0) {
            me.paranoid.a.c.a(this, "No discovered devices to export. Refresh the device list first.");
            return;
        }

        StringBuilder report = new StringBuilder();
        report.append("WiFiKill device inventory\n");
        report.append("Generated: ")
                .append(new java.text.SimpleDateFormat(
                        "yyyy-MM-dd HH:mm:ss", java.util.Locale.US)
                        .format(new java.util.Date()))
                .append('\n');
        report.append("Android: ").append(safeReportValue(Build.VERSION.RELEASE))
                .append(" (SDK ").append(Build.VERSION.SDK_INT).append(")\n");
        report.append("Devices: ").append(adapter.getCount()).append("\n\n");

        for (int index = 0; index < adapter.getCount(); index++) {
            me.paranoid.wifikill.service.a device = adapter.getItem(index);
            if (device == null) {
                continue;
            }
            report.append("Device ").append(index + 1).append('\n');
            report.append("  IP: ").append(safeReportValue(device.a)).append('\n');
            report.append("  MAC: ").append(safeReportValue(device.b)).append('\n');
            report.append("  Name: ").append(safeReportValue(device.b())).append('\n');
            report.append("  Network name: ").append(safeReportValue(device.c)).append('\n');
            report.append("  Vendor: ").append(safeReportValue(device.d)).append('\n');
            report.append("  State code: ").append(device.e).append('\n');
            report.append("  Bytes up/down: ").append(device.f).append(" / ")
                    .append(device.g).append("\n\n");
        }

        Intent shareIntent = new Intent(Intent.ACTION_SEND);
        shareIntent.setType("text/plain");
        shareIntent.putExtra(Intent.EXTRA_SUBJECT, "WiFiKill device inventory");
        shareIntent.putExtra(Intent.EXTRA_TEXT, report.toString());
        startActivity(Intent.createChooser(shareIntent, "Share device inventory"));
    }

    private static String safeReportValue(String value) {
        if (value == null || value.trim().isEmpty()) {
            return "-";
        }
        return value.replace('\r', ' ').replace('\n', ' ').trim();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.o != null && this.o.isHeld()) {
            this.o.release();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        me.paranoid.a.c.a("onResume() ---");
        super.onResume();
        this.o.acquire();
        this.j.a();
    }
}
