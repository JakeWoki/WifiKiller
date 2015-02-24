// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.a;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

// Referenced classes of package me.paranoid.a:
//            c

public final class b
{

    private static void a(InputStream inputstream, OutputStream outputstream)
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i != -1)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

    public static boolean a(Context context, String s, String s1)
    {
        AssetManager assetmanager = context.getAssets();
        if (c(context, s, s1))
        {
            return true;
        }
        try
        {
            me.paranoid.a.c.a(context, "Updating binary file");
        }
        catch (Exception exception) { }
        me.paranoid.a.c.a((new StringBuilder("Copying asset ")).append(s).append(" to ").append(s1).toString());
        try
        {
            File file = context.getFileStreamPath(s1);
            me.paranoid.a.c.a((new StringBuilder("File path: ")).append(file.getPath()).toString());
            InputStream inputstream = assetmanager.open(s);
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            a(inputstream, ((OutputStream) (fileoutputstream)));
            inputstream.close();
            fileoutputstream.flush();
            fileoutputstream.close();
        }
        catch (IOException ioexception)
        {
            me.paranoid.a.c.a((new StringBuilder("Unable to copy asset file: ")).append(ioexception.toString()).toString());
            return false;
        }
        return true;
    }

    private static boolean b(Context context, String s, String s1)
    {
        File file = new File(context.getFilesDir(), s1);
        if (file.exists()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        InputStream inputstream;
        byte abyte0[];
        int i;
        int j;
        long l;
        try
        {
            inputstream = context.getAssets().open(s);
            abyte0 = new byte[8192];
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        i = 0;
        j = inputstream.read(abyte0);
        if (j == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        i += j;
        if (true) goto _L4; else goto _L3
_L4:
        break MISSING_BLOCK_LABEL_42;
_L3:
        inputstream.close();
        l = file.length();
        if (l == (long)i)
        {
            return true;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    private static boolean c(Context context, String s, String s1)
    {
        File file;
        for (file = new File(context.getFilesDir(), s1); !file.exists() || !b(context, s, s1);)
        {
            return false;
        }

        FileInputStream fileinputstream;
        InputStream inputstream;
        byte abyte0[];
        byte abyte1[];
        fileinputstream = new FileInputStream(file);
        inputstream = context.getAssets().open(s);
        abyte0 = new byte[1024];
        abyte1 = new byte[1024];
_L2:
        int i = fileinputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        if (inputstream.read(abyte1) == i && Arrays.equals(abyte0, abyte1)) goto _L2; else goto _L1
_L1:
        fileinputstream.close();
        inputstream.close();
        FileNotFoundException filenotfoundexception;
        return false;
        try
        {
            fileinputstream.close();
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
            return false;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        return true;
    }
}
