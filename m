X-GM-THRID: 6392511932367110144
X-Received: by 10.157.27.111 with SMTP id l102mr2556684otl.93.1488373447004;
        Wed, 01 Mar 2017 05:04:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls3791111itc.15.canary-gmail; Wed, 01
 Mar 2017 05:04:05 -0800 (PST)
X-Received: by 10.107.187.197 with SMTP id l188mr2441173iof.55.1488373445899;
        Wed, 01 Mar 2017 05:04:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i189si2735420iti.0.2017.03.01.05.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:04:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,225,1484002800"; 
   d="scan'208";a="215164563"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 14:04:03 +0100
Date: Wed, 1 Mar 2017 14:03:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com, 
    sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: vc04_services:
 bcm2835-camera: Remove unnecessary else instruction
In-Reply-To: <ff2d51e7327a03defd26b7d3561eb2c154a2fa0c.1488371940.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703011403300.3941@hadrien>
References: <cover.1488371940.git.narcisaanamaria12@gmail.com> <ff2d51e7327a03defd26b7d3561eb2c154a2fa0c.1488371940.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Initialize the variable shutter_speed to avoid unnecessary else branch

Is the else really bad?  With it, one can see the two possible values at
once.

julia

>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index 9c0667e..dcd5bec 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> @@ -798,7 +798,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
>  			       const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
>  {
>  	int ret = 0;
> -	int shutter_speed;
> +	int shutter_speed = 0;
>  	struct vchiq_mmal_port *control;
>
>  	v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
> @@ -815,8 +815,6 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
>
>  		if (dev->exposure_mode_user == MMAL_PARAM_EXPOSUREMODE_OFF)
>  			shutter_speed = dev->manual_shutter_speed;
> -		else
> -			shutter_speed = 0;
>
>  		v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
>  			 "%s: scene mode none: shut_speed %d, exp_mode %d, metering %d\n",
> @@ -843,7 +841,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
>  		/* Set up scene mode */
>  		int i;
>  		const struct v4l2_mmal_scene_config *scene = NULL;
> -		int shutter_speed;
> +		int shutter_speed = 0;
>  		enum mmal_parameter_exposuremode exposure_mode;
>  		enum mmal_parameter_exposuremeteringmode metering_mode;
>
> @@ -864,8 +862,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
>
>  		if (scene->exposure_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
>  			shutter_speed = dev->manual_shutter_speed;
> -		else
> -			shutter_speed = 0;
> +
>  		exposure_mode = scene->exposure_mode;
>  		metering_mode = scene->metering_mode;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ff2d51e7327a03defd26b7d3561eb2c154a2fa0c.1488371940.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

