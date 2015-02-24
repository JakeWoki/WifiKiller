// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.jniexec;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.concurrent.TimeoutException;

// Referenced classes of package me.paranoid.jniexec:
//            a, b

public class JNIExec
{

    public int a;
    public int b;
    private int c[];
    private FileInputStream d;
    private FileOutputStream e;
    private BufferedReader f;
    private b g;
    private Runnable h;
    private boolean i;

    public JNIExec()
    {
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = false;
        a = 512;
        b = -1;
        if (!b())
        {
            c = null;
        }
    }

    public JNIExec(b b1)
    {
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = false;
        a = 512;
        b = -1;
        if (!b())
        {
            c = null;
        } else
        {
            g = b1;
            if (b1 != null)
            {
                h = new a(this);
                return;
            }
        }
    }

    public static int a(String s)
    {
        Log.d("JNIExec", (new StringBuilder()).append((new Exception()).getStackTrace()[0].getMethodName()).append(": (").append(s).append(") start").toString());
        int ai[] = exec(s.toCharArray());
        if (ai == null)
        {
            return -2;
        }
        FileOutputStream fileoutputstream = a(ai);
        int j;
        try
        {
            fileoutputstream.write((new StringBuilder()).append(s).append("; exit $?\n").toString().getBytes());
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            b(ai);
            return -2;
        }
        j = waitFor(ai[2], 0);
        b(ai);
        return j;
    }

    private static FileOutputStream a(int ai[])
    {
        return new FileOutputStream(setFD(ai[0]));
    }

    static void a(JNIExec jniexec)
    {
        Log.d("JNIExec", (new StringBuilder("polling: ")).append(jniexec.b).toString());
_L1:
        int j;
        j = waitFor(jniexec.b, 1);
        jniexec.a = j;
        if (j != 512)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        Thread.sleep(200L);
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
        Log.d("JNIExec", (new StringBuilder("STATUS = ")).append(jniexec.a).toString());
        if (jniexec.g != null && !jniexec.i)
        {
            b b1 = jniexec.g;
            jniexec.b;
            b1.a();
        }
        return;
    }

    private static void b(int ai[])
    {
        if (ai == null)
        {
            return;
        } else
        {
            waitFor(ai[2], 1);
            close_fd(ai[0]);
            close_fd(ai[1]);
            return;
        }
    }

    private boolean b()
    {
        c = exec("su".toCharArray());
        if (c == null)
        {
            return false;
        } else
        {
            d = new FileInputStream(setFD(c[1]));
            e = a(c);
            b = c[2];
            f = new BufferedReader(new InputStreamReader(d));
            return true;
        }
    }

    public static native void close_fd(int j);

    public static native int[] exec(char ac[]);

    public static native FileDescriptor setFD(int j);

    public static native int waitFor(int j, int k);

    public final String a(int j)
    {
        long l;
        l = (new Date()).getTime();
        if (f == null)
        {
            return null;
        }
          goto _L1
_L3:
        String s;
        try
        {
            Thread.sleep(50L);
        }
        catch (InterruptedException interruptedexception) { }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
_L1:
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (f.ready())
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if ((new Date()).getTime() - l <= (long)j) goto _L3; else goto _L2
_L2:
        throw new TimeoutException();
        s = f.readLine();
        return s;
    }

    public final void a()
    {
        i = true;
    }

    public final boolean b(String s)
    {
        if (c == null)
        {
            return false;
        }
        try
        {
            e.write(s.getBytes());
            e.flush();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        return true;
    }

    public final boolean c(String s)
    {
        Log.d("JNIExec", (new StringBuilder("jexec: [")).append(s).append("]").toString());
        if (c == null)
        {
            Log.d("JNIExec", "jexec: not initialized");
        } else
        {
            try
            {
                e.write((new String((new StringBuilder()).append(s).append("; exit $?\n").toString())).getBytes());
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                return false;
            }
            if (h != null)
            {
                (new Thread(h)).start();
            }
            if (waitFor(b, 1) == 512)
            {
                return true;
            }
        }
        return false;
    }

    static 
    {
        System.loadLibrary("JNIExec");
    }
}
