// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill.fragment;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import me.paranoid.a.c;
import me.paranoid.wifikill.service.a;

// Referenced classes of package me.paranoid.wifikill.fragment:
//            a

final class b
    implements android.widget.TextView.OnEditorActionListener
{

    final me.paranoid.wifikill.fragment.a a;

    b(me.paranoid.wifikill.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        c.a((new StringBuilder("setting name `")).append(textview.getText()).append("` for: ").append(me.paranoid.wifikill.fragment.a.a(a).b).toString());
        c.a(a.getActivity(), "name saved");
        me.paranoid.wifikill.fragment.a.a(a, textview.getText().toString());
        ((InputMethodManager)a.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(textview.getWindowToken(), 0);
        textview.clearFocus();
        return false;
    }
}
