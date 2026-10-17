package me.paranoid.wifikill.service;

import android.os.Handler;
import android.os.Message;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Serializable {
    public String a;
    public String b;
    public String c;
    public String d;
    public int e;
    public int f;
    public int g;
    private String i;
    public b h = new b();
    private Handler j = null;

    public a(String str, String str2, String str3, String str4) {
        me.paranoid.a.c.a("!!!!!!! new dev vendor[" + str4 + "]");
        this.a = str;
        this.b = str2;
        this.i = str3;
        this.d = str4;
        this.e = 0;
        this.f = 0;
        this.g = 0;
    }

    public final void a() {
        if (this.j == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.obj = this;
        this.j.sendMessage(messageObtain);
    }

    public final void a(int i) {
        this.f += i;
    }

    public final void a(Handler handler) {
        this.j = handler;
    }

    public final void a(String str) {
        this.i = str;
    }

    public final String b() {
        return this.i;
    }

    public final void b(int i) {
        this.g += i;
    }
}
