X-GM-THRID: 6389638055287848960
X-Received: by 10.129.162.22 with SMTP id z22mr11736704ywg.119.1487776024875;
        Wed, 22 Feb 2017 07:07:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.138 with SMTP id y132ls417441itc.9.gmail; Wed, 22 Feb
 2017 07:07:03 -0800 (PST)
X-Received: by 10.36.38.203 with SMTP id v194mr726092itv.33.1487776023820;
        Wed, 22 Feb 2017 07:07:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r5si126989vkf.4.2017.02.22.07.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 07:07:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,194,1484002800"; 
   d="scan'208";a="261662073"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 16:06:59 +0100
Date: Wed, 22 Feb 2017 16:06:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192e: Remove useless
 parentheses
In-Reply-To: <1487775732-5472-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702221606390.3145@hadrien>
References: <1487775732-5472-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Feb 2017, Gargi Sharma wrote:

> Parentheses are not needed on the right side of assignment.
>
> Additionally added space around '+'and '*' to remove
> checkpatch issue, space required around '+' and '*'.
>
> Parentheses Removed using the coccinelle script:
> @@
> binary operator bop = {+,-,>>,<<};
> expression e, e1, e2;
> @@
>
> e =
> -(
>         e1 bop e2
> -)
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
> 	- Add spaces around '*' as well.
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 2 +-
>  drivers/staging/rtl8192e/rtl819x_HTProc.c  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> index 9bc2848..b61e90b 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> @@ -886,7 +886,7 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
>  		if (tmpCCK40Mindex >= CCK_Table_length)
>  			tmpCCK40Mindex = CCK_Table_length-1;
>  	} else {
> -		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
> +		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
>  		if (tmpval >= 6)
>  			tmpOFDMindex = tmpCCK20Mindex = 0;
>  		else
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index cded0f4..4ae1d38 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -489,7 +489,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
>  				if ((bitMap%2) != 0) {
>  					if (HTMcsToDataRate(ieee, (8*i+j)) >
>  					    HTMcsToDataRate(ieee, mcsRate))
> -						mcsRate = (8*i+j);
> +						mcsRate = 8 * i + j;
>  				}
>  				bitMap >>= 1;
>  			}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487775732-5472-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

