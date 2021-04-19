X-GM-THRID: 6952842807978491904
X-Received: by 2002:ac2:5feb:: with SMTP id s11mr11733872lfg.558.1618840307550;
        Mon, 19 Apr 2021 06:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2129:: with SMTP id a41ls2065861ljq.5.gmail; Mon,
 19 Apr 2021 06:51:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvVtn0KwdK9K9wt/8JQ+ar6FT9kD1bqgX0F0m8ZhuBvyV/I//qDUOtdRdv33ixueQmSb0v
X-Received: by 2002:a2e:8416:: with SMTP id z22mr11401273ljg.43.1618840305906;
        Mon, 19 Apr 2021 06:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618840305; cv=none;
        d=google.com; s=arc-20160816;
        b=b7xQwsRGj/qVdgeHwET74lxqk+k8Wxei+M2uN3QD0qQnWRZ61Y5SI9/ym7zUsxYrQB
         OCf8NnNksWa5QL4URKy3lFbn71SfnbIAUjyrKjYqg9FgvZ9wGJXrHT9oAt/1lqcENN4p
         P9FC3NfcxYmjR7+vUNrgfi4mBPS/BM7UEnDJUinoHPFzZItfej+BTzk9WWazjvEwcR47
         YLhSBwWSFpqVyo68KcnsIWTJBduaD15A5P2A8H2S7V8n8Db8ffDxcSPvGDrJfIirFFBu
         KWyylbUZT3m9K0JWUhZuAfli9L+H8YphdcLmj2o4/emdrAqTN/jGRUenYXR/64Es0jYF
         QAkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Cof3fQ+FS9F0riGAc/xnWt+MmWs7z47fFubv8E2ON9o=;
        b=sBPpl8JaRLK4a2IKukDU3IwyFDXnUoZ32q3u6eh3vlQe+t2liSJCmDQta08RowCqGB
         6EKhN0VHuSCcX6Q2/j2v+xF6+aI2r96VzU7jma+dMeY8KIOAyXvtda5nOpKzgOiDWLHA
         GhzlThOEcO4gls/Il9JMo0RykzpVRzmL4eHRUzIfsfe0N+3BL3BhgUH08Iztu0tdLHh2
         7/XscbUiKC4QAqv/+6d/zhCtg/g91tNRHvlzjpn7CB+RFxuIzi4hXcfBx1WNY+F04V+x
         jmAdZmaEyQvGvqnqdKZsZM0PxoT+KxUAGgZrSNFatxN1WDcnexUhOI4wYN7qy+sxKXFo
         EaoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U2GDjV1w;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id n10si832556lft.1.2021.04.19.06.51.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 06:51:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U2GDjV1w;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id y3so4513237eds.5
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Apr 2021 06:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cof3fQ+FS9F0riGAc/xnWt+MmWs7z47fFubv8E2ON9o=;
        b=U2GDjV1wTpVMCh3GsuQkl47kI8hqgdlDJ8E+4V3v0IOnLCoWqhOLVQ3Zwet08XZWfh
         ARAkgzY0eTOdssl8koF+4XvDstxJk1TeFe2OW1aWYuXc+39aeuIhgLvGF4it/Mhc+n53
         8mFXmAqJd+B9HZAc+nd5qkBmM0gnEi5HmWQ2veym/KfcY5yTZgEsH1SBsgWhCwEo5BfY
         3hMfqNPMizPKDUb/W3zC3mQnCFuSQimbJozWKmI5ybiQ+EHYSD+5LQ7xe9/xUEoPxfLF
         4UPhgueHGgsYo0Y3QIMK0cxhp6KEiW2CQE0mittXpXnrdJj3viQqLFWlT0+1fw65WDcB
         5sFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cof3fQ+FS9F0riGAc/xnWt+MmWs7z47fFubv8E2ON9o=;
        b=GeXl+oPZngh6TFo/dyjj2QYM3Pd9W6V4AKY0JzlW30+hKvfB5vkSY32jO2pvwK4Osq
         f1cYKlDTnD0LI2Y//AT/fqkYgg6rSf3DwYe9pzvL7lUhWySri8B/0fU3pvza5Y25E4EH
         QJktVdVN1H4ErGegE1BXYVKB5DxuRyXQQQmZe9VGIHefI7xztq/INgKE3ABvDnH2QFDP
         cZmOQpDIMuDGq/Sd0cI/GkJI5cONCNraiPuj0CxxKHJd3Drp+HSIUtCuZpbdf/T3PV9g
         IHRl0cdqKQFrpAgGNZoEPqykDLU16TP69EM65uEQm9b8/FZz7VverLPHfKG1y82kI1e9
         Mpbg==
X-Gm-Message-State: AOAM530/SvZ8IOSFc6yj49bDhicA28AcjaSuUBhzTNLnKGcb+ESNZHHQ
	3pvpI0qk2zZC+MrskePpS0I=
X-Received: by 2002:a05:6402:35c9:: with SMTP id z9mr25882757edc.94.1618840305671;
        Mon, 19 Apr 2021 06:51:45 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id q2sm10444900eje.24.2021.04.19.06.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Apr 2021 06:51:45 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] drm/amd/amdgpu/amdgpu_device.c: Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
Date: Mon, 19 Apr 2021 15:51:43 +0200
Message-ID: <4883020.1eLjRNAHnk@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104191506110.16374@hadrien>
References: <20210419122059.738-1-fmdefrancesco@gmail.com> <20210419122059.738-2-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104191506110.16374@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Monday, April 19, 2021 3:08:51 PM CEST Julia Lawall wrote:
> On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:
> > Replace the deprecated API with new helpers, according to the TODO list
> > of the DRM subsystem.
> 
> The commit message will perhaps not be very meaningful one year from now.
> You could say for example DRM_MODESET_LOCK_ALL_BEGIN was introduced in
> commit XXX (there is a proper format for referring to other commits) for
> what purpose.  And then say that you are making the replacement.
> 
> Actually, I'm a little surprised to see something that looks like a
> function call be replaced by something that looks like a macro.  Maybe it
> was a macro all along, and this is just making that more clear.  In any
> case, if I were to look at this commit, I would appreciate a little more
> context information.
> 
> julia
>
I have made that message in line with an old commit (9bcaa3fe58ab) that had 
been taken by D. Vetter (the DRM maintainer). That message didn't explain more 
than referring to the TODO list. I try to stick with each subsystem's  
conventions.

However, I agree with you: referring to a TODO list, which some day  will 
surely change, is not the best means to provide context information.

From that macro documentation (https://dri.freedesktop.org/docs/drm/gpu/drm-kms.html#c.DRM_MODESET_LOCK_ALL_BEGIN):

"DRM_MODESET_LOCK_ALL_BEGIN  simplifies grabbing all modeset locks using a 
local context. This has the advantage of reducing boilerplate, [...]". 
(Please, note that I haven't copied the last part of the paragraph because it 
talks about checking the return value but I think it's useless because the 
only possible return value is 0).

If more context information is needed, I would add the above-mentioned note to 
my commit message and submit a v2 patch.

Is it the right way to solve the issue that you pointed out?

Thanks in advance,

Fabio
> 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c index
> > 6447cd6ca5a8..e1a71579f8e6 100644
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
> > bool fbcon)> 
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
> > bool fbcon)> 
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
> > 
> > --
> > 2.31.1
> > 
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group. To unsubscribe from this group and stop 
receiving
> > emails from it, send an email to
> > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion on
> > the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/20210419122059.738-2-fmd
> > efrancesco%40gmail.com.





