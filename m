X-GM-THRID: 6470825285154504704
X-Received: by 10.13.225.151 with SMTP id k145mr788822ywe.233.1507905240773;
        Fri, 13 Oct 2017 07:34:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.249.1 with SMTP id j1ls536570ywf.39.gmail; Fri, 13 Oct 2017
 07:33:59 -0700 (PDT)
X-Received: by 10.13.226.5 with SMTP id l5mr773021ywe.44.1507905239879;
        Fri, 13 Oct 2017 07:33:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507905239; cv=none;
        d=google.com; s=arc-20160816;
        b=A6hVchCW0GcmIoCc8ABXeajNPtEL/Y8WP5tmrLVA8Dc2SwQdiso7P3tOzav57iFVvm
         zA5e+38I/vmoVEaBhf1RBHNl0nVZF0DeOEq40xjdrw+tLmdO6xtw810icJOF4acAv0TB
         YDx9GKcqDGSn2lB427DbD/ImKIPBUmOGE7NfyHK1Kau53Vp3f0r3PSn6PTa6jRo6cxpI
         ZIDDo84bODIumVlbHKTX/M96pBBAjdQgSd+8ZcJXUDnqRlDa1lHYdz9G42SC6HHB1QRU
         6QjnGJtQkfcIiyuXY6I7AKvIwcC4Cp46u7jxvB898sFJ1zr5F0dYPH4AqDQXWQIRuHDc
         4YLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=CbKu+7qWDEMGM9r0QlTFgsyFWT3tYbDRhk+Hgo6EEHo=;
        b=ZCPPSO8/Mnm/EuKbV/9Se94E+v7jLmOQSWlI89r3xx8yT3bekY2EMLOcjo04HOKafO
         VpV0U77++Iii/s2S7/NJhhD4vDv4k0SpMWDBY+CGkXF9FfT9QIwM8Cn+MSKSEpBDcd9l
         tTowRdiDxxRgyCctKWGJfpCbybevETcBuRNakW8hAS6gbazTfdLFX9GHulxbTOylLRS3
         n+xN52XzlQyThgve5I2tVAbPX3zY+4ETWZgJlXa0iiFnOyIz0VmZ6cNLWyn8JRxanfYJ
         +tPV1TcvbepTPnGdflxiNxVHjP9lW4hqFrFgymwWDWL/AVL1Qe1lzOznyJ0gcQPhQb0t
         w0BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mMbta6Eh;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::234 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x234.google.com (mail-ua0-x234.google.com. [2607:f8b0:400c:c08::234])
        by gmr-mx.google.com with ESMTPS id g2si45118ywa.2.2017.10.13.07.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::234 as permitted sender) client-ip=2607:f8b0:400c:c08::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mMbta6Eh;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::234 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x234.google.com with SMTP id b11so5428580uae.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CbKu+7qWDEMGM9r0QlTFgsyFWT3tYbDRhk+Hgo6EEHo=;
        b=mMbta6Eh/mL1oEybk1TIWzPqPySmKGIm+749yA4MuEQasG6x/VoB0Yj3bvY00UGDgT
         lSHf9NAi/ofmRWpZM0Yrp7HZYNQ2um40kGjYgKLdRxECx5Z6li7i31iL8J+wbnw80Dzd
         LO5vDWJnu2vK/HNGLb9fFzq3buHXr6LsTZbPCukDEuoZnSBRLQgu2cwRFjoSc/ROdxl2
         goj6CzkM16IEoqrfBudhCfoU1DHNsffhUVell1hzoRkN5isrJ5fpBUNdDYaxjwpvq9rg
         kLuIXeC2+4g7oTw/xOXx86PS8fQ1f+MSi7uiLNOzM+xPDJHfpckp/bX4EL0rbIoW3IE5
         PWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CbKu+7qWDEMGM9r0QlTFgsyFWT3tYbDRhk+Hgo6EEHo=;
        b=cDxeAycFz2XT+LsrhY4S40v4htG0IUh06Q533+ZEcjzNsNFd6UBJBnHO8EyxcY5R4+
         Ya4DocNzoBtqsIf7vMYdgxthC27nKt9JahZV3CWXlf7xAF6kZq1SjXirdCMR5BZcyqEP
         RFC3FmL3c9DfKTjx+EnXTeIkUH9S6Q2tgGVAhoe9+KuKywcw5d2pOtvqBo682Ff6vn3w
         moA3llzhnTkjLhxdtHBlb/iuYpUABGiu7SbaZAP6tldiIAqT0X7RLLstErFCZhyApUo6
         qpDWjchcHouV2wiLCWYyxPV79IgwHpoZgkuJxJBIjYx5BC7TYwwBL8xQoIHXXVDr7HjO
         UDmw==
X-Gm-Message-State: AMCzsaU+TLGTtXnBgdEYf0h6wYKBiRVA44fJpRhpxUqZswnLVyVG3YFO
	fy1dhmSjyPCo+HxrN0rr/LMmUlKTrmfPcIxtDSg=
X-Google-Smtp-Source: ABhQp+Tt1kt1G3uZjpypsFngRMBRftEyplIJ58NUIm+i2G33wtvtzAjCPkI8wYOJ6iNGBHs7GwVuYPAgFvR/mrD5F/E=
X-Received: by 10.176.86.70 with SMTP id z6mr1378701uaa.103.1507905239545;
 Fri, 13 Oct 2017 07:33:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.70 with HTTP; Fri, 13 Oct 2017 07:33:59 -0700 (PDT)
In-Reply-To: <20171009120643.11953-1-harshasharmaiitr@gmail.com>
References: <20171009120643.11953-1-harshasharmaiitr@gmail.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Fri, 13 Oct 2017 20:03:59 +0530
Message-ID: <CANMOCy1U+buz2UtAvqYOURsJmvL3n3HfAYQ-Z0ST1ZgSB2U4dA@mail.gmail.com>
Subject: Re: [PATCH v4] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Sean Paul <seanpaul@chromium.org>, 
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Harsha Sharma <harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 9, 2017 at 5:36 PM, Harsha Sharma
<harshasharmaiitr@gmail.com> wrote:
> Replace instances of drm_framebuffer_reference/unreference() with
> *_get/put() suffixes and drm_dev_unref with *_put() suffix
> because get/put is shorter and consistent with the
> kernel use of *_get/put suffixes.
> Done with following coccinelle semantic patch
>
> @@
> expression ex;
> @@
>
> (
> -drm_framebuffer_unreference(ex);
> +drm_framebuffer_put(ex);
> |
> -drm_dev_unref(ex);
> +drm_dev_put(ex);
> |
> -drm_framebuffer_reference(ex);
> +drm_framebuffer_get(ex);
> )
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v4:
>  -change one instance of *_put to *_get
> Changes in v3:
>  -Removed changes in selftests
> Changes in v2:
>  -Added cocinelle patch in log message
>  -cc to all driver-specific mailing lists
>
>  drivers/gpu/drm/i915/i915_pci.c      |  2 +-
>  drivers/gpu/drm/i915/intel_display.c | 10 +++++-----
>  drivers/gpu/drm/i915/intel_fbdev.c   |  4 ++--
>  3 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 09d97e0990b7..2f106cca46b4 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>         struct drm_device *dev = pci_get_drvdata(pdev);
>
>         i915_driver_unload(dev);
> -       drm_dev_unref(dev);
> +       drm_dev_put(dev);
>  }
>
>  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
> index 64f7b51ed97c..cb62f7e5d59a 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -2856,7 +2856,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>
>                 if (intel_plane_ggtt_offset(state) == plane_config->base) {
>                         fb = c->primary->fb;
> -                       drm_framebuffer_reference(fb);
> +                       drm_framebuffer_get(fb);
>                         goto valid_fb;
>                 }
>         }
> @@ -2887,7 +2887,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>                           intel_crtc->pipe, PTR_ERR(intel_state->vma));
>
>                 intel_state->vma = NULL;
> -               drm_framebuffer_unreference(fb);
> +               drm_framebuffer_put(fb);
>                 return;
>         }
>
> @@ -2908,7 +2908,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>         if (i915_gem_object_is_tiled(obj))
>                 dev_priv->preserve_bios_swizzle = true;
>
> -       drm_framebuffer_reference(fb);
> +       drm_framebuffer_get(fb);
>         primary->fb = primary->state->fb = fb;
>         primary->crtc = primary->state->crtc = &intel_crtc->base;
>
> @@ -9847,7 +9847,7 @@ mode_fits_in_fbdev(struct drm_device *dev,
>         if (obj->base.size < mode->vdisplay * fb->pitches[0])
>                 return NULL;
>
> -       drm_framebuffer_reference(fb);
> +       drm_framebuffer_get(fb);
>         return fb;
>  #else
>         return NULL;
> @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
>         if (ret)
>                 goto fail;
>
> -       drm_framebuffer_unreference(fb);
> +       drm_framebuffer_put(fb);
>
>         ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
>         if (ret)
> diff --git a/drivers/gpu/drm/i915/intel_fbdev.c b/drivers/gpu/drm/i915/intel_fbdev.c
> index 262e75c00dd2..e34334a1fbf9 100644
> --- a/drivers/gpu/drm/i915/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/intel_fbdev.c
> @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>                               " releasing it\n",
>                               intel_fb->base.width, intel_fb->base.height,
>                               sizes->fb_width, sizes->fb_height);
> -               drm_framebuffer_unreference(&intel_fb->base);
> +               drm_framebuffer_put(&intel_fb->base);
>                 intel_fb = ifbdev->fb = NULL;
>         }
>         if (!intel_fb || WARN_ON(!intel_fb->obj)) {
> @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
>         ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
>         ifbdev->fb = fb;
>
> -       drm_framebuffer_reference(&ifbdev->fb->base);
> +       drm_framebuffer_get(&ifbdev->fb->base);
>
>         /* Final pass to check if any active pipes don't have fbs */
>         for_each_crtc(dev, crtc) {
>
I hope that this one can be merged.
Please let me know if any change is required.
Thanks for your time.

Regards,
Harsha Sharma

--
> 2.11.0
>

