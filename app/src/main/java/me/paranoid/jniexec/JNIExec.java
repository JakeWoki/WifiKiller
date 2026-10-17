package me.paranoid.jniexec;

import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* Replaced the legacy 32-bit JNI shell bridge with a pure Java ProcessBuilder
 * implementation so the app can be installed on 64-bit-only devices. */
public class JNIExec {
    public int a;
    public int b;
    private Process c;
    private BufferedWriter d;
    private BufferedReader e;
    private BlockingQueue<String> f;
    private b g;
    private Runnable h;
    private boolean i;
    private Thread j;
    private boolean k;

    public JNIExec() {
        this.a = 512;
        this.b = -1;
        b();
    }

    public JNIExec(b bVar) {
        this.a = 512;
        this.b = -1;
        this.g = bVar;
        b();
        if (bVar != null) {
            this.h = new a(this);
        }
    }

    private boolean b() {
        try {
            this.c = new ProcessBuilder("su").redirectErrorStream(true).start();
            this.d = new BufferedWriter(new OutputStreamWriter(this.c.getOutputStream()));
            this.e = new BufferedReader(new InputStreamReader(this.c.getInputStream()));
            this.f = new LinkedBlockingQueue<>();
            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        String line;
                        while ((line = e.readLine()) != null) {
                            f.put(line);
                        }
                    } catch (Exception e2) {
                        Log.d("JNIExec", "shell output ended: " + e2);
                    }
                }
            }, "JNIExec-reader");
            thread.setDaemon(true);
            thread.start();
            return true;
        } catch (Exception e2) {
            Log.d("JNIExec", "unable to start su: " + e2);
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            return false;
        }
    }

    public static int a(String str) {
        Log.d("JNIExec", "exec: (" + str + ") start");
        try {
            Process process = new ProcessBuilder("su", "-c", str).redirectErrorStream(true).start();
            byte[] buffer = new byte[4096];
            while (process.getInputStream().read(buffer) != -1) {
            }
            return process.waitFor();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -2;
        }
    }

    static void a(JNIExec jNIExec) {
        Log.d("JNIExec", "polling: " + jNIExec.b);
        while (jNIExec.c != null && isAlive(jNIExec.c)) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e2) {
                return;
            }
        }
        if (jNIExec.c == null) {
            jNIExec.a = -2;
        } else {
            try {
                jNIExec.a = jNIExec.c.exitValue();
            } catch (IllegalThreadStateException e2) {
                jNIExec.a = 512;
            }
        }
        Log.d("JNIExec", "STATUS = " + jNIExec.a);
        if (jNIExec.g == null || jNIExec.i) {
            return;
        }
        jNIExec.g.a();
    }

    private static boolean isAlive(Process process) {
        try {
            process.exitValue();
            return false;
        } catch (IllegalThreadStateException e2) {
            return true;
        }
    }

    public final String a(int i2) throws TimeoutException {
        if (this.f == null) {
            return null;
        }
        try {
            if (i2 <= 0) {
                while (true) {
                    String line = this.f.poll(200L, TimeUnit.MILLISECONDS);
                    if (line != null) {
                        return line;
                    }
                    if (this.c == null || !isAlive(this.c)) {
                        return this.f.poll();
                    }
                }
            }
            String line2 = this.f.poll((long) i2, TimeUnit.MILLISECONDS);
            if (line2 == null) {
                throw new TimeoutException();
            }
            return line2;
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            return null;
        }
    }

    public final void a() {
        this.i = true;
    }

    public final boolean b(String str) {
        if (this.d == null) {
            return false;
        }
        try {
            this.d.write(str);
            this.d.flush();
            return true;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final boolean c(String str) {
        Log.d("JNIExec", "jexec: [" + str + "]");
        if (this.d == null || this.c == null) {
            Log.d("JNIExec", "jexec: not initialized");
            return false;
        }
        try {
            this.d.write(str + "; exit $?\n");
            this.d.flush();
            if (this.h != null && !this.k) {
                this.k = true;
                this.j = new Thread(this.h, "JNIExec-watcher");
                this.j.setDaemon(true);
                this.j.start();
            }
            return isAlive(this.c);
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
