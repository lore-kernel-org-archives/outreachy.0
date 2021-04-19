X-GM-THRID: 6952842807978491904
X-Received: by 2002:a05:600c:190c:: with SMTP id j12mr2401811wmq.18.1618837734436;
        Mon, 19 Apr 2021 06:08:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e12:: with SMTP id g18ls1951309wmh.1.canary-gmail; Mon,
 19 Apr 2021 06:08:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxabWdWYzxE3wTzWocWMQ/ribY0nc6yFt4gLFqsVQdTTJZqif+DJHY5y0MDnWBl6rPC2pqd
X-Received: by 2002:a05:600c:4e91:: with SMTP id f17mr20919058wmq.6.1618837732915;
        Mon, 19 Apr 2021 06:08:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618837732; cv=none;
        d=google.com; s=arc-20160816;
        b=fqODvML16OpNSlO5g5A5w2JcLE4nry0q3BGS3CyH1NIKYXI962bmujl3dlOJiKZN/u
         2Tbsq/KCmgaPth2SwVTHvW7588Pt05fuyA6XpaAOjsKSDkdcVc7cGBcYN0obkO6Yb4nr
         EIZoDzsOr3gbmfzItYekH1TZ42lcXVozNfoLHCtuUF3UaPma2Wop2M59Inv06vlD9HBh
         kvBpO/ay8Dd8AFlEzqSRygJK+etpFE+zv4KbaUYUtUNbB8MZApir+sXNmlFlPBCHym4q
         GaZqTKZcOCQR8WrRIGUuCcczl9RhYbwPfKKPr75CAf639AwP67IP26goUdnZnQG0VOiO
         RXGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=VieK8r9C65hSEQ3wzo1NPQ7tXb6TU1SL52HJ+lGxkhU=;
        b=DIg8nZKiP477GuimOWK90sBzDpANBAopLeF+wiXizyh5TOnlDYPP1XuhaBKZAMXgyc
         Umc4bmfC+1zufDGU1xOK9jpfc/Nn3JCdwHf5XExG89SDRNPnT6fEbIHIjWD4D1eC1AKJ
         9NIVkhRVzfXobk4I78W5IoyrcS8Qc+n3PSa/tXRmkVFETA8HHbtc9RvgyrC1C3l5mAU9
         eNhH0AfkUOGhpkRV2fpGwBo/vHNGj2qXcwzMhjJFqPmKBHU8awyp8BzbSN0aarIw2g1R
         MmZk8bkNWRw+xR2TfEZ2+KJGix99UOeqOs+tz6SQrDmkWg3zFiSDJqj7eacKpvGanVbG
         Md1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si1409666wme.2.2021.04.19.06.08.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 06:08:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AU6j+jqpTWzpVRm8IclErCfkaV5vcL9V00zAX?=
 =?us-ascii?q?/kB9WHVpW+afkN2jm+le6A/shF8qKRcdsP2jGI3Fe3PT8pZp/ZIcVI3PYCDKsH?=
 =?us-ascii?q?alRbsC0aLM2Dvlchefysd49YNNN5dzE8fxC18St6jHyS21CcwpztXC0I3Av5a7?=
 =?us-ascii?q?815XQQtna75t4m5CY27xeCJLbTNbDpk0Hof03LskmxOcfx0sH6eGL0UeU/OGj9?=
 =?us-ascii?q?PGk4+OW29iOzcXrCGIkDOB46LhH3Gjr25uK0I1sM1SjFTtokjQ+rijteq61w+Z?=
 =?us-ascii?q?7GPa9ZJQ8eGN9vJzQOezi8gJJjDtkBvAXvUcZ5Sy+BwwqOGrrHwtjN7Qyi1QSP?=
 =?us-ascii?q?hb2jf8b2Gw5TvBsjOQoQoG2jvGz1WRhD/Pp8jwRDVSMbsJuatpNiHU7Ectp7hH?=
 =?us-ascii?q?ocV29lPcjZxKFhnN9R6Nl+TgZlVRkFauq3ZnufUclRVkIPgjQY4Ul4oC50lYVL?=
 =?us-ascii?q?8dASOS0vFSLMBeSPvb+O1dfRexZ2mxhBgY/PWcGk40AgyNTgwuutf96UkloFlJ?=
 =?us-ascii?q?i3Ef2NcUkjMhzfsGOuZ5ztWBCKJ1j7tDCup+V9MCOM4xBfGwFnfGTVb3PGWeLU?=
 =?us-ascii?q?+PLtBzB07w?=
X-IronPort-AV: E=Sophos;i="5.82,234,1613430000"; 
   d="scan'208";a="379061576"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 15:08:52 +0200
Date: Mon, 19 Apr 2021 15:08:51 +0200 (CEST)
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
In-Reply-To: <20210419122059.738-2-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104191506110.16374@hadrien>
References: <20210419122059.738-1-fmdefrancesco@gmail.com> <20210419122059.738-2-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:

> Replace the deprecated API with new helpers, according to the TODO list
> of the DRM subsystem.

The commit message will perhaps not be very meaningful one year from now.
You could say for example DRM_MODESET_LOCK_ALL_BEGIN was introduced in
commit XXX (there is a proper format for referring to other commits) for
what purpose.  And then say that you are making the replacement.

Actually, I'm a little surprised to see something that looks like a
function call be replaced by something that looks like a macro.  Maybe it
was a macro all along, and this is just making that more clear.  In any
case, if I were to look at this commit, I would appreciate a little more
context information.

julia

>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210419122059.738-2-fmdefrancesco%40gmail.com.
>

