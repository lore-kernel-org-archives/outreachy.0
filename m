X-GM-THRID: 6394401254530875392
X-Received: by 10.28.148.83 with SMTP id w80mr226956wmd.1.1488818216339;
        Mon, 06 Mar 2017 08:36:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.201 with SMTP id k192ls79570lfg.18.gmail; Mon, 06 Mar
 2017 08:36:55 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr2734689lja.9.1488818215266;
        Mon, 06 Mar 2017 08:36:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si60264wma.0.2017.03.06.08.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 08:36:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,254,1484002800"; 
   d="scan'208";a="215764736"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 17:36:54 +0100
Date: Mon, 6 Mar 2017 17:36:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: bcm2835-audio: use
 conditional only for error case
In-Reply-To: <1e7304c424c82b9f5a03d32aa9dab343b4b70dc4.1488811728.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703061735550.3052@hadrien>
References: <cover.1488811728.git.aishpant@gmail.com> <1e7304c424c82b9f5a03d32aa9dab343b4b70dc4.1488811728.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Aishwarya Pant wrote:

> This patch refactors conditional to check if memory allocation has
> failed and immediately returns (-ENOMEM); the redundant if block for
> success case is removed.
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 46 +++++++++++-----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index c5f3be8..75a43a5 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -139,15 +139,15 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
>
>  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
>  		/*--- Queue some work (item 1) ---*/
> -		if (work) {
> -			INIT_WORK(&work->my_work, my_wq_function);
> -			work->alsa_stream = alsa_stream;
> -			work->cmd = BCM2835_AUDIO_START;
> -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> -				ret = 0;
> -		} else {
> +		if (!work) {
>  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +			return -ENOMEM;
>  		}
> +		INIT_WORK(&work->my_work, my_wq_function);
> +		work->alsa_stream = alsa_stream;
> +		work->cmd = BCM2835_AUDIO_START;
> +		if (queue_work(alsa_stream->my_wq, &work->my_work))
> +			ret = 0;

These functions are returning -1 if queue_work fails.  Maybe you can find
a more appropriate value by looking at the defintion.

julia


>  	}
>  	LOG_DBG(" .. OUT %d\n", ret);
>  	return ret;
> @@ -163,15 +163,15 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
>
>  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
>  		/*--- Queue some work (item 1) ---*/
> -		if (work) {
> -			INIT_WORK(&work->my_work, my_wq_function);
> -			work->alsa_stream = alsa_stream;
> -			work->cmd = BCM2835_AUDIO_STOP;
> -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> -				ret = 0;
> -		} else {
> +		if (!work) {
>  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +			return -ENOMEM;
>  		}
> +		INIT_WORK(&work->my_work, my_wq_function);
> +		work->alsa_stream = alsa_stream;
> +		work->cmd = BCM2835_AUDIO_STOP;
> +		if (queue_work(alsa_stream->my_wq, &work->my_work))
> +			ret = 0;
>  	}
>  	LOG_DBG(" .. OUT %d\n", ret);
>  	return ret;
> @@ -188,17 +188,17 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
>
>  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
>  		/*--- Queue some work (item 1) ---*/
> -		if (work) {
> -			INIT_WORK(&work->my_work, my_wq_function);
> -			work->alsa_stream = alsa_stream;
> -			work->cmd = BCM2835_AUDIO_WRITE;
> -			work->src = src;
> -			work->count = count;
> -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> -				ret = 0;
> -		} else {
> +		if (!work) {
>  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +			return -ENOMEM;
>  		}
> +		INIT_WORK(&work->my_work, my_wq_function);
> +		work->alsa_stream = alsa_stream;
> +		work->cmd = BCM2835_AUDIO_WRITE;
> +		work->src = src;
> +		work->count = count;
> +		if (queue_work(alsa_stream->my_wq, &work->my_work))
> +			ret = 0;
>  	}
>  	LOG_DBG(" .. OUT %d\n", ret);
>  	return ret;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1e7304c424c82b9f5a03d32aa9dab343b4b70dc4.1488811728.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

