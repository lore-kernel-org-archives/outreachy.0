X-GM-THRID: 6952884734330404864
X-Received: by 2002:a17:906:b52:: with SMTP id v18mr28567435ejg.485.1618940979210;
        Tue, 20 Apr 2021 10:49:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1803:: with SMTP id g3ls382691edy.0.gmail; Tue, 20
 Apr 2021 10:49:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQ+yMrJw2Hlgu7BRfTxnRSLb1f9DtlneH6VppBfgqSJoO5o22Evq8D/u+2inVFY6k/izEP
X-Received: by 2002:a05:6402:1a52:: with SMTP id bf18mr16764793edb.289.1618940977768;
        Tue, 20 Apr 2021 10:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618940977; cv=none;
        d=google.com; s=arc-20160816;
        b=mDwEIlSVX+jkKF8FxORY4W+eKpn39GzNN5qcESr5Bo90KTvm7oJEfdL0NH3ePDJ4GX
         MZSSg022ZqQzEylNGo5bbqMBB1dSexN2/rWwoFmlbXh2PyTtOAfpXYj10FZKgJMUr7XV
         4rH31OEx122AD2Q3uzJBSJLpcpGBvNW69N+ZcIVL9AjtHIdyNfrDbXRmq8Bvf+TShj+w
         sAez67xTJrKHOL0y7owzB451KAxPr9oLvCXdtI2FcywOmqE+qNcswxaRrUbQm4j78oFc
         gcDSJZYqcMlpgMFsuUL7qOB/oApARRvDzzgEmhqcP+i3c+dqiEhIEB2Tz+mjY6F0P03/
         2/dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rJ0gTNSpHXyaSJ6lYKxNkMmiaYgClxAfusRxRmTvzf8=;
        b=fSlu3xlWMm67XoGZynFeqEtyMFPnhIBBTDSRrhmdfINh4EIR/Lx68pNqZxvuDRO8m2
         Wn2Dnhk4/DpicFmMCy5dIvQXXFi1NKymD7o9gqVNV0AbL3LHhbIvGq9kuIyFlF87DuDg
         8kZFu0eppPfoPTarQfumtbMaFZVxCXmgmvoOn9KIx7+W7MHRM6CZsikFEfuGOnMV/TNb
         TbctQuSxH3dVq7MfM1pE5Oh/b3jgBL4wZrh7/xP1LvWqrF9/EVUNF1jhZH369wnJXggI
         Wlq6hMwohjPsX+hhsWJ30Mw4rWDJn3Ii9dukqSbLKHQq350m6cIlLfXJsROkMi38cXLj
         b5pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=frBLSHSj;
       spf=neutral (google.com: 2a00:1450:4864:20::62c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id h1si1243922edw.3.2021.04.20.10.49.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:49:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::62c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=frBLSHSj;
       spf=neutral (google.com: 2a00:1450:4864:20::62c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ej1-x62c.google.com with SMTP id mh2so38013389ejb.8
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Apr 2021 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rJ0gTNSpHXyaSJ6lYKxNkMmiaYgClxAfusRxRmTvzf8=;
        b=frBLSHSjABUg1Ld2ApWU02R9mHl5H3e6G9LOpBZyLDHpCLtBRXMcttRaYofBnJBbiq
         HK2DEbhnFptOZSS79/wXunrj4h0PAODv/zzV/cL2lBw/bDHdMOB4Ngz17YR5YULEplry
         XoLMAwpd9EkFQy5JQFpbkAdZXyhpifShLrhMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rJ0gTNSpHXyaSJ6lYKxNkMmiaYgClxAfusRxRmTvzf8=;
        b=T0f08tyhVHeWIFUIrymHdR8/J898kEhUxnrXGrIOz995JhX+SBgV4Mw67sjy0T64PY
         9hKHyXt0NxFGMHDRFTRjhk1TNzRongLcVQTfXFgb4jPLNiA00iLSNib1hVa0A8NatrtI
         jxYjsqv3qXAitwG01S+m/GjMAVE6b4fM7S8fI8RTAEM6cjpL7ZH33pMiN2NpQaPFdIs1
         Z3yH2WvEGcvEd5SPYxpStwH5JYrlLrqXOspbrq9K4iLVKomfmd75Qw7xAddyYRMOudPx
         8hQXz4ErSaiAsJVLIIF+dyeNWSNqegsHu0+LK39bWRi5etVkFTJLiUuEFnecLSVjsEPz
         qznA==
X-Gm-Message-State: AOAM532UIAmK5Jx8NkWq7qRHjvyo5yYtmn/jlEir1KKhb0MM6tBe9lYD
	VoQot9oApvORHfVlD0p9EhNWIQ==
X-Received: by 2002:a17:906:cc8e:: with SMTP id oq14mr28674546ejb.15.1618940977513;
        Tue, 20 Apr 2021 10:49:37 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id p2sm13494718ejo.108.2021.04.20.10.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 10:49:36 -0700 (PDT)
Date: Tue, 20 Apr 2021 19:49:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH v2 1/2] drm/amd/amdgpu/amdgpu_device.c: Replace
 drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Message-ID: <YH8UL76DQZUrN0Jc@phenom.ffwll.local>
References: <20210419150341.24959-1-fmdefrancesco@gmail.com>
 <20210419150341.24959-2-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210419150341.24959-2-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Mon, Apr 19, 2021 at 05:03:40PM +0200, Fabio M. De Francesco wrote:
> Replace the deprecated API with new helpers, according to the TODO list
> of the DRM subsystem. The new API has been introduced with commit
> b7ea04d299c7: DRM_MODESET_LOCK_ALL_BEGIN() simplifies grabbing all modeset
> locks using a local context and has the advantage of reducing boilerplate.

So this is only half of the story, because the boilerplate only exists
when you're using drm_modeset_lock_all_ctx. Which should be used for
modern atomic display drivers everywhere.

But drm_modeset_lock_all_ctx isn't exactly the same as
drm_modeset_lock_all, so this needs to be explained.

Now the problem with drm_modeset_lock_all is that it hides a memory
allocation, and if that allocation fails then we just die. Which isn't
great really, but in practice the kernel tries really hard to never fail
this allocation. That's why we move the drm_modeset_acquire_ctx onto the
stack.

I think for understanding what's going on here you'd first need to convert
the code to the full open-code boilerplate using drm_modeset_lock_all_ctx,
with explanations of why the changes are ok. Then replace it with the
convenient macro. Once it's clear what's going on under the hood it should
then be easier to explain the situation in subsequent conversions with
just one patch.
-Daniel


> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v1: Added further information in the commit message.
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index 6447cd6ca5a8..e1a71579f8e6 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -32,6 +32,7 @@
>  #include <linux/slab.h>
>  
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_drv.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/amdgpu_drm.h>
>  #include <linux/vgaarb.h>
> @@ -3694,14 +3695,17 @@ int amdgpu_device_suspend(struct drm_device *dev, bool fbcon)
>  
>  	if (!amdgpu_device_has_dc_support(adev)) {
>  		/* turn off display hw */
> -		drm_modeset_lock_all(dev);
> +		struct drm_modeset_acquire_ctx ctx;
> +		int ret;
> +
> +		DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
>  		drm_connector_list_iter_begin(dev, &iter);
>  		drm_for_each_connector_iter(connector, &iter)
>  			drm_helper_connector_dpms(connector,
>  						  DRM_MODE_DPMS_OFF);
>  		drm_connector_list_iter_end(&iter);
> -		drm_modeset_unlock_all(dev);
> -			/* unpin the front buffers and cursors */
> +		DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
> +		/* unpin the front buffers and cursors */
>  		list_for_each_entry(crtc, &dev->mode_config.crtc_list, head) {
>  			struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
>  			struct drm_framebuffer *fb = crtc->primary->fb;
> @@ -3830,19 +3834,21 @@ int amdgpu_device_resume(struct drm_device *dev, bool fbcon)
>  	/* blat the mode back in */
>  	if (fbcon) {
>  		if (!amdgpu_device_has_dc_support(adev)) {
> +			struct drm_modeset_acquire_ctx ctx;
> +			int ret;
> +
>  			/* pre DCE11 */
>  			drm_helper_resume_force_mode(dev);
>  
>  			/* turn on display hw */
> -			drm_modeset_lock_all(dev);
> +			DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
>  
>  			drm_connector_list_iter_begin(dev, &iter);
>  			drm_for_each_connector_iter(connector, &iter)
>  				drm_helper_connector_dpms(connector,
>  							  DRM_MODE_DPMS_ON);
>  			drm_connector_list_iter_end(&iter);
> -
> -			drm_modeset_unlock_all(dev);
> +			DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
>  		}
>  		amdgpu_fbdev_set_suspend(adev, 0);
>  	}
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

