X-GM-THRID: 6335533732188913664
X-Received: by 10.28.203.3 with SMTP id b3mr47447wmg.17.1475127978317;
        Wed, 28 Sep 2016 22:46:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.137 with SMTP id e9ls221646lji.26.gmail; Wed, 28 Sep 2016
 22:46:17 -0700 (PDT)
X-Received: by 10.25.99.71 with SMTP id x68mr2003520lfb.28.1475127977484;
        Wed, 28 Sep 2016 22:46:17 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si820142wmw.0.2016.09.28.22.46.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 22:46:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,413,1470693600"; 
   d="scan'208";a="238682648"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2016 07:46:16 +0200
Date: Thu, 29 Sep 2016 07:46:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    teddy.wang@siliconmotion.com, sudipm.mukherjee@gmail.com, 
    amsfield22@gmail.com, daniel.baluta@intel.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: replace macro
 w builtin fn
In-Reply-To: <20160928234631.GA31844@localhost>
Message-ID: <alpine.DEB.2.10.1609290745400.3288@hadrien>
References: <20160928234631.GA31844@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 28 Sep 2016, Elizabeth Ferdman wrote:

> Replace the unique arithmetic macro expression with a built-in

I don't understand "unique arithmetic macro expression".

> function from linux/kernel.h DIV_ROUND_CLOSEST(x, divisor).

Some blank lines are deleted at the end of the patch.  This seems like a
separate change.

julia

>
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
> Changes in v2:
>  - Change commit message
>  - replace arithmetic expression with built in function
>
>  drivers/staging/sm750fb/ddk750_chip.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 3a0afe1..0c96a17 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -6,8 +6,6 @@
>  #include "ddk750_chip.h"
>  #include "ddk750_power.h"
>
> -/* n / d + 1 / 2 = (2n + d) / 2d */
> -#define roundedDiv(num, denom)	((2 * (num) + (denom)) / (2 * (denom)))
>  #define MHz(x) ((x) * 1000000)
>
>  logical_chip_type_t sm750_get_chip_type(void)
> @@ -102,7 +100,7 @@ static void setMemoryClock(unsigned int frequency)
>  			frequency = MHz(336);
>
>  		/* Calculate the divisor */
> -		divisor = roundedDiv(get_mxclk_freq(), frequency);
> +		divisor = DIV_ROUND_CLOSEST(get_mxclk_freq(), frequency);
>
>  		/* Set the corresponding divisor in the register. */
>  		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_M2XCLK_MASK;
> @@ -152,7 +150,7 @@ static void setMasterClock(unsigned int frequency)
>  			frequency = MHz(190);
>
>  		/* Calculate the divisor */
> -		divisor = roundedDiv(get_mxclk_freq(), frequency);
> +		divisor = DIV_ROUND_CLOSEST(get_mxclk_freq(), frequency);
>
>  		/* Set the corresponding divisor in the register. */
>  		reg = PEEK32(CURRENT_GATE) & ~CURRENT_GATE_MCLK_MASK;
> @@ -401,5 +399,3 @@ unsigned int formatPllReg(pll_value_t *pPLL)
>
>  	return reg;
>  }
> -
> -
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928234631.GA31844%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

