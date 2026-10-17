package me.paranoid.wifikill;

import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;

/* JADX INFO: loaded from: classes.dex */
public class Preferences extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.preferences);
        if (WiFiKill.c) {
            return;
        }
        getPreferenceScreen().findPreference("pref_key_show_hwaddr").setOnPreferenceChangeListener(this);
        getPreferenceScreen().findPreference("pref_key_show_vendor").setOnPreferenceChangeListener(this);
        getPreferenceScreen().findPreference("pref_key_show_nbname").setOnPreferenceChangeListener(this);
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        me.paranoid.a.c.a(this, "Free version", "This option is available only in donate version, please use WiFiKill Downloader to get full version");
        return false;
    }
}
