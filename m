X-GM-THRID: 6952842807978491904
X-Received: by 2002:adf:ba54:: with SMTP id t20mr15247859wrg.353.1618843820971;
        Mon, 19 Apr 2021 07:50:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4a04:: with SMTP id c4ls8067702wmp.1.gmail; Mon, 19
 Apr 2021 07:50:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxqDbzCsfh7mKsnreRvSpO3EQLZAHJpH8/osiv/Ec5ExGEHg5sRkeufW2yBYHi0GBELuCP/
X-Received: by 2002:a1c:7f4a:: with SMTP id a71mr22062697wmd.1.1618843819445;
        Mon, 19 Apr 2021 07:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618843819; cv=none;
        d=google.com; s=arc-20160816;
        b=BQlBvjudMyg25tpavHJzABfqyIly3rFnjC4VM7mkcP1xBhsfdfcLAO1dMaGSOsCHnX
         CQIkEK7g4BCuIe9CKSy1RVNtn+q8b9l8QMCfM/9e1y4po0HxfSjCuMTUyxM9ldmOxN2a
         ct81qy7Ua0lPflGF6pIaddosatU8M2R0MRu8gdp4lkdyVjOKPsAztmFjfVNC6whHzn+s
         Q7QEmb05mvIk6EJcLQNI5SmImmLaVVS+uyx7eTZIws9sP2z4ORHvC0ISm2cryIv0sVVG
         Wf6NnDeU45Gy8xkRBSwfZF6PzdrQJFwN5J9LYUyPEIrvx344Cqz7l/6zzh7ACRuxuKkN
         8ruw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=dv1Dvg996bgyZRqHlAq30EfOR+q5M8FzSV/iRpcqwWA=;
        b=faNrQ/xzxRqkGRu7Judt18IC43r+eDIM54OMVtQRgbeuJH8N/7PD5O0PXvphX3a3uv
         OqTFiuynlMKTGKpqwgAEoUJQ+HM8Qldzh7FcmIEaQW1d0MK8oL67A6IBHb3SIpoTX1Ag
         uVW3VYVLuVxjycx17C7qYCEwps11hNT5Df+RZ+wihjS3EI/m7Ee5I1ZsPmxRyjBaslEB
         aiRBL85HaCKr3Fn7pMIvg9fKKdcEbqTAjNKaCthyWs3bweRMwiQ+z83lYv3zOGuFq/8a
         K9NN+2ixdpi4aSUG/lOLovrtVjrHkWZTgTYYXE9pYsNZvyacNzNzH58KigP1AXbOxUNW
         7D8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r4si41677wma.1.2021.04.19.07.50.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 07:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AI1yhiKCHQ7Olw/DlHelf55DYdL4zR+YMi2QD?=
 =?us-ascii?q?/UZ3VBBTb4ikh9mj9c576TbYqhY0HEshl9eJJbWaTRrnnvRIyKQYILvKZniEhE?=
 =?us-ascii?q?KGII1u5oPpwXnBNkTFh4xg/Ih6dawWMrDNJHxbqeq/3wWiCdYnx7C8npyAoevF?=
 =?us-ascii?q?1X9iQUVLRshbjztRMQqQHk1oSAQuP/NQKLOn+sFFqzC8EE55Uu2HABA+M9Trlp?=
 =?us-ascii?q?nwuKijRwIaCRgm7wfmt0LM1ILH?=
X-IronPort-AV: E=Sophos;i="5.82,234,1613430000"; 
   d="scan'208";a="379075870"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 16:50:18 +0200
Date: Mon, 19 Apr 2021 16:50:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, 
    Alex Deucher <alexander.deucher@amd.com>, 
    =?ISO-8859-15?Q?Christian_K=F6nig?= <christian.koenig@amd.com>, 
    David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
    Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] drm/amd/amdgpu/amdgpu_device.c:
 Replace drm_modeset_*_all with DRM_MODESET_LOCK_ALL_*
In-Reply-To: <4883020.1eLjRNAHnk@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104191649440.17501@hadrien>
References: <20210419122059.738-1-fmdefrancesco@gmail.com> <20210419122059.738-2-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104191506110.16374@hadrien> <4883020.1eLjRNAHnk@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:

> On Monday, April 19, 2021 3:08:51 PM CEST Julia Lawall wrote:
> > On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:
> > > Replace the deprecated API with new helpers, according to the TODO list
> > > of the DRM subsystem.
> >
> > The commit message will perhaps not be very meaningful one year from now.
> > You could say for example DRM_MODESET_LOCK_ALL_BEGIN was introduced in
> > commit XXX (there is a proper format for referring to other commits) for
> > what purpose.  And then say that you are making the replacement.
> >
> > Actually, I'm a little surprised to see something that looks like a
> > function call be replaced by something that looks like a macro.  Maybe it
> > was a macro all along, and this is just making that more clear.  In any
> > case, if I were to look at this commit, I would appreciate a little more
> > context information.
> >
> > julia
> >
> I have made that message in line with an old commit (9bcaa3fe58ab) that had
> been taken by D. Vetter (the DRM maintainer). That message didn't explain more
> than referring to the TODO list. I try to stick with each subsystem's
> conventions.
>
> However, I agree with you: referring to a TODO list, which some day  will
> surely change, is not the best means to provide context information.
>
> From that macro documentation (https://dri.freedesktop.org/docs/drm/gpu/drm-kms.html#c.DRM_MODESET_LOCK_ALL_BEGIN):
>
> "DRM_MODESET_LOCK_ALL_BEGIN  simplifies grabbing all modeset locks using a
> local context. This has the advantage of reducing boilerplate, [...]".
> (Please, note that I haven't copied the last part of the paragraph because it
> talks about checking the return value but I think it's useless because the
> only possible return value is 0).
>
> If more context information is needed, I would add the above-mentioned note to
> my commit message and submit a v2 patch.
>
> Is it the right way to solve the issue that you pointed out?

It seems find to include the information you propose.

thanks,
julia

>
> Thanks in advance,
>
> Fabio
> >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 18 ++++++++++++------
> > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > > b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c index
> > > 6447cd6ca5a8..e1a71579f8e6 100644
> > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > > @@ -32,6 +32,7 @@
> > >
> > >  #include <linux/slab.h>
> > >
> > >  #include <drm/drm_atomic_helper.h>
> > >
> > > +#include <drm/drm_drv.h>
> > >
> > >  #include <drm/drm_probe_helper.h>
> > >  #include <drm/amdgpu_drm.h>
> > >  #include <linux/vgaarb.h>
> > >
> > > @@ -3694,14 +3695,17 @@ int amdgpu_device_suspend(struct drm_device *dev,
> > > bool fbcon)>
> > >  	if (!amdgpu_device_has_dc_support(adev)) {
> > >
> > >  		/* turn off display hw */
> > >
> > > -		drm_modeset_lock_all(dev);
> > > +		struct drm_modeset_acquire_ctx ctx;
> > > +		int ret;
> > > +
> > > +		DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
> > >
> > >  		drm_connector_list_iter_begin(dev, &iter);
> > >  		drm_for_each_connector_iter(connector, &iter)
> > >
> > >  			drm_helper_connector_dpms(connector,
> > >
> > >
> DRM_MODE_DPMS_OFF);
> > >
> > >  		drm_connector_list_iter_end(&iter);
> > >
> > > -		drm_modeset_unlock_all(dev);
> > > -			/* unpin the front buffers and cursors */
> > > +		DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
> > > +		/* unpin the front buffers and cursors */
> > >
> > >  		list_for_each_entry(crtc, &dev->mode_config.crtc_list,
> head) {
> > >
> > >  			struct amdgpu_crtc *amdgpu_crtc =
> to_amdgpu_crtc(crtc);
> > >  			struct drm_framebuffer *fb = crtc->primary-
> >fb;
> > >
> > > @@ -3830,19 +3834,21 @@ int amdgpu_device_resume(struct drm_device *dev,
> > > bool fbcon)>
> > >  	/* blat the mode back in */
> > >  	if (fbcon) {
> > >
> > >  		if (!amdgpu_device_has_dc_support(adev)) {
> > >
> > > +			struct drm_modeset_acquire_ctx ctx;
> > > +			int ret;
> > > +
> > >
> > >  			/* pre DCE11 */
> > >  			drm_helper_resume_force_mode(dev);
> > >
> > >  			/* turn on display hw */
> > >
> > > -			drm_modeset_lock_all(dev);
> > > +			DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0,
> ret);
> > >
> > >  			drm_connector_list_iter_begin(dev, &iter);
> > >  			drm_for_each_connector_iter(connector,
> &iter)
> > >
> > >
> drm_helper_connector_dpms(connector,
> > >
> > >
> DRM_MODE_DPMS_ON);
> > >
> > >  			drm_connector_list_iter_end(&iter);
> > >
> > > -
> > > -			drm_modeset_unlock_all(dev);
> > > +			DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
> > >
> > >  		}
> > >  		amdgpu_fbdev_set_suspend(adev, 0);
> > >
> > >  	}
> > >
> > > --
> > > 2.31.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group. To unsubscribe from this group and stop
> receiving
> > > emails from it, send an email to
> > > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion on
> > > the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20210419122059.738-2-fmd
> > > efrancesco%40gmail.com.
>
>
>
>
>

