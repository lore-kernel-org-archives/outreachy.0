X-GM-THRID: 6612482196656619520
X-Received: by 2002:a17:906:6ace:: with SMTP id q14-v6mr3155521ejs.7.1539596785239;
        Mon, 15 Oct 2018 02:46:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:555:: with SMTP id k21-v6ls4686439eja.9.gmail; Mon,
 15 Oct 2018 02:46:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60ArBHuIdiG8v/XdH8xwrGK5YxQhf218Hjwr1Z8B+8bb/S813NvjqoLlJ93rhxscHmMmVkc
X-Received: by 2002:a17:906:8695:: with SMTP id g21-v6mr3165661ejx.4.1539596784544;
        Mon, 15 Oct 2018 02:46:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539596784; cv=none;
        d=google.com; s=arc-20160816;
        b=m0n7b12ZaDwkCBPbqARz5j7tHwxklB4x3l9KdHoTLt8X1+MWwckQdfKFTVI5WViRU5
         APFuKWAUoPtWQgpd82q2ba0laY/vA20Kp+99R+lxlTXTMqB1uuLrm7vyqcixIK+ozf8b
         dvHUCmJWFgwtNeakAcy96/bV0JzzyAzJlGg28TdKT62SgYYttBchVr7uTEm+bfRoKvci
         2wnGq9KoKC8TjXZL+Q3oQo5h73YJS1URLXcLihUhXsYq15PS53ZELoKCMc+fIEdOY7YP
         iFazKIeS5wqyzq4bCd1Somip/phHm+dTVbgjkrAYSLq7AgvYwqDBO1L0rwzo3mJN8HPv
         M9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=A3ldDPjTOJWdYxzvcGlYfBCq1++CV/1zdf+IXOj9U+c=;
        b=z8IGxk5wyEsS0m1acrTc7oYoy/FKJFE+1uCBwUdkADiR9ndb6rYyn8YH+UY/MSz7vP
         VAvofQktTpYXnF4jSYXcibRCKlDNC0ngKgpLwkHJdX64mq+9VytfAmNjlDZeixj6ZpUi
         BxoX/dOwclGz6nAHDiNTzacA77X4AjAvshJdo3kPM2VPjEUa54yhjdmI5tQgtq7biW6H
         z1CBS/8rOk4tjsaUlruZ87PfJi59uWJzcvIKbZOtNHBzgppowXzYyxP+tVRAmg16xQ/5
         gil/OOYXZlRrR1WAvMAiTp6C4EehyT0E9RnME7NwNmfHFucit1BmGU1wZhX7BohiVjan
         viSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o10-v6si107750ejc.0.2018.10.15.02.46.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Oct 2018 02:46:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,384,1534802400"; 
   d="scan'208";a="282093337"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2018 11:46:23 +0200
Date: Mon, 15 Oct 2018 11:46:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com
Subject: Re: [Outreachy kernel][PATCH v3] staging: bcm2835-camera: Remove
 'ret' variable
In-Reply-To: <20181015091720.GA16418@aakashd-VirtualBox>
Message-ID: <alpine.DEB.2.20.1810151144590.4157@hadrien>
References: <20181015091720.GA16418@aakashd-VirtualBox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 15 Oct 2018, Bhanusree Pola wrote:

> Return value to be returned without using extra variable 'ret'.
> Removed the useless variable 'ret' by hand using coccinelle semantic patch ret.cocci
> The following is the ret.cocci semantic patch used:

Sorry to be endlessly picky, but Coccinelle removed the uses of the
variable, and you removed the declaration of the variable by hand.  If one
looks at your semantic patch, one doesn't see anything that removes int
ret.

julia

>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>
> changelog:
>
> v2: Include semantic patch used in the commit message
> v3: Modified Commit message
>
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index c04bdf0..a124f51 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1510,7 +1510,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
>  				 struct vchiq_mmal_component *camera,
>  				 struct bm2835_mmal_dev *dev)
>  {
> -	int ret;
>  	struct mmal_parameter_camera_config cam_config = {
>  		.max_stills_w = dev->max_width,
>  		.max_stills_h = dev->max_height,
> @@ -1526,10 +1525,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
>  		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
>  	};
>
> -	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
> +	return vchiq_mmal_port_parameter_set(instance, &camera->control,
>  					    MMAL_PARAMETER_CAMERA_CONFIG,
>  					    &cam_config, sizeof(cam_config));
> -	return ret;
>  }
>
>  #define MAX_SUPPORTED_ENCODINGS 20
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181015091720.GA16418%40aakashd-VirtualBox.
> For more options, visit https://groups.google.com/d/optout.
>

