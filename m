X-GM-THRID: 6470825285154504704
X-Received: by 10.46.57.19 with SMTP id g19mr82214lja.3.1507906680627;
        Fri, 13 Oct 2017 07:58:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.14 with SMTP id g14ls642547ljb.0.gmail; Fri, 13 Oct 2017
 07:57:59 -0700 (PDT)
X-Received: by 10.25.41.149 with SMTP id p143mr62990lfp.5.1507906679384;
        Fri, 13 Oct 2017 07:57:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507906679; cv=none;
        d=google.com; s=arc-20160816;
        b=lm+pshhu08+RYNq4GEqk72I46NnsK7z2fFpYCalvoUZB19YJuFOVaLOXhIaEf5h44z
         dOWQYhBcY3XPw/FVbr3K0ONIwH54k6+LrVpDpqJ5Rfl8WTK9BCaVaXmPtdFOJBFGRniU
         HEqBy/ChL/vwFn2dWtpx8fbhKVoGx/p1wHVEdNk9VAd07ckMzG7OzfL8ERlrJayBKYi1
         IvJyhe6mlk96c2QeAjMzJlwZTrxbPCyGpbk7zP1r91bwOoKv4jiyym6NUmT7kXyrQ113
         EB4C279/PkqTnBsuP3wtj4gFXgEgAOqbmtJp/5i+wQMLBSMzggABBWXWnJ8BF/6djFnI
         MbOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=azjMNNb5UXqWHV0lrxqR/HyNumUz/wzXk1OEDAq58U4=;
        b=FxtyYxvniR1Nhwl7KoGQfNDMolopT/N+vOSBFO1IirJOmxC1FQsiskJUnAH4oOtzlg
         LpKjL3zSSjWHQkrIQXtGDdpqqXTGzElhSGrCzTnvuUYbzCKDt7RFXO6tkYb80xL1RJ4j
         1G4mOY77DUl5SJuG9nfzDoeH4IyBYkLM706Wz+xvi06vDdYEt2jj4nOooWh7Hh/aVJ8P
         UYS4Q3Kzk92DC/KUVLd6/Fo40MP/7lKhBpdmHMzGgA6ePoD7WKUwSbFBzyk4z4d6Pj5Z
         zVnWx3FmWesMY6t368aFWXeHOfSd1hvZN5M/rQbIcXCVVbJyrNtHwxHqGoyPAKv1wRTY
         dhyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=F3/6Azbk;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w29si75258lfc.1.2017.10.13.07.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:57:59 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=F3/6Azbk;
       spf=neutral (google.com: 2a00:1450:400c:c09::244 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x244.google.com with SMTP id u138so22468066wmu.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=azjMNNb5UXqWHV0lrxqR/HyNumUz/wzXk1OEDAq58U4=;
        b=F3/6AzbkRuQNBI/iRRao8BnNMEJugh8r3qy+31vwpCaIFTkL3+/ERokQoSnw1rJt0D
         LQduSgg0ruKEIfY98dbTG44GGKtYiUIjv9ttZdKBqMd6lmkdMbeuq6btsDYyaSrRwYJw
         8FnZoLdW2r61xa+wK2niFq0/FTRyMmTu2x2vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=azjMNNb5UXqWHV0lrxqR/HyNumUz/wzXk1OEDAq58U4=;
        b=uJkzDESUwYIHMc1EvTU3fHv9ANlyEJtOjTL+7axQ+KxfIyXaNf7E92hP5IyJniprGn
         N+rsjUaVxWi5QXwD49LLU+hmQO/B1Ny6mS5t3g6sUxTbXkHRFypKvCierodk5DQ+KHmQ
         oOdhLuWFRYHXuJYVKy7u1jwT23ENZQ9p22V5wrX11bvmbjw6ORtOmKS8mcU5Zvd5fvpD
         hVSnQmPIQbV5eZWzKh1fVC2oFEgFI3k56g8jrGX6/V5rmODi3lbMVauX6QuWb0ACcV9C
         kChohxBHkmB75aASwLH6VS3/tbe4Vj94nT2WEi4E5iOHJr9P5QN2RUuSy60cYxfrnbF+
         uVfg==
X-Gm-Message-State: AMCzsaVzfNW3H/vH3WVRRyYXDQsGn0Ey29fvcZMcJID6hCoa1iqJXl79
	qg3FFnjfp9TtJ0cck+XnojTaRA==
X-Google-Smtp-Source: AOwi7QBvoZhWEyjBw/kTPojoNqGj3QzOwiUb565Syea1Tooii0JnCSVsdHwliIKFW9ahLXQeTkhheQ==
X-Received: by 10.80.170.46 with SMTP id o43mr2629237edc.40.1507906678473;
        Fri, 13 Oct 2017 07:57:58 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id w51sm1053397edd.60.2017.10.13.07.57.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Oct 2017 07:57:57 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 13 Oct 2017 16:57:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>, jani.nikula@linux.intel.com,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4] drm/i915: Replace
 *_reference/unreference() or *_ref/unref with _get/put()
Message-ID: <20171013145755.uk4ewjqammqtxify@phenom.ffwll.local>
Mail-Followup-To: Harsha Sharma <harshasharmaiitr@gmail.com>,
	Sean Paul <seanpaul@chromium.org>, jani.nikula@linux.intel.com,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20171009120643.11953-1-harshasharmaiitr@gmail.com>
 <CANMOCy1U+buz2UtAvqYOURsJmvL3n3HfAYQ-Z0ST1ZgSB2U4dA@mail.gmail.com>
 <20171013145138.uaydq2kpythwzzmx@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171013145138.uaydq2kpythwzzmx@phenom.ffwll.local>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Oct 13, 2017 at 04:51:38PM +0200, Daniel Vetter wrote:
> On Fri, Oct 13, 2017 at 08:03:59PM +0530, Harsha Sharma wrote:
> > On Mon, Oct 9, 2017 at 5:36 PM, Harsha Sharma
> > <harshasharmaiitr@gmail.com> wrote:
> > > Replace instances of drm_framebuffer_reference/unreference() with
> > > *_get/put() suffixes and drm_dev_unref with *_put() suffix
> > > because get/put is shorter and consistent with the
> > > kernel use of *_get/put suffixes.
> > > Done with following coccinelle semantic patch
> > >
> > > @@
> > > expression ex;
> > > @@
> > >
> > > (
> > > -drm_framebuffer_unreference(ex);
> > > +drm_framebuffer_put(ex);
> > > |
> > > -drm_dev_unref(ex);
> > > +drm_dev_put(ex);
> > > |
> > > -drm_framebuffer_reference(ex);
> > > +drm_framebuffer_get(ex);
> > > )
> > >
> > > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > > ---
> > > Changes in v4:
> > >  -change one instance of *_put to *_get
> > > Changes in v3:
> > >  -Removed changes in selftests
> > > Changes in v2:
> > >  -Added cocinelle patch in log message
> > >  -cc to all driver-specific mailing lists
> > >
> > >  drivers/gpu/drm/i915/i915_pci.c      |  2 +-
> > >  drivers/gpu/drm/i915/intel_display.c | 10 +++++-----
> > >  drivers/gpu/drm/i915/intel_fbdev.c   |  4 ++--
> > >  3 files changed, 8 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > > index 09d97e0990b7..2f106cca46b4 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
> > >         struct drm_device *dev = pci_get_drvdata(pdev);
> > >
> > >         i915_driver_unload(dev);
> > > -       drm_dev_unref(dev);
> > > +       drm_dev_put(dev);
> > >  }
> > >
> > >  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > > diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
> > > index 64f7b51ed97c..cb62f7e5d59a 100644
> > > --- a/drivers/gpu/drm/i915/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/intel_display.c
> > > @@ -2856,7 +2856,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> > >
> > >                 if (intel_plane_ggtt_offset(state) == plane_config->base) {
> > >                         fb = c->primary->fb;
> > > -                       drm_framebuffer_reference(fb);
> > > +                       drm_framebuffer_get(fb);
> > >                         goto valid_fb;
> > >                 }
> > >         }
> > > @@ -2887,7 +2887,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> > >                           intel_crtc->pipe, PTR_ERR(intel_state->vma));
> > >
> > >                 intel_state->vma = NULL;
> > > -               drm_framebuffer_unreference(fb);
> > > +               drm_framebuffer_put(fb);
> > >                 return;
> > >         }
> > >
> > > @@ -2908,7 +2908,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> > >         if (i915_gem_object_is_tiled(obj))
> > >                 dev_priv->preserve_bios_swizzle = true;
> > >
> > > -       drm_framebuffer_reference(fb);
> > > +       drm_framebuffer_get(fb);
> > >         primary->fb = primary->state->fb = fb;
> > >         primary->crtc = primary->state->crtc = &intel_crtc->base;
> > >
> > > @@ -9847,7 +9847,7 @@ mode_fits_in_fbdev(struct drm_device *dev,
> > >         if (obj->base.size < mode->vdisplay * fb->pitches[0])
> > >                 return NULL;
> > >
> > > -       drm_framebuffer_reference(fb);
> > > +       drm_framebuffer_get(fb);
> > >         return fb;
> > >  #else
> > >         return NULL;
> > > @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
> > >         if (ret)
> > >                 goto fail;
> > >
> > > -       drm_framebuffer_unreference(fb);
> > > +       drm_framebuffer_put(fb);
> > >
> > >         ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
> > >         if (ret)
> > > diff --git a/drivers/gpu/drm/i915/intel_fbdev.c b/drivers/gpu/drm/i915/intel_fbdev.c
> > > index 262e75c00dd2..e34334a1fbf9 100644
> > > --- a/drivers/gpu/drm/i915/intel_fbdev.c
> > > +++ b/drivers/gpu/drm/i915/intel_fbdev.c
> > > @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
> > >                               " releasing it\n",
> > >                               intel_fb->base.width, intel_fb->base.height,
> > >                               sizes->fb_width, sizes->fb_height);
> > > -               drm_framebuffer_unreference(&intel_fb->base);
> > > +               drm_framebuffer_put(&intel_fb->base);
> > >                 intel_fb = ifbdev->fb = NULL;
> > >         }
> > >         if (!intel_fb || WARN_ON(!intel_fb->obj)) {
> > > @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> > >         ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
> > >         ifbdev->fb = fb;
> > >
> > > -       drm_framebuffer_reference(&ifbdev->fb->base);
> > > +       drm_framebuffer_get(&ifbdev->fb->base);
> > >
> > >         /* Final pass to check if any active pipes don't have fbs */
> > >         for_each_crtc(dev, crtc) {
> > >
> > I hope that this one can be merged.
> > Please let me know if any change is required.
> > Thanks for your time.
> 
> Sorry, fell through the cracks.
> 
> Applied now to drm-intel-next-queued, thanks for your patch.

Ok just realized that it doesn't apply on plain drm-intel-next-queued
since that tree doesn't yet have the drm_dev_put function. I've taken that
part out of your patch to unblock it.

Can you pls rebase the remaining parts onto drm-tip from

https://cgit.freedesktop.org/drm/drm-tip

and send a new patch for just the drm_dev_put change? I asked the
drm-intel maintainers to do the backmerge to make sure I can apply this
next week.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

