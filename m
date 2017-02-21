X-GM-THRID: 6389638055287848960
X-Received: by 10.28.153.75 with SMTP id b72mr1426938wme.14.1487706876516;
        Tue, 21 Feb 2017 11:54:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.153 with SMTP id f25ls833735lji.31.gmail; Tue, 21 Feb
 2017 11:54:35 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr2968183ljv.0.1487706875817;
        Tue, 21 Feb 2017 11:54:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si1201158wmf.0.2017.02.21.11.54.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:54:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="214261442"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 20:54:31 +0100
Date: Tue, 21 Feb 2017 20:54:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove useless
 parentheses
In-Reply-To: <1487703410-18483-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702212054110.2117@hadrien>
References: <1487703410-18483-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Feb 2017, Gargi Sharma wrote:

> Parentheses are not needed on the right side of assignment.
> Additionally added space around '+' to remove checkpatch issue,
> space required around '+'.
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
> index cded0f4..a59fcd4 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -489,7 +489,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
>  				if ((bitMap%2) != 0) {
>  					if (HTMcsToDataRate(ieee, (8*i+j)) >
>  					    HTMcsToDataRate(ieee, mcsRate))
> -						mcsRate = (8*i+j);
> +						mcsRate = 8*i + j;

Since you put spaces around the +, you may as well put spaces around the *
too.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487703410-18483-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

