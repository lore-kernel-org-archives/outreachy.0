X-GM-THRID: 6470825285154504704
X-Received: by 10.223.172.72 with SMTP id v66mr210880wrc.16.1507906302516;
        Fri, 13 Oct 2017 07:51:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.68 with SMTP id t65ls286623wmt.8.gmail; Fri, 13 Oct 2017
 07:51:41 -0700 (PDT)
X-Received: by 10.28.158.129 with SMTP id h123mr200426wme.17.1507906301833;
        Fri, 13 Oct 2017 07:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507906301; cv=none;
        d=google.com; s=arc-20160816;
        b=BWwD8lbTH4UGYZFdEFQE3CexzH4oJw+3HOjCsdU33s5UGiLNCfjWktRhL5OH6rSStH
         C3jI4CrxYqW22DJuRgujPS2PIyQbk2l3tnzFZ7T+oRUkCUnXMl/eYplM/4ZBDuHibh+0
         M84vMZ9a3Q+jof7AYWaxeUPb4Zb6gBCr5KrZwcxkAiFS148fp5w6WOGsAHkInueoBOX7
         zqh+Lun94xHT9n1sanrkQDOE73qnm2dS3NtOpKmtMso0easp/TI3TorC/AyWYc4Snwt9
         zHgZ5AjM93a87Qnam/h0yY9qXZZFlh5Xd7Tu38QFhM1opHu2X4X9p6SMVvTfwy9T5zVz
         kqDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=NwYa0wo/iqRc+Tgsbe+bfXX4GU7Vn0cc4WleE7ANJfo=;
        b=GRSf7yCry3k3Er4uLCp345Ik+2zVLoChinyx8D1zJn13N03kCLk/Wuq6dsoyTOxkXu
         9ELKC0QiCrB0AAMPOWzvHoKA1pL48FqvxKTAVLeagTBnnwEVCXx/BYEyYNqykTqzZe2U
         NCowpUsL5Ct+zJ1Vfl85sNTnNb+NiLcumju5UE7FIxYbt94ClYAYBRxJbJt7Cw7BWpQi
         OPuQgc4CGLAZgRarhW5xcIyXKri4PpzbRDJyG0RDIHVelSsY+pRm7SCwy3uUkLU84X7C
         JdWOnuVKcG5wFNPVvE9DlrnYHC7Hpg1EB3jMr86Jfk4lAJZXQ9bqvR4kfSAvnJ73FUWi
         XR8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=dnXmpRWE;
       spf=neutral (google.com: 2a00:1450:400c:c09::230 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id r15si77850wrc.1.2017.10.13.07.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:51:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::230 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=dnXmpRWE;
       spf=neutral (google.com: 2a00:1450:400c:c09::230 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x230.google.com with SMTP id b189so21875359wmd.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=NwYa0wo/iqRc+Tgsbe+bfXX4GU7Vn0cc4WleE7ANJfo=;
        b=dnXmpRWEJw6qVRzPdXhIQFr1mUMfnaAMRvhqlPh/1M5dUS3gEN4wzROzTlMpWw/x5a
         pRSxAzKPpw7rUAUypmpitrpG+eJM1kfRykDfZ/x1G+fsXBa8TDB1QmB+vP+05uCt5LU3
         KKQDOhrMeLaAwj/iSrzUw4ZtxTVVjTbok56O8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=NwYa0wo/iqRc+Tgsbe+bfXX4GU7Vn0cc4WleE7ANJfo=;
        b=E+xPfPEJ2GssC781vi+TpzUNvPqlG7i/OVzUJx0ojNsdgD8BI3z0Nmjqk6ZQdENaJQ
         PwGWQeruNtIhPlvMNWbPDh/foO0vbrq51bk4ZZ4r95EvcJE9iSBVK/Rr5060k25WM9EL
         b1pJJ31GAhwEDIbWYfoZKSMV+/8h890cDpCIi5pm1+U6wojaEpv+dyXnPKbKR3YanxY5
         amSE184ESxJP5hfhqJn+WjLxMBnDpZjY9q6tO6RzQ7M98gRyCkIiq6LFVb4F28dd38QT
         ktgCt+6R6mI2O91cmj+7RIwVteGUtTB7Y2yjPfb4ITDFa3NygpVPii+xZ8qH0nubROnE
         1ZPw==
X-Gm-Message-State: AMCzsaVgt2FUmStedvemceqrfex9vp+niu+8rA612Ta4qjwgzwaguJxa
	OCJEEj0cBH/3QNdbp0G8Vpravw==
X-Google-Smtp-Source: AOwi7QAwOBM8IXYiOWtY27SKI2GMvIF+5+2yAJcp8yZkrM1BYysWLpGKiJwt3cK1W1tqXuF+xl9xMg==
X-Received: by 10.80.144.104 with SMTP id z37mr2486685edz.23.1507906301422;
        Fri, 13 Oct 2017 07:51:41 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id f46sm1104108edd.80.2017.10.13.07.51.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Oct 2017 07:51:40 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 13 Oct 2017 16:51:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>, jani.nikula@linux.intel.com,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4] drm/i915: Replace
 *_reference/unreference() or *_ref/unref with _get/put()
Message-ID: <20171013145138.uaydq2kpythwzzmx@phenom.ffwll.local>
Mail-Followup-To: Harsha Sharma <harshasharmaiitr@gmail.com>,
	Sean Paul <seanpaul@chromium.org>, jani.nikula@linux.intel.com,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20171009120643.11953-1-harshasharmaiitr@gmail.com>
 <CANMOCy1U+buz2UtAvqYOURsJmvL3n3HfAYQ-Z0ST1ZgSB2U4dA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANMOCy1U+buz2UtAvqYOURsJmvL3n3HfAYQ-Z0ST1ZgSB2U4dA@mail.gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Fri, Oct 13, 2017 at 08:03:59PM +0530, Harsha Sharma wrote:
> On Mon, Oct 9, 2017 at 5:36 PM, Harsha Sharma
> <harshasharmaiitr@gmail.com> wrote:
> > Replace instances of drm_framebuffer_reference/unreference() with
> > *_get/put() suffixes and drm_dev_unref with *_put() suffix
> > because get/put is shorter and consistent with the
> > kernel use of *_get/put suffixes.
> > Done with following coccinelle semantic patch
> >
> > @@
> > expression ex;
> > @@
> >
> > (
> > -drm_framebuffer_unreference(ex);
> > +drm_framebuffer_put(ex);
> > |
> > -drm_dev_unref(ex);
> > +drm_dev_put(ex);
> > |
> > -drm_framebuffer_reference(ex);
> > +drm_framebuffer_get(ex);
> > )
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> > Changes in v4:
> >  -change one instance of *_put to *_get
> > Changes in v3:
> >  -Removed changes in selftests
> > Changes in v2:
> >  -Added cocinelle patch in log message
> >  -cc to all driver-specific mailing lists
> >
> >  drivers/gpu/drm/i915/i915_pci.c      |  2 +-
> >  drivers/gpu/drm/i915/intel_display.c | 10 +++++-----
> >  drivers/gpu/drm/i915/intel_fbdev.c   |  4 ++--
> >  3 files changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 09d97e0990b7..2f106cca46b4 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
> >         struct drm_device *dev = pci_get_drvdata(pdev);
> >
> >         i915_driver_unload(dev);
> > -       drm_dev_unref(dev);
> > +       drm_dev_put(dev);
> >  }
> >
> >  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
> > index 64f7b51ed97c..cb62f7e5d59a 100644
> > --- a/drivers/gpu/drm/i915/intel_display.c
> > +++ b/drivers/gpu/drm/i915/intel_display.c
> > @@ -2856,7 +2856,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> >
> >                 if (intel_plane_ggtt_offset(state) == plane_config->base) {
> >                         fb = c->primary->fb;
> > -                       drm_framebuffer_reference(fb);
> > +                       drm_framebuffer_get(fb);
> >                         goto valid_fb;
> >                 }
> >         }
> > @@ -2887,7 +2887,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> >                           intel_crtc->pipe, PTR_ERR(intel_state->vma));
> >
> >                 intel_state->vma = NULL;
> > -               drm_framebuffer_unreference(fb);
> > +               drm_framebuffer_put(fb);
> >                 return;
> >         }
> >
> > @@ -2908,7 +2908,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> >         if (i915_gem_object_is_tiled(obj))
> >                 dev_priv->preserve_bios_swizzle = true;
> >
> > -       drm_framebuffer_reference(fb);
> > +       drm_framebuffer_get(fb);
> >         primary->fb = primary->state->fb = fb;
> >         primary->crtc = primary->state->crtc = &intel_crtc->base;
> >
> > @@ -9847,7 +9847,7 @@ mode_fits_in_fbdev(struct drm_device *dev,
> >         if (obj->base.size < mode->vdisplay * fb->pitches[0])
> >                 return NULL;
> >
> > -       drm_framebuffer_reference(fb);
> > +       drm_framebuffer_get(fb);
> >         return fb;
> >  #else
> >         return NULL;
> > @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
> >         if (ret)
> >                 goto fail;
> >
> > -       drm_framebuffer_unreference(fb);
> > +       drm_framebuffer_put(fb);
> >
> >         ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
> >         if (ret)
> > diff --git a/drivers/gpu/drm/i915/intel_fbdev.c b/drivers/gpu/drm/i915/intel_fbdev.c
> > index 262e75c00dd2..e34334a1fbf9 100644
> > --- a/drivers/gpu/drm/i915/intel_fbdev.c
> > +++ b/drivers/gpu/drm/i915/intel_fbdev.c
> > @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
> >                               " releasing it\n",
> >                               intel_fb->base.width, intel_fb->base.height,
> >                               sizes->fb_width, sizes->fb_height);
> > -               drm_framebuffer_unreference(&intel_fb->base);
> > +               drm_framebuffer_put(&intel_fb->base);
> >                 intel_fb = ifbdev->fb = NULL;
> >         }
> >         if (!intel_fb || WARN_ON(!intel_fb->obj)) {
> > @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> >         ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
> >         ifbdev->fb = fb;
> >
> > -       drm_framebuffer_reference(&ifbdev->fb->base);
> > +       drm_framebuffer_get(&ifbdev->fb->base);
> >
> >         /* Final pass to check if any active pipes don't have fbs */
> >         for_each_crtc(dev, crtc) {
> >
> I hope that this one can be merged.
> Please let me know if any change is required.
> Thanks for your time.

Sorry, fell through the cracks.

Applied now to drm-intel-next-queued, thanks for your patch.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

