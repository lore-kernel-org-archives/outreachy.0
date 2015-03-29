X-GM-THRID: 10268360835072
X-Received: by 10.180.23.40 with SMTP id j8mr1693747wif.2.1427621350031;
        Sun, 29 Mar 2015 02:29:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.200 with SMTP id g8ls11422lam.33.gmail; Sun, 29 Mar
 2015 02:29:09 -0700 (PDT)
X-Received: by 10.112.130.71 with SMTP id oc7mr2441993lbb.13.1427621349252;
        Sun, 29 Mar 2015 02:29:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si432015wib.0.2015.03.29.02.29.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 02:29:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,487,1422918000"; 
   d="scan'208";a="130589065"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 11:29:08 +0200
Date: Sun, 29 Mar 2015 11:28:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: sm750fb: Insert spaces
 in for statement
In-Reply-To: <20150329091836.GA19941@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1503291128130.2644@hadrien>
References: <20150329091836.GA19941@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 29 Mar 2015, Amitoj Kaur Chawla wrote:

> Insert required spaces in for statements after operators and ';'.
> Problem found using checkpatch.pl
> ERROR: spaces required around that '=' (ctx:VxV)
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 5f2f424..e11b8c5 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -41,7 +41,7 @@ inline unsigned int twoToPowerOfx(unsigned long x)
>  	unsigned long i;
>  	unsigned long result = 1;
>
> -	for (i=1; i<=x; i++)
> +	for ( i = 1; i <= x; i++)

There should be no space after the (.  Checkpatch should have complained
about that.

julia

>  		result *= 2;
>  	return result;
>  }
> @@ -455,7 +455,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
>  	}
>
>
> -	for(N = 15;N>1;N--)
> +	for( N = 15; N > 1; N--)
>  	{
>  		/* RN will not exceed maximum long if @request <= 285 MHZ (for 32bit cpu) */
>  		RN = N * request;
> @@ -463,7 +463,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
>  		rem = RN % input;/* rem always small than 14318181 */
>  		fl_quo = (rem * 10000 /input);
>
> -		for(d = xcnt - 1;d >= 0;d--){
> +		for(d = xcnt - 1; d >= 0; d--){
>  			X = xparm[d].value;
>  			M = quo*X;
>  			M += fl_quo * X / 10000;
> @@ -511,7 +511,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
>
>  #ifndef VALIDATION_CHIP
>      /* The maximum of post divider is 8. */
> -	for (POD=0; POD<=3; POD++)
> +	for (POD = 0; POD <= 3; POD++)
>  #endif
>  		{
>
> @@ -525,7 +525,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
>  	podPower = twoToPowerOfx(POD);
>
>  	/* OD has only 2 bits [15:14] and its value must between 0 to 3 */
> -	for (OD=0; OD<=3; OD++) {
> +	for (OD = 0; OD <= 3; OD++) {
>  		/* Work out 2 to the power of OD */
>  		odPower = twoToPowerOfx(OD);
>
> @@ -538,7 +538,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
>
>  		/* N has 4 bits [11:8] and its value must between 2 and 15.
>  		The N == 1 will behave differently --> Result is not correct. */
> -	for (N=2; N<=15; N++) {
> +	for (N = 2; N <= 15; N++) {
>  		/* The formula for PLL is ulRequestClk = inputFreq * M / N / (2^OD)
>  		In the following steps, we try to work out a best M value given the others are known.
>  		To avoid decimal calculation, we use 1000 as multiplier for up to 3 decimal places of accuracy.
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150329091836.GA19941%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

