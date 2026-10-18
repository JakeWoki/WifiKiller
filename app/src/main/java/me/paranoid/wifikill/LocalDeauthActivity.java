package me.paranoid.wifikill;

import android.app.Activity;
import android.os.Bundle;
import android.text.InputType;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Front-end for running monitor-mode / frame-injection tools directly on the
 * phone. The OnePlus 15 (and most modern phones) cannot inject frames with the
 * built-in Wi-Fi chip; a monitor-mode capable USB adapter plus a NetHunter
 * chroot (or the tools installed in /system) is required.
 */
public final class LocalDeauthActivity extends Activity {
    private EditText interfaceInput;
    private EditText chrootInput;
    private EditText bssidInput;
    private EditText clientInput;
    private EditText customInput;
    private CheckBox chrootCheck;
    private TextView logView;
    private ScrollView logScroll;

    private ExecutorService executor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        executor = Executors.newSingleThreadExecutor();
        buildContentView();
        setTitle("On-device wireless tools");
    }

    private void buildContentView() {
        int pad = dp(14);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);

        TextView heading = new TextView(this);
        heading.setText("On-device deauth / monitor mode");
        heading.setTextSize(22);
        root.addView(heading);

        TextView note = new TextView(this);
        note.setText("OnePlus 15's built-in Wi-Fi (Snapdragon FastConnect) cannot "
                + "monitor or inject frames, even with root. This screen drives "
                + "aircrack-ng/mdk4 either from a NetHunter chroot with a "
                + "monitor-mode USB adapter (OTG), or from tools installed on the "
                + "system. Use only on networks you are authorised to test.");
        note.setTextSize(14);
        note.setPadding(0, dp(6), 0, dp(6));
        root.addView(note);

        interfaceInput = addInput(root, "Wireless interface", "wlan0");
        chrootInput = addInput(root, "NetHunter chroot path",
                "/data/local/nhsystem/kali-arm64/chroot");

        chrootCheck = new CheckBox(this);
        chrootCheck.setText("Run commands inside the chroot");
        root.addView(chrootCheck);

        bssidInput = addInput(root, "Target BSSID (aa:bb:cc:dd:ee:ff)",
                "00:11:22:33:44:55");
        clientInput = addInput(root, "Client MAC (optional, blank = all)", "");

        LinearLayout detectRow = new LinearLayout(this);
        detectRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(detectRow, "Detect environment", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                detectEnvironment();
            }
        });
        addButton(detectRow, "Enable monitor", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String iface = interfaceName();
                if (chrootCheck.isChecked()) {
                    runShell(wrap("airmon-ng start " + iface));
                } else {
                    runShell("iw dev " + iface + " set type monitor");
                }
            }
        });
        root.addView(detectRow);

        LinearLayout deauthRow = new LinearLayout(this);
        deauthRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(deauthRow, "Start deauth", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startDeauth();
            }
        });
        addButton(deauthRow, "Stop attacks", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                runShell("pkill -f aireplay-ng; pkill -f mdk4; "
                        + "echo stopped");
            }
        });
        root.addView(deauthRow);

        LinearLayout manageRow = new LinearLayout(this);
        manageRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(manageRow, "Disable monitor", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String iface = interfaceName();
                runShell(wrap("airmon-ng stop " + iface + "mon; "
                        + "iw dev " + iface + " set type managed 2>/dev/null; "
                        + "echo done"));
            }
        });
        addButton(manageRow, "Scan nearby", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                runShell(wrap("iw dev " + interfaceName()
                        + " scan | head -80"));
            }
        });
        root.addView(manageRow);

        customInput = addInput(root, "Custom root command", "id");
        Button customButton = new Button(this);
        customButton.setText("Run command");
        customButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String command = customInput.getText().toString().trim();
                if (command.length() > 0) {
                    runShell(command);
                }
            }
        });
        root.addView(customButton);

        Button clearButton = new Button(this);
        clearButton.setText("Clear log");
        clearButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                logView.setText("");
            }
        });
        root.addView(clearButton);

        logScroll = new ScrollView(this);
        logView = new TextView(this);
        logView.setTextSize(12);
        logView.setPadding(dp(8), dp(8), dp(8), dp(8));
        logView.setTextIsSelectable(true);
        logScroll.addView(logView);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f);
        params.topMargin = dp(6);
        root.addView(logScroll, params);

        setContentView(root);
        appendLog("Note: an OTG adapter with monitor mode + injection is required "
                + "on this phone. Press Detect environment first.");
    }

    private void detectEnvironment() {
        String iface = interfaceName();
        String chroot = chrootPath();
        String command = "id; "
                + "echo '--- interfaces ---'; ls /sys/class/net; "
                + "echo '--- tools in PATH ---'; "
                + "for t in iw airmon-ng aireplay-ng mdk4 nexutil tcpdump; do "
                + "command -v $t || echo \"missing: $t\"; done; "
                + "echo '--- monitor capable? ---'; "
                + "iw list 2>/dev/null | grep -i -A8 'supported interface modes'; "
                + "echo '--- adapter address ---'; "
                + "cat /sys/class/net/" + iface + "/address 2>&1; "
                + "echo '--- driver ---'; "
                + "readlink -f /sys/class/net/" + iface + "/device/driver 2>&1; "
                + "echo '--- chroot tools ---'; "
                + "ls -l " + chroot + "/usr/bin/aireplay-ng "
                + chroot + "/usr/bin/mdk4 " + chroot + "/usr/sbin/airmon-ng "
                + "2>&1";
        runShell(command);
    }

    private void startDeauth() {
        String bssid = bssidInput.getText().toString().trim();
        String client = clientInput.getText().toString().trim();
        if (!isMac(bssid)) {
            appendLog("Invalid BSSID: " + bssid);
            return;
        }
        if (client.length() > 0 && !isMac(client)) {
            appendLog("Invalid client MAC: " + client);
            return;
        }
        String command = "aireplay-ng --deauth 0 -a " + bssid
                + (client.length() > 0 ? " -c " + client : "")
                + " " + interfaceName();
        runShell(wrap(command));
    }

    private String wrap(String command) {
        if (!chrootCheck.isChecked()) {
            return command;
        }
        return "chroot " + quote(chrootPath()) + " /bin/bash -c "
                + quote(command);
    }

    private void runShell(final String command) {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                appendLog("$ " + command);
                Process process = null;
                try {
                    process = new ProcessBuilder("su", "-c", command)
                            .redirectErrorStream(true).start();
                    BufferedReader reader = new BufferedReader(
                            new InputStreamReader(process.getInputStream()));
                    String line;
                    StringBuilder batch = new StringBuilder();
                    while ((line = reader.readLine()) != null) {
                        batch.append(line).append('\n');
                        if (batch.length() > 4000) {
                            appendLog(batch.toString());
                            batch.setLength(0);
                        }
                    }
                    if (batch.length() > 0) {
                        appendLog(batch.toString());
                    }
                    int code = process.waitFor();
                    appendLog("[exit " + code + "]");
                } catch (Exception e) {
                    appendLog("Failed: " + e);
                } finally {
                    if (process != null) {
                        process.destroy();
                    }
                }
            }
        });
    }

    private EditText addInput(LinearLayout parent, String hint, String value) {
        EditText input = new EditText(this);
        input.setHint(hint);
        input.setText(value);
        input.setSingleLine(true);
        input.setInputType(InputType.TYPE_CLASS_TEXT);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        params.topMargin = dp(6);
        parent.addView(input, params);
        return input;
    }

    private void addButton(LinearLayout parent, String text,
                           View.OnClickListener listener) {
        Button button = new Button(this);
        button.setText(text);
        button.setAllCaps(false);
        button.setOnClickListener(listener);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        parent.addView(button, params);
    }

    private String interfaceName() {
        String value = interfaceInput.getText().toString().trim();
        return value.matches("[A-Za-z0-9_.-]+") ? value : "wlan0";
    }

    private String chrootPath() {
        String value = chrootInput.getText().toString().trim();
        if (value.length() == 0) {
            return "/data/local/nhsystem/kali-arm64/chroot";
        }
        return value;
    }

    private static boolean isMac(String value) {
        return value.matches("(?i)([0-9a-f]{2}:){5}[0-9a-f]{2}");
    }

    private static String quote(String value) {
        return "'" + value.replace("'", "'\\''") + "'";
    }

    private void appendLog(final String text) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                String combined = text + logView.getText().toString();
                if (combined.length() > 30000) {
                    combined = combined.substring(0, 30000);
                }
                logView.setText(combined);
                logScroll.post(new Runnable() {
                    @Override
                    public void run() {
                        logScroll.fullScroll(View.FOCUS_UP);
                    }
                });
            }
        });
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (executor != null) {
            executor.shutdownNow();
        }
    }
}
