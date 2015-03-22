X-GM-THRID: 9590400876544
X-Received: by 10.194.178.67 with SMTP id cw3mr10512327wjc.2.1427047002549;
        Sun, 22 Mar 2015 10:56:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls674654lal.49.gmail; Sun, 22 Mar
 2015 10:56:41 -0700 (PDT)
X-Received: by 10.112.213.100 with SMTP id nr4mr2008304lbc.10.1427047001864;
        Sun, 22 Mar 2015 10:56:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si320694wia.0.2015.03.22.10.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 10:56:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,447,1422918000"; 
   d="scan'208";a="105111919"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 18:56:41 +0100
Date: Sun, 22 Mar 2015 18:56:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: Remove struct
 typedefs
In-Reply-To: <20150322174311.GA2426@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1503221853390.2475@hadrien>
References: <20150322174311.GA2426@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Amitoj Kaur Chawla wrote:

> Remove typedef for struct. Warning found using checkpatch.pl
> WARNING: do not add new typedefs

It looks like this patch is on top of your previous patches.  It should be
on top of the original staging kernel.

Indeed, if you have proposed another change in the same file (it looks
like you have done something with indentation), you have to put them
together into a patch series, until the previous one is accepted.

Finally, I don't have the impression that any uses of the typedef are
updated.  Are there any?  If there are none, then just get rid of the
whole thing.  If there are some, they need to be updated.

julia

>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Fix code error in removing typedef
>
>  drivers/staging/sm750fb/ddk750_chip.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 74a3642..3ac6478 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -2,13 +2,12 @@
>  #include "ddk750_reg.h"
>  #include "ddk750_chip.h"
>  #include "ddk750_power.h"
> -struct _pllcalparam {
> +struct pllcalparam {
>  	unsigned char power;/* d : 0~ 6*/
>  	unsigned char pod;
>  	unsigned char od;
>  	unsigned char value;/* value of  2 power d (2^d) */
> -}
> -pllcalparam;
> +};
>
>
>  logical_chip_type_t getChipType(void)
> @@ -192,17 +191,17 @@ void setMasterClock(unsigned int frequency)
>  		return;
>  #endif
>  	if (frequency != 0) {
> -        /* Set the frequency to the maximum frequency that the SM750 engine can
> -           run, which is about 190 MHz. */
> -        if (frequency > MHz(190))
> -            frequency = MHz(190);
> +		/* Set the frequency to the maximum frequency that the SM750
> +		engine can run, which is about 190 MHz. */
> +		if (frequency > MHz(190))
> +			frequency = MHz(190);
>
> -        /* Calculate the divisor */
> -        divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
> +	/* Calculate the divisor */
> +	divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
>
> -        /* Set the corresponding divisor in the register. */
> -        ulReg = PEEK32(CURRENT_GATE);
> -        switch(divisor)
> +	/* Set the corresponding divisor in the register. */
> +	ulReg = PEEK32(CURRENT_GATE);
> +	switch(divisor)
>          {
>              default:
>              case 3:
> @@ -219,7 +218,7 @@ void setMasterClock(unsigned int frequency)
>                  break;
>          }
>
> -        setCurrentGate(ulReg);
> +	setCurrentGate(ulReg);
>      }
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150322174311.GA2426%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

