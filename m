X-GM-THRID: 6396246100239450112
X-Received: by 10.46.80.1 with SMTP id e1mr4059203ljb.10.1489243915510;
        Sat, 11 Mar 2017 06:51:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls1283571ljb.38.gmail; Sat, 11 Mar
 2017 06:51:54 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr4050243ljd.12.1489243914825;
        Sat, 11 Mar 2017 06:51:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si218726wmh.1.2017.03.11.06.51.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:51:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,147,1486422000"; 
   d="scan'208";a="216392238"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 15:51:54 +0100
Date: Sat, 11 Mar 2017 15:51:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove multiple
 assignments
In-Reply-To: <1489241955-12103-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703111550410.3127@hadrien>
References: <1489241955-12103-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, Gargi Sharma wrote:

> This patch removes multiple assignments by factorizing them.
> This was done with Coccinelle. Braces were also added to the
> else part to remove the checkpatch warning, "braces should be
> on all arms of if-else statements".
>
> @ identifier i1,i2; constant c; @@
> - i1=i2=c;
> + i1=c;
> + i2=c;
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> index d101974..32e51be 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> @@ -887,10 +887,12 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
>  			tmpCCK40Mindex = CCK_Table_length-1;
>  	} else {
>  		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
> -		if (tmpval >= 6)
> -			tmpOFDMindex = tmpCCK20Mindex = 0;
> -		else
> +		if (tmpval >= 6) {
> +			tmpOFDMindex = 0;
> +			tmpCCK20Mindex = 0;
> +		} else {
>  			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;

Coccinelle doesn't find it because the right hand side of the assignment
is not a constant, but you could do the else branch as well (and mention
in the commit message that you did this part additionally).

julia

> +		}
>  		tmpCCK40Mindex = 0;
>  	}
>  	if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489241955-12103-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

