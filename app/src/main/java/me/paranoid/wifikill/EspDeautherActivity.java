package me.paranoid.wifikill;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.wifi.WifiNetworkSpecifier;
import android.os.Build;
import android.os.Bundle;
import android.text.InputType;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Controls a Spacehuhn ESP8266 Deauther (v2.x) over its HTTP command endpoint.
 * The phone must be connected to the Deauther AP (default SSID/password:
 * "deauther"). Only use this against networks you are authorised to test.
 */
public final class EspDeautherActivity extends Activity {
    private static final int REQUEST_WIFI_PERMISSIONS = 71;
    private static final String DEFAULT_HOST = "192.168.4.1";

    private EditText hostInput;
    private EditText ssidInput;
    private EditText passwordInput;
    private EditText commandInput;
    private TextView logView;
    private ScrollView logScroll;

    private ExecutorService executor;
    private ConnectivityManager connectivityManager;
    private ConnectivityManager.NetworkCallback networkCallback;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        executor = Executors.newSingleThreadExecutor();
        connectivityManager = (ConnectivityManager) getApplicationContext()
                .getSystemService(Context.CONNECTIVITY_SERVICE);
        buildContentView();
        setTitle("ESP8266 Deauther");
    }

    private void buildContentView() {
        int padding = dp(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(padding, padding, padding, padding);

        TextView heading = new TextView(this);
        heading.setText("ESP8266 Deauther control");
        heading.setTextSize(22);
        root.addView(heading);

        TextView explanation = new TextView(this);
        explanation.setText("Connect the phone to the Deauther Wi-Fi AP (default SSID "
                + "\"deauther\", password \"deauther\"), then send commands to its HTTP "
                + "interface (firmware v2.x). Only test networks you are authorised to test.");
        explanation.setTextSize(14);
        explanation.setPadding(0, dp(8), 0, dp(8));
        root.addView(explanation);

        hostInput = addInput(root, "Deauther IP", DEFAULT_HOST, InputType.TYPE_CLASS_TEXT);
        ssidInput = addInput(root, "AP SSID", "deauther", InputType.TYPE_CLASS_TEXT);
        passwordInput = addInput(root, "AP password", "deauther",
                InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);

        LinearLayout connectRow = new LinearLayout(this);
        connectRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(connectRow, "Connect Wi-Fi", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                connectToDeautherWifi();
            }
        });
        addButton(connectRow, "Test connection", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                sendCommand("info");
            }
        });
        root.addView(connectRow);

        LinearLayout scanRow = new LinearLayout(this);
        scanRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(scanRow, "Scan APs", commandButton("scan ap"));
        addButton(scanRow, "Scan clients", commandButton("scan station"));
        root.addView(scanRow);

        LinearLayout listRow = new LinearLayout(this);
        listRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(listRow, "List APs", commandButton("show -a"));
        addButton(listRow, "List clients", commandButton("show -s"));
        root.addView(listRow);

        LinearLayout selectRow = new LinearLayout(this);
        selectRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(selectRow, "Select all APs", commandButton("select -a all"));
        addButton(selectRow, "Select all clients", commandButton("select -s all"));
        root.addView(selectRow);

        LinearLayout attackRow = new LinearLayout(this);
        attackRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(attackRow, "Start deauth", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                sendCommands("select -a all", "attack -t deauth");
            }
        });
        addButton(attackRow, "Beacon flood", commandButton("attack -t beacon"));
        root.addView(attackRow);

        LinearLayout stopRow = new LinearLayout(this);
        stopRow.setOrientation(LinearLayout.HORIZONTAL);
        addButton(stopRow, "Stop attack", commandButton("stop"));
        addButton(stopRow, "Device info", commandButton("info"));
        root.addView(stopRow);

        commandInput = addInput(root, "Custom command", "list -a", InputType.TYPE_CLASS_TEXT);
        Button sendButton = new Button(this);
        sendButton.setText("Send command");
        sendButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String command = commandInput.getText().toString().trim();
                if (command.length() > 0) {
                    sendCommand(command);
                }
            }
        });
        root.addView(sendButton);

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
        logScroll.addView(logView, new ScrollView.LayoutParams(
                ScrollView.LayoutParams.MATCH_PARENT,
                ScrollView.LayoutParams.WRAP_CONTENT));
        LinearLayout.LayoutParams logParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f);
        logParams.topMargin = dp(8);
        root.addView(logScroll, logParams);

        setContentView(root);
        appendLog("Ready. Target: http://" + DEFAULT_HOST + "/run?cmd=...");
    }

    private EditText addInput(LinearLayout parent, String hint, String value, int inputType) {
        EditText input = new EditText(this);
        input.setHint(hint);
        input.setText(value);
        input.setSingleLine(true);
        input.setInputType(inputType);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
        params.topMargin = dp(8);
        parent.addView(input, params);
        return input;
    }

    private void addButton(LinearLayout parent, String text, View.OnClickListener listener) {
        Button button = new Button(this);
        button.setText(text);
        button.setAllCaps(false);
        button.setOnClickListener(listener);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f);
        parent.addView(button, params);
    }

    private View.OnClickListener commandButton(final String command) {
        return new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                sendCommand(command);
            }
        };
    }

    private void sendCommands(final String... commands) {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                for (String command : commands) {
                    executeCommand(command);
                }
            }
        });
    }

    private void sendCommand(final String command) {
        executor.execute(new Runnable() {
            @Override
            public void run() {
                executeCommand(command);
            }
        });
    }

    private void executeCommand(String command) {
        final StringBuilder output = new StringBuilder();
        output.append("> ").append(command).append('\n');
        String host = hostInput.getText().toString().trim();
        if (host.length() == 0) {
            host = DEFAULT_HOST;
        }
        try {
            String encoded = URLEncoder.encode(command, "UTF-8");
            String[] endpoints = new String[]{
                    "http://" + host + "/run?cmd=" + encoded,
                    "http://" + host + "/cmd?cmd=" + encoded,
                    "http://" + host + "/?cmd=" + encoded
            };
            String body = null;
            int lastCode = -1;
            for (String endpoint : endpoints) {
                HttpResult result = httpGet(endpoint);
                lastCode = result.code;
                if (result.code == 200 && result.body != null
                        && !looksLikeHtml(result.body)) {
                    body = result.body;
                    break;
                }
            }
            if (body == null) {
                output.append("No command response (HTTP ").append(lastCode)
                        .append("). Check the IP, firmware and connection.\n");
            } else {
                output.append(body.trim()).append('\n');
            }
        } catch (Exception e) {
            output.append("Request failed: ").append(e).append('\n');
        }
        appendLog(output.toString());
    }

    private static boolean looksLikeHtml(String body) {
        String lower = body.trim().toLowerCase();
        return lower.startsWith("<!doctype") || lower.startsWith("<html")
                || lower.contains("<body");
    }

    private static final class HttpResult {
        final int code;
        final String body;

        HttpResult(int code, String body) {
            this.code = code;
            this.body = body;
        }
    }

    private HttpResult httpGet(String address) throws Exception {
        HttpURLConnection connection = null;
        try {
            connection = (HttpURLConnection) new URL(address).openConnection();
            connection.setConnectTimeout(5000);
            connection.setReadTimeout(10000);
            connection.setRequestMethod("GET");
            connection.setRequestProperty("Accept", "text/plain, */*");
            int code = connection.getResponseCode();
            InputStream stream = code >= 400
                    ? connection.getErrorStream() : connection.getInputStream();
            StringBuilder builder = new StringBuilder();
            if (stream != null) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
                String line;
                while ((line = reader.readLine()) != null) {
                    builder.append(line).append('\n');
                }
                reader.close();
            }
            return new HttpResult(code, builder.toString());
        } finally {
            if (connection != null) {
                connection.disconnect();
            }
        }
    }

    private void connectToDeautherWifi() {
        if (Build.VERSION.SDK_INT < 29) {
            appendLog("Automatic Wi-Fi connection needs Android 10+. "
                    + "Connect manually to the deauther AP, then press Test connection.");
            return;
        }
        if (!ensureWifiPermissions()) {
            return;
        }
        String ssid = ssidInput.getText().toString().trim();
        String password = passwordInput.getText().toString();
        if (ssid.length() == 0) {
            appendLog("SSID is empty.");
            return;
        }
        try {
            WifiNetworkSpecifier.Builder specifierBuilder = new WifiNetworkSpecifier.Builder()
                    .setSsid(ssid);
            if (password.length() > 0) {
                specifierBuilder.setWpa2Passphrase(password);
            }
            NetworkRequest request = new NetworkRequest.Builder()
                    .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
                    .removeCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
                    .setNetworkSpecifier(specifierBuilder.build())
                    .build();
            if (networkCallback != null) {
                try {
                    connectivityManager.unregisterNetworkCallback(networkCallback);
                } catch (Exception ignored) {
                }
            }
            networkCallback = new ConnectivityManager.NetworkCallback() {
                @Override
                public void onAvailable(final Network network) {
                    connectivityManager.bindProcessToNetwork(network);
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            appendLog("Connected to " + ssid + ". Testing host...");
                        }
                    });
                    sendCommand("info");
                }

                @Override
                public void onUnavailable() {
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            appendLog("Wi-Fi connection request was dismissed or unavailable.");
                        }
                    });
                }

                @Override
                public void onLost(final Network network) {
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            appendLog("Deauther Wi-Fi connection lost.");
                        }
                    });
                }
            };
            appendLog("Requesting Wi-Fi connection to \"" + ssid + "\"...");
            connectivityManager.requestNetwork(request, networkCallback);
        } catch (Exception e) {
            appendLog("Unable to request Wi-Fi connection: " + e);
        }
    }

    private boolean ensureWifiPermissions() {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION)
                == PackageManager.PERMISSION_GRANTED) {
            return true;
        }
        requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION},
                REQUEST_WIFI_PERMISSIONS);
        appendLog("Grant location permission and press Connect Wi-Fi again.");
        return false;
    }

    private void appendLog(final String text) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                String existing = logView.getText().toString();
                String combined = text + existing;
                if (combined.length() > 20000) {
                    combined = combined.substring(0, 20000);
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
        if (connectivityManager != null && networkCallback != null) {
            try {
                connectivityManager.unregisterNetworkCallback(networkCallback);
            } catch (Exception ignored) {
            }
            connectivityManager.bindProcessToNetwork(null);
        }
    }
}
