// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.a;

import android.app.Activity;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.google.ads.util.d;
import com.google.ads.util.m;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.ads.a:
//            e, b, c

public final class a extends FrameLayout
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    private static final e b;
    public MediaController a;
    private WeakReference c;
    private c d;
    private long e;
    private VideoView f;
    private String g;

    public a(Activity activity, c c1)
    {
        super(activity);
        c = new WeakReference(activity);
        d = c1;
        f = new VideoView(activity);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1, 17);
        addView(f, layoutparams);
        a = null;
        g = null;
        e = 0L;
        (new b(this)).a();
        f.setOnCompletionListener(this);
        f.setOnPreparedListener(this);
        f.setOnErrorListener(this);
    }

    public final void a()
    {
        if (!TextUtils.isEmpty(g))
        {
            f.setVideoPath(g);
            return;
        } else
        {
            e _tmp = b;
            com.google.ads.a.e.a(d, "onVideoEvent", "{'event': 'error', 'what': 'no_src'}");
            return;
        }
    }

    public final void a(int i)
    {
        f.seekTo(i);
    }

    public final void a(MotionEvent motionevent)
    {
        f.onTouchEvent(motionevent);
    }

    public final void a(String s)
    {
        g = s;
    }

    public final void a(boolean flag)
    {
        Activity activity = (Activity)c.get();
        if (activity == null)
        {
            com.google.ads.util.d.e("adActivity was null while trying to enable controls on a video.");
            return;
        }
        if (flag)
        {
            if (a == null)
            {
                a = new MediaController(activity);
            }
            f.setMediaController(a);
            return;
        }
        if (a != null)
        {
            a.hide();
        }
        f.setMediaController(null);
    }

    public final void b()
    {
        f.pause();
    }

    public final void c()
    {
        f.start();
    }

    public final void d()
    {
        f.stopPlayback();
    }

    final void e()
    {
        long l = f.getCurrentPosition();
        if (e != l)
        {
            float f1 = (float)l / 1000F;
            e _tmp = b;
            com.google.ads.a.e.a(d, "onVideoEvent", (new StringBuilder("{'event': 'timeupdate', 'time': ")).append(f1).append("}").toString());
            e = l;
        }
    }

    public final void onCompletion(MediaPlayer mediaplayer)
    {
        e _tmp = b;
        com.google.ads.a.e.a(d, "onVideoEvent", "{'event': 'ended'}");
    }

    public final boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        com.google.ads.util.d.e((new StringBuilder("Video threw error! <what:")).append(i).append(", extra:").append(j).append(">").toString());
        e _tmp = b;
        com.google.ads.a.e.a(d, "onVideoEvent", (new StringBuilder("{'event': 'error', 'what': '")).append(i).append("', 'extra': '").append(j).append("'}").toString());
        return true;
    }

    public final void onPrepared(MediaPlayer mediaplayer)
    {
        float f1 = (float)f.getDuration() / 1000F;
        e _tmp = b;
        com.google.ads.a.e.a(d, "onVideoEvent", (new StringBuilder("{'event': 'canplaythrough', 'duration': '")).append(f1).append("'}").toString());
    }

    static 
    {
        b = (e)e.a.a();
    }
}
