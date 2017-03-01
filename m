X-GM-THRID: 6392511932367110144
X-Received: by 10.25.17.102 with SMTP id g99mr877218lfi.6.1488373370874;
        Wed, 01 Mar 2017 05:02:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.225.16 with SMTP id y16ls71444lfg.17.gmail; Wed, 01 Mar
 2017 05:02:50 -0800 (PST)
X-Received: by 10.25.18.219 with SMTP id 88mr943082lfs.29.1488373370265;
        Wed, 01 Mar 2017 05:02:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1557501wmd.0.2017.03.01.05.02.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:02:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,225,1484002800"; 
   d="scan'208";a="262626559"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 14:02:49 +0100
Date: Wed, 1 Mar 2017 14:02:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com, 
    sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services:
 bcm2835-camera: Remove unnecessary variable
In-Reply-To: <c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703011401510.3941@hadrien>
References: <cover.1488371940.git.narcisaanamaria12@gmail.com> <c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Instead of using the ret variable, return 0 directly
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index dcd5bec..e25f1c9 100644
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
> @@ -862,7 +860,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
>
>  		if (scene->exposure_mode == MMAL_PARAM_EXPOSUREMODE_OFF)
>  			shutter_speed = dev->manual_shutter_speed;
> -
> +

Something went wrong here.  It's fine to fi the whitespace issue, but it
should be a separate patch.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c49c187ff219c61323b25f01ab3f051950ae507a.1488371940.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

