X-GM-THRID: 6395910423688773632
X-Received: by 10.46.80.1 with SMTP id e1mr3417434ljb.10.1489165150597;
        Fri, 10 Mar 2017 08:59:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls1097137ljb.38.gmail; Fri, 10 Mar
 2017 08:59:10 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr3422372ljd.12.1489165149969;
        Fri, 10 Mar 2017 08:59:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si260549wmg.3.2017.03.10.08.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:59:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="216332289"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 17:59:07 +0100
Date: Fri, 10 Mar 2017 17:58:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: bcm2835-audio: remove
 anonymous field declarations
In-Reply-To: <7056e45a158a780d25a956b61e7dcc444e62c002.1489163547.git.aishpant@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101756010.3356@hadrien>
References: <cover.1489163547.git.aishpant@gmail.com> <7056e45a158a780d25a956b61e7dcc444e62c002.1489163547.git.aishpant@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Aishwarya Pant wrote:

> Anonymous field declarations are error prone. This patch replaces
> anonymous declarations with explicit field declarations for typedef
> SERVICE_CREATION_T in vc_vchi_audio_init(..)
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index c54bef3..d8a8e91 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -302,16 +302,16 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
>  	/* Open the VCHI service connections */
>  	for (i = 0; i < num_connections; i++) {
>  		SERVICE_CREATION_T params = {
> -			VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
> -			VC_AUDIO_SERVER_NAME, // 4cc service code
> -			vchi_connections[i], // passed in fn pointers
> -			0, // rx fifo size (unused)
> -			0, // tx fifo size (unused)
> -			audio_vchi_callback, // service callback
> -			instance, // service callback parameter
> -			1, //TODO: remove VCOS_FALSE,   // unaligned bulk receives
> -			1, //TODO: remove VCOS_FALSE,   // unaligned bulk transmits
> -			0 // want crc check on bulk transfers
> +			.version		= VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),

Maybe this line could be adjusted to fit into 80 columns.

julia

> +			.service_id		= VC_AUDIO_SERVER_NAME,
> +			.connection		= vchi_connections[i],
> +			.rx_fifo_size		= 0,
> +			.tx_fifo_size		= 0,
> +			.callback		= audio_vchi_callback,
> +			.callback_param		= instance,
> +			.want_unaligned_bulk_rx = 1, //TODO: remove VCOS_FALSE
> +			.want_unaligned_bulk_tx = 1, //TODO: remove VCOS_FALSE
> +			.want_crc		= 0
>  		};
>
>  		LOG_DBG("%s: about to open %i\n", __func__, i);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7056e45a158a780d25a956b61e7dcc444e62c002.1489163547.git.aishpant%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

