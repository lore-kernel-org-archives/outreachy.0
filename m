X-GM-THRID: 6952884734330404864
X-Received: by 2002:a1c:20c8:: with SMTP id g191mr5926461wmg.125.1618947539862;
        Tue, 20 Apr 2021 12:38:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1e5:: with SMTP id g5ls14210127wrd.1.gmail; Tue, 20 Apr
 2021 12:38:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwZSDZ6EP5MR74qsnGTMW9C7MFHHZfHkNjrev/zsAIYcrN29NRDNIXux0fUtlW6KQUY+dAD
X-Received: by 2002:adf:828e:: with SMTP id 14mr22258870wrc.410.1618947538549;
        Tue, 20 Apr 2021 12:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618947538; cv=none;
        d=google.com; s=arc-20160816;
        b=eEKwTbHahARDJFuEG7rvSJ3WX/F5FA+q1JJ5fMCGB+9iDR+QpI8sLjH6faQ/s+Yhg8
         bEle48cib5265iVc6W7n7q70PkqfSR0ND1kiK92wYF1Wq1PEDXN+T7fyOONnHtkZ/rPu
         psLBIjgkAZV5uNenSBfZnBtTq8fYpeTgyPI8x0nKKpJ2+8qfr8JKssPZ7+8jQSlhI74b
         LFGbIKR4OgzyrY6rnfEbueqOBISEaOnhM4pA1vhsSq8W12YNW5WIdr1YtJCt5yzaX6dP
         tJDA8A6ZTd0qPk77qtxPlWLFFCSPvNU+t+v5XUAncMsBXY9PbtljALqDTFtk0EoMFDD4
         wB4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hMkfPDMRdyyJ+LeflfeuMfIbnpp3+QEBfrxfVMuJb0A=;
        b=dRdA12sqm0sGhwIDNmftcPfNHyCi9t3mIgN0BsvzEWu6QDAcqAn+HS9Gy/nQtk47ZV
         7rm6jia2ckQg3IqKhr6v3UyEEKeJOp2/ux+m3yM2vwJFTRWnpWObxpMilwMOJpueHp2p
         UVpWq7GKaJ9MtQ+53C0IP9WX1xmuM//AXRkwCzGP7DBN9becYCeNzg+mDmofBZ4YvzcX
         jG+2vBXXx2VKPgTszYvtvUd6NdTADr3LgECvPr/uYSIk7JG0OXDugnmyn9ERE6Mi+ayA
         FXCj59CIcLTlXgf77okdyQ6brnTp9XnlJ4uwtcjuaSdtZ+uV68E2kite2mCDP9vKrxiQ
         QTng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZPHzQyQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id s141si977486wme.2.2021.04.20.12.38.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 12:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZPHzQyQ;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id sd23so51374816ejb.12
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Apr 2021 12:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hMkfPDMRdyyJ+LeflfeuMfIbnpp3+QEBfrxfVMuJb0A=;
        b=qZPHzQyQCMCRF4gnmXoaOoci4QFkqPYegKngEamsno86xzSbDAOI3BvF2E+9VBiPVf
         uHWUt6F0Lyy4FD4NuAQbhsxH4geIIZSjPTRQlOydIjQkrV4UjgCBRfqz/8f09o8Frkux
         CnZMkXaY6YYOo7umM8eXFkzU1c4Ygi/LN/BVeefP6P3Y3QDplgKBTG1AIX16c/rt9Jbj
         0O6ihhKGeMPBGJX9jfQ5LRXX2h9nOIZKAXOWLtqxfCPPzQ4sHKjNJ97j6O1GvxbTGDv+
         zBA5cz4NssrmuZAIMoGIQEwn9FdMXMOTlDq9NjTshWtERlrW/Knl830tdYa0x8GD8eYq
         Jkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hMkfPDMRdyyJ+LeflfeuMfIbnpp3+QEBfrxfVMuJb0A=;
        b=ICU6BVFMimRNiCG9Q8VhijFwyEwiYIiH0tbY0DoHKe0BQmRQ8X5TWMA7rRZDIwFOsh
         isQ8JnDO8yqn8VtgtLB41Pgb7KigbJf/pOR/+bt1yP2FBjy3UphjvzaJXHS8WWSAgiR5
         heYiuJRdM4h8XHUqbgJJZe8G4jyK+TsFOnEMLjvHB+qu/7QMGLmu2lLy4tRsau2MGJlc
         /AH6sR1VYkFgM8BiZ9f3RuRFGqY+YekklGvNiJO0p9llAWZZEDgLMajsXzHKrZQbYNAi
         T9Ml6Yqtaocs9PU1vbr7QUQq3ouWNS/sd/AYfr1kP4BqurUQOkv6HulqzsQTM2JczVL+
         vWDw==
X-Gm-Message-State: AOAM531A/BgOqjnZpLoAwCQp7B71RF7e5GdCWbfInUqavtOuwYspJPU4
	UGHcWjWM5nAFLcB0rzHB8cw=
X-Received: by 2002:a17:906:c419:: with SMTP id u25mr29857701ejz.332.1618947538214;
        Tue, 20 Apr 2021 12:38:58 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id f20sm10363057ejw.36.2021.04.20.12.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 12:38:57 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [PATCH v2 1/2] drm/amd/amdgpu/amdgpu_device.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Tue, 20 Apr 2021 21:38:56 +0200
Message-ID: <179886319.If19VHCz4f@linux.local>
In-Reply-To: <YH8UL76DQZUrN0Jc@phenom.ffwll.local>
References: <20210419150341.24959-1-fmdefrancesco@gmail.com> <20210419150341.24959-2-fmdefrancesco@gmail.com> <YH8UL76DQZUrN0Jc@phenom.ffwll.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 20, 2021 7:49:35 PM CEST Daniel Vetter wrote:
> On Mon, Apr 19, 2021 at 05:03:40PM +0200, Fabio M. De Francesco wrote:
> > Replace the deprecated API with new helpers, according to the TODO list
> > of the DRM subsystem. The new API has been introduced with commit
> > b7ea04d299c7: DRM_MODESET_LOCK_ALL_BEGIN() simplifies grabbing all modeset
> > locks using a local context and has the advantage of reducing boilerplate.
> 
> So this is only half of the story, because the boilerplate only exists
> when you're using drm_modeset_lock_all_ctx. Which should be used for
> modern atomic display drivers everywhere.
> 
> But drm_modeset_lock_all_ctx isn't exactly the same as
> drm_modeset_lock_all, so this needs to be explained.
> 
> Now the problem with drm_modeset_lock_all is that it hides a memory
> allocation, and if that allocation fails then we just die. Which isn't
> great really, but in practice the kernel tries really hard to never fail
> this allocation. That's why we move the drm_modeset_acquire_ctx onto the
> stack.
> 
> I think for understanding what's going on here you'd first need to convert
> the code to the full open-code boilerplate using drm_modeset_lock_all_ctx,
> with explanations of why the changes are ok. Then replace it with the
> convenient macro. Once it's clear what's going on under the hood it should
> then be easier to explain the situation in subsequent conversions with
> just one patch.
> -Daniel
>
Thanks for the clarification. I'll go through this code again using the path 
you showed. Eventually I will send out another patch.

Fabio
>
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> > Changes from v1: Added further information in the commit message.
> > 
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c index 
6447cd6ca5a8..e1a71579f8e6 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > @@ -32,6 +32,7 @@
> > 
> >  #include <linux/slab.h>
> >  
> >  #include <drm/drm_atomic_helper.h>
> > 
> > +#include <drm/drm_drv.h>
> > 
> >  #include <drm/drm_probe_helper.h>
> >  #include <drm/amdgpu_drm.h>
> >  #include <linux/vgaarb.h>
> > 
> > @@ -3694,14 +3695,17 @@ int amdgpu_device_suspend(struct drm_device *dev, 
bool fbcon)
> > 
> >  	if (!amdgpu_device_has_dc_support(adev)) {
> >  	
> >  		/* turn off display hw */
> > 
> > -		drm_modeset_lock_all(dev);
> > +		struct drm_modeset_acquire_ctx ctx;
> > +		int ret;
> > +
> > +		DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
> > 
> >  		drm_connector_list_iter_begin(dev, &iter);
> >  		drm_for_each_connector_iter(connector, &iter)
> >  		
> >  			drm_helper_connector_dpms(connector,
> >  			
> >  						  
DRM_MODE_DPMS_OFF);
> >  		
> >  		drm_connector_list_iter_end(&iter);
> > 
> > -		drm_modeset_unlock_all(dev);
> > -			/* unpin the front buffers and cursors */
> > +		DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
> > +		/* unpin the front buffers and cursors */
> > 
> >  		list_for_each_entry(crtc, &dev->mode_config.crtc_list, 
head) {
> >  		
> >  			struct amdgpu_crtc *amdgpu_crtc = 
to_amdgpu_crtc(crtc);
> >  			struct drm_framebuffer *fb = crtc->primary-
>fb;
> > 
> > @@ -3830,19 +3834,21 @@ int amdgpu_device_resume(struct drm_device *dev, 
bool fbcon)
> > 
> >  	/* blat the mode back in */
> >  	if (fbcon) {
> >  	
> >  		if (!amdgpu_device_has_dc_support(adev)) {
> > 
> > +			struct drm_modeset_acquire_ctx ctx;
> > +			int ret;
> > +
> > 
> >  			/* pre DCE11 */
> >  			drm_helper_resume_force_mode(dev);
> >  			
> >  			/* turn on display hw */
> > 
> > -			drm_modeset_lock_all(dev);
> > +			DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, 
ret);
> > 
> >  			drm_connector_list_iter_begin(dev, &iter);
> >  			drm_for_each_connector_iter(connector, 
&iter)
> >  			
> >  				
drm_helper_connector_dpms(connector,
> >  				
> >  							  
DRM_MODE_DPMS_ON);
> >  			
> >  			drm_connector_list_iter_end(&iter);
> > 
> > -
> > -			drm_modeset_unlock_all(dev);
> > +			DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
> > 
> >  		}
> >  		amdgpu_fbdev_set_suspend(adev, 0);
> >  	
> >  	}





