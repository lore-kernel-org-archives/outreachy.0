X-GM-THRID: 10253217300480
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ed1e7771a182509f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.67 with SMTP id cw3mr6640911wjc.2.1427621443900;
        Sun, 29 Mar 2015 02:30:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.233 with SMTP id bb9ls440139wib.29.gmail; Sun, 29 Mar
 2015 02:30:43 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr1694518wib.6.1427621443609;
        Sun, 29 Mar 2015 02:30:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p4si419800wiz.0.2015.03.29.02.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 02:30:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,487,1422918000"; 
   d="scan'208";a="130589138"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 11:30:43 +0200
Date: Sun, 29 Mar 2015 11:30:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: sm750fb: Fix C99
 Comments
In-Reply-To: <20150329074607.GA18058@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1503291129570.2644@hadrien>
References: <20150329074607.GA18058@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> -	//printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD);
> +	/* printk("Finally:  pll->n[%lu],m[%lu],od[%lu],pod[%lu]\n",pll->N,pll->M,pll->OD,pll->POD); */

Comments around print statements should just be removed.  There are more
below.

julia

>  	return ret;
>  }
>
> @@ -597,13 +597,13 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
>  	}
>
>      /* Restore input frequency from Khz to hz unit */
> -//    pPLL->inputFreq *= 1000;
> +/*    pPLL->inputFreq *= 1000; */
>  	ulRequestClk *= 1000;
>  	pPLL->inputFreq = DEFAULT_INPUT_CLOCK; /* Default reference clock */
>
>      /* Output debug information */
> -	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk));
> -	//DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD));
> +	/* DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Requested Frequency = %d\n", ulRequestClk)); */
> +	/* DDKDEBUGPRINT((DISPLAY_LEVEL, "calcPllValue: Input CLK = %dHz, M=%d, N=%d, OD=%d, POD=%d\n", pPLL->inputFreq, pPLL->M, pPLL->N, pPLL->OD, pPLL->POD)); */
>
>      /* Return actual frequency that the PLL can set */
>  	ret = calcPLL(pPLL);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150329074607.GA18058%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

