package me.paranoid.a;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static Map a = new HashMap();

    /* JADX WARN: Code duplicated, block: B:32:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String a(Context context, String str) {
        Exception exc;
        RandomAccessFile randomAccessFile;
        int i = 0;
        String upperCase = str.replaceAll(":|-", "").substring(0, 6).toUpperCase();
        c.a("searching: [" + upperCase + "]");
        String str2 = (String) a.get(upperCase);
        if (str2 != null) {
            c.a("found in cache: " + str2);
            return str2;
        }
        File file = new File(context.getFilesDir().getPath() + "/oui");
        if (!file.exists()) {
            b.a(context, "oui", "oui");
        }
        int i2 = 16815;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            while (i <= i2) {
                try {
                    int i3 = (i + i2) / 2;
                    randomAccessFile2.seek(i3 * 128);
                    String[] strArrSplit = randomAccessFile2.readLine().split(";");
                    int iCompareTo = strArrSplit[0].compareTo(upperCase);
                    if (iCompareTo < 0) {
                        i = i3 + 1;
                    } else {
                        if (iCompareTo <= 0) {
                            a.put(upperCase, strArrSplit[1].replace("\n|  ", "").trim());
                            randomAccessFile2.close();
                            c.a("found vendor: " + ((String) a.get(upperCase)));
                            return (String) a.get(upperCase);
                        }
                        i2 = i3 - 1;
                    }
                } catch (Exception e) {
                    randomAccessFile = randomAccessFile2;
                    exc = e;
                    exc.printStackTrace();
                    c.a("Unable to find: " + upperCase);
                    a.put(upperCase, "unknown vendor");
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return null;
                }
            }
            randomAccessFile = randomAccessFile2;
        } catch (Exception e3) {
            exc = e3;
            randomAccessFile = null;
        }
        c.a("Unable to find: " + upperCase);
        a.put(upperCase, "unknown vendor");
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }
}
