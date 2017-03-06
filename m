X-GM-THRID: 6394250573317668864
X-Received: by 10.46.7.10 with SMTP id 10mr2016544ljh.1.1488782515705;
        Sun, 05 Mar 2017 22:41:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.207 with SMTP id u198ls1416165lja.18.gmail; Sun, 05 Mar
 2017 22:41:55 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr2042430lje.3.1488782515261;
        Sun, 05 Mar 2017 22:41:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si74135wmg.0.2017.03.05.22.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 22:41:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,252,1484002800"; 
   d="scan'208";a="263244943"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 07:41:54 +0100
Date: Mon, 6 Mar 2017 07:41:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: refactor
 code
In-Reply-To: <20170306051742.GA21192@aishwarya>
Message-ID: <alpine.DEB.2.20.1703060741300.2259@hadrien>
References: <20170306051742.GA21192@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Aishwarya Pant wrote:

> This patch contains the following fixes:
> -Merge two if conditions into one
> -Remove initialization of unused semaphores
> alsa_stream->buffers_update_sem and alsa_stream->control_sem
> -Modify goto label err_free_mem to kfree vchi_instance if vchi_connect
> fails; add label err_init to add debug log and return error value
> (pre-existing functionality)

These changes appear to be completely unrelated.  There should be three
patches.

julia

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c   | 8 ++------
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 9 ++++++---
>  2 files changed, 8 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> index d60d702..32b3793 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> @@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
>  	audio_info("Alsa open (%d)\n", substream->number);
>  	idx = substream->number;
>
> -	if (spdif && chip->opened) {
> -		err = -EBUSY;
> -		goto out;
> -	} else if (!spdif && (chip->opened & (1 << idx))) {
> +	if ((spdif && chip->opened) ||
> +	    (!spdif && (chip->opened & (1 << idx))))	{
>  		err = -EBUSY;
>  		goto out;
>  	}
> @@ -156,8 +154,6 @@ static int snd_bcm2835_playback_open_generic(
>  	alsa_stream->substream = substream;
>  	alsa_stream->idx = idx;
>
> -	sema_init(&alsa_stream->buffers_update_sem, 0);
> -	sema_init(&alsa_stream->control_sem, 0);
>  	spin_lock_init(&alsa_stream->lock);
>
>  	err = bcm2835_audio_open(alsa_stream);
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index df1f3dd..557ba8e 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -402,7 +402,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  		instance->alsa_stream = alsa_stream;
>  		alsa_stream->instance = instance;
>  		ret = 0; // xxx todo -1;
> -		goto err_free_mem;
> +		goto err_init;
>  	}
>
>  	/* Initialize and create a VCHI connection */
> @@ -413,7 +413,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  				__func__, ret);
>
>  			ret = -EIO;
> -			goto err_free_mem;
> +			goto err_init;
>  		}
>  		ret = vchi_connect(NULL, 0, vchi_instance);
>  		if (ret) {
> @@ -441,9 +441,12 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>
>  	LOG_DBG(" success !\n");
>  	ret = 0;
> +err_init:
> +	LOG_DBG(" .. OUT\n");
> +	return ret;
>  err_free_mem:
>  	LOG_DBG(" .. OUT\n");
> -
> +	kfree(vchi_instance);
>  	return ret;
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306051742.GA21192%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

