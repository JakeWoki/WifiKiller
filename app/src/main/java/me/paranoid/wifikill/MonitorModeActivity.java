package me.paranoid.wifikill;

import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Generic, passive monitor-mode helper. It relies on the device's installed
 * iw/ip/tcpdump tools instead of assuming a particular Wi-Fi chipset.
 */
public class MonitorModeActivity extends Activity {
    private final int bg = Color.rgb(13, 18, 30), panel = Color.rgb(24, 32, 49);
    private final int accent = Color.rgb(92, 174, 255), muted = Color.rgb(159, 174, 196);
    private TextView status, log;
    private Spinner ifaceSpinner, channelSpinner;
    private Button startButton, stopButton;
    private final ArrayList<String> interfaces = new ArrayList<>();
    private Process captureProcess;
    private Thread captureReader;
    private String activeInterface = "";
    private boolean createdMonitor = false;
    private boolean running = false;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        getWindow().setStatusBarColor(bg);
        getWindow().setNavigationBarColor(bg);
        buildUi();
        probe();
    }

    private void buildUi() {
        ScrollView scroll = new ScrollView(this);
        scroll.setBackgroundColor(bg);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(20), dp(22), dp(20), dp(24));
        scroll.addView(root);
        root.addView(text("PASSIVE WIRELESS ANALYSIS", 11, accent, true));
        TextView title = text("Monitor Mode", 30, Color.WHITE, true);
        title.setPadding(0, dp(8), 0, dp(4));
        root.addView(title);
        root.addView(text("自动检测接口与驱动能力，捕获当前频道可见的 802.11 帧。", 14, muted, false));

        LinearLayout warning = card();
        warning.addView(text("启动前须知", 16, Color.WHITE, true));
        TextView warningText = text("部分设备需要关闭当前 Wi-Fi 连接才能切换频道。只进行被动监听，不发送去认证、泛洪或其他干扰帧。请仅在你拥有或获授权的网络环境中使用。", 13, muted, false);
        warningText.setPadding(0, dp(8), 0, 0);
        warning.addView(warningText);
        LinearLayout.LayoutParams warningLp = full();
        warningLp.topMargin = dp(18);
        warningLp.bottomMargin = dp(14);
        root.addView(warning, warningLp);

        LinearLayout controls = card();
        controls.addView(text("无线接口", 14, Color.WHITE, true));
        ifaceSpinner = new Spinner(this);
        controls.addView(ifaceSpinner, full());
        TextView channelLabel = text("监听频道（HT20）", 14, Color.WHITE, true);
        channelLabel.setPadding(0, dp(12), 0, dp(2));
        controls.addView(channelLabel);
        channelSpinner = new Spinner(this);
        String[] channels = {"1", "6", "11", "36", "40", "44", "48", "149", "153", "157", "161"};
        channelSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, channels));
        controls.addView(channelSpinner, full());
        root.addView(controls, topMargin(0, 14));

        status = text("状态：正在检测设备……", 14, accent, true);
        status.setPadding(dp(2), dp(16), dp(2), dp(8));
        root.addView(status);
        LinearLayout actions = new LinearLayout(this);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        startButton = button("开始被动监听", accent);
        stopButton = button("停止并恢复", Color.rgb(67, 79, 98));
        LinearLayout.LayoutParams half = new LinearLayout.LayoutParams(0, dp(50), 1);
        half.rightMargin = dp(6);
        actions.addView(startButton, half);
        LinearLayout.LayoutParams half2 = new LinearLayout.LayoutParams(0, dp(50), 1);
        half2.leftMargin = dp(6);
        actions.addView(stopButton, half2);
        root.addView(actions);
        stopButton.setEnabled(false);
        startButton.setOnClickListener(v -> confirmStart());
        stopButton.setOnClickListener(v -> stopMonitor());

        root.addView(text("实时诊断输出", 15, Color.WHITE, true), topMargin(0, 20));
        log = text("检测结果会显示在这里。", 12, Color.rgb(191, 207, 226), false);
        log.setTypeface(Typeface.MONOSPACE);
        log.setPadding(dp(12), dp(12), dp(12), dp(12));
        log.setBackground(round(Color.rgb(8, 12, 20), dp(12)));
        root.addView(log, topMargin(0, 8));
        setContentView(scroll);
    }

    private void probe() {
        status.setText("状态：检测 Root、iw、tcpdump 与无线接口……");
        new Thread(() -> {
            Result r = runRoot("id; command -v iw; command -v tcpdump; iw list 2>&1; iw dev 2>&1; ip -o link show 2>&1", 12000);
            runOnUiThread(() -> {
                String out = r.output == null ? "" : r.output;
                append("检测完成（退出码 " + r.code + "）\n" + trim(out, 5500));
                if (r.code != 0 || !out.contains("uid=0")) {
                    status.setText("状态：需要可用的 Root 权限");
                    startButton.setEnabled(false);
                    return;
                }
                if (!containsToolPath(out, "iw") || !containsToolPath(out, "tcpdump")) {
                    status.setText("状态：缺少 iw 或 tcpdump");
                    startButton.setEnabled(false);
                    return;
                }
                interfaces.clear();
                Matcher m = Pattern.compile("(?m)^\\s*Interface\\s+([A-Za-z0-9_.-]+)\\s*$").matcher(out);
                while (m.find()) if (!interfaces.contains(m.group(1)) && !m.group(1).startsWith("wfkmon")) interfaces.add(m.group(1));
                if (interfaces.isEmpty()) {
                    Matcher ip = Pattern.compile("(?m)^\\d+:\\s*([A-Za-z0-9_.-]+):").matcher(out);
                    while (ip.find()) {
                        String n = ip.group(1);
                        if ((n.startsWith("wlan") || n.startsWith("wifi") || n.startsWith("wl")) && !interfaces.contains(n)) interfaces.add(n);
                    }
                }
                if (interfaces.isEmpty()) {
                    status.setText("状态：未找到无线接口");
                    startButton.setEnabled(false);
                    return;
                }
                ifaceSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, interfaces));
                boolean monitorAdvertised = out.toLowerCase().contains("* monitor") || out.toLowerCase().contains("monitor");
                status.setText(monitorAdvertised ? "状态：检测到监听模式相关能力；仍需实际启动验证" : "状态：未能从 iw list 确认监听能力；可尝试启动验证");
                startButton.setEnabled(true);
            });
        }).start();
    }

    private void confirmStart() {
        new AlertDialog.Builder(this)
                .setTitle("启动监听模式？")
                .setMessage("此操作会尝试关闭所选无线接口并创建监听接口。当前 Wi-Fi 连接可能中断；停止监听时会尝试恢复。")
                .setNegativeButton("取消", null)
                .setPositiveButton("继续", (d, w) -> startMonitor())
                .show();
    }

    private void startMonitor() {
        if (running || ifaceSpinner.getSelectedItem() == null) return;
        activeInterface = ifaceSpinner.getSelectedItem().toString();
        if (!activeInterface.matches("[A-Za-z0-9_.-]+")) {
            append("拒绝执行：接口名称格式不安全。");
            return;
        }
        String channel = channelSpinner.getSelectedItem().toString();
        status.setText("状态：正在创建监听接口……");
        startButton.setEnabled(false);
        new Thread(() -> {
            String command = "set -e; IF='" + activeInterface + "'; MON='wfkmon0'; " +
                    "command -v iw >/dev/null; command -v ip >/dev/null; " +
                    "if iw dev \"$MON\" info >/dev/null 2>&1; then echo 'ERROR: wfkmon0 already exists'; exit 7; fi; " +
                    "ip link set \"$IF\" down; " +
                    "if ! iw dev \"$IF\" interface add \"$MON\" type monitor flags otherbss; then " +
                    "iw dev \"$IF\" interface add \"$MON\" type monitor; fi; " +
                    "iw dev \"$MON\" set channel " + channel + " HT20; ip link set \"$MON\" up; " +
                    "echo 'MONITOR_READY';";
            Result r = runRoot(command, 12000);
            runOnUiThread(() -> {
                append("启动监听接口（频道 " + channel + "）：\n" + trim(r.output, 1800));
                if (r.code != 0 || r.output == null || !r.output.contains("MONITOR_READY")) {
                    runRootAsync("iw dev wfkmon0 del >/dev/null 2>&1; ip link set '" + activeInterface + "' up >/dev/null 2>&1 || true");
                    status.setText("状态：启动失败，请查看诊断输出");
                    startButton.setEnabled(true);
                    return;
                }
                createdMonitor = true;
                running = true;
                stopButton.setEnabled(true);
                status.setText("状态：监听接口已启动，正在被动抓包");
                beginCapture();
            });
        }).start();
    }

    private void beginCapture() {
        captureReader = new Thread(() -> {
            try {
                captureProcess = new ProcessBuilder("su", "-c", "exec tcpdump -i wfkmon0 -n -e -l").redirectErrorStream(true).start();
                BufferedReader reader = new BufferedReader(new InputStreamReader(captureProcess.getInputStream()));
                String line;
                while ((line = reader.readLine()) != null) {
                    final String item = line;
                    runOnUiThread(() -> append(item));
                }
            } catch (Exception e) {
                runOnUiThread(() -> append("tcpdump 启动失败：" + e.getMessage()));
            }
        }, "wfk-monitor-capture");
        captureReader.start();
    }

    private void stopMonitor() {
        if (!running && !createdMonitor) return;
        status.setText("状态：正在停止并恢复接口……");
        stopButton.setEnabled(false);
        new Thread(() -> {
            if (captureProcess != null) {
                captureProcess.destroy();
                captureProcess = null;
            }
            Result r = runRoot("ip link set wfkmon0 down >/dev/null 2>&1 || true; iw dev wfkmon0 del >/dev/null 2>&1 || true; ip link set '" +
                    activeInterface + "' up >/dev/null 2>&1 || true; echo RESTORE_ATTEMPTED", 8000);
            runOnUiThread(() -> {
                running = false;
                createdMonitor = false;
                startButton.setEnabled(true);
                stopButton.setEnabled(false);
                status.setText("状态：已停止；已尝试恢复原无线接口");
                append("停止结果：\n" + trim(r.output, 1200));
            });
        }).start();
    }

    private void runRootAsync(String cmd) {
        new Thread(() -> runRoot(cmd, 8000)).start();
    }

    private Result runRoot(String command, int timeoutMs) {
        Process p = null;
        StringBuilder out = new StringBuilder();
        int code = -1;
        try {
            p = new ProcessBuilder("su", "-c", command).redirectErrorStream(true).start();
            final Process process = p;
            Thread reader = new Thread(() -> {
                try (BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
                    String line;
                    while ((line = br.readLine()) != null) synchronized (out) { out.append(line).append('\n'); }
                } catch (Exception ignored) { }
            });
            reader.start();
            long deadline = System.currentTimeMillis() + timeoutMs;
            boolean finished = false;
            while (System.currentTimeMillis() < deadline) {
                try {
                    code = p.exitValue();
                    finished = true;
                    break;
                } catch (IllegalThreadStateException stillRunning) {
                    Thread.sleep(50);
                }
            }
            if (finished) {
                reader.join(1000);
            } else {
                p.destroy();
                synchronized (out) { out.append("\n命令超时"); }
            }
        } catch (Exception e) {
            synchronized (out) { out.append(e.getClass().getSimpleName()).append(": ").append(e.getMessage()); }
        } finally {
            if (p != null) {
                try { p.exitValue(); } catch (IllegalThreadStateException stillRunning) { p.destroy(); }
            }
        }
        synchronized (out) { return new Result(code, out.toString()); }
    }

    private boolean containsToolPath(String output, String tool) {
        for (String line : output.split("\n")) if (line.trim().startsWith("/") && line.trim().endsWith("/" + tool)) return true;
        return false;
    }

    private void append(String line) {
        if (log == null) return;
        String current = log.getText().toString();
        String next = (current.equals("检测结果会显示在这里。") ? "" : current + "\n") + line;
        log.setText(trim(next, 10000));
    }

    private String trim(String value, int max) {
        if (value == null) return "";
        return value.length() <= max ? value : "…（已截断）…\n" + value.substring(value.length() - max);
    }

    private LinearLayout card() {
        LinearLayout l = new LinearLayout(this);
        l.setOrientation(LinearLayout.VERTICAL);
        l.setPadding(dp(16), dp(16), dp(16), dp(16));
        l.setBackground(round(panel, dp(16)));
        return l;
    }
    private TextView text(String s, int size, int color, boolean bold) {
        TextView t = new TextView(this); t.setText(s); t.setTextSize(size); t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        return t;
    }
    private Button button(String label, int color) {
        Button b = new Button(this); b.setText(label); b.setTextColor(Color.WHITE);
        b.setAllCaps(false); b.setBackground(round(color, dp(12))); return b;
    }
    private GradientDrawable round(int color, int radius) {
        GradientDrawable d = new GradientDrawable(); d.setColor(color); d.setCornerRadius(radius); return d;
    }
    private LinearLayout.LayoutParams full() { return new LinearLayout.LayoutParams(-1, -2); }
    private LinearLayout.LayoutParams topMargin(int top, int bottom) {
        LinearLayout.LayoutParams p = full(); p.topMargin = dp(top); p.bottomMargin = dp(bottom); return p;
    }
    private int dp(float v) { return (int)(v * getResources().getDisplayMetrics().density + 0.5f); }

    @Override protected void onDestroy() {
        if (running || createdMonitor) stopMonitor();
        super.onDestroy();
    }

    private static final class Result {
        final int code; final String output;
        Result(int code, String output) { this.code = code; this.output = output; }
    }
}
