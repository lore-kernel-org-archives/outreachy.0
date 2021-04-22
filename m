X-GM-THRID: 6953573775310848000
X-Received: by 2002:a1c:4c04:: with SMTP id z4mr14340395wmf.28.1619084788111;
        Thu, 22 Apr 2021 02:46:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:49d4:: with SMTP id w203ls2372346wma.2.gmail; Thu, 22
 Apr 2021 02:46:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwpZMPJDd6A40yIN+zMu95jxC4bJByMbGOJlOxCIiYME+B30PEfTPBcn9tHTeRbH0tBhROZ
X-Received: by 2002:a1c:9853:: with SMTP id a80mr2864972wme.44.1619084786702;
        Thu, 22 Apr 2021 02:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619084786; cv=none;
        d=google.com; s=arc-20160816;
        b=pmeMU4PEoPk7dwiilP/zoU+o5zq2ON4BVVkdzMZHTdmypH5pcRk4/IRAwmiDpZmM2N
         sK/RoP1N1G/JCOKXl2UhAOHasYKakVnvB0ooDdCCho13qIvkxx77EMCMNICk1tTTUtR7
         C3N7/65sNPxwUEHHIWCG6pD1sA2jCYL62IsdANqWcJC4oVwccNJnnjL98O/zgodPhg6c
         OLOMNqAH9evH3tfK5SVXuUp+KgqrKflzldWGMFIRX7IXHfVr29LuwvB78coiYRX4yALx
         L+LS3qnBtnA6pDWSzzQK96ZQM7xSsh3I9LbzyiDqYlCI7NemOZ6xto4Up6T6FmaYR6he
         lRBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hHenTJ0Iw1ZTELVG+kP1QVYQ2RCVTfVgpTgHlUMx1u8=;
        b=kY3WHSfgnw4iAqpBrFo4ZrCtmmXnoB370YBAQsfWwDv3bfw5uTKl8Xsn+NF2tgU/8m
         3ybsppBrz8j02gZzzvxOYZ9QZZP24jOcJ64HG5qqDXmP3GO+d271wDF2xA60paRx05ae
         hZNBglGh5Yek8zmpqeYpmJnRRaz54hHj8YSDiu3Bnbb6zIG3jEtZTNKriw7Z7eiozu8G
         D4kN9z0c3wthSGo7sD6o73fCgAcnHvHF8QnhOwnaQZmcpKPWajiKry53mducmVB2f+zV
         qImVJkQPX++GHAgKgA59GzcRMx92g2NzREOlm8P5MK8qm7fybh81zDtI29hzR+HaHFYF
         CQhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=TzuKZJDD;
       spf=neutral (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id 5si550270wrj.4.2021.04.22.02.46.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 02:46:26 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=TzuKZJDD;
       spf=neutral (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x432.google.com with SMTP id e7so35140626wrs.11
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Apr 2021 02:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=hHenTJ0Iw1ZTELVG+kP1QVYQ2RCVTfVgpTgHlUMx1u8=;
        b=TzuKZJDDfEu05sj+sNSvaPDXXrL9fau8QBkpmgh1DG0EE+XNygu6nSQzKYGCT4v277
         XMQ/vR3bivR6tCWOs6TumlK1US8k1ZR6M7sYtwjVuhjDn8aDoFG1hYatUlRMXoLdYNPd
         VolgpPcuGNmTsCexYEcKNSZPM+b6EkDCA/z/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=hHenTJ0Iw1ZTELVG+kP1QVYQ2RCVTfVgpTgHlUMx1u8=;
        b=fOfIV22oCXuC6FTO5Zb49sv7eV/V74yDYGsOw8+ngYLE7kXThQ/9m9XgETCnW9TC6f
         EojMYWH673W6Ey/yvebbYRjklF/ubDgG/MpDIQE25+gYqygI86HfDKYFzkYk/3mMTKUn
         nSrpvS65VSmE7SAHdy6l9wVoh0pH2IWViBaNZRwKkpIzD0Bcv82gFxCtucuzFCl7Mddd
         HqrzLD38Jn9sQUMF3TIkEwwMsJoep9jgd/3+PsAIK1cONYUxFcox0Dl53TpMWIzKbMYX
         d4ahmYHNDW9OcVrC+KY0nbH3+gIrZjp4VWQpsNcvI2A0dJlmZILwE+GEuR7gE12joyAC
         oRZQ==
X-Gm-Message-State: AOAM533oDwKfQlE5pkpTbO0bgSKZw0jVtwg46jLij3IYLX0tSBmn1O93
	g5W1Oqp/CP1JOoU5/UPeaZJ+L9t6POM/ZA==
X-Received: by 2002:adf:84e6:: with SMTP id 93mr2890288wrg.376.1619084786482;
        Thu, 22 Apr 2021 02:46:26 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id n18sm2569248wrw.11.2021.04.22.02.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 02:46:25 -0700 (PDT)
Date: Thu, 22 Apr 2021 11:46:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH v3 1/2] drm/amd/amdgpu/amdgpu_drv.c: Replace
 drm_modeset_lock_all() with drm_modeset_lock_all_ctx()
Message-ID: <YIFF77+MS+vQ3uTV@phenom.ffwll.local>
References: <20210421113716.15472-1-fmdefrancesco@gmail.com>
 <20210421113716.15472-2-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210421113716.15472-2-fmdefrancesco@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 

On Wed, Apr 21, 2021 at 01:37:15PM +0200, Fabio M. De Francesco wrote:
> Replace the deprecated API with new helpers, according to the
> TODO list of the DRM subsystem.
> 
> In this first patch drm_modeset_lock_all() is replaced with
> drm_modeset_lock_all_ctx(). Unlike drm_modeset_lock_all(),
> the latter doesn’t take the global drm_mode_config.mutex
> since that lock isn’t required for modeset state changes.

So this is only true for core modeset code, not necessarily for drivers.
So needs to be audited in each case.

Now loocking at the precise code you're touching here the situation is a
lot more specific:
- We are looping over all the crtc. This list never changes, so no locks
  needed.
- Then we look at crtc->state, which is proteced by crtc->mutex. So that's
  the only lock we need, and we only need to hold a single one (so no
  EDEADLCK retry loop needed due to multiple lock acquisition).

So I think the right fix here is to just grab the crtc->mutex lock right
around the access to crtc->state with drm_modeset_lock(). And ditch the
lock_all and all its complexity completely.

tldr; locking is complicated :-)

Can you pls respin?

Thanks, Daniel

> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v2: The work is split in two consecutive logical steps.
> Changes from v1: Added further information to the commit message.
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> index 671ec1002230..856903db34c5 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
> @@ -1438,8 +1438,15 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
>  
>  	if (amdgpu_device_has_dc_support(adev)) {
>  		struct drm_crtc *crtc;
> -
> -		drm_modeset_lock_all(drm_dev);
> +		struct drm_modeset_acquire_ctx ctx;
> +		int ret_lock = 0;
> +
> +retry:
> +		drm_modeset_lock_all_ctx(drm_dev, &ctx);
> +		if(ret_lock == -EDEADLK) {
> +			drm_modeset_backoff(&ctx);
> +			goto retry;
> +		}
>  
>  		drm_for_each_crtc(crtc, drm_dev) {
>  			if (crtc->state->active) {
> @@ -1448,7 +1455,7 @@ static int amdgpu_pmops_runtime_idle(struct device *dev)
>  			}
>  		}
>  
> -		drm_modeset_unlock_all(drm_dev);
> +		drm_modeset_drop_locks(&ctx);
>  
>  	} else {
>  		struct drm_connector *list_connector;
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

