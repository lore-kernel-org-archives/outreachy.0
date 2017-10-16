X-GM-THRID: 6466935626239311872
X-Received: by 10.107.147.66 with SMTP id v63mr7714018iod.34.1508180613175;
        Mon, 16 Oct 2017 12:03:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.56.67 with SMTP id f64ls2790300ioa.17.gmail; Mon, 16 Oct
 2017 12:03:32 -0700 (PDT)
X-Received: by 10.107.188.129 with SMTP id m123mr8251511iof.48.1508180612278;
        Mon, 16 Oct 2017 12:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508180612; cv=none;
        d=google.com; s=arc-20160816;
        b=UV6BglnkCqQgDQWIxRBfwAlaO6rHfkL/9QQvdzW9etvN8XgEWMSxKTwKMXmrt6YlIQ
         LZ6oyP4UE5P9sXv7pDHc8RcP3Pn5tKqyMNXcMY3sxKF8YBJZDPn5TEppHrgO0eqUfXts
         j6nNK5SzumjVOz9ML+yaQ0lA8YjTQ+BUhtFTxg7prSfwn4R10xIqhnFSSZTZTk8+gi6y
         XQMOChnQoHlch/RbGC5YVJCyqFsd8nbV6iqRLvbqxWiBF/Xyep1XKd+hsybLkWC/ZCC+
         /FUHuKIZZ4MgEks5ZaPeMgXdLLtGp2X2J9CqaxHSs3Uyf43qdM8IdxGZmwLKIOMqIAoO
         QcNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=iYHJS2/FJODgBdCV/ffms8cKFRFejX/7E+Adwk1vpLo=;
        b=mGElgcZtJvDlLKLApOKp39axNiac/+x7v+TbUKAhkHc4k3V34IGe5txp+wNNjrHOZB
         Ipu4E+850ScxL+7QdMxuWSiuxtdzwNLj1gCvdaIXHNQXksxQjMxiWWxXK1cNRY0IlrYD
         1GPPYT26OOTcrVEaCIafsAnqvm0CG5WtumvVdU07nsV8L+O+y9q0CJFN8ZwDJ4Y9Qs2L
         N0CM+0OiVKIbZ8ktM9CGbGwLJZqt+pwfxxmjFGJWq9sCGgds+W4z5C0czJ0VOMWHgoK7
         aPPa2W52t1ZnQn61S+XckwNrbFc/4NkA5DvKSyq0iXTpUOlPYU1eF/43muUcK/54HUaK
         nOkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SEYvxDYD;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22b as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x22b.google.com (mail-qt0-x22b.google.com. [2607:f8b0:400d:c0d::22b])
        by gmr-mx.google.com with ESMTPS id l22si139609ita.2.2017.10.16.12.03.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 12:03:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22b as permitted sender) client-ip=2607:f8b0:400d:c0d::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SEYvxDYD;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::22b as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x22b.google.com with SMTP id f8so33939219qta.5
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 12:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iYHJS2/FJODgBdCV/ffms8cKFRFejX/7E+Adwk1vpLo=;
        b=SEYvxDYDR+U8PQhbJ4HwynteXQIh0dIJamESLq+0yVQYRs9eoktpXT50hdWukcrIMB
         aAXH6AqalpNIkFZYEiGbyZrq5iTkmkRbmPaMXDSqaGTUAl01vh8c3LUub+ZOWfgw2UX8
         NQ+BsW9LveGdM4JpJUhIQOUr5oeH/GkrwvX7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iYHJS2/FJODgBdCV/ffms8cKFRFejX/7E+Adwk1vpLo=;
        b=lLTjE4uxSFnUg9rZtSUWKUVicVnckm9hUaFWSkiSXlHGjcEzmC8MTtpMv+4svNhjv/
         Z3gos+zL2kUq7HZa8QKVXwPrN4Y/dSZxzwivaXS5ceME2zr34bEO+1em7imgccnJgOX2
         YDxI0wIiHQnKtAYdaSeFPyuAWVLkwBs+ha738y7wSLl4eaE4znNape6W3wnR6uQ85EIK
         J65+K6/sSDVat8VXnTnnIlj9wMZnDZb9W54VbTcboxuEJJ2xUr0hZauKm5LYBf+MeLZA
         D3An+qpW+531R5PGyY8FKmF5tCpWm4FBTXh/5mGAmLfnYYabhFogksSsQ8vnw5+6U0sA
         RAWw==
X-Gm-Message-State: AMCzsaUJ2gY/iKj+JQzz/6f667a48w13bCoExxfvx1jRjfsaeaRN33Qe
	pdMQRytRATdSEKH0q1qs0/oY2g==
X-Google-Smtp-Source: ABhQp+T2QoJ36lNanhrj+77sWVyxCcTWP4qxK4g5BY2wfv9R6SnaynTVLtxwBBNpKWWwfzDrhoqdgw==
X-Received: by 10.37.179.195 with SMTP id x3mr1037992ybf.113.1508180611668;
        Mon, 16 Oct 2017 12:03:31 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:0:f685:3152:9ba1:429a])
        by smtp.gmail.com with ESMTPSA id u12sm4776118ywu.93.2017.10.16.12.03.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Oct 2017 12:03:30 -0700 (PDT)
Date: Mon, 16 Oct 2017 15:03:30 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>
Subject: Re: [RESEND PATCH 2/2] drm/armada: Replace
 drm_framebuffer_reference/unreference() with _get/put()
Message-ID: <20171016190330.mrxrvlfmfid5ssgy@art_vandelay>
References: <cover.1505932812.git.hamohammed.sa@gmail.com>
 <e1df1b3375faa819029559b11c32e10501c5c5d6.1505932812.git.hamohammed.sa@gmail.com>
 <CAOw6vbJbTvJRMpOfnLXFc8fkivV9ByHhWXRKmZTZE0o98OmL5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOw6vbJbTvJRMpOfnLXFc8fkivV9ByHhWXRKmZTZE0o98OmL5Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Wed, Sep 20, 2017 at 12:01:39PM -0700, Sean Paul wrote:
> On Wed, Sep 20, 2017 at 11:57 AM, Haneen Mohammed
> <hamohammed.sa@gmail.com> wrote:
> > This patch replace instances of drm_framebuffer_reference/unreference with
> > *_get/put() suffixes, because get/put is shorter and consistent with the
> > kernel use of *_get/put suffixes.
> > This was done with the following Coccinelle script:
> >
> > @r1@
> > expression e;
> > @@
> >
> > (
> > -drm_framebuffer_reference(e);
> > +drm_framebuffer_get(e);
> > |
> > -drm_framebuffer_unreference(e);
> > +drm_framebuffer_put(e);
> > )
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

Applied to drm-misc-next

Thanks for your patch!

Sean

> 
> > ---
> >  drivers/gpu/drm/armada/armada_crtc.c    | 14 +++++++-------
> >  drivers/gpu/drm/armada/armada_drv.c     |  2 +-
> >  drivers/gpu/drm/armada/armada_overlay.c |  4 ++--
> >  3 files changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
> > index 381dfa1..2e065fa 100644
> > --- a/drivers/gpu/drm/armada/armada_crtc.c
> > +++ b/drivers/gpu/drm/armada/armada_crtc.c
> > @@ -298,7 +298,7 @@ static void armada_drm_crtc_finish_fb(struct armada_crtc *dcrtc,
> >
> >         if (force) {
> >                 /* Display is disabled, so just drop the old fb */
> > -               drm_framebuffer_unreference(fb);
> > +               drm_framebuffer_put(fb);
> >                 return;
> >         }
> >
> > @@ -321,7 +321,7 @@ static void armada_drm_crtc_finish_fb(struct armada_crtc *dcrtc,
> >          * the best.  The worst that will happen is the buffer gets
> >          * reused before it has finished being displayed.
> >          */
> > -       drm_framebuffer_unreference(fb);
> > +       drm_framebuffer_put(fb);
> >  }
> >
> >  static void armada_drm_vblank_off(struct armada_crtc *dcrtc)
> > @@ -577,7 +577,7 @@ static int armada_drm_crtc_mode_set(struct drm_crtc *crtc,
> >         unsigned i;
> >         bool interlaced;
> >
> > -       drm_framebuffer_reference(crtc->primary->fb);
> > +       drm_framebuffer_get(crtc->primary->fb);
> >
> >         interlaced = !!(adj->flags & DRM_MODE_FLAG_INTERLACE);
> >
> > @@ -718,7 +718,7 @@ static int armada_drm_crtc_mode_set_base(struct drm_crtc *crtc, int x, int y,
> >                                    MAX_SCHEDULE_TIMEOUT);
> >
> >         /* Take a reference to the new fb as we're using it */
> > -       drm_framebuffer_reference(crtc->primary->fb);
> > +       drm_framebuffer_get(crtc->primary->fb);
> >
> >         /* Update the base in the CRTC */
> >         armada_drm_crtc_update_regs(dcrtc, regs);
> > @@ -742,7 +742,7 @@ void armada_drm_crtc_plane_disable(struct armada_crtc *dcrtc,
> >          * primary plane.
> >          */
> >         if (plane->fb)
> > -               drm_framebuffer_unreference(plane->fb);
> > +               drm_framebuffer_put(plane->fb);
> >
> >         /* Power down the Y/U/V FIFOs */
> >         sram_para1 = CFG_PDWN16x66 | CFG_PDWN32x66;
> > @@ -1045,12 +1045,12 @@ static int armada_drm_crtc_page_flip(struct drm_crtc *crtc,
> >          * Ensure that we hold a reference on the new framebuffer.
> >          * This has to match the behaviour in mode_set.
> >          */
> > -       drm_framebuffer_reference(fb);
> > +       drm_framebuffer_get(fb);
> >
> >         ret = armada_drm_crtc_queue_frame_work(dcrtc, work);
> >         if (ret) {
> >                 /* Undo our reference above */
> > -               drm_framebuffer_unreference(fb);
> > +               drm_framebuffer_put(fb);
> >                 kfree(work);
> >                 return ret;
> >         }
> > diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
> > index 0b3227c..c993bcc 100644
> > --- a/drivers/gpu/drm/armada/armada_drv.c
> > +++ b/drivers/gpu/drm/armada/armada_drv.c
> > @@ -26,7 +26,7 @@ static void armada_drm_unref_work(struct work_struct *work)
> >         struct drm_framebuffer *fb;
> >
> >         while (kfifo_get(&priv->fb_unref, &fb))
> > -               drm_framebuffer_unreference(fb);
> > +               drm_framebuffer_put(fb);
> >  }
> >
> >  /* Must be called with dev->event_lock held */
> > diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
> > index edc4491..b411b60 100644
> > --- a/drivers/gpu/drm/armada/armada_overlay.c
> > +++ b/drivers/gpu/drm/armada/armada_overlay.c
> > @@ -177,7 +177,7 @@ armada_ovl_plane_update(struct drm_plane *plane, struct drm_crtc *crtc,
> >                  * Take a reference on the new framebuffer - we want to
> >                  * hold on to it while the hardware is displaying it.
> >                  */
> > -               drm_framebuffer_reference(fb);
> > +               drm_framebuffer_get(fb);
> >
> >                 if (plane->fb)
> >                         armada_ovl_retire_fb(dplane, plane->fb);
> > @@ -278,7 +278,7 @@ static int armada_ovl_plane_disable(struct drm_plane *plane,
> >
> >         fb = xchg(&dplane->old_fb, NULL);
> >         if (fb)
> > -               drm_framebuffer_unreference(fb);
> > +               drm_framebuffer_put(fb);
> >
> >         return 0;
> >  }
> > --
> > 2.7.4
> >

-- 
Sean Paul, Software Engineer, Google / Chromium OS

