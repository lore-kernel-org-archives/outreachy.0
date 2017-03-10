X-GM-THRID: 6395446243166781440
X-Received: by 10.46.78.9 with SMTP id c9mr3538743ljb.20.1489180206129;
        Fri, 10 Mar 2017 13:10:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls1108639ljt.24.gmail; Fri, 10 Mar
 2017 13:10:05 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr3817064lja.9.1489180205531;
        Fri, 10 Mar 2017 13:10:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si77522wmd.0.2017.03.10.13.10.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 13:10:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,142,1486422000"; 
   d="scan'208";a="216349336"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 22:09:43 +0100
Date: Fri, 10 Mar 2017 22:09:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v6 7/7] staging: bcm2835-audio: remove
 BUG_ON() in bcm2835_audio_open_connection()
In-Reply-To: <9a7fa27ac10ecc40160bbf8500b1d015d0988099.1489160830.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703102209020.2191@hadrien>
References: <cover.1489160830.git.aishpant@gmail.com> <9a7fa27ac10ecc40160bbf8500b1d015d0988099.1489160830.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Aishwarya Pant wrote:

> The presence of BUG_ON(instance) in bcm2835_audio_open_connection()
> makes the next if(instance) block unreachable. The desired behaviour is
> that the function should exit gracefully returning an operation not
> permitted error value (-EPERM).
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>
> ---
> Not sure of this change. This driver is still in staging so maybe then
> BUG_ON() is required here for debugging. The kernel coding style document
> suggests that BUG_ON() should never be used since it kills the current process.

It could be a good idea to check with the bcm people, since this changes
the behavior.

julia

> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index fa06bfd..8ab01c3 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -397,7 +397,6 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  	int ret;
>
>  	LOG_INFO("%s: start\n", __func__);
> -	BUG_ON(instance);
>  	if (instance) {
>  		LOG_ERR("%s: VCHI instance already open (%p)\n",
>  			__func__, instance);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9a7fa27ac10ecc40160bbf8500b1d015d0988099.1489160830.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

