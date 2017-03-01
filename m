X-GM-THRID: 6392494565268389888
X-Received: by 10.46.5.136 with SMTP id 130mr1005559ljf.6.1488373519614;
        Wed, 01 Mar 2017 05:05:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls427727ljb.12.gmail; Wed, 01 Mar
 2017 05:05:19 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr968724lfd.23.1488373519083;
        Wed, 01 Mar 2017 05:05:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1558624wmd.0.2017.03.01.05.05.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 05:05:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,225,1484002800"; 
   d="scan'208";a="262627156"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 14:05:18 +0100
Date: Wed, 1 Mar 2017 14:05:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com, 
    sbranden@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services:
 bcm2835-camera: Removed unnecessary variable
In-Reply-To: <daabcf56391dbfadac95ab36f36afd3bdaeaf423.1488367580.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703011404280.3941@hadrien>
References: <cover.1488367580.git.narcisaanamaria12@gmail.com> <daabcf56391dbfadac95ab36f36afd3bdaeaf423.1488367580.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Instead of storing the result, now the function returns directly
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 347d8fff..d00e00b 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -671,7 +671,6 @@ static void bm2835_mmal_unlock(struct vb2_queue *vq)
>  static int set_overlay_params(struct bm2835_mmal_dev *dev,
>  			      struct vchiq_mmal_port *port)
>  {
> -	int ret;
>  	struct mmal_parameter_displayregion prev_config = {
>  	.set = MMAL_DISPLAY_SET_LAYER | MMAL_DISPLAY_SET_ALPHA |
>  	    MMAL_DISPLAY_SET_DEST_RECT | MMAL_DISPLAY_SET_FULLSCREEN,
> @@ -685,11 +684,9 @@ static int set_overlay_params(struct bm2835_mmal_dev *dev,
>  		      .height = dev->overlay.w.height,
>  		      },
>  	};
> -	ret = vchiq_mmal_port_parameter_set(dev->instance, port,
> +	return vchiq_mmal_port_parameter_set(dev->instance, port,
>  					    MMAL_PARAMETER_DISPLAYREGION,
>  					    &prev_config, sizeof(prev_config));

The arguments needed to be moved one space over.

julia

> -
> -	return ret;
>  }
>
>  /* overlay ioctl */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/daabcf56391dbfadac95ab36f36afd3bdaeaf423.1488367580.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

