X-GM-THRID: 6334764587884216320
X-Received: by 10.28.72.196 with SMTP id v187mr83889wma.0.1474953255257;
        Mon, 26 Sep 2016 22:14:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.6 with SMTP id w6ls1623831wmw.17.canary; Mon, 26 Sep
 2016 22:14:14 -0700 (PDT)
X-Received: by 10.28.207.3 with SMTP id f3mr83304wmg.10.1474953254610;
        Mon, 26 Sep 2016 22:14:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si48998wmc.2.2016.09.26.22.14.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 22:14:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,403,1470693600"; 
   d="scan'208";a="238364353"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Sep 2016 07:14:13 +0200
Date: Tue, 27 Sep 2016 07:14:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com, 
    daniel.baluta@intel.com, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Refactor camelCase
 macro
In-Reply-To: <20160926220150.GA2273@localhost>
Message-ID: <alpine.DEB.2.10.1609270713180.3413@hadrien>
References: <20160926220150.GA2273@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 26 Sep 2016, Elizabeth Ferdman wrote:

> This patch refactors a camelcase macro roundedDiv to rounded_div. Error found by checkpatch.

Refactors seems like kind of a big word for just a renaming.  Refactoring
would suggest a larger scale reorganization.

julia

>
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index f557b6d..81df4c4 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -7,7 +7,7 @@
>  #include "ddk750_power.h"
>
>  /* n / d + 1 / 2 = (2n + d) / 2d */
> -#define roundedDiv(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
> +#define rounded_div(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
>  #define MHz(x) ((x) * 1000000)
>
>  logical_chip_type_t getChipType(void)
> @@ -102,7 +102,7 @@ static void setMemoryClock(unsigned int frequency)
>  			frequency = MHz(336);
>
>  		/* Calculate the divisor */
> -		divisor = roundedDiv(get_mxclk_freq(), frequency);
> +		divisor = rounded_div(get_mxclk_freq(), frequency);
>
>  		/* Set the corresponding divisor in the register. */
>  		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_M2XCLK_MASK;
> @@ -152,7 +152,7 @@ static void setMasterClock(unsigned int frequency)
>  			frequency = MHz(190);
>
>  		/* Calculate the divisor */
> -		divisor = roundedDiv(get_mxclk_freq(), frequency);
> +		divisor = rounded_div(get_mxclk_freq(), frequency);
>
>  		/* Set the corresponding divisor in the register. */
>  		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_MCLK_MASK;
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160926220150.GA2273%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

