X-GM-THRID: 6394986223504457728
X-Received: by 10.25.203.151 with SMTP id b145mr663107lfg.17.1488956412853;
        Tue, 07 Mar 2017 23:00:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls244946lja.0.gmail; Tue, 07 Mar 2017
 23:00:12 -0800 (PST)
X-Received: by 10.25.201.198 with SMTP id z189mr623636lff.15.1488956412113;
        Tue, 07 Mar 2017 23:00:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n128si564910wmf.2.2017.03.07.23.00.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 23:00:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="215964987"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 08:00:11 +0100
Date: Wed, 8 Mar 2017 08:00:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: bcm2835-camera: replace
 release_msg_context() with kfree
In-Reply-To: <9013e0c8c0f960b553a4ebd53ded11b22dfda259.1488948214.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703080759500.2108@hadrien>
References: <cover.1488948214.git.aishpant@gmail.com> <9013e0c8c0f960b553a4ebd53ded11b22dfda259.1488948214.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Aishwarya Pant wrote:

> This patch replaces function release_msg_context with a
> kfree(msg_context).
>
> Removed the comment /* todo: is this correct error value? */ since
> ret = vchi_queue_kernel_message(...) returns either VCHIQ_ERROR (-1) or
> VCHIQ_SUCCESS (0), so the check if (ret != 0) before kfree is correct.

It could be nice in the future to use standard kernel error values.

julia

> ---
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 1650bbf..4aea9da 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -163,11 +163,6 @@ struct vchiq_mmal_instance {
>  	struct vchiq_mmal_component component[VCHIQ_MMAL_MAX_COMPONENTS];
>  };
>
> -static void release_msg_context(struct mmal_msg_context *msg_context)
> -{
> -	kfree(msg_context);
> -}
> -
>  /* deals with receipt of event to host message */
>  static void event_to_host_cb(struct vchiq_mmal_instance *instance,
>  			     struct mmal_msg *msg, u32 msg_len)
> @@ -199,7 +194,7 @@ static void buffer_work_cb(struct work_struct *work)
>  					    msg_context->u.bulk.pts);
>
>  	/* release message context */
> -	release_msg_context(msg_context);
> +	kfree(msg_context);
>  }
>
>  /* enqueue a bulk receive for a given message context */
> @@ -437,10 +432,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
>  					sizeof(struct mmal_msg_header) +
>  					sizeof(m.u.buffer_from_host));
>
> -	if (ret != 0) {
> -		release_msg_context(msg_context);
> -		/* todo: is this correct error value? */
> -	}
> +	if (ret != 0)
> +		kfree(msg_context);
>
>  	vchi_service_release(instance->handle);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9013e0c8c0f960b553a4ebd53ded11b22dfda259.1488948214.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

