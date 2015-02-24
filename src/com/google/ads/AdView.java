// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ads.a.c;
import com.google.ads.a.i;
import com.google.ads.a.r;
import com.google.ads.a.z;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ac;
import com.google.ads.util.d;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.ads:
//            a, g, d, ar

public class AdView extends RelativeLayout
    implements a
{

    private r a;

    public AdView(Activity activity, g g1, String s)
    {
        super(activity.getApplicationContext());
        try
        {
            a(activity, g1, ((AttributeSet) (null)));
            b(activity, g1, null);
            a(activity, g1, s);
            return;
        }
        catch (i j)
        {
            a(activity, j.c("Could not initialize AdView"), g1, ((AttributeSet) (null)));
            j.a("Could not initialize AdView");
            return;
        }
    }

    protected AdView(Activity activity, g ag[], String s)
    {
        this(activity, new g(0, 0), s);
        a(ag);
    }

    public AdView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        if (attributeset == null) goto _L2; else goto _L1
_L1:
        String s1;
        g ag1[];
        s1 = a("adSize", context, attributeset, true);
        ag1 = a(s1);
        if (ag1 == null) goto _L4; else goto _L3
_L3:
        if (ag1.length != 0) goto _L5; else goto _L4
_L4:
        i k;
        g ag[];
        i l;
        throw new i((new StringBuilder("Attribute \"adSize\" invalid: ")).append(s1).toString());
_L12:
        String s = k.c("Could not initialize AdView");
        g g1;
        String s2;
        boolean flag1;
        Activity activity;
        Set set;
        if (ag != null && ag.length > 0)
        {
            g1 = ag[0];
        } else
        {
            g1 = g.b;
        }
        a(context, s, g1, attributeset);
        k.a("Could not initialize AdView");
        if (!isInEditMode())
        {
            k.b("Could not initialize AdView");
        }
_L2:
        return;
_L5:
        i j;
        boolean flag;
        if (attributeset.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", "adUnitId") != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        throw new i("Required XML attribute \"adUnitId\" missing");
        if (isInEditMode())
        {
            a(context, "Ads by Google", -1, ag1[0], attributeset);
            return;
        }
        s2 = a("adUnitId", context, attributeset, true);
        flag1 = a("loadAdOnCreate", context, attributeset);
        if (!(context instanceof Activity))
        {
            break; /* Loop/switch isn't completed */
        }
        activity = (Activity)context;
        a(activity, ag1[0], attributeset);
        b(activity, ag1[0], attributeset);
        if (ag1.length != 1) goto _L7; else goto _L6
_L6:
        a(activity, ag1[0], s2);
_L9:
        if (flag1)
        {
            try
            {
                set = b("testDevices", context, attributeset);
                if (set.contains("TEST_EMULATOR"))
                {
                    set.remove("TEST_EMULATOR");
                    set.add(d.a);
                }
                a((new com.google.ads.d()).b(set).a(b("keywords", context, attributeset)));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (i l)
            {
                k = l;
                ag = ag1;
            }
            continue; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
_L7:
        a(activity, new g(0, 0), s2);
        a(ag1);
        if (true) goto _L9; else goto _L8
_L8:
        if (true) goto _L2; else goto _L10
_L10:
        throw new i("AdView was initialized with a Context that wasn't an Activity.");
        j;
        k = j;
        ag = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public AdView(Context context, AttributeSet attributeset, int j)
    {
        this(context, attributeset);
    }

    private static int a(Context context, int j)
    {
        return (int)TypedValue.applyDimension(1, j, context.getResources().getDisplayMetrics());
    }

    private String a(String s, Context context, AttributeSet attributeset, boolean flag)
    {
label0:
        {
            String s1 = attributeset.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", s);
            TypedValue typedvalue;
            if (s1 != null)
            {
                String s2 = context.getPackageName();
                if (s1.matches("^@([^:]+)\\:(.*)$"))
                {
                    s2 = s1.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                    s1 = s1.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
                }
                if (s1.startsWith("@string/"))
                {
                    String s3 = s1.substring(8);
                    typedvalue = new TypedValue();
                    try
                    {
                        getResources().getValue((new StringBuilder()).append(s2).append(":string/").append(s3).toString(), typedvalue, true);
                    }
                    catch (android.content.res.Resources.NotFoundException notfoundexception)
                    {
                        throw new i((new StringBuilder("Could not find resource for ")).append(s).append(": ").append(s1).toString(), notfoundexception);
                    }
                    if (typedvalue.string == null)
                    {
                        break label0;
                    }
                    s1 = typedvalue.string.toString();
                }
            }
            if (flag && s1 == null)
            {
                throw new i((new StringBuilder("Required XML attribute \"")).append(s).append("\" missing").toString());
            } else
            {
                return s1;
            }
        }
        throw new i((new StringBuilder("Resource ")).append(s).append(" was not a string: ").append(typedvalue).toString());
    }

    private void a(Activity activity, g g1, String s)
    {
        FrameLayout framelayout;
        framelayout = new FrameLayout(activity);
        framelayout.setFocusable(false);
        a = new r(this, activity, g1, s, framelayout);
        setGravity(17);
        ViewGroup viewgroup = z.a(activity, a);
        if (viewgroup != null)
        {
            try
            {
                viewgroup.addView(framelayout, -2, -2);
                addView(viewgroup, -2, -2);
                return;
            }
            catch (VerifyError verifyerror)
            {
                d.a("Gestures disabled: Not supported on this version of Android.", verifyerror);
            }
            break MISSING_BLOCK_LABEL_97;
        }
        addView(framelayout, -2, -2);
        return;
        addView(framelayout, -2, -2);
        return;
    }

    private void a(Context context, String s, int j, g g1, AttributeSet attributeset)
    {
        if (g1 == null)
        {
            g1 = g.b;
        }
        g g2 = g.a(g1, context.getApplicationContext());
        if (getChildCount() == 0)
        {
            TextView textview;
            LinearLayout linearlayout;
            LinearLayout linearlayout1;
            int k;
            int l;
            if (attributeset == null)
            {
                textview = new TextView(context);
            } else
            {
                textview = new TextView(context, attributeset);
            }
            textview.setGravity(17);
            textview.setText(s);
            textview.setTextColor(j);
            textview.setBackgroundColor(0xff000000);
            if (attributeset == null)
            {
                linearlayout = new LinearLayout(context);
            } else
            {
                linearlayout = new LinearLayout(context, attributeset);
            }
            linearlayout.setGravity(17);
            if (attributeset == null)
            {
                linearlayout1 = new LinearLayout(context);
            } else
            {
                linearlayout1 = new LinearLayout(context, attributeset);
            }
            linearlayout1.setGravity(17);
            linearlayout1.setBackgroundColor(j);
            k = a(context, g2.a());
            l = a(context, g2.b());
            linearlayout.addView(textview, k - 2, l - 2);
            linearlayout1.addView(linearlayout);
            addView(linearlayout1, k, l);
        }
    }

    private void a(Context context, String s, g g1, AttributeSet attributeset)
    {
        d.b(s);
        a(context, s, 0xffff0000, g1, attributeset);
    }

    private transient void a(g ag[])
    {
        g ag1[] = new g[ag.length];
        for (int j = 0; j < ag.length; j++)
        {
            ag1[j] = g.a(ag[j], getContext());
        }

        a.f().l.a(ag1);
    }

    private boolean a(Context context, g g1, AttributeSet attributeset)
    {
        if (!AdUtil.c(context))
        {
            a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", g1, attributeset);
            return false;
        } else
        {
            return true;
        }
    }

    private boolean a(String s, Context context, AttributeSet attributeset)
    {
        String s1 = attributeset.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", s);
        boolean flag = attributeset.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", s, false);
        if (s1 != null)
        {
            String s2 = context.getPackageName();
            if (s1.matches("^@([^:]+)\\:(.*)$"))
            {
                s2 = s1.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                s1 = s1.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
            }
            if (s1.startsWith("@bool/"))
            {
                String s3 = s1.substring(6);
                TypedValue typedvalue = new TypedValue();
                try
                {
                    getResources().getValue((new StringBuilder()).append(s2).append(":bool/").append(s3).toString(), typedvalue, true);
                }
                catch (android.content.res.Resources.NotFoundException notfoundexception)
                {
                    throw new i((new StringBuilder("Could not find resource for ")).append(s).append(": ").append(s1).toString(), notfoundexception);
                }
                if (typedvalue.type == 18)
                {
                    return typedvalue.data != 0;
                } else
                {
                    throw new i((new StringBuilder("Resource ")).append(s).append(" was not a boolean: ").append(typedvalue).toString());
                }
            }
        }
        return flag;
    }

    private static g[] a(String s)
    {
        String as[];
        g ag[];
        int j;
        as = s.split(",");
        ag = new g[as.length];
        j = 0;
_L9:
        String s1;
        String as1[];
        if (j >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = as[j].trim();
        if (!s1.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"))
        {
            break MISSING_BLOCK_LABEL_162;
        }
        as1 = s1.split("[xX]");
        as1[0] = as1[0].trim();
        as1[1] = as1[1].trim();
        if (!"FULL_WIDTH".equals(as1[0])) goto _L2; else goto _L1
_L1:
        int k = -1;
_L5:
        g g1;
        boolean flag;
        int l;
        int i1;
        try
        {
            flag = "AUTO_HEIGHT".equals(as1[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            return null;
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        i1 = -2;
_L6:
        g1 = new g(k, i1);
_L7:
        if (g1 == null)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_282;
_L2:
        k = Integer.parseInt(as1[0]);
          goto _L5
_L4:
        l = Integer.parseInt(as1[1]);
        i1 = l;
          goto _L6
        if ("BANNER".equals(s1))
        {
            g1 = g.b;
        } else
        if ("SMART_BANNER".equals(s1))
        {
            g1 = g.a;
        } else
        if ("IAB_MRECT".equals(s1))
        {
            g1 = com.google.ads.g.c;
        } else
        if ("IAB_BANNER".equals(s1))
        {
            g1 = com.google.ads.g.d;
        } else
        if ("IAB_LEADERBOARD".equals(s1))
        {
            g1 = g.e;
        } else
        if ("IAB_WIDE_SKYSCRAPER".equals(s1))
        {
            g1 = g.f;
        } else
        {
            g1 = null;
        }
          goto _L7
        ag[j] = g1;
        j++;
        if (true) goto _L9; else goto _L8
_L8:
        return ag;
    }

    private Set b(String s, Context context, AttributeSet attributeset)
    {
        int j = 0;
        String s1 = a(s, context, attributeset, false);
        HashSet hashset = new HashSet();
        if (s1 != null)
        {
            String as[] = s1.split(",");
            for (int k = as.length; j < k; j++)
            {
                String s2 = as[j].trim();
                if (s2.length() != 0)
                {
                    hashset.add(s2);
                }
            }

        }
        return hashset;
    }

    private boolean b(Context context, g g1, AttributeSet attributeset)
    {
        if (!AdUtil.b(context))
        {
            a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", g1, attributeset);
            return false;
        } else
        {
            return true;
        }
    }

    public final void a(com.google.ads.d d1)
    {
        if (a != null)
        {
            boolean flag;
            if (a == null)
            {
                flag = false;
            } else
            {
                flag = a.o();
            }
            if (flag)
            {
                a.d();
            }
            a.a(d1);
        }
    }

    protected void onMeasure(int j, int k)
    {
        c c1 = a.i();
        if (c1 != null)
        {
            c1.setVisibility(0);
        }
        super.onMeasure(j, k);
    }
}
