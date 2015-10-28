X-GM-THRID: 6210663897171492864
X-Received: by 10.180.82.101 with SMTP id h5mr608876wiy.5.1446040116189;
        Wed, 28 Oct 2015 06:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.6 with SMTP id d6ls777104lfb.47.gmail; Wed, 28 Oct 2015
 06:48:35 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr10841059lbs.18.1446040115466;
        Wed, 28 Oct 2015 06:48:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s134si110896wmb.3.2015.10.28.06.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 06:48:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,210,1444687200"; 
   d="scan'208";a="184855847"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Oct 2015 14:48:35 +0100
Date: Wed, 28 Oct 2015 14:48:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: linux_wlan:
 Replace function calls
In-Reply-To: <f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
Message-ID: <alpine.DEB.2.10.1510281447310.2456@hadrien>
References: <cover.1446032441.git.shivanib134@gmail.com> <f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 28 Oct 2015, Shivani Bhardwaj wrote:

> Replace calls to wrapper functions with the actual functions called by
> wrapper functions. Definitions needed to make those calls should also be added.

The second sentence of the commit message is not clear.  When you say
"should be" it gives the impression that you expect someone else to do it.
So it would be better to say "are added".

julia

>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
>         -Break the patch 1/2 of v1 into two for clarity
>
>  drivers/staging/wilc1000/linux_wlan.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
> index 9f899da..fbc3584 100644
> --- a/drivers/staging/wilc1000/linux_wlan.c
> +++ b/drivers/staging/wilc1000/linux_wlan.c
> @@ -45,6 +45,17 @@
>   #define _linux_wlan_device_removal()		{}
>  #endif
>
> +#if defined(CUSTOMER_PLATFORM)
> +/* TODO : User have to stable bus clock as user's environment. */
> +#ifdef MAX_BUS_SPEED
> +#define MAX_SPEED MAX_BUS_SPEED
> +#else
> +#define MAX_SPEED 50000000
> +#endif
> +#else
> +#define MAX_SPEED (6 * 1000000) /* Max 50M */
> +#endif
> +
>  extern bool g_obtainingIP;
>  extern u16 Set_machw_change_vir_if(bool bValue);
>  extern void resolve_disconnect_aberration(void *drvHandler);
> @@ -976,8 +987,8 @@ void linux_to_wlan(wilc_wlan_inp_t *nwi, struct wilc *nic)
>  	nwi->io_func.io_deinit = linux_sdio_deinit;
>  	nwi->io_func.u.sdio.sdio_cmd52 = linux_sdio_cmd52;
>  	nwi->io_func.u.sdio.sdio_cmd53 = linux_sdio_cmd53;
> -	nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_max_speed;
> -	nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_default_speed;
> +	nwi->io_func.u.sdio.sdio_set_max_speed = linux_sdio_set_speed(MAX_SPEED);
> +	nwi->io_func.u.sdio.sdio_set_default_speed = linux_sdio_set_speed(sdio_default_speed);
>  #else
>  	nwi->io_func.io_type = HIF_SPI;
>  	nwi->io_func.io_init = linux_spi_init;
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f2a06d6455d1f322d873ec728f622162fd00d959.1446032441.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

