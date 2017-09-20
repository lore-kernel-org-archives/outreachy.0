X-GM-THRID: 6466935626239311872
X-Received: by 10.176.82.27 with SMTP id i27mr3707431uaa.25.1505934123723;
        Wed, 20 Sep 2017 12:02:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.73 with SMTP id u70ls864442ioi.17.gmail; Wed, 20 Sep
 2017 12:02:02 -0700 (PDT)
X-Received: by 10.36.87.77 with SMTP id u74mr1732916ita.15.1505934122655;
        Wed, 20 Sep 2017 12:02:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505934122; cv=none;
        d=google.com; s=arc-20160816;
        b=aDhcWdozToGLhHcBaiJ939zTx6m1Niwxt0sEYyz1iF8R8n9R5hHTOYAawSzAjVefZy
         SBj+L6eNQSu6SP1XhS9eKwL4diJbvfCsvP2BmL2JCyZE0eJesDiyE/ctrQGI/6uPk4ID
         f0ehVn4yHGxn0/0QbCZale9DOdtSwD8Dz1dR90fqGVoZAHn9OcC68VaSMrXx3sqEv+qM
         rTDQMHms8ieU4gE2MyPYHfBnsdA/WivW8L49y+NALLrQsYu4NggO8oNxZ0aHHREMN310
         Wx3QfBUgXBCYtRq/rrQDFZfbIJ2oFbLCzg77qKoSpt/ofEywqKsaajQImUp25SsOQ6gc
         WnCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=RoBLbUzG4Z8w7WC6uxxDa+RBzqfXKB1d7aV0nJr7j/Y=;
        b=0gpX/aOXFOJmIIkrvmMUyOZi6tpbWT282EBf6RotY5pY6l1LemCDCmk93GhoD+86v7
         LWUnjDKU0Lefu7yMVNB66ES6G14f4OT9ekN0b2cprK46hWhvVqjWcKA+Y9Yf85YTi8GV
         GrYMzU7YQspBzrNzmdxbBKxCszxG3HIVJw68qQ5/PKUidqL0H1aVCeZ9qfxvZx3KvNeF
         4ME2EnyqkasxRexQ79j0wSR22gY2G2KcbBYzDttVwOK4d8UoRzkjKNwFokWXl7y968du
         /9qmdVj4gWmcbBcaOzxh7LvHd/S8aNo6oQFBtUaQuu/H0dyTYE87OsGgeYIU7gzDrE94
         grsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LOGLa260;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22b as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22b.google.com (mail-yw0-x22b.google.com. [2607:f8b0:4002:c05::22b])
        by gmr-mx.google.com with ESMTPS id b142si121777ywh.31.2017.09.20.12.02.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:02:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22b as permitted sender) client-ip=2607:f8b0:4002:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LOGLa260;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22b as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22b.google.com with SMTP id w9so2568314ywi.11
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RoBLbUzG4Z8w7WC6uxxDa+RBzqfXKB1d7aV0nJr7j/Y=;
        b=LOGLa260dL/jxUQxTKipUhqkPpeJs48Bhd2nVwJD23N9T5AqWxZGRTcm7aJHzwi6Td
         DsKH2rSpOsvXCre1xmUb6iXRImqIKPo+RUczVcs5ETa53mMfN34aP4HhR2nE0KJ1MfGk
         llbvzTcLikFm1EhmDT8hmBxNwdhukZep8j6eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RoBLbUzG4Z8w7WC6uxxDa+RBzqfXKB1d7aV0nJr7j/Y=;
        b=tRkAgWxdzt3D8L2CEu3722Jwcc1HkjO4A/9OoPxnh1QArXtRljwDUl2iZ4wVtIOjvx
         hraqvqe7eUjhooSsaeVCw9wCkf8vwgNmOCtzFBnnw+jLmhZkd8fyaAU5ST5IhBuGerMg
         vWI/QfmItlXKyAm9OA4SnCKP4LTqvNbe81XeZ6NFGNGTbp/BXY/dIGKxVvh4Jfx5pf/y
         1Amjz/QZOeDnfNSM8bMLbub0TB9rbw0H2uH33iZVREurAr0jjy+WwN6/FSV31kro4nZI
         Q0JFNWWxFZnxl3Qq/jmQqefcWEmx7jYJLI3YxMV+nAe6YZ7A2hrv+YXF44rct0z5Xr5d
         j2Ww==
X-Gm-Message-State: AHPjjUjdnO2uuJjZxn/ilk42DoG4SYYie68toes/xS2sZB6+TLn0DtAR
	x3lwhCSQ/Ul8kvUqmPb/bl5R1BhlPeY=
X-Received: by 10.129.135.68 with SMTP id x65mr4807073ywf.8.1505934122079;
        Wed, 20 Sep 2017 12:02:02 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com. [209.85.223.172])
        by smtp.gmail.com with ESMTPSA id j144sm992080ywb.43.2017.09.20.12.02.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:02:01 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id l15so5809406iol.8
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:02:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAyztNSxSVJlIxAMsgmFYGA6yqcuuOxYX6HUwUp4cBKvcHwd2gSelMtLgGwe5eLz/llt4XSuRw9irWR65rLprA=
X-Received: by 10.107.138.232 with SMTP id c101mr7899318ioj.97.1505934120629;
 Wed, 20 Sep 2017 12:02:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Wed, 20 Sep 2017 12:01:39 -0700 (PDT)
In-Reply-To: <e1df1b3375faa819029559b11c32e10501c5c5d6.1505932812.git.hamohammed.sa@gmail.com>
References: <cover.1505932812.git.hamohammed.sa@gmail.com> <e1df1b3375faa819029559b11c32e10501c5c5d6.1505932812.git.hamohammed.sa@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 20 Sep 2017 12:01:39 -0700
X-Gmail-Original-Message-ID: <CAOw6vbJbTvJRMpOfnLXFc8fkivV9ByHhWXRKmZTZE0o98OmL5Q@mail.gmail.com>
Message-ID: <CAOw6vbJbTvJRMpOfnLXFc8fkivV9ByHhWXRKmZTZE0o98OmL5Q@mail.gmail.com>
Subject: Re: [RESEND PATCH 2/2] drm/armada: Replace drm_framebuffer_reference/unreference()
 with _get/put()
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, Russell King <linux@armlinux.org.uk>, 
	David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 20, 2017 at 11:57 AM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch replace instances of drm_framebuffer_reference/unreference with
> *_get/put() suffixes, because get/put is shorter and consistent with the
> kernel use of *_get/put suffixes.
> This was done with the following Coccinelle script:
>
> @r1@
> expression e;
> @@
>
> (
> -drm_framebuffer_reference(e);
> +drm_framebuffer_get(e);
> |
> -drm_framebuffer_unreference(e);
> +drm_framebuffer_put(e);
> )
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/armada/armada_crtc.c    | 14 +++++++-------
>  drivers/gpu/drm/armada/armada_drv.c     |  2 +-
>  drivers/gpu/drm/armada/armada_overlay.c |  4 ++--
>  3 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
> index 381dfa1..2e065fa 100644
> --- a/drivers/gpu/drm/armada/armada_crtc.c
> +++ b/drivers/gpu/drm/armada/armada_crtc.c
> @@ -298,7 +298,7 @@ static void armada_drm_crtc_finish_fb(struct armada_crtc *dcrtc,
>
>         if (force) {
>                 /* Display is disabled, so just drop the old fb */
> -               drm_framebuffer_unreference(fb);
> +               drm_framebuffer_put(fb);
>                 return;
>         }
>
> @@ -321,7 +321,7 @@ static void armada_drm_crtc_finish_fb(struct armada_crtc *dcrtc,
>          * the best.  The worst that will happen is the buffer gets
>          * reused before it has finished being displayed.
>          */
> -       drm_framebuffer_unreference(fb);
> +       drm_framebuffer_put(fb);
>  }
>
>  static void armada_drm_vblank_off(struct armada_crtc *dcrtc)
> @@ -577,7 +577,7 @@ static int armada_drm_crtc_mode_set(struct drm_crtc *crtc,
>         unsigned i;
>         bool interlaced;
>
> -       drm_framebuffer_reference(crtc->primary->fb);
> +       drm_framebuffer_get(crtc->primary->fb);
>
>         interlaced = !!(adj->flags & DRM_MODE_FLAG_INTERLACE);
>
> @@ -718,7 +718,7 @@ static int armada_drm_crtc_mode_set_base(struct drm_crtc *crtc, int x, int y,
>                                    MAX_SCHEDULE_TIMEOUT);
>
>         /* Take a reference to the new fb as we're using it */
> -       drm_framebuffer_reference(crtc->primary->fb);
> +       drm_framebuffer_get(crtc->primary->fb);
>
>         /* Update the base in the CRTC */
>         armada_drm_crtc_update_regs(dcrtc, regs);
> @@ -742,7 +742,7 @@ void armada_drm_crtc_plane_disable(struct armada_crtc *dcrtc,
>          * primary plane.
>          */
>         if (plane->fb)
> -               drm_framebuffer_unreference(plane->fb);
> +               drm_framebuffer_put(plane->fb);
>
>         /* Power down the Y/U/V FIFOs */
>         sram_para1 = CFG_PDWN16x66 | CFG_PDWN32x66;
> @@ -1045,12 +1045,12 @@ static int armada_drm_crtc_page_flip(struct drm_crtc *crtc,
>          * Ensure that we hold a reference on the new framebuffer.
>          * This has to match the behaviour in mode_set.
>          */
> -       drm_framebuffer_reference(fb);
> +       drm_framebuffer_get(fb);
>
>         ret = armada_drm_crtc_queue_frame_work(dcrtc, work);
>         if (ret) {
>                 /* Undo our reference above */
> -               drm_framebuffer_unreference(fb);
> +               drm_framebuffer_put(fb);
>                 kfree(work);
>                 return ret;
>         }
> diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
> index 0b3227c..c993bcc 100644
> --- a/drivers/gpu/drm/armada/armada_drv.c
> +++ b/drivers/gpu/drm/armada/armada_drv.c
> @@ -26,7 +26,7 @@ static void armada_drm_unref_work(struct work_struct *work)
>         struct drm_framebuffer *fb;
>
>         while (kfifo_get(&priv->fb_unref, &fb))
> -               drm_framebuffer_unreference(fb);
> +               drm_framebuffer_put(fb);
>  }
>
>  /* Must be called with dev->event_lock held */
> diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
> index edc4491..b411b60 100644
> --- a/drivers/gpu/drm/armada/armada_overlay.c
> +++ b/drivers/gpu/drm/armada/armada_overlay.c
> @@ -177,7 +177,7 @@ armada_ovl_plane_update(struct drm_plane *plane, struct drm_crtc *crtc,
>                  * Take a reference on the new framebuffer - we want to
>                  * hold on to it while the hardware is displaying it.
>                  */
> -               drm_framebuffer_reference(fb);
> +               drm_framebuffer_get(fb);
>
>                 if (plane->fb)
>                         armada_ovl_retire_fb(dplane, plane->fb);
> @@ -278,7 +278,7 @@ static int armada_ovl_plane_disable(struct drm_plane *plane,
>
>         fb = xchg(&dplane->old_fb, NULL);
>         if (fb)
> -               drm_framebuffer_unreference(fb);
> +               drm_framebuffer_put(fb);
>
>         return 0;
>  }
> --
> 2.7.4
>

