X-GM-THRID: 6389636871256801280
X-Received: by 10.25.17.102 with SMTP id g99mr400037lfi.6.1487707132844;
        Tue, 21 Feb 2017 11:58:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.10 with SMTP id f10ls761282ljb.44.gmail; Tue, 21 Feb
 2017 11:58:52 -0800 (PST)
X-Received: by 10.25.41.85 with SMTP id p82mr3061308lfp.16.1487707132102;
        Tue, 21 Feb 2017 11:58:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d5si1012795wmc.1.2017.02.21.11.58.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 11:58:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="261518792"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 20:58:51 +0100
Date: Tue, 21 Feb 2017 20:58:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: most: Using macro
 DIV_ROUND_UP
In-Reply-To: <20170221185615.GA25627@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702212058040.2117@hadrien>
References: <20170221185615.GA25627@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Feb 2017, simran singhal wrote:

> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
> It clarifies the divisor calculations. This occurence was detected using
> the coccinelle script:
>
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )


DIV_ROUND_UP is defined in kernel.h, which defines some other generally
useful things.  Maybe there is an opportunity for making rules from some
of them also.

julia

>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/most/hdm-dim2/dim2_hal.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c b/drivers/staging/most/hdm-dim2/dim2_hal.c
> index 0b9816c..6824826 100644
> --- a/drivers/staging/most/hdm-dim2/dim2_hal.c
> +++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
> @@ -49,7 +49,7 @@
>  #define DBR_SIZE  (16 * 1024) /* specified by IP */
>  #define DBR_BLOCK_SIZE  (DBR_SIZE / 32 / DBR_MAP_SIZE)
>
> -#define ROUND_UP_TO(x, d)  (((x) + (d) - 1) / (d) * (d))
> +#define ROUND_UP_TO(x, d)  (DIV_ROUND_UP(x, (d)) * (d))
>
>  /* -------------------------------------------------------------------------- */
>  /* generic helper functions and macros */
> @@ -117,7 +117,7 @@ static int alloc_dbr(u16 size)
>  		return DBR_SIZE; /* out of memory */
>
>  	for (i = 0; i < DBR_MAP_SIZE; i++) {
> -		u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> +		u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
>  		u32 mask = ~((~(u32)0) << blocks);
>
>  		do {
> @@ -137,7 +137,7 @@ static int alloc_dbr(u16 size)
>  static void free_dbr(int offs, int size)
>  {
>  	int block_idx = offs / DBR_BLOCK_SIZE;
> -	u32 const blocks = (size + DBR_BLOCK_SIZE - 1) / DBR_BLOCK_SIZE;
> +	u32 const blocks = DIV_ROUND_UP(size, DBR_BLOCK_SIZE);
>  	u32 mask = ~((~(u32)0) << blocks);
>
>  	mask <<= block_idx % 32;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221185615.GA25627%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

