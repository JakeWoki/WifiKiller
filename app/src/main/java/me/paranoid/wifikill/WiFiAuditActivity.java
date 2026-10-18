package me.paranoid.wifikill;

import android.Manifest;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Read-only Wi-Fi security reconnaissance using Android's public scan API.
 * This screen does not inject frames, disconnect clients, or change router state.
 */
public final class WiFiAuditActivity extends Activity {
    private static final int REQUEST_SCAN_PERMISSIONS = 70;

    private WifiManager wifiManager;
    private TextView statusView;
    private TextView resultsView;
    private Button scanButton;
    private Button exportButton;
    private final List<ScanResult> latestResults = new ArrayList<>();
    private boolean receiverRegistered;

    private final BroadcastReceiver scanReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null
                    || !WifiManager.SCAN_RESULTS_AVAILABLE_ACTION.equals(intent.getAction())) {
                return;
            }
            boolean updated = intent.getBooleanExtra(
                    WifiManager.EXTRA_RESULTS_UPDATED, false);
            renderResults(updated
                    ? "Scan results updated."
                    : "Scan refresh unavailable; displaying cached results.");
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        wifiManager = (WifiManager) getApplicationContext()
                .getSystemService(Context.WIFI_SERVICE);
        buildContentView();
        setTitle("Wi-Fi security audit");

        if (hasScanPermissions()) {
            renderResults("Read-only Wi-Fi scan. No network changes are made.");
        } else {
            requestScanPermissions();
        }
    }

    private void buildContentView() {
        int padding = dp(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(padding, padding, padding, padding);

        TextView heading = new TextView(this);
        heading.setText("Nearby access points");
        heading.setTextSize(22);
        root.addView(heading, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT));

        TextView explanation = new TextView(this);
        explanation.setText("Read-only information provided by Android. Scan availability "
                + "depends on location permissions, system settings and scan throttling.");
        explanation.setTextSize(14);
        LinearLayout.LayoutParams explanationParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        explanationParams.topMargin = dp(8);
        root.addView(explanation, explanationParams);

        statusView = new TextView(this);
        statusView.setTextSize(14);
        LinearLayout.LayoutParams statusParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        statusParams.topMargin = dp(12);
        root.addView(statusView, statusParams);

        LinearLayout actions = new LinearLayout(this);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        scanButton = new Button(this);
        scanButton.setText("Scan / refresh");
        scanButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startWifiScan();
            }
        });
        actions.addView(scanButton, new LinearLayout.LayoutParams(
                0, LinearLayout.LayoutParams.WRAP_CONTENT, 1));

        exportButton = new Button(this);
        exportButton.setText("Export report");
        exportButton.setEnabled(false);
        exportButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                exportReport();
            }
        });
        actions.addView(exportButton, new LinearLayout.LayoutParams(
                0, LinearLayout.LayoutParams.WRAP_CONTENT, 1));
        root.addView(actions);

        ScrollView scroll = new ScrollView(this);
        resultsView = new TextView(this);
        resultsView.setTextSize(14);
        resultsView.setTextIsSelectable(true);
        resultsView.setPadding(0, dp(8), 0, dp(8));
        scroll.addView(resultsView, new ScrollView.LayoutParams(
                ScrollView.LayoutParams.MATCH_PARENT,
                ScrollView.LayoutParams.WRAP_CONTENT));
        LinearLayout.LayoutParams scrollParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1);
        scrollParams.topMargin = dp(8);
        root.addView(scroll, scrollParams);

        setContentView(root);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private boolean hasScanPermissions() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
            return true;
        }
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION)
                != PackageManager.PERMISSION_GRANTED) {
            return false;
        }
        // Android requires FINE_LOCATION for getScanResults() and startScan(),
        // including on Android 13+. NEARBY_WIFI_DEVICES is not required by these APIs.
        return true;
    }

    private void requestScanPermissions() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
            renderResults("Wi-Fi scan permission check is unavailable on this Android version.");
            return;
        }
        List<String> permissions = new ArrayList<>();
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION)
                != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.ACCESS_FINE_LOCATION);
        }
        if (permissions.isEmpty()) {
            renderResults("Permissions are available.");
            return;
        }
        requestPermissions(permissions.toArray(new String[0]), REQUEST_SCAN_PERMISSIONS);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions,
                                           int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != REQUEST_SCAN_PERMISSIONS) {
            return;
        }
        if (hasScanPermissions()) {
            startWifiScan();
        } else {
            statusView.setText("Wi-Fi scan permission was denied. You can still use the "
                    + "device inventory export in the main screen.");
            resultsView.setText("");
            exportButton.setEnabled(false);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        registerScanReceiver();
        if (hasScanPermissions()) {
            renderResults("Showing the latest results available from Android.");
        }
    }

    @Override
    protected void onPause() {
        if (receiverRegistered) {
            try {
                unregisterReceiver(scanReceiver);
            } catch (IllegalArgumentException ignored) {
                // Already unregistered by the system or another lifecycle path.
            }
            receiverRegistered = false;
        }
        super.onPause();
    }

    private void registerScanReceiver() {
        if (receiverRegistered) {
            return;
        }
        IntentFilter filter = new IntentFilter(WifiManager.SCAN_RESULTS_AVAILABLE_ACTION);
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(scanReceiver, filter, Context.RECEIVER_NOT_EXPORTED);
        } else {
            registerReceiver(scanReceiver, filter);
        }
        receiverRegistered = true;
    }

    private void startWifiScan() {
        if (!hasScanPermissions()) {
            requestScanPermissions();
            return;
        }
        if (wifiManager == null) {
            renderResults("This device does not expose a Wi-Fi service.");
            return;
        }
        if (!wifiManager.isWifiEnabled()) {
            renderResults("Wi-Fi is disabled. Enable it in Android settings and retry.");
            return;
        }
        try {
            boolean started = wifiManager.startScan();
            if (started) {
                statusView.setText("Scan requested. Waiting for Android scan results…");
            } else {
                renderResults("Android rate-limited this scan; showing cached results.");
            }
        } catch (SecurityException permissionError) {
            statusView.setText("Android denied scan access. Re-check location and nearby-device "
                    + "permissions, and the system location setting.");
        } catch (RuntimeException scanError) {
            statusView.setText("Unable to request a scan: "
                    + safeValue(scanError.getMessage()));
        }
    }

    private void renderResults(String statusPrefix) {
        if (wifiManager == null || !hasScanPermissions()) {
            latestResults.clear();
            resultsView.setText("No scan data available until Wi-Fi permissions are granted.");
            exportButton.setEnabled(false);
            if (statusView != null) {
                statusView.setText(statusPrefix);
            }
            return;
        }

        try {
            List<ScanResult> scanResults = wifiManager.getScanResults();
            latestResults.clear();
            if (scanResults != null) {
                latestResults.addAll(scanResults);
            }
        } catch (SecurityException permissionError) {
            latestResults.clear();
            resultsView.setText("Android denied access to scan results.");
            exportButton.setEnabled(false);
            statusView.setText(statusPrefix);
            return;
        }

        Collections.sort(latestResults, new Comparator<ScanResult>() {
            @Override
            public int compare(ScanResult first, ScanResult second) {
                return Integer.compare(second.level, first.level);
            }
        });

        StringBuilder text = new StringBuilder();
        if (latestResults.isEmpty()) {
            text.append("No access points are available in the current scan cache.\n")
                    .append("Tap “Scan / refresh” and check Android location settings.");
        } else {
            for (int index = 0; index < latestResults.size(); index++) {
                ScanResult result = latestResults.get(index);
                String capabilities = result.capabilities == null ? "" : result.capabilities;
                String security = classifySecurity(capabilities);
                text.append(index + 1).append(". ")
                        .append(result.SSID == null || result.SSID.isEmpty()
                                ? "<hidden SSID>" : safeValue(result.SSID))
                        .append("\n");
                text.append("   BSSID: ").append(safeValue(result.BSSID)).append("\n");
                text.append("   Security: ").append(security).append("\n");
                text.append("   Signal: ").append(result.level).append(" dBm  |  ")
                        .append(bandForFrequency(result.frequency)).append("  |  channel ")
                        .append(channelForFrequency(result.frequency)).append("\n");
                text.append("   Capabilities: ").append(safeValue(capabilities)).append("\n");
                if ("Open".equals(security) || "WEP (legacy)".equals(security)) {
                    text.append("   Notice: weak or absent link-layer protection; verify "
                            + "whether this network is intended to be public.\n");
                }
                text.append("\n");
            }
        }
        resultsView.setText(text.toString());
        statusView.setText(statusPrefix + "\nAccess points found: " + latestResults.size());
        exportButton.setEnabled(!latestResults.isEmpty());
    }

    private static String classifySecurity(String capabilities) {
        String value = capabilities.toUpperCase(Locale.US);
        if (value.contains("OWE")) {
            return "Enhanced Open (OWE)";
        }
        if (value.contains("SAE") || value.contains("WPA3")) {
            return "WPA3";
        }
        if (value.contains("WPA2")) {
            return "WPA2";
        }
        if (value.contains("WPA")) {
            return "WPA (legacy)";
        }
        if (value.contains("WEP")) {
            return "WEP (legacy)";
        }
        if (value.contains("ESS")) {
            return "Open";
        }
        return "Unknown";
    }

    private static String bandForFrequency(int frequency) {
        if (frequency >= 5925) {
            return "6 GHz";
        }
        if (frequency >= 5000) {
            return "5 GHz";
        }
        if (frequency >= 4900) {
            return "4.9 GHz";
        }
        return "2.4 GHz";
    }

    private static String channelForFrequency(int frequency) {
        if (frequency == 2484) {
            return "14";
        }
        if (frequency >= 2412 && frequency <= 2472) {
            return String.valueOf((frequency - 2407) / 5);
        }
        if (frequency >= 4900 && frequency < 5000) {
            return String.valueOf((frequency - 4000) / 5);
        }
        if (frequency >= 5000 && frequency < 5925) {
            return String.valueOf((frequency - 5000) / 5);
        }
        if (frequency >= 5925 && frequency <= 7125) {
            return String.valueOf((frequency - 5950) / 5);
        }
        return "?";
    }

    private void exportReport() {
        if (latestResults.isEmpty()) {
            statusView.setText("There are no scan results to export.");
            return;
        }
        StringBuilder report = new StringBuilder();
        report.append("Wi-Fi security inventory\n");
        report.append("Generated: ").append(new SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date())).append("\n");
        report.append("Android: ").append(safeValue(Build.VERSION.RELEASE))
                .append(" (SDK ").append(Build.VERSION.SDK_INT).append(")\n");
        report.append("Access points: ").append(latestResults.size()).append("\n\n");
        for (ScanResult result : latestResults) {
            String capabilities = result.capabilities == null ? "" : result.capabilities;
            report.append("SSID: ").append(result.SSID == null || result.SSID.isEmpty()
                    ? "<hidden SSID>" : safeValue(result.SSID)).append("\n");
            report.append("BSSID: ").append(safeValue(result.BSSID)).append("\n");
            report.append("Security: ").append(classifySecurity(capabilities)).append("\n");
            report.append("Signal: ").append(result.level).append(" dBm\n");
            report.append("Frequency: ").append(result.frequency).append(" MHz\n");
            report.append("Channel: ").append(channelForFrequency(result.frequency)).append("\n");
            report.append("Capabilities: ").append(safeValue(capabilities)).append("\n\n");
        }

        Intent shareIntent = new Intent(Intent.ACTION_SEND);
        shareIntent.setType("text/plain");
        shareIntent.putExtra(Intent.EXTRA_SUBJECT, "Wi-Fi security inventory");
        shareIntent.putExtra(Intent.EXTRA_TEXT, report.toString());
        startActivity(Intent.createChooser(shareIntent, "Export Wi-Fi report"));
    }

    private static String safeValue(String value) {
        if (value == null || value.trim().isEmpty()) {
            return "-";
        }
        return value.replace('\r', ' ').replace('\n', ' ').trim();
    }
}
