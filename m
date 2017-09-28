X-GM-THRID: 6470825285154504704
X-Received: by 10.28.4.69 with SMTP id 66mr182750wme.25.1506607849624;
        Thu, 28 Sep 2017 07:10:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.38.134 with SMTP id m128ls110537wmm.4.gmail; Thu, 28 Sep
 2017 07:10:48 -0700 (PDT)
X-Received: by 10.28.136.12 with SMTP id k12mr191611wmd.10.1506607848746;
        Thu, 28 Sep 2017 07:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506607848; cv=none;
        d=google.com; s=arc-20160816;
        b=K94eMLD0lpQQesuKZEgakwIGODJfhyV88NplyGWhRPkyiEBsQ3b1vGEM1SkovA/aa2
         QzWUBxBYvdXmxpgWF2oFXmhkxmmTx6bS4oGukgb31b06xUwpjr/U/HBFpTowI5vEJmMS
         Q6oo58O0eWW43rnfBUVvd8SLJOtqz2lddee18FmohKtfGGVbP9g8dKNdJXyRlGoRFSB3
         +Z7mISa6q8qVL71kx/I3WR0zNvJEluK9x4Qbmqei8gbMyWNjETNohaC1LjyC8NHTBKRL
         x0yEHhk9Fl2/l7Kk9tqp4ehJsuQW4Mf8QitVpbz7oeOG6a6330YQYPMhyPcTDaO1L3Hq
         2zpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=INoNpp1tWWKpdnQbjfACPwwwmVKYU411sgGvkcf22kQ=;
        b=yAZkd1dfT/Xu8umBc2XxCjAlxaji9KWv3P8cGoNFaQqvbhz1re66bLha4VpujTMtU7
         N/1NI2MJxqxwbS7ehCB5+fgxwrlM2l/lyjXH04WoMS9ELhxFL5L2U7MLp0jgpRcpK0H2
         fTXoG7wSas3aFvHsFiRYiZ4Z4JgQR/Briso4bRFgwLqW3FVxADvKtTsQ3LQxBx/qtPPp
         4A7iGAyPjmrbYzFGqtO2ug7iO+Us5sXoQB6e7pFsYKZFd2zS0iRe1+eNs+1BgaNNZe4O
         pu+ywbDS/8FWnyj6VI4KUAkgHkUryfRgpxovO7gLZ4GwcuKIZ7XWWDdwN+HXumH2dUXu
         cmZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=gPxb748W;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id q145si253432wme.4.2017.09.28.07.10.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:10:48 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=gPxb748W;
       spf=neutral (google.com: 2a00:1450:400c:c09::241 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x241.google.com with SMTP id e64so1425886wmi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 07:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=INoNpp1tWWKpdnQbjfACPwwwmVKYU411sgGvkcf22kQ=;
        b=gPxb748WE53G4HGtLuxjVL0SPFgS6jeJsT8F0gSm/IMo3ygEaKyIMGMxYYQrIl0bbI
         ygE0es4cnwpSomhk7ah0Fdjb/9LYbUYkDEVdBJRM4YM3xHmXfAjNdJrlUaa6myDudMZe
         xhOquFFgaHSSWomgw4ZyP/8oFax6LUZh0Y78k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=INoNpp1tWWKpdnQbjfACPwwwmVKYU411sgGvkcf22kQ=;
        b=WJfXWwJREvAZjo1P47I9JdRmIX5VneG54DkBAMRKrR6ueT6L/h3LCN24+JS3tvx3kM
         J31Q2uiO1xz3XR+iujqeGT8JCBUwfNOKXxvkZLRsyNoFtkAOuW1mCJWZRXv/6LRr0nk+
         oCxUkgjTRgdecGIC2YccIDwbsQ80tb9YCAh/nYd76urcUJZVcWyiFBsMMmhYvi7U6y9H
         xbf4EbnoRbvFForPxe9HXbLsAo4ak+p4bKzrD2paPRr/0VsqP6kXwYghDlqisvkHp48O
         Yp7GVTxeqVW49YhPktc9/fMPK2z8VXBislWZj6ibMqRsynO39kq8YVvUTFJPxmKyBFfF
         NDIQ==
X-Gm-Message-State: AHPjjUjMHlQCfyunF/HYwSIOOOJQ3vxnpQYiVZR7cYctofqLL1u0Uysb
	tpBZGNxV6fl7gp6AHMj0DJhyGw==
X-Google-Smtp-Source: AOwi7QDuphIcGNh+WNCRdmpUmArQ4Xs3xbSvvbXy71G2YQuJerDsL1ZiqVBkXUBk2tLpL9rqQhMQqw==
X-Received: by 10.80.166.145 with SMTP id e17mr5910384edc.51.1506607848167;
        Thu, 28 Sep 2017 07:10:48 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id f29sm1845509edf.87.2017.09.28.07.10.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Sep 2017 07:10:47 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 28 Sep 2017 16:10:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
Message-ID: <20170928141045.nsmnz5dritfm54i6@phenom.ffwll.local>
Mail-Followup-To: Harsha Sharma <harshasharmaiitr@gmail.com>,
	seanpaul@chromium.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <1506606282-628-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1506606282-628-1-git-send-email-harshasharmaiitr@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Thu, Sep 28, 2017 at 07:14:42PM +0530, Harsha Sharma wrote:
> Replace instances of drm_framebuffer_reference/unreference() with
> *_get/put() suffixes and drm_dev_unref with *_put() suffix
> because get/put is shorter and consistent with the
> kernel use of *_get/put suffixes .

Since this is done with cocci it's good to reference or include the cocci
patch you've used in the commit message.

> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

When submitting a driver patch, please make sure you also include driver
maintainers and driver-specific mailing lists, not just dri-devel.

scripts/get_maintainers.pl should help you with figuring these out.

Thanks, Daniel

> ---
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
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 09d97e0..2f106cc 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -510,7 +510,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  	struct drm_device *dev = pci_get_drvdata(pdev);
>  
>  	i915_driver_unload(dev);
> -	drm_dev_unref(dev);
> +	drm_dev_put(dev);
>  }
>  
>  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
> index f172755..92f8304 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -2856,7 +2856,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  
>  		if (intel_plane_ggtt_offset(state) == plane_config->base) {
>  			fb = c->primary->fb;
> -			drm_framebuffer_reference(fb);
> +			drm_framebuffer_get(fb);
>  			goto valid_fb;
>  		}
>  	}
> @@ -2887,7 +2887,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  			  intel_crtc->pipe, PTR_ERR(intel_state->vma));
>  
>  		intel_state->vma = NULL;
> -		drm_framebuffer_unreference(fb);
> +		drm_framebuffer_put(fb);
>  		return;
>  	}
>  
> @@ -2908,7 +2908,7 @@ static int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  	if (i915_gem_object_is_tiled(obj))
>  		dev_priv->preserve_bios_swizzle = true;
>  
> -	drm_framebuffer_reference(fb);
> +	drm_framebuffer_get(fb);
>  	primary->fb = primary->state->fb = fb;
>  	primary->crtc = primary->state->crtc = &intel_crtc->base;
>  
> @@ -9847,7 +9847,7 @@ struct drm_framebuffer *
>  	if (obj->base.size < mode->vdisplay * fb->pitches[0])
>  		return NULL;
>  
> -	drm_framebuffer_reference(fb);
> +	drm_framebuffer_get(fb);
>  	return fb;
>  #else
>  	return NULL;
> @@ -10028,7 +10028,7 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
>  	if (ret)
>  		goto fail;
>  
> -	drm_framebuffer_unreference(fb);
> +	drm_framebuffer_put(fb);
>  
>  	ret = drm_atomic_set_mode_for_crtc(&crtc_state->base, mode);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/intel_fbdev.c b/drivers/gpu/drm/i915/intel_fbdev.c
> index 262e75c..1ff7149 100644
> --- a/drivers/gpu/drm/i915/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/intel_fbdev.c
> @@ -189,7 +189,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  			      " releasing it\n",
>  			      intel_fb->base.width, intel_fb->base.height,
>  			      sizes->fb_width, sizes->fb_height);
> -		drm_framebuffer_unreference(&intel_fb->base);
> +		drm_framebuffer_put(&intel_fb->base);
>  		intel_fb = ifbdev->fb = NULL;
>  	}
>  	if (!intel_fb || WARN_ON(!intel_fb->obj)) {
> @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
>  	ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
>  	ifbdev->fb = fb;
>  
> -	drm_framebuffer_reference(&ifbdev->fb->base);
> +	drm_framebuffer_put(&ifbdev->fb->base);
>  
>  	/* Final pass to check if any active pipes don't have fbs */
>  	for_each_crtc(dev, crtc) {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> index 89dc25a..a7055b1 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_dmabuf.c
> @@ -389,7 +389,7 @@ int i915_gem_dmabuf_mock_selftests(void)
>  
>  	err = i915_subtests(tests, i915);
>  
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> index 5ea3732..75764fd 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> @@ -345,6 +345,6 @@ int i915_gem_evict_mock_selftests(void)
>  	err = i915_subtests(tests, i915);
>  	mutex_unlock(&i915->drm.struct_mutex);
>  
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  	return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 6b132ca..bc3c4a5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1540,7 +1540,7 @@ int i915_gem_gtt_mock_selftests(void)
>  	err = i915_subtests(tests, i915);
>  	mutex_unlock(&i915->drm.struct_mutex);
>  
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> index 8f011c4..7bfd990 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_object.c
> @@ -586,7 +586,7 @@ int i915_gem_object_mock_selftests(void)
>  
>  	err = i915_subtests(tests, i915);
>  
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_request.c b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> index 6664cb2..8985578 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_request.c
> @@ -260,7 +260,7 @@ int i915_gem_request_mock_selftests(void)
>  		return -ENOMEM;
>  
>  	err = i915_subtests(tests, i915);
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  
>  	return err;
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index 2e86ec1..d8cc0a6 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -734,7 +734,7 @@ int i915_vma_mock_selftests(void)
>  	err = i915_subtests(tests, i915);
>  	mutex_unlock(&i915->drm.struct_mutex);
>  
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> index 828904b..3c8bf44 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_breadcrumbs.c
> @@ -475,7 +475,7 @@ int intel_breadcrumbs_mock_selftests(void)
>  		return -ENOMEM;
>  
>  	err = i915_subtests(tests, i915->engine[RCS]);
> -	drm_dev_unref(&i915->drm);
> +	drm_dev_put(&i915->drm);
>  
>  	return err;
>  }
> -- 
> 1.9.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

