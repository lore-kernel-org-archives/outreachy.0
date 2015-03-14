X-GM-THRID: 8297812852736
X-Received: by 10.194.201.10 with SMTP id jw10mr8050931wjc.3.1426346544682;
        Sat, 14 Mar 2015 08:22:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.33 with SMTP id cr1ls441585lad.47.gmail; Sat, 14 Mar
 2015 08:22:24 -0700 (PDT)
X-Received: by 10.152.21.9 with SMTP id r9mr8037150lae.0.1426346544095;
        Sat, 14 Mar 2015 08:22:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id el6si340875wib.0.2015.03.14.08.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 08:22:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,400,1422918000"; 
   d="scan'208";a="103340237"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 16:22:23 +0100
Date: Sat, 14 Mar 2015 16:22:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Supriya Karanth <iskaranth@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: remove parantheses
 from return statements
In-Reply-To: <1426337711-32548-1-git-send-email-iskaranth@gmail.com>
Message-ID: <alpine.DEB.2.10.1503141622000.2461@hadrien>
References: <1426337711-32548-1-git-send-email-iskaranth@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

On Sat, 14 Mar 2015, Supriya Karanth wrote:

> found by checkpatch.pl :ERROR: return is not a function,
> parentheses are not required
>
> changes made using coccinelle script:
>
> @@
> expression e,e1;
> @@
> (
> return (e / e1);
> |
> return
> -(
> e
> -)
> ;
> )
>
> Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c  | 2 +-
>  drivers/staging/sm750fb/ddk750_swi2c.c | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 3c77207..33add64 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -633,7 +633,7 @@ unsigned int formatPllReg(pll_value_t *pPLL)
>        | FIELD_VALUE(0, PANEL_PLL_CTRL, N,      pPLL->N)
>        | FIELD_VALUE(0, PANEL_PLL_CTRL, M,      pPLL->M);
>
> -    return(ulPllReg);
> +    return ulPllReg;
>  }
>
>
> diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
> index 1249759..8557cce 100644
> --- a/drivers/staging/sm750fb/ddk750_swi2c.c
> +++ b/drivers/staging/sm750fb/ddk750_swi2c.c
> @@ -304,7 +304,7 @@ long swI2CWriteByte(unsigned char data)
>      if (i<0xff)
>          return 0;
>      else
> -        return (-1);
> +        return -1;
>  }
>
>  /*
> @@ -408,10 +408,10 @@ long swI2CInit(
>
>      /* Return 0 if the GPIO pins to be used is out of range. The range is only from [0..63] */
>      if ((i2cClkGPIO > 31) || (i2cDataGPIO > 31))
> -        return (-1);
> +        return -1;
>
>      if (getChipType() == SM750LE)
> -        return( swI2CInit_SM750LE(i2cClkGPIO, i2cDataGPIO) );
> +        return swI2CInit_SM750LE(i2cClkGPIO, i2cDataGPIO);
>
>      /* Initialize the GPIO pin for the i2c Clock Register */
>      g_i2cClkGPIOMuxReg = GPIO_MUX;
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426337711-32548-1-git-send-email-iskaranth%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

