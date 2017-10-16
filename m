X-GM-THRID: 6470825285154504704
X-Received: by 10.37.114.134 with SMTP id n128mr6192298ybc.44.1508179991823;
        Mon, 16 Oct 2017 11:53:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.89.138 with SMTP id n132ls519076ywb.42.gmail; Mon, 16 Oct
 2017 11:53:11 -0700 (PDT)
X-Received: by 10.37.162.3 with SMTP id b3mr6634175ybi.29.1508179991032;
        Mon, 16 Oct 2017 11:53:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508179991; cv=none;
        d=google.com; s=arc-20160816;
        b=QHUASdwHCtYPWYkMieW6IHaWKNkaPChasLPgEtP9IsnJjohMsHoD21Tp3PbiypugcU
         bOBpt2uZ+eN7JT2N8iyahLHJ+nrXDZv9/pmHPhSNuC2dzSHnJm586/ZUXuxPrkylIhRb
         sh+YXvI2p2jbxp/djGrFj/K0VZoC2cvGqOg9y0f07mTyF6pABDzoqHsxCcmkcaDX42kY
         WRag/aytysIVj2LyMQ2GdAL7sFF0P1VKwcxHq+GplieuoOdb5pndSGltxhkpSvJtJsXZ
         VO6CBCVP8rnfP7sDEHTQmw8Ge2aiRYaBICtiVS4EaiieAtkv8gtn22bwuBe1H1gqWEo/
         opwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=d/yGAKBbBtrRolgkEObAbAFLo/Y9OVrnz5olP9hN1vw=;
        b=vdhcuZ5UHZEJumVxMUPVfXRguoY+zYMJKpS9Rxlt8LdvtM0/QfPXrvQx3Z4CjHkJ15
         tpfxsThmT1ZnvFfl6RiXkjtjUiRTr2nRU87Kra1NY22ccS4cTNpCzgUaUT8meXLgXs1P
         6K8GLEb3Ozrx8yP7Hy4ImIULfrDIouwXaXaNjMyvuwEtgKOeXHyjgIIMJRJfmhtPrPOC
         T9chofW1JWRkdPmZlY5JYl3NW4wQ9t+1dTo01IoDR0Li2o/J+juBw0qsdGTKSN8Z1ky4
         qc2OHwFujqPQnu/uS760Qs+UEmjH/RKymRImrn9akLSxLkzROyCO/g0UE/AiH7eGAE8S
         AZ0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CODtNPgb;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id g4si371392ybi.2.2017.10.16.11.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 11:53:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CODtNPgb;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id i35so10375912uah.9
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 11:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=d/yGAKBbBtrRolgkEObAbAFLo/Y9OVrnz5olP9hN1vw=;
        b=CODtNPgb0+XXVc5dLl/E+8XEyeNzelyKRyePdalUjDt+u0Ljm6xuCwNnU6tYixNFKj
         r0L1vXmmEKsO4NQt+baIMTHGexSpwjgdffmydY51jNwevXmW9YXlUVdZbIJVltzym3mB
         /ma7cD+8cIXOXonVRE8L+6YX55cnRwohdjRlHox/JTdVnscmRh7o8AY45ViBKBknG1LM
         7judhtCy8py2UdAovLfaE7JKuAcOukw6pY8ahHjCMMMWFKFuOPK5041d3ZxHH6iV/w66
         UDSUYf9ga8UGqp9Lr+cIeSVqv9b5v6TyjPWK3OGwrON5Lb4lNxgQLft5d1VarKEep0Bj
         erNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=d/yGAKBbBtrRolgkEObAbAFLo/Y9OVrnz5olP9hN1vw=;
        b=QsMY0AkS/9/R7cPX24wiomweE/ARgkSoddtb9hJalx/ieS4xr9/CvD9pnrmgBY8FFE
         GA6tez+nXnBDyWaRDYpq8lsOJ1GhlomO8lfitlLXV3nkU742z41b8R7HueLW/satkVLe
         nCnwcejY4FQ2sZhgQuOBnJiKhY5t4mDUANaMWbgCSLUuQifKihE6n2/+OcZLlwwvoQ8r
         IIudPX9dbhL3xq1bZZJDm6JLdUXf3RMV2jaJxk9ce7zTFQoUaHsjiwzmDdSwvMim2Sy+
         685gBCAQqCrKITpBeo0eBr0nMd0ls4Eg0wKrnmToVEjvAIce5aGMIL8qsKtJhg9bpvNV
         hFZA==
X-Gm-Message-State: AMCzsaXLrtEc0qS+yAvQln1N33BdUALDxERUtXNhg/sHnns7v2200wKY
	BqvLxqDS9SZjeBwCgFns55j5v+XAGkGgEYAICu7G+Q==
X-Google-Smtp-Source: ABhQp+RythzhCvbNVZig6osPYImPLZOE0uIrOvvXs8mkg190UxAPL7DxSvdjluR7YTByo+ut2c3kC2vgz3hYkkNqJgE=
X-Received: by 10.176.86.70 with SMTP id z6mr8841606uaa.103.1508179990443;
 Mon, 16 Oct 2017 11:53:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.70 with HTTP; Mon, 16 Oct 2017 11:53:10 -0700 (PDT)
In-Reply-To: <CAOw6vbJ1nyL4Pk1VkwOmEbk8ohewRTu93F8CTfQgFWGvp2fegw@mail.gmail.com>
References: <20171014183644.21990-1-harshasharmaiitr@gmail.com> <CAOw6vbJ1nyL4Pk1VkwOmEbk8ohewRTu93F8CTfQgFWGvp2fegw@mail.gmail.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Tue, 17 Oct 2017 00:23:10 +0530
Message-ID: <CANMOCy0TuT7yq2ZEBt4H1B3n5OZ8qgSFaSB2MNLWzvvN4jJ2-Q@mail.gmail.com>
Subject: Re: [PATCH v5] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
To: Sean Paul <seanpaul@chromium.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 17, 2017 at 12:15 AM, Sean Paul <seanpaul@chromium.org> wrote:
> On Sat, Oct 14, 2017 at 2:36 PM, Harsha Sharma
> <harshasharmaiitr@gmail.com> wrote:
>> Replace instances of drm_framebuffer_reference/unreference() with
>> *_get/put() suffixes and drm_dev_unref with *_put() suffix
>> because get/put is shorter and consistent with the
>> kernel use of *_get/put suffixes.
>> Done with following coccinelle semantic patch
>>
>> @@
>> expression ex;
>> @@
>>
>> (
>> -drm_framebuffer_unreference(ex);
>> +drm_framebuffer_put(ex);
>> |
>> -drm_dev_unref(ex);
>> +drm_dev_put(ex);
>> |
>> -drm_framebuffer_reference(ex);
>> +drm_framebuffer_get(ex);
>> )
>>
>
> When I run this spatch on drm-tip, I get a bunch more changes than
> this (below). Are you just running it on i915_pci?

Hi,
Yes you are right. But Daniel asked me to make the changes just for
drm_dev_put in this patch . Sorry if I misinterpreted him.
Please let me know if I need to sent another patch for all these changes.
Thanks a lot.

Regards,
Harsha Sharma
>
> Sean
>
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 09d97e0990b7..2f106cca46b4 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>   struct drm_device *dev = pci_get_drvdata(pdev);
>
>   i915_driver_unload(dev);
> - drm_dev_unref(dev);
> + drm_dev_put(dev);
>  }
>
>  static int i915_pci_probe(struct pci_dev *pdev, const struct
> pci_device_id *ent)
> diff --git a/drivers/gpu/drm/i915/intel_display.c
> b/drivers/gpu/drm/i915/intel_display.c
> index 5c7828c52d12..db755b9a5efd 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -2856,7 +2856,7 @@ intel_find_initial_plane_obj(struct intel_crtc
> *intel_crtc,
>
>   if (intel_plane_ggtt_offset(state) == plane_config->base) {
>   fb = c->primary->fb;
> - drm_framebuffer_reference(fb);
> + drm_framebuffer_get(fb);
>   goto valid_fb;
>   }
>   }
> @@ -2887,7 +2887,7 @@ intel_find_initial_plane_obj(struct intel_crtc
> *intel_crtc,
>     intel_crtc->pipe, PTR_ERR(intel_state->vma));
>
>   intel_state->vma = NULL;
> - drm_framebuffer_unreference(fb);
> + drm_framebuffer_put(fb);
>   return;
>   }
>
> @@ -2908,7 +2908,7 @@ intel_find_initial_plane_obj(struct intel_crtc
> *intel_crtc,
>   if (i915_gem_object_is_tiled(obj))
>   dev_priv->preserve_bios_swizzle = true;
>
> - drm_framebuffer_reference(fb);
> + drm_framebuffer_get(fb);
>   primary->fb = primary->state->fb = fb;
>   primary->crtc = primary->state->crtc = &intel_crtc->base;
>
> @@ -9847,7 +9847,7 @@ mode_fits_in_fbdev(struct drm_device *dev,
>   if (obj->base.size < mode->vdisplay * fb->pitches[0])
>   return NULL;
>
> - drm_framebuffer_reference(fb);
> + drm_framebuffer_get(fb);
>   return fb;
>  #else
>   return NULL;
> @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct
> drm_connector *connector,
>   if (ret)
>   goto fail;
>
> - drm_framebuffer_unreference(fb);
> + drm_framebuffer_put(fb);
>
>   ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
>   if (ret)
> diff --git a/drivers/gpu/drm/i915/intel_fbdev.c
> b/drivers/gpu/drm/i915/intel_fbdev.c
> index 262e75c00dd2..e34334a1fbf9 100644
> --- a/drivers/gpu/drm/i915/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/intel_fbdev.c
> @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>         " releasing it\n",
>         intel_fb->base.width, intel_fb->base.height,
>         sizes->fb_width, sizes->fb_height);
> - drm_framebuffer_unreference(&intel_fb->base);
> + drm_framebuffer_put(&intel_fb->base);
>   intel_fb = ifbdev->fb = NULL;
>   }
>   if (!intel_fb || WARN_ON(!intel_fb->obj)) {
> @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
>   ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
>   ifbdev->fb = fb;
>
> - drm_framebuffer_reference(&ifbdev->fb->base);
> + drm_framebuffer_get(&ifbdev->fb->base);
>
>   /* Final pass to check if any active pipes don't have fbs */
>   for_each_crtc(dev, crtc) {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> index 89dc25a5a53b..a7055b12e53c 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void)
>
>   err = i915_subtests(tests, i915);
>
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>   return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> index 5ea373221f49..75764fdb90da 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void)
>   err = i915_subtests(tests, i915);
>   mutex_unlock(&i915->drm.struct_mutex);
>
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>   return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 6b132caffa18..bc3c4a5776bd 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void)
>   err = i915_subtests(tests, i915);
>   mutex_unlock(&i915->drm.struct_mutex);
>
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>   return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> index 8f011c447e41..7bfd9900798a 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> @@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void)
>
>   err = i915_subtests(tests, i915);
>
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>   return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> index 6664cb2eb0b8..8985578cf8a5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> @@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void)
>   return -ENOMEM;
>
>   err = i915_subtests(tests, i915);
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>
>   return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c
> b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index 2e86ec136b35..d8cc0a665169 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
>   err = i915_subtests(tests, i915);
>   mutex_unlock(&i915->drm.struct_mutex);
>
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>   return err;
>  }
>
> diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> index 828904b7d468..3c8bf447b890 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void)
>   return -ENOMEM;
>
>   err = i915_subtests(tests, i915->engine[RCS]);
> - drm_dev_unref(&i915->drm);
> + drm_dev_put(&i915->drm);
>
>   return err;
>  }
>
>
>> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
>> ---
>> Changes in v5:
>>  -rebase drm_dev_put change on drm-tip
>> Changes in v4:
>>  -change one instance of *_put to *_get
>> Changes in v3:
>>  -Removed changes in selftests
>> Changes in v2:
>>  -Added cocinelle patch in log message
>>  -cc to all driver-specific mailing lists
>>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index bf467f30c99b..1223961c3700 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -645,7 +645,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>>         struct drm_device *dev = pci_get_drvdata(pdev);
>>
>>         i915_driver_unload(dev);
>> -       drm_dev_unref(dev);
>> +       drm_dev_put(dev);
>>  }
>>
>>  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>> --
>> 2.11.0
>>

