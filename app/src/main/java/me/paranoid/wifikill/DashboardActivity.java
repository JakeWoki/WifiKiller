package me.paranoid.wifikill;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/** Modern entry point for the legacy WiFiKill tools. */
public class DashboardActivity extends Activity {
    private final int bg = Color.rgb(13, 18, 30);
    private final int panel = Color.rgb(24, 32, 49);
    private final int accent = Color.rgb(92, 174, 255);
    private final int muted = Color.rgb(159, 174, 196);

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        getWindow().setStatusBarColor(bg);
        getWindow().setNavigationBarColor(bg);
        getWindow().getDecorView().setSystemUiVisibility(0);

        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setBackgroundColor(bg);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(22), dp(26), dp(22), dp(28));
        scroll.addView(root);

        TextView eyebrow = text("W I F I K I L L   /   TOOLS", 12, accent, true);
        root.addView(eyebrow);
        TextView title = text("Wireless\nWorkbench", 32, Color.WHITE, true);
        title.setPadding(0, dp(10), 0, dp(8));
        root.addView(title);
        TextView intro = text("无线诊断与被动分析工作台", 15, muted, false);
        root.addView(intro);

        LinearLayout status = card();
        TextView statusTitle = text("设备能力检测", 17, Color.WHITE, true);
        status.addView(statusTitle);
        TextView statusBody = text("监听能力取决于 Root、无线驱动、接口并发能力以及 iw / tcpdump 工具。进入监听页可执行实际检测。", 13, muted, false);
        statusBody.setPadding(0, dp(8), 0, dp(14));
        status.addView(statusBody);
        TextView statusAction = text("检测无线环境   →", 14, accent, true);
        status.addView(statusAction);
        status.setOnClickListener(v -> open(MonitorModeActivity.class));
        root.addView(status, marginBottom());

        root.addView(section("无线工具"));
        root.addView(toolCard("01", "Monitor Mode", "监听模式 · 被动抓包 · 实时输出",
                "自动探测接口和工具，不依赖固定芯片型号", () -> open(MonitorModeActivity.class)), marginBottom());
        root.addView(toolCard("02", "Wi-Fi 安全审计", "检查当前网络与本机可见信息",
                "只读审计与诊断报告", () -> open(WiFiAuditActivity.class)), marginBottom());
        root.addView(toolCard("03", "设备清单", "查看局域网发现结果与状态",
                "打开原有设备列表界面", () -> open(WiFiKill.class)), marginBottom());

        root.addView(section("兼容性说明"));
        LinearLayout note = card();
        note.addView(text("不绑定单一设备", 15, Color.WHITE, true));
        TextView noteBody = text("优先使用系统 iw / ip / tcpdump 命令检测能力。驱动不支持监听、缺少 Root 或工具不可用时，会显示诊断信息。启动监听可能暂时断开当前 Wi-Fi；停止时会尝试恢复原接口。", 13, muted, false);
        noteBody.setPadding(0, dp(8), 0, 0);
        note.addView(noteBody);
        root.addView(note);

        TextView footer = text("WIFIKILL  •  PASSIVE WIRELESS DIAGNOSTICS", 10, muted, true);
        footer.setGravity(Gravity.CENTER);
        footer.setPadding(0, dp(24), 0, 0);
        root.addView(footer);
        setContentView(scroll);
    }

    private void open(Class<?> target) { startActivity(new Intent(this, target)); }

    private LinearLayout toolCard(String number, String name, String subtitle, String detail, Runnable action) {
        LinearLayout c = card();
        LinearLayout top = new LinearLayout(this);
        top.setGravity(Gravity.CENTER_VERTICAL);
        TextView badge = text(number, 12, accent, true);
        badge.setGravity(Gravity.CENTER);
        badge.setBackground(round(Color.rgb(31, 53, 80), dp(10)));
        LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(dp(42), dp(42));
        bp.rightMargin = dp(12);
        top.addView(badge, bp);
        LinearLayout titles = new LinearLayout(this);
        titles.setOrientation(LinearLayout.VERTICAL);
        titles.addView(text(name, 18, Color.WHITE, true));
        TextView sub = text(subtitle, 12, muted, false);
        sub.setPadding(0, dp(4), 0, 0);
        titles.addView(sub);
        top.addView(titles, new LinearLayout.LayoutParams(0, -2, 1));
        top.addView(text("›", 28, accent, false));
        c.addView(top);
        TextView desc = text(detail, 12, muted, false);
        desc.setPadding(dp(54), dp(10), 0, 0);
        c.addView(desc);
        c.setOnClickListener(v -> action.run());
        return c;
    }

    private LinearLayout card() {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setPadding(dp(16), dp(16), dp(16), dp(16));
        c.setBackground(round(panel, dp(18)));
        return c;
    }

    private TextView text(String value, int sp, int color, boolean bold) {
        TextView t = new TextView(this);
        t.setText(value);
        t.setTextSize(sp);
        t.setTextColor(color);
        if (bold) t.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        return t;
    }

    private GradientDrawable round(int color, int radius) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(radius);
        return d;
    }

    private LinearLayout.LayoutParams marginBottom() {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(-1, -2);
        p.bottomMargin = dp(12);
        return p;
    }

    private int dp(float value) { return (int) (value * getResources().getDisplayMetrics().density + 0.5f); }

    private TextView section(String label) {
        TextView t = text(label, 13, muted, true);
        t.setPadding(dp(2), dp(14), 0, dp(10));
        return t;
    }
}
