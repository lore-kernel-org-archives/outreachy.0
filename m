X-GM-THRID: 6394409513300000768
X-Received: by 10.28.139.211 with SMTP id n202mr497609wmd.5.1488818486126;
        Mon, 06 Mar 2017 08:41:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.143 with SMTP id u137ls196844lja.51.gmail; Mon, 06 Mar
 2017 08:41:25 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr2637576ljd.23.1488818485530;
        Mon, 06 Mar 2017 08:41:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si57211wmh.1.2017.03.06.08.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 08:41:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,254,1484002800"; 
   d="scan'208";a="215765488"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 17:41:24 +0100
Date: Mon, 6 Mar 2017 17:41:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: bcm2835-audio: remove
 unused semaphores
In-Reply-To: <3751b0b72869975ee0e829f6aaedf3b6f044452d.1488814329.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703061740530.3052@hadrien>
References: <cover.1488814329.git.aishpant@gmail.com> <3751b0b72869975ee0e829f6aaedf3b6f044452d.1488814329.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Aishwarya Pant wrote:

> This patch removes initialisation of unused semaphores
> alsa_stream->buffers_update_sem and alsa_stream->control_sem
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> index f4ce4801dc..c0a511e 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> @@ -154,8 +154,6 @@ static int snd_bcm2835_playback_open_generic(
>  	alsa_stream->substream = substream;
>  	alsa_stream->idx = idx;
>
> -	sema_init(&alsa_stream->buffers_update_sem, 0);
> -	sema_init(&alsa_stream->control_sem, 0);

If they are not used, maybe they should be dropped from the structure as
well?

julia

>  	spin_lock_init(&alsa_stream->lock);
>
>  	err = bcm2835_audio_open(alsa_stream);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3751b0b72869975ee0e829f6aaedf3b6f044452d.1488814329.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

