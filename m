X-GM-THRID: 6253655179876368384
X-Received: by 10.112.173.6 with SMTP id bg6mr2393591lbc.0.1456333224992;
        Wed, 24 Feb 2016 09:00:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.40 with SMTP id h40ls627048lfi.1.gmail; Wed, 24 Feb 2016
 09:00:24 -0800 (PST)
X-Received: by 10.112.170.7 with SMTP id ai7mr4888440lbc.1.1456333224431;
        Wed, 24 Feb 2016 09:00:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e130si1390871wme.2.2016.02.24.09.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 09:00:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,494,1449529200"; 
   d="scan'208";a="165860804"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 18:00:23 +0100
Date: Wed, 24 Feb 2016 18:00:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Laura Garcia Liebana <nevola@gmail.com>
cc: outreachy-kernel@googlegroups.com, devel@linuxdriverproject.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: nvec: Avoid the use of
 BUG_ON
In-Reply-To: <20160224165708.GA3517@sonyv>
Message-ID: <alpine.DEB.2.10.1602241800050.2904@hadrien>
References: <20160224165708.GA3517@sonyv>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 24 Feb 2016, Laura Garcia Liebana wrote:

> Prevent a kernel panic by avoiding the use of the BUG_ON macro.
> Checkpatch detected this issue.
>
> The WARN_ON macro is not needed as such cases shouldn't happen and they
> were introduced for debugging purposes.

Not sure to understand.  There is no use of WARN_ON.

julia

>
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
> Changes in v2:
> 	- According to Marc Dietrich, module creator, the WARN_ON macro is not needed as such cases shouldn't happen and they were introduced for debugging purposes.
>
> Changes in v3:
> 	- Explanation of changes in v2 included in the commit message, as Fabio Estevam suggested.
>
>  drivers/staging/nvec/nvec.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index c335ae2..f6a1dbb 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -641,11 +641,9 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  			nvec_msg_free(nvec, nvec->rx);
>  			nvec->state = 3;
>  			nvec_tx_set(nvec);
> -			BUG_ON(nvec->tx->size < 1);
>  			to_send = nvec->tx->data[0];
>  			nvec->tx->pos = 1;
>  		} else if (status == (I2C_SL_IRQ)) {
> -			BUG_ON(nvec->rx == NULL);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224165708.GA3517%40sonyv.
> For more options, visit https://groups.google.com/d/optout.
>

