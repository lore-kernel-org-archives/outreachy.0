X-GM-THRID: 6395446243166781440
X-Received: by 10.46.87.27 with SMTP id l27mr3648533ljb.28.1489181411155;
        Fri, 10 Mar 2017 13:30:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls1166357ljb.12.gmail; Fri, 10 Mar
 2017 13:30:10 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr3543776ljb.2.1489181410885;
        Fri, 10 Mar 2017 13:30:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n128si47594wmf.2.2017.03.10.13.30.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 13:30:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,142,1486422000"; 
   d="scan'208";a="216350102"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 22:30:05 +0100
Date: Fri, 10 Mar 2017 22:30:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v6 6/7] staging: bcm2835-audio: fix
 memory leak in bcm2835_audio_open_connection()
In-Reply-To: <97c79973a44f4695f3d0161b4300fd185363f7f1.1489160830.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703102219500.2191@hadrien>
References: <cover.1489160830.git.aishpant@gmail.com> <97c79973a44f4695f3d0161b4300fd185363f7f1.1489160830.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Aishwarya Pant wrote:

> In bcm2835_audio_open_connection(), if VCHI connection fails or
> initialisation of VCHI audio instance fails vchi_instance needs to be
> deallocated otherwise it will cause a memory leak.
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>
> ---
> Changes in v6:
> 	- Remove redundant debug logs

All the changes should be reflected in the log message above the line.
The patch furthermore also changes goto label names.  Actually, I think
the old label name was fine, but if you want to make the change it should
also be mentioned in the commit log.

By the way, this code is a really good example of why typedefs are bad.
Who would realize that VCHI_INSTANCE_T is a pointer type.

julia

> ---
>  .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c  | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 449799f..fa06bfd 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -396,8 +396,6 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  		(struct bcm2835_audio_instance *)alsa_stream->instance;
>  	int ret;
>
> -	LOG_DBG(" .. IN\n");
> -
>  	LOG_INFO("%s: start\n", __func__);
>  	BUG_ON(instance);
>  	if (instance) {
> @@ -405,8 +403,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  			__func__, instance);
>  		instance->alsa_stream = alsa_stream;
>  		alsa_stream->instance = instance;
> -		ret = 0; // xxx todo -1;
> -		goto err_free_mem;
> +		return 0; // xxx todo -1;
>  	}
>
>  	/* Initialize and create a VCHI connection */
> @@ -416,8 +413,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  			LOG_ERR("%s: failed to initialise VCHI instance (ret=%d)\n",
>  				__func__, ret);
>
> -			ret = -EIO;
> -			goto err_free_mem;
> +			return -EIO;
>  		}
>  		ret = vchi_connect(NULL, 0, vchi_instance);
>  		if (ret) {
> @@ -425,7 +421,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  				__func__, ret);
>
>  			ret = -EIO;
> -			goto err_free_mem;
> +			goto err_free_memory;
>  		}
>  		initted = 1;
>  	}
> @@ -437,7 +433,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  		LOG_ERR("%s: failed to initialize audio service\n", __func__);
>
>  		ret = PTR_ERR(instance);
> -		goto err_free_mem;
> +		goto err_free_memory;
>  	}
>
>  	instance->alsa_stream = alsa_stream;
> @@ -445,9 +441,9 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>
>  	LOG_DBG(" success !\n");
>  	ret = 0;
> -err_free_mem:
> -	LOG_DBG(" .. OUT\n");
>
> +err_free_memory:
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/97c79973a44f4695f3d0161b4300fd185363f7f1.1489160830.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

