X-GM-THRID: 6394401254530875392
X-Received: by 10.25.150.2 with SMTP id y2mr234051lfd.21.1488907083366;
        Tue, 07 Mar 2017 09:18:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.137 with SMTP id y131ls14673lfc.24.gmail; Tue, 07 Mar
 2017 09:18:02 -0800 (PST)
X-Received: by 10.25.104.21 with SMTP id d21mr245338lfc.31.1488907082248;
        Tue, 07 Mar 2017 09:18:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si1683125wmd.0.2017.03.07.09.18.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:18:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,258,1486422000"; 
   d="scan'208";a="215919134"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 18:18:01 +0100
Date: Tue, 7 Mar 2017 18:17:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: bcm2835-audio: use
 conditional only for error case
In-Reply-To: <b0229b2efb92a235bfb3dd1f1e889f61904e3c9f.1488906373.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071817180.3150@hadrien>
References: <cover.1488906373.git.aishpant@gmail.com> <b0229b2efb92a235bfb3dd1f1e889f61904e3c9f.1488906373.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Aishwarya Pant wrote:

> * Refactor conditional to check if memory allocation has failed and
> immediately returns (-ENOMEM); the redundant if block for success case
> is removed.
>
> * Return the error value -EBUSY and kfree(work) when queue_work() fails.
>
> * Add __func__ to debug logs

This is too much for one patch.

julia

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>
> ---
> Changes in v3:
> 	- Deallocate work when queue_work fails
> 	- Add __func__ to debug logs
> 	-
> Changes in v2:
> 	- Return error value -EBUSY when queue_work fails
>
>  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 85 +++++++++++-----------
>  1 file changed, 44 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index c5f3be8..f5d8a47 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -131,77 +131,80 @@ static void my_wq_function(struct work_struct *work)
>
>  int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
>  {
> -	int ret = -1;
> -
> -	LOG_DBG(" .. IN\n");
> +	LOG_DBG("%s: .. IN\n", __func__);
>  	if (alsa_stream->my_wq) {
>  		struct bcm2835_audio_work *work;
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
> -			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +		if (!work) {
> +			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
> +			return -ENOMEM;
> +		}
> +		INIT_WORK(&work->my_work, my_wq_function);
> +		work->alsa_stream = alsa_stream;
> +		work->cmd = BCM2835_AUDIO_START;
> +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> +			LOG_ERR("%s: Error: Unable to start audio\n", __func__);
> +			kfree(work);
> +			return -EBUSY;
>  		}
>  	}
> -	LOG_DBG(" .. OUT %d\n", ret);
> -	return ret;
> +	LOG_DBG("%s: .. OUT\n", __func__);
> +	return 0;
>  }
>
>  int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
>  {
> -	int ret = -1;
> -
> -	LOG_DBG(" .. IN\n");
> +	LOG_DBG("%s: .. IN\n", __func__);
>  	if (alsa_stream->my_wq) {
>  		struct bcm2835_audio_work *work;
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
> -			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +		if (!work) {
> +			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
> +			return -ENOMEM;
> +		}
> +		INIT_WORK(&work->my_work, my_wq_function);
> +		work->alsa_stream = alsa_stream;
> +		work->cmd = BCM2835_AUDIO_STOP;
> +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> +			LOG_ERR("%s: Error: Unable to stop audio\n", __func__);
> +			kfree(work);
> +			return -EBUSY;
>  		}
>  	}
> -	LOG_DBG(" .. OUT %d\n", ret);
> -	return ret;
> +	LOG_DBG("%s: .. OUT\n", __func__);
> +	return 0;
>  }
>
>  int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
>  			unsigned int count, void *src)
>  {
> -	int ret = -1;
> -
> -	LOG_DBG(" .. IN\n");
> +	LOG_DBG("%s: .. IN\n", __func__);
>  	if (alsa_stream->my_wq) {
>  		struct bcm2835_audio_work *work;
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
> -			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +		if (!work) {
> +			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
> +			return -ENOMEM;
> +		}
> +		INIT_WORK(&work->my_work, my_wq_function);
> +		work->alsa_stream = alsa_stream;
> +		work->cmd = BCM2835_AUDIO_WRITE;
> +		work->src = src;
> +		work->count = count;
> +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> +			LOG_ERR("%s: Error: Unable to write\n", __func__);
> +			kfree(work);
> +			return -EBUSY;
>  		}
>  	}
> -	LOG_DBG(" .. OUT %d\n", ret);
> -	return ret;
> +	LOG_DBG("%s: .. OUT\n", __func__);
> +	return 0;
>  }
>
>  static void my_workqueue_init(struct bcm2835_alsa_stream *alsa_stream)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b0229b2efb92a235bfb3dd1f1e889f61904e3c9f.1488906373.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

