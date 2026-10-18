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

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static boolean a(Context context, String str, String str2) {
        AssetManager assets = context.getAssets();
        if (c(context, str, str2)) {
            return true;
        }
        try {
            c.a(context, "Updating binary file");
        } catch (Exception e) {
        }
        c.a("Copying asset " + str + " to " + str2);
        try {
            File fileStreamPath = context.getFileStreamPath(str2);
            c.a("File path: " + fileStreamPath.getPath());
            InputStream inputStreamOpen = assets.open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(fileStreamPath);
            a(inputStreamOpen, fileOutputStream);
            inputStreamOpen.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e2) {
            c.a("Unable to copy asset file: " + e2.toString());
            return false;
        }
    }

    private static boolean b(Context context, String str, String str2) {
        File file = new File(context.getFilesDir(), str2);
        if (!file.exists()) {
            return false;
        }
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            byte[] bArr = new byte[8192];
            int i = 0;
            while (true) {
                int i2 = inputStreamOpen.read(bArr);
                if (i2 == -1) {
                    break;
                }
                i += i2;
            }
            inputStreamOpen.close();
            return file.length() == ((long) i);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean c(Context context, String str, String str2) {
        File file = new File(context.getFilesDir(), str2);
        if (!file.exists() || !b(context, str, str2)) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            InputStream inputStreamOpen = context.getAssets().open(str);
            byte[] bArr = new byte[1024];
            byte[] bArr2 = new byte[1024];
            do {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    fileInputStream.close();
                    inputStreamOpen.close();
                    return true;
                }
                if (inputStreamOpen.read(bArr2) != i) {
                    break;
                }
            } while (Arrays.equals(bArr, bArr2));
            fileInputStream.close();
            inputStreamOpen.close();
            return false;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
