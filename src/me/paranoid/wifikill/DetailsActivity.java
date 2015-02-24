// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package me.paranoid.wifikill;

import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.PowerManager;
import com.google.ads.AdView;
import com.google.ads.d;
import me.paranoid.wifikill.fragment.a;

// Referenced classes of package me.paranoid.wifikill:
//            a, WiFiKill

public class DetailsActivity extends Activity
{

    private android.os.PowerManager.WakeLock a;
    private AdView b;

    public DetailsActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = ((PowerManager)getSystemService("power")).newWakeLock(6, "WiFiKill");
        if (getResources().getConfiguration().orientation == 2)
        {
            finish();
        } else
        {
            getActionBar().setBackgroundDrawable(getResources().getDrawable(0x7f020000));
            if (bundle == null)
            {
                String s = getIntent().getExtras().getString("ip");
                a a1 = new a(me.paranoid.wifikill.a.a().b(s));
                a1.setArguments(getIntent().getExtras());
                getFragmentManager().beginTransaction().add(0x1020002, a1).commit();
                return;
            }
        }
    }

    protected void onPause()
    {
        super.onPause();
        a.release();
    }

    protected void onResume()
    {
        super.onResume();
        a.acquire();
        if (!WiFiKill.c)
        {
            b = (AdView)findViewById(0x7f090008);
            b.setVisibility(0);
            b.a(new d());
        }
    }
}
