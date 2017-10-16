X-GM-THRID: 6470825285154504704
X-Received: by 10.36.25.129 with SMTP id b123mr1217200itb.11.1508179556749;
        Mon, 16 Oct 2017 11:45:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.180.141 with SMTP id d135ls2380016iof.6.gmail; Mon, 16 Oct
 2017 11:45:56 -0700 (PDT)
X-Received: by 10.107.131.18 with SMTP id f18mr7957562iod.73.1508179556001;
        Mon, 16 Oct 2017 11:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508179555; cv=none;
        d=google.com; s=arc-20160816;
        b=DE/C/nUVp/k+PQ66Ux3iTieYlY0/lUCbbr4KRNyuokjiNkcnSi2TtJ7wsigGJQPGpO
         2Xovu7C0HDzmk8XbaKZKxXxaN2S9KAqugcJmgS1QW5oyufF4Ns1+oi1VO4XuaskW7qsg
         pQI2n5Q6tEvkrhxo/0qvZI+wehtxpzdg+JPmlbi5pnqGOAjhSSh9FnqInj/ZaZMwYspi
         Eqj8SDu7Iyig3xUeyoJ77vcBJ7Vc78ezDQLtVeIJ3/qIULBaxKKDCI+lj2Oux+W7Rzzw
         Iy8+E4IpQ0ku/6YB6bbj9K8bxOY3lL42/980Jr/Rpq7Y99ocbwI2mJMu5iyHkHd6HA/Q
         Vhlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=BsOAqMJCdqLR2CyduaLJ4R4yFFon7+4Gu4Lv/tg4c6w=;
        b=TIQzFsujik9VMjO6tfXOeOodm6ZYK8fRAuXKhFqZjxBEYDvQjd5YAc9kJBxVxBH4H5
         QXSbrWyPd95EbWL2j/IbZmZoYVhsVESQ03ke2jub2+WetwnTKGBecRa3WjlnjcepOluo
         +4LDIsOtc0H+f28zhtAMqrLgL68F28at5jadHTkqN7AwixArItaHSpuGR2QH2NaMbVST
         qTNU0/X4lNVsw7wLkP6NpYB7DOjzpLh4IGQxVO19ufPVE66sOYcOKBHdP4SCSaxNALrr
         kwY2HWq9tF+3Furq5YFdADTxa3Bw85S2FhxtMyXpxJuBRvSDmNdUp5kRnIrXM6byLa0s
         POMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ef7I6ZAR;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id b2si125381itg.3.2017.10.16.11.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ef7I6ZAR;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x241.google.com with SMTP id p1so33798684qtg.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BsOAqMJCdqLR2CyduaLJ4R4yFFon7+4Gu4Lv/tg4c6w=;
        b=ef7I6ZARsiLmNd7BuN1xhSElXXIc4QPSrid4LEQ1Cv4LQb5HMrBhYFoOlDtOJZOR66
         QADgIYMRvZqaJ4QUwqhuP0r152E1PUcc2gF5Ox6Ra+yLHEQsFM6tPwN9o7A8wptL5/st
         QW5cPhyEWZEaqeEAtUOloQunTH4m+ryE8nsHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BsOAqMJCdqLR2CyduaLJ4R4yFFon7+4Gu4Lv/tg4c6w=;
        b=s4JmjFFVeMMsHae/0RCQLO06J4K3QKAJPbqirxb/3KKHGZ2C55jgL1Ilytk2nOwB4z
         x+nY4HOBI6X9oj+3pwqCvgtQ2X5XpWeTD2LpAXa1bBIrVUUWWopuGse58gC/etmYXbZc
         DqkfgmSeps+QGJJUuraL43IJV1r7xypYHFyFETt7Ze8B4cgNB4Uk7y85ZAQBrcUAnSx5
         Au658Qx65cLpoYN8/Pz8ThNJ2k4yk+a6wpUGfDCfMQBeSD7mXf/Kk2RkNVfddYkp1+Tg
         q83iZcF9XvXqGCKHjnBNeesgxV+P+sdhrtzu+pL8W/Q3XzabDyjxujT6IBlV8lKpRN1l
         sFag==
X-Gm-Message-State: AMCzsaU+S3wNve0a3vvEooNyZ4TjVzAFK4+0ufGSGaU/qYrDiVS8fGqL
	CnGQBpNgHrrgcMTu6FBOvu/EY4lqPd0=
X-Received: by 10.37.173.21 with SMTP id y21mr1047958ybi.304.1508179555522;
        Mon, 16 Oct 2017 11:45:55 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com. [209.85.214.45])
        by smtp.gmail.com with ESMTPSA id x21sm2609624ywg.85.2017.10.16.11.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:45:54 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id n195so2457952itg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:45:54 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Q3TdYRlOV4+w4TKxps167AYqr2cMdk9RPhMjMamP5TjuvnnR+qf8Bebnan6uzzf1azqaa/t0rDnQc/5BBIGCA=
X-Received: by 10.36.81.21 with SMTP id s21mr2394422ita.144.1508179554053;
 Mon, 16 Oct 2017 11:45:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.174.66 with HTTP; Mon, 16 Oct 2017 11:45:33 -0700 (PDT)
In-Reply-To: <20171014183644.21990-1-harshasharmaiitr@gmail.com>
References: <20171014183644.21990-1-harshasharmaiitr@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 16 Oct 2017 14:45:33 -0400
X-Gmail-Original-Message-ID: <CAOw6vbJ1nyL4Pk1VkwOmEbk8ohewRTu93F8CTfQgFWGvp2fegw@mail.gmail.com>
Message-ID: <CAOw6vbJ1nyL4Pk1VkwOmEbk8ohewRTu93F8CTfQgFWGvp2fegw@mail.gmail.com>
Subject: Re: [PATCH v5] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 14, 2017 at 2:36 PM, Harsha Sharma
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

When I run this spatch on drm-tip, I get a bunch more changes than
this (below). Are you just running it on i915_pci?

Sean


diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 09d97e0990b7..2f106cca46b4 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
  struct drm_device *dev = pci_get_drvdata(pdev);

  i915_driver_unload(dev);
- drm_dev_unref(dev);
+ drm_dev_put(dev);
 }

 static int i915_pci_probe(struct pci_dev *pdev, const struct
pci_device_id *ent)
diff --git a/drivers/gpu/drm/i915/intel_display.c
b/drivers/gpu/drm/i915/intel_display.c
index 5c7828c52d12..db755b9a5efd 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -2856,7 +2856,7 @@ intel_find_initial_plane_obj(struct intel_crtc
*intel_crtc,

  if (intel_plane_ggtt_offset(state) == plane_config->base) {
  fb = c->primary->fb;
- drm_framebuffer_reference(fb);
+ drm_framebuffer_get(fb);
  goto valid_fb;
  }
  }
@@ -2887,7 +2887,7 @@ intel_find_initial_plane_obj(struct intel_crtc
*intel_crtc,
    intel_crtc->pipe, PTR_ERR(intel_state->vma));

  intel_state->vma = NULL;
- drm_framebuffer_unreference(fb);
+ drm_framebuffer_put(fb);
  return;
  }

@@ -2908,7 +2908,7 @@ intel_find_initial_plane_obj(struct intel_crtc
*intel_crtc,
  if (i915_gem_object_is_tiled(obj))
  dev_priv->preserve_bios_swizzle = true;

- drm_framebuffer_reference(fb);
+ drm_framebuffer_get(fb);
  primary->fb = primary->state->fb = fb;
  primary->crtc = primary->state->crtc = &intel_crtc->base;

@@ -9847,7 +9847,7 @@ mode_fits_in_fbdev(struct drm_device *dev,
  if (obj->base.size < mode->vdisplay * fb->pitches[0])
  return NULL;

- drm_framebuffer_reference(fb);
+ drm_framebuffer_get(fb);
  return fb;
 #else
  return NULL;
@@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct
drm_connector *connector,
  if (ret)
  goto fail;

- drm_framebuffer_unreference(fb);
+ drm_framebuffer_put(fb);

  ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
  if (ret)
diff --git a/drivers/gpu/drm/i915/intel_fbdev.c
b/drivers/gpu/drm/i915/intel_fbdev.c
index 262e75c00dd2..e34334a1fbf9 100644
--- a/drivers/gpu/drm/i915/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/intel_fbdev.c
@@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
        " releasing it\n",
        intel_fb->base.width, intel_fb->base.height,
        sizes->fb_width, sizes->fb_height);
- drm_framebuffer_unreference(&intel_fb->base);
+ drm_framebuffer_put(&intel_fb->base);
  intel_fb = ifbdev->fb = NULL;
  }
  if (!intel_fb || WARN_ON(!intel_fb->obj)) {
@@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
  ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
  ifbdev->fb = fb;

- drm_framebuffer_reference(&ifbdev->fb->base);
+ drm_framebuffer_get(&ifbdev->fb->base);

  /* Final pass to check if any active pipes don't have fbs */
  for_each_crtc(dev, crtc) {
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
index 89dc25a5a53b..a7055b12e53c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
@@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void)

  err = i915_subtests(tests, i915);

- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);
  return err;
 }

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 5ea373221f49..75764fdb90da 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void)
  err = i915_subtests(tests, i915);
  mutex_unlock(&i915->drm.struct_mutex);

- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);
  return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 6b132caffa18..bc3c4a5776bd 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void)
  err = i915_subtests(tests, i915);
  mutex_unlock(&i915->drm.struct_mutex);

- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);
  return err;
 }

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
index 8f011c447e41..7bfd9900798a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
@@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void)

  err = i915_subtests(tests, i915);

- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);
  return err;
 }

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
index 6664cb2eb0b8..8985578cf8a5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
@@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void)
  return -ENOMEM;

  err = i915_subtests(tests, i915);
- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);

  return err;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c
b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 2e86ec136b35..d8cc0a665169 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
  err = i915_subtests(tests, i915);
  mutex_unlock(&i915->drm.struct_mutex);

- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);
  return err;
 }

diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
index 828904b7d468..3c8bf447b890 100644
--- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
@@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void)
  return -ENOMEM;

  err = i915_subtests(tests, i915->engine[RCS]);
- drm_dev_unref(&i915->drm);
+ drm_dev_put(&i915->drm);

  return err;
 }


> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v5:
>  -rebase drm_dev_put change on drm-tip
> Changes in v4:
>  -change one instance of *_put to *_get
> Changes in v3:
>  -Removed changes in selftests
> Changes in v2:
>  -Added cocinelle patch in log message
>  -cc to all driver-specific mailing lists
>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index bf467f30c99b..1223961c3700 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -645,7 +645,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>         struct drm_device *dev = pci_get_drvdata(pdev);
>
>         i915_driver_unload(dev);
> -       drm_dev_unref(dev);
> +       drm_dev_put(dev);
>  }
>
>  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> --
> 2.11.0
>

