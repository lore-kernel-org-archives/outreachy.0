X-GM-THRID: 6395446243166781440
X-Received: by 10.46.88.9 with SMTP id m9mr2146861ljb.25.1489065862218;
        Thu, 09 Mar 2017 05:24:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.15.1 with SMTP id 1ls704539ljp.36.gmail; Thu, 09 Mar 2017
 05:24:21 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr2155281ljp.31.1489065861557;
        Thu, 09 Mar 2017 05:24:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si728479wmg.0.2017.03.09.05.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 05:24:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="216156097"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 14:24:20 +0100
Date: Thu, 9 Mar 2017 14:24:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 2/7] staging: bcm2835-audio: replace
 null with error pointer value
In-Reply-To: <cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1489055580.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703091418370.3186@hadrien>
References: <cover.1489055580.git.aishpant@gmail.com> <cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1489055580.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Aishwarya Pant wrote:

> This patch replaces NULL values returned by vc_vchi_audio_init(...) with
> error pointer values:
> 	- Return ERR_PTR(-EINVAL) when too many instances of audio
> 	  service are initialised
> 	- Return ERR_PTR(-ENOMEM) when kzalloc fails
> 	- RETURN ERR_PTR(-EPERM) when vchi connections fail to open
>
> Similarly, a NULL check where vc_vchi_audio_init(...) is called is
> replaced by IS_ERR(..)
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 005e287..d2686b4 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -287,12 +287,12 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
>  		LOG_ERR("%s: unsupported number of connections %u (max=%u)\n",
>  			__func__, num_connections, VCHI_MAX_NUM_CONNECTIONS);
>
> -		return NULL;
> +		return ERR_PTR(-EINVAL);
>  	}
>  	/* Allocate memory for this instance */
>  	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
>  	if (!instance)
> -		return NULL;
> +		return ERR_PTR(-ENOMEM);
>
>  	instance->num_connections = num_connections;
>
> @@ -341,7 +341,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
>  	kfree(instance);
>  	LOG_ERR("%s: error\n", __func__);
>
> -	return NULL;
> +	return ERR_PTR(-EPERM);

I find it a bit odd to have -EPERM hard coded at the end of the function.
If the function becomes more complicated, this code could end up being
shared.  In that case, different exits would have different codes.  Also,
ultimately the code should come from the result of vchi_service_open,
although that is not suitable now.

How about adding status = -EPERM just before the goto, and the putting
return ERR_PTR(status) at the end of the function?

By the way, I found that having all the LOG_DBG lines made the code really
hard to follow.  Maybe it could be possible to just remove them.

Another suggestion on this particular function is to do something about
this declaration:

                SERVICE_CREATION_T params = {
                        VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
                        VC_AUDIO_SERVER_NAME, // 4cc service code
                        vchi_connections[i], // passed in fn pointers
                        0, // rx fifo size (unused)
                        0, // tx fifo size (unused)
                        audio_vchi_callback, // service callback
                        instance, // service callback parameter
                        1, //TODO: remove VCOS_FALSE,   // unaligned bulk receives
                        1, //TODO: remove VCOS_FALSE,   // unaligned bulk transmits
                        0 // want crc check on bulk transfers
                };

The typedef needs to go, the fields should be initialied using their names
(.x = e) and the comments should be dropped.

julia

>  }
>
>  static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
> @@ -432,7 +432,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  	/* Initialize an instance of the audio service */
>  	instance = vc_vchi_audio_init(vchi_instance, &vchi_connection, 1);
>
> -	if (!instance) {
> +	if (IS_ERR(instance)) {
>  		LOG_ERR("%s: failed to initialize audio service\n", __func__);
>
>  		ret = -EPERM;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1489055580.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

