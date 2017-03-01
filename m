X-GM-THRID: 6392600442196459520
X-Received: by 10.46.20.27 with SMTP id u27mr1410086ljd.4.1488397994234;
        Wed, 01 Mar 2017 11:53:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls529645ljd.25.gmail; Wed, 01 Mar
 2017 11:53:13 -0800 (PST)
X-Received: by 10.25.210.76 with SMTP id j73mr1147195lfg.15.1488397993063;
        Wed, 01 Mar 2017 11:53:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si595309wmg.1.2017.03.01.11.53.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 11:53:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,227,1484002800"; 
   d="scan'208";a="215222521"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 20:53:11 +0100
Date: Wed, 1 Mar 2017 20:53:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-camera: prefer
 allocating memory using sizeof(*ptr) instead of sizeof(struct type name)
In-Reply-To: <20170301182401.GA15456@aishwarya>
Message-ID: <alpine.DEB.2.20.1703012052340.2401@hadrien>
References: <20170301182401.GA15456@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Aishwarya Pant wrote:

> Using sizeof(*ptr) instead of sizeof(struct type name) is more robust to
> errors.

Just for future reference, many developers don't seem to care about this,
and prefer the struct version.

julia

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 53e275e..ff7be55 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -1911,7 +1911,7 @@ static int __init bm2835_mmal_init(void)
>  		num_cameras = MAX_BCM2835_CAMERAS;
>
>  	for (camera = 0; camera < num_cameras; camera++) {
> -		dev = kzalloc(sizeof(struct bm2835_mmal_dev), GFP_KERNEL);
> +		dev = kzalloc(sizeof(*dev), GFP_KERNEL);
>  		if (!dev) {
>  			ret = -ENOMEM;
>  			goto cleanup_gdev;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301182401.GA15456%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

