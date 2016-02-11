X-GM-THRID: 6249902768504438784
X-Received: by 10.98.93.217 with SMTP id n86mr8725702pfj.11.1455170704287;
        Wed, 10 Feb 2016 22:05:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.76 with SMTP id x73ls444429iod.8.gmail; Wed, 10 Feb
 2016 22:05:03 -0800 (PST)
X-Received: by 10.50.57.17 with SMTP id e17mr13264710igq.11.1455170703883;
        Wed, 10 Feb 2016 22:05:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id mu6si451486igb.1.2016.02.10.22.05.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 22:05:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,429,1449529200"; 
   d="scan'208";a="164278453"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 07:04:58 +0100
Date: Thu, 11 Feb 2016 07:04:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: remove parentheses
 on right hand side of assignment
In-Reply-To: <20160211053430.GA8222@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602110704340.2047@localhost6.localdomain6>
References: <20160211053430.GA8222@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 10 Feb 2016, Alison Schofield wrote:

> Remove the unnecessary parens on right hand side of assignment.
> 
> Found using Coccinelle:
> @@
> identifier x;
> expression e1, e2;
> @@
> - x = (e1 << e2)
> + x = e1 << e2
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 98b21d4..c1da8f0 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -921,11 +921,11 @@ static void wilc_wlan_handle_isr_ext(struct wilc *wilc, u32 int_status)
>  	int ret = 0;
>  	struct rxq_entry_t *rqe;
>  
> -	size = ((int_status & 0x7fff) << 2);
> +	size = (int_status & 0x7fff) << 2;
>  
>  	while (!size && retries < 10) {
>  		wilc->hif_func->hif_read_size(wilc, &size);
> -		size = ((size & 0x7fff) << 2);
> +		size = (size & 0x7fff) << 2;
>  		retries++;
>  	}
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160211053430.GA8222%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
> 

