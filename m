X-GM-THRID: 6253655179876368384
X-Received: by 10.112.181.33 with SMTP id dt1mr2839491lbc.22.1456057876806;
        Sun, 21 Feb 2016 04:31:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.128.14 with SMTP id b14ls231288wmd.33.canary; Sun, 21 Feb
 2016 04:31:16 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr2796621wjf.0.1456057876367;
        Sun, 21 Feb 2016 04:31:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si738078wmd.0.2016.02.21.04.31.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:31:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="203976362"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:31:15 +0100
Date: Sun, 21 Feb 2016 07:31:12 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Laura Garcia Liebana <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Avoid the use of
 BUG_ON
In-Reply-To: <20160221081553.GA4327@sonyv>
Message-ID: <alpine.DEB.2.10.1602210730280.2782@hadrien>
References: <20160221081553.GA4327@sonyv>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Laura Garcia Liebana wrote:

> Prevent a kernel panic by avoiding the use of the BUG_ON macro and using the
> WARN_ON macro instead. Checkpatch detected this issue.

Why is nvec->state = 0; the right thing to do?  What will happen when the
break is taken?

julia

> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index c335ae2..3b5b94f 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -641,11 +641,21 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  			nvec_msg_free(nvec, nvec->rx);
>  			nvec->state = 3;
>  			nvec_tx_set(nvec);
> -			BUG_ON(nvec->tx->size < 1);
> +			if (WARN_ON(nvec->tx->size < 1)) {
> +				dev_err(nvec->dev,
> +					"Invalid TX size\n");
> +				nvec->state = 0;
> +				break;
> +			}
>  			to_send = nvec->tx->data[0];
>  			nvec->tx->pos = 1;
>  		} else if (status == (I2C_SL_IRQ)) {
> -			BUG_ON(nvec->rx == NULL);
> +			if (WARN_ON(!nvec->rx)) {
> +				dev_err(nvec->dev,
> +					"Invalid RX\n");
> +				nvec->state = 0;
> +				break;
> +			}
>  			nvec->rx->data[1] = received;
>  			nvec->rx->pos = 2;
>  			nvec->state = 4;
> --
> 2.7.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221081553.GA4327%40sonyv.
> For more options, visit https://groups.google.com/d/optout.
>

