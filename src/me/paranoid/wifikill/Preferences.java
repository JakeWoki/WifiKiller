// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import me.paranoid.a.c;

// Referenced classes of package me.paranoid.wifikill:
//            WiFiKill

public class Preferences extends PreferenceActivity
    implements android.preference.Preference.OnPreferenceChangeListener
{

    public Preferences()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPreferencesFromResource(0x7f050000);
        if (me.paranoid.wifikill.WiFiKill.c)
        {
            return;
        } else
        {
            getPreferenceScreen().findPreference("pref_key_show_hwaddr").setOnPreferenceChangeListener(this);
            getPreferenceScreen().findPreference("pref_key_show_vendor").setOnPreferenceChangeListener(this);
            getPreferenceScreen().findPreference("pref_key_show_nbname").setOnPreferenceChangeListener(this);
            return;
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj)
    {
        c.a(this, "Free version", "This option is available only in donate version, please use WiFiKill Downloader to get full version");
        return false;
    }
}
