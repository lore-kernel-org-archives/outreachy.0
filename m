X-GM-THRID: 2788406853632
X-Received: by 10.180.89.194 with SMTP id bq2mr1195617wib.4.1424690924720;
        Mon, 23 Feb 2015 03:28:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.131 with SMTP id fo3ls528913wib.39.canary; Mon, 23 Feb
 2015 03:28:44 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1198978wid.1.1424690924335;
        Mon, 23 Feb 2015 03:28:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si844805wia.0.2015.02.23.03.28.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 03:28:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,630,1418079600"; 
   d="scan'208";a="100991840"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 12:28:43 +0100
Date: Mon, 23 Feb 2015 12:28:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Remove redundant
 if condition
In-Reply-To: <20150223112513.GA6967@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231228080.2479@hadrien>
References: <20150223112513.GA6967@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Vatika Harlalka wrote:

> Remove redundant if condition as !result is always false.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  Changes in v2: Removed {} around the outer if condition as
> 		it has single statement.
>
>  drivers/staging/rtl8188eu/hal/phy.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 341f0db..2806e86 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -345,7 +345,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
>  	u8 tmpchannel = hal_data->CurrentChannel;
> -	bool  result = true;
>
>  	if (hal_data->rf_chip == RF_PSEUDO_11N)
>  		return;
> @@ -355,15 +354,11 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>
>  	hal_data->CurrentChannel = channel;
>
> -	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
> +	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
>  		phy_sw_chnl_callback(adapt, channel);
>

I should have mentioned it before, but I don't think you need the blank
line either.

julia

> -		if (!result)
> -			hal_data->CurrentChannel = tmpchannel;
> -
> -	} else {
> +	else
>  		hal_data->CurrentChannel = tmpchannel;
> -	}
>  }
>
>  #define ODM_TXPWRTRACK_MAX_IDX_88E  6
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223112513.GA6967%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

