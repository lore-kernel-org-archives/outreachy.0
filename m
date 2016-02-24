X-GM-THRID: 6254745992232435712
X-Received: by 10.28.126.149 with SMTP id z143mr2429930wmc.4.1456304923900;
        Wed, 24 Feb 2016 01:08:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.75 with SMTP id q72ls605904lfq.72.gmail; Wed, 24 Feb
 2016 01:08:43 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr3039846lbb.17.1456304923091;
        Wed, 24 Feb 2016 01:08:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e130si1309066wme.2.2016.02.24.01.08.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 01:08:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,493,1449529200"; 
   d="scan'208";a="204407245"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 10:08:42 +0100
Date: Wed, 24 Feb 2016 10:08:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: replace ternary
 operator with min macro
In-Reply-To: <20160224064843.GA17889@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.02.1602241008290.2149@localhost6.localdomain6>
References: <20160224064843.GA17889@d830.WORKGROUP>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 23 Feb 2016, Alison Schofield wrote:

> Use macro min() to get the minimum of two values for
> brevity and readability.
> 
> Found using Coccinelle:
> @ type T; T x; T y; @@

The first @ is missing.

julia

> (
> - x < y ? x : y
> + min(x,y)
> |
> - x > y ? x : y
> + max(x,y)
> )
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ra8875.c | 2 +-
>  drivers/staging/fbtft/fbtft-bus.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
> index b167c50..0585e0b 100644
> --- a/drivers/staging/fbtft/fb_ra8875.c
> +++ b/drivers/staging/fbtft/fb_ra8875.c
> @@ -277,7 +277,7 @@ static int write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
>  		startbyte_size = 1;
>  
>  	while (remain) {
> -		to_copy = remain > tx_array_size ? tx_array_size : remain;
> +		to_copy = min(tx_array_size, remain);
>  		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
>  			to_copy, remain - to_copy);
>  
> diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
> index 58449ad8..b31f111 100644
> --- a/drivers/staging/fbtft/fbtft-bus.c
> +++ b/drivers/staging/fbtft/fbtft-bus.c
> @@ -157,7 +157,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
>  	}
>  
>  	while (remain) {
> -		to_copy = remain > tx_array_size ? tx_array_size : remain;
> +		to_copy = min(tx_array_size, remain);
>  		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
>  						to_copy, remain - to_copy);
>  
> @@ -201,7 +201,7 @@ int fbtft_write_vmem16_bus9(struct fbtft_par *par, size_t offset, size_t len)
>  	tx_array_size = par->txbuf.len / 2;
>  
>  	while (remain) {
> -		to_copy = remain > tx_array_size ? tx_array_size : remain;
> +		to_copy = min(tx_array_size, remain);
>  		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
>  						to_copy, remain - to_copy);
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224064843.GA17889%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
> 

