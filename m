X-GM-THRID: 10253217300480
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ed1e7771a182509f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.41 with SMTP id n9mr1728248wiy.4.1427625128916;
        Sun, 29 Mar 2015 03:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.68 with SMTP id p4ls447267wix.6.gmail; Sun, 29 Mar 2015
 03:32:08 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr1734745wib.6.1427625128604;
        Sun, 29 Mar 2015 03:32:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si438347wib.0.2015.03.29.03.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 03:32:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,488,1422918000"; 
   d="scan'208";a="130593321"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 12:32:08 +0200
Date: Sun, 29 Mar 2015 12:31:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/4] Staging: sm750fb: Fix C99
 Comments
In-Reply-To: <20150329103020.GA21007@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1503291231470.2644@hadrien>
References: <20150329103020.GA21007@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 29 Mar 2015, Amitoj Kaur Chawla wrote:

> Fixed C99 Comments to C89 comment style and removed C99 comments
> performing printing. Problem found using checkpatch.pl
> ERROR: do not use C99 // comments

Better, thanks.

julia

> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes made in v3:
>         -Fixed commit message
>
>  drivers/staging/sm750fb/ddk750_chip.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 02f9326..233436d 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -17,7 +17,7 @@ logical_chip_type_t getChipType(void)
>  	char physicalRev;
>  	logical_chip_type_t chip;
>
> -	physicalID = devId750;//either 0x718 or 0x750
> +	physicalID = devId750; /* either 0x718 or 0x750 */
>  	physicalRev = revId750;
>
>  	if (physicalID == 0x718)
> @@ -264,7 +264,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
>
>  	unsigned int ulReg;
>  #if 0
> -	//move the code to map regiter function.
> +	/* move the code to map regiter function. */
>  	if(getChipType() == SM718){
>  		/* turn on big endian bit*/
>  		ulReg = PEEK32(0x74);
> @@ -501,7 +501,6 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
>  		}
>  	}
>
> -	//printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD);
>  	return ret;
>  }
>
> @@ -601,11 +600,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
>  	ulRequestClk *= 1000;
>  	pPLL->inputFreq = DEFAULT_INPUT_CLOCK; /* Default reference clock */
>
> -    /* Output debug information */
> -	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk));
> -	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD));
> -
> -    /* Return actual frequency that the PLL can set */
> +	/* Return actual frequency that the PLL can set */
>  	ret = calcPLL(pPLL);
>  	return ret;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150329103020.GA21007%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

