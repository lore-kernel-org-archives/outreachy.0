X-GM-THRID: 10253217300480
X-Received: by 10.152.19.67 with SMTP id c3mr6640370lae.7.1427624754709;
        Sun, 29 Mar 2015 03:25:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.9 with SMTP id m9ls443334wiy.16.gmail; Sun, 29 Mar 2015
 03:25:54 -0700 (PDT)
X-Received: by 10.194.161.194 with SMTP id xu2mr6673410wjb.1.1427624754371;
        Sun, 29 Mar 2015 03:25:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c8si611025wiw.1.2015.03.29.03.25.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 03:25:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,488,1422918000"; 
   d="scan'208";a="107528039"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 12:25:53 +0200
Date: Sun, 29 Mar 2015 12:25:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] Staging: sm750fb: Fix C99
 Comments
In-Reply-To: <20150329102221.GA20975@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1503291224280.2644@hadrien>
References: <20150329102221.GA20975@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 29 Mar 2015, Amitoj Kaur Chawla wrote:

> Fixed C99 Comments to C89 comment style. Problem found using
> checkpatch.pl
> ERROR: do not use C99 // comments
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Removed comments that perform printing

Sorry to be so picky, but the fact that some comments have been removed
needs to appear above the --- as well.  The text below the --- disappears
on the way to git, and someone looking at your patch in the git history
won't have full information about the changes that have been made.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150329102221.GA20975%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

