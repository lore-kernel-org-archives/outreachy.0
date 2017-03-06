X-GM-THRID: 6394267453866639360
X-Received: by 10.46.71.15 with SMTP id u15mr2299006lja.9.1488782416415;
        Sun, 05 Mar 2017 22:40:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.199.147 with SMTP id x141ls111954lff.46.gmail; Sun, 05 Mar
 2017 22:40:15 -0800 (PST)
X-Received: by 10.25.203.151 with SMTP id b145mr1713285lfg.17.1488782415372;
        Sun, 05 Mar 2017 22:40:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si132252wmg.3.2017.03.05.22.40.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 22:40:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,252,1484002800"; 
   d="scan'208";a="215668678"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 07:40:13 +0100
Date: Mon, 6 Mar 2017 07:40:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-camera: replace
 kmalloc with kzalloc
In-Reply-To: <20170306062310.GA17005@aishwarya>
Message-ID: <alpine.DEB.2.20.1703060738510.2259@hadrien>
References: <20170306062310.GA17005@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Aishwarya Pant wrote:

> Replace two instances of kmalloc and memset with kzalloc in
> bcm2835-camera
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 0f96ac8..cb8d129 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -169,8 +169,7 @@ static struct mmal_msg_context *get_msg_context(struct vchiq_mmal_instance
>  	struct mmal_msg_context *msg_context;
>
>  	/* todo: should this be allocated from a pool to avoid kmalloc */

You could update the comment too.

> -	msg_context = kmalloc(sizeof(*msg_context), GFP_KERNEL);
> -	memset(msg_context, 0, sizeof(*msg_context));
> +	msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);
>
>  	return msg_context;

This function could be just one line.

>  }
> @@ -1881,8 +1880,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  		return -EIO;
>  	}
>
> -	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
> -	memset(instance, 0, sizeof(*instance));
> +	instance = kzalloc(sizeof(*instance), GFP_KERNEL);

This code should detect the case where the result of kzalloc is NULL and
return -ENOMEM.

julia

>  	mutex_init(&instance->vchiq_mutex);
>  	mutex_init(&instance->bulk_mutex);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306062310.GA17005%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

