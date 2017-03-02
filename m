X-GM-THRID: 6392511932367110144
X-Received: by 10.25.17.102 with SMTP id g99mr1677107lfi.6.1488467914103;
        Thu, 02 Mar 2017 07:18:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.153.68 with SMTP id b65ls136933lfe.41.gmail; Thu, 02 Mar
 2017 07:18:33 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr1738565lfb.27.1488467913558;
        Thu, 02 Mar 2017 07:18:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si803646wmn.2.2017.03.02.07.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 07:18:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,231,1484002800"; 
   d="scan'208";a="215335182"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 16:18:09 +0100
Date: Thu, 2 Mar 2017 16:17:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com, 
    sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: bcm2835-camera:
 Remove unnecessary variable
In-Reply-To: <1488467703-15980-1-git-send-email-narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703021617050.3414@hadrien>
References: <1488467703-15980-1-git-send-email-narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 2 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Instead of using the ret variable, return 0 directly

I think you should say a little more, because you are also removing an
assignment where the assigned variable is not used.  You could also take a
look at vchiq_mmal_port_parameter_set to see why the return value is not
important.

julia

>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index 9c0667e..7bdde87 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> @@ -609,18 +609,16 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
>  			    struct v4l2_ctrl *ctrl,
>  			    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
>  {
> -	int ret;
>  	struct vchiq_mmal_port *encoder_out;
>
>  	dev->capture.encode_bitrate = ctrl->val;
>
>  	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
>
> -	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> -					    mmal_ctrl->mmal_id,
> -					    &ctrl->val, sizeof(ctrl->val));
> -	ret = 0;
> -	return ret;
> +	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
> +				      mmal_ctrl->mmal_id,
> +				      &ctrl->val, sizeof(ctrl->val));
> +	return 0;
>  }
>
>  static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488467703-15980-1-git-send-email-narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

