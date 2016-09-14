X-GM-THRID: 6330275775734874112
X-Received: by 10.194.119.196 with SMTP id kw4mr880010wjb.1.1473884449777;
        Wed, 14 Sep 2016 13:20:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.147 with SMTP id s141ls436250wmb.0.gmail; Wed, 14 Sep
 2016 13:20:49 -0700 (PDT)
X-Received: by 10.28.208.134 with SMTP id h128mr1547321wmg.1.1473884449230;
        Wed, 14 Sep 2016 13:20:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si93601wme.3.2016.09.14.13.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 13:20:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="193210873"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 22:20:48 +0200
Date: Wed, 14 Sep 2016 22:20:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 5/6] staging: ks7010: ks7010_sdio.c:
 Remove the space after a type cast
In-Reply-To: <6811cb8e9856bf3e5a06637d70e13608894f84b9.1473877138.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.10.1609142216400.3322@hadrien>
References: <cover.1473877138.git.karniksayli1995@gmail.com> <6811cb8e9856bf3e5a06637d70e13608894f84b9.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

For the subject line, you should use git log --oneline filename to see
what others have done, rather than making up your own strategy.  In
particular, normally one doesn't put the full file name, with the .c.  In
this case, all of the patches have just staging: ks7010:

On Thu, 15 Sep 2016, sayli karnik wrote:

> The patch removes an unnecessary space after a cast, as detected by
> checkpatch.pl.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index 4a918b5..4ad4670 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -544,7 +544,7 @@ static void ks7010_rw_function(struct work_struct *work)
>
>  	if (rw_data & RSIZE_MASK) {	/* Read schedule */
>  		ks_wlan_hw_rx((void *)priv,
> -			      (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
> +			      (uint16_t)(((rw_data & RSIZE_MASK) << 4)));

There are a lot of parentheses here.  I have the impression that there are
double parentheses, (( )).

>  	}
>  	if ((rw_data & WSTATUS_MASK))
>  		tx_device_task((void *)priv);
> @@ -618,7 +618,7 @@ static void ks_sdio_interrupt(struct sdio_func *func)
>  			rsize = rw_data & RSIZE_MASK;
>  			if (rsize) {	/* Read schedule */
>  				ks_wlan_hw_rx((void *)priv,
> -					      (uint16_t) (((rsize) << 4)));
> +					      (uint16_t)(((rsize) << 4)));

rsize is just a variable.  It doesn't need parentheses.

This parenthesis removal would be for another patch in the series.

julia

>  			}
>  			if (rw_data & WSTATUS_MASK) {
>  #if 0
> @@ -1169,7 +1169,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
>  			    cpu_to_le16((uint16_t)
>  					(sizeof(*pp) -
>  					 sizeof(pp->header.size)));
> -			pp->header.event = cpu_to_le16((uint16_t) HIF_STOP_REQ);
> +			pp->header.event = cpu_to_le16((uint16_t)HIF_STOP_REQ);
>
>  			sdio_claim_host(func);
>  			write_to_device(priv, (unsigned char *)pp,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6811cb8e9856bf3e5a06637d70e13608894f84b9.1473877138.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

