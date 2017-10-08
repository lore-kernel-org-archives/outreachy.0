X-GM-THRID: 6470825285154504704
X-Received: by 10.176.22.66 with SMTP id l2mr1410169uae.74.1507467471275;
        Sun, 08 Oct 2017 05:57:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.86.69 with SMTP id z5ls642932uaa.6.gmail; Sun, 08 Oct 2017
 05:57:50 -0700 (PDT)
X-Received: by 10.176.8.22 with SMTP id a22mr1396716uaf.111.1507467470409;
        Sun, 08 Oct 2017 05:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507467470; cv=none;
        d=google.com; s=arc-20160816;
        b=OIYFX3xgLm6FofP8QIp4iUVk9q32ABaB9mmc7/8PsiKBIyhLEVcnGxEQW0oPR8iFmR
         ncKFy4ZP5mR8JymjfkYSDbmRKKDX+mP71j9n566Zhsxt7FKgodCNegmb414tO2GyFwAi
         AnK53Z8ojiuAtuRXBsaY9vCpM6dHj1k3MqFmbA5QOEBiBn8BjQQk4CshhfjzjKGEbtQc
         yELQsTAY2UIalnTVWkoiKpR+EJm4znBxX/A6ZJoJFF8xscNYMPB7tQ6b7s38FDaNkxCq
         m6U1ik8fPUlH3xFUtia1RpSegCMlOxuC1JiNG+HzaIikWgstYyFwrS82qh4RgSgWCZ32
         QloA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=BcOZayz6bEH1sZroofFq62L838AcNuj1/RV/wnT7JPE=;
        b=t+3gsMxN/BsGorzqZ8a6rn9b4ra/Pdfj/cz6g/xWT4iM6gwo4phiqlPrKp/J2tSLNk
         rjcwvGK14mq4dZsjjeMWMuZypQ4Acki5jbQ8nX2FNToecBMJU65dfaxm4IA2nR/Mgff8
         YOVKZj5XX3pup4Z9ZEujmxhpleNkChWrxCDEYTx0Wz5P+WtJ4qQvVsL/wd7T4EheUr0h
         NFpaYLY8zl8cBBkWL8M5ZzM8frPqq6zGSG2drmQ3CB1sBfteraV4NtCKCjnQCbO/bzeq
         2F3hlGi/fzWAvuv2fuiKd/sxIaXUmuR9LKsbS+Oo53MhFzCg59wMfuabX/cPEdBGUGkZ
         xJnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ej06qJmr;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id e5si297572vkb.2.2017.10.08.05.57.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 05:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ej06qJmr;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id l40so7141968uah.5
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 05:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BcOZayz6bEH1sZroofFq62L838AcNuj1/RV/wnT7JPE=;
        b=ej06qJmrd9iGQywWJh1Am5Xm4QbwFh5tw1PApDBWD6EbwS2FZ3Bxr2wJy2hCysNSy4
         DQPY5ZVsJmQTI78WPWc+0x8jSTeqyFayuuW7+habCAdcrPKvqTTkH0kkg7M7JTexBd9q
         0EXvXqWZRpobKjAzbXLEtuok/p4E6P9go2aZkPDEx3EKr7NGZDXRuNj/7VBCkw9oa9tM
         pNfG1Yh9xnEjiiH37KHoFrCdpxj2DryHjQ9maKcLctzYNbTB0YR6oJu1h9xMQlxSKahs
         f4cobGHKHPWhtx7+QdnqC6++knfZLFTKwb3iqnCIA44mbDng4BAeR9oOCUaKVYMrz/OF
         0F8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BcOZayz6bEH1sZroofFq62L838AcNuj1/RV/wnT7JPE=;
        b=thCuBMRQkdyjJ95TQXTmPjaISN5oZXi4qFspa9dsDrAH808gVBykFtfcZMypgshVJf
         tLeHIw+6CMdzO6VyueDgfk1enaqAJGDsanXO/JX2p68rM5jqHBuP9c+DbXiFjmG0LJQD
         uN7f+AIzaxVbD3If+KybrjXc2KAZ98ExpoeGjljvYStgMseSNNo25Lcb8VXdyfG79wFQ
         hm+07sF5uX/umYZSByZqzfnoixYFRIsKdP2MrOsovkJyxbpU+ZeOOVLv4j4W5kr9ctfa
         /SGsJ9fZHUmQ4ssBXr6aJHvSPxttuQvet86o8Nth+0xABjPI2F8O5RfDxNma64ayo+K/
         fBQQ==
X-Gm-Message-State: AMCzsaXXTIBcvdm0NDzT8/cufEywMQaFg9bCHGax/5jV5S3ldVqH1aD1
	jv98yxTN4Eovv8tMiQ0OEFKQpWwwberPnyjonYI=
X-Google-Smtp-Source: AOwi7QBM4oSbb/mB0hyFZrMfXYXwzoV/dHh7ZvRZRWyKC+4f4Ffv7rjd4lgzaPbfdSbj1OnM9JY7t2oX2eQTVbEINog=
X-Received: by 10.176.5.231 with SMTP id e94mr3671105uae.177.1507467470013;
 Sun, 08 Oct 2017 05:57:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.26 with HTTP; Sun, 8 Oct 2017 05:57:49 -0700 (PDT)
In-Reply-To: <1506659419-5834-1-git-send-email-harshasharmaiitr@gmail.com>
References: <1506659419-5834-1-git-send-email-harshasharmaiitr@gmail.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Sun, 8 Oct 2017 18:27:49 +0530
Message-ID: <CANMOCy36GG4SyyegZTr7kfvW919p3bN5ae+Ke+5VYHawn9zUTg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Sean Paul <seanpaul@chromium.org>, 
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Harsha Sharma <harshasharmaiitr@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 29, 2017 at 10:00 AM, Harsha Sharma
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
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v2:
>  -Added coccinelle patch in log message
>  -cc to all driver-specific mailing lists
>
>  drivers/gpu/drm/i915/i915_pci.c                    |  2 +-
>  drivers/gpu/drm/i915/intel_display.c               | 10 +++++-----
>  drivers/gpu/drm/i915/intel_fbdev.c                 |  4 ++--
>  drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c   |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_evict.c    |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_object.c   |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_request.c  |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_vma.c          |  2 +-
>  drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c |  2 +-
>  10 files changed, 15 insertions(+), 15 deletions(-)
>

Hi,
Any update regarding this ?
Thanks.

Regards,
Harsha Sharma

> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 09d97e0..2f106cc 100644
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
> index f172755..92f8304 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>
>                 if (intel_plane_ggtt_offset(state) == plane_config->base) {
>                         fb = c->primary->fb;
> -                       drm_framebuffer_reference(fb);
> +                       drm_framebuffer_get(fb);
>                         goto valid_fb;
>                 }
>         }
> @@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>                           intel_crtc->pipe, PTR_ERR(intel_state->vma));
>
>                 intel_state->vma = NULL;
> -               drm_framebuffer_unreference(fb);
> +               drm_framebuffer_put(fb);
>                 return;
>         }
>
> @@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>         if (i915_gem_object_is_tiled(obj))
>                 dev_priv->preserve_bios_swizzle = true;
>
> -       drm_framebuffer_reference(fb);
> +       drm_framebuffer_get(fb);
>         primary->fb = primary->state->fb = fb;
>         primary->crtc = primary->state->crtc = &intel_crtc->base;
>
> @@ -9847,7 +9847,7 @@ struct drm_framebuffer *
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
> index 262e75c..1ff7149 100644
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
> +       drm_framebuffer_put(&ifbdev->fb->base);
>
>         /* Final pass to check if any active pipes don't have fbs */
>         for_each_crtc(dev, crtc) {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> index 89dc25a..a7055b1 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void)
>
>         err = i915_subtests(tests, i915);
>
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>         return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> index 5ea3732..75764fd 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void)
>         err = i915_subtests(tests, i915);
>         mutex_unlock(&i915->drm.struct_mutex);
>
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>         return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 6b132ca..bc3c4a5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void)
>         err = i915_subtests(tests, i915);
>         mutex_unlock(&i915->drm.struct_mutex);
>
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>         return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> index 8f011c4..7bfd990 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> @@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void)
>
>         err = i915_subtests(tests, i915);
>
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>         return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> index 6664cb2..8985578 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> @@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void)
>                 return -ENOMEM;
>
>         err = i915_subtests(tests, i915);
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>
>         return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index 2e86ec1..d8cc0a6 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
>         err = i915_subtests(tests, i915);
>         mutex_unlock(&i915->drm.struct_mutex);
>
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>         return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> index 828904b..3c8bf44 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void)
>                 return -ENOMEM;
>
>         err = i915_subtests(tests, i915->engine[RCS]);
> -       drm_dev_unref(&i915->drm);
> +       drm_dev_put(&i915->drm);
>
>         return err;
>  }
> --
> 1.9.1
>

