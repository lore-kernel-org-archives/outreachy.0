X-GM-THRID: 6667898638714273792
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr277382wmi.12.1552491368358;
        Wed, 13 Mar 2019 08:36:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b458:: with SMTP id v24ls524821wrd.2.gmail; Wed, 13 Mar
 2019 08:36:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjFwBbialxBi3BXsdwCIM66/lW3J3CmfWCYJom0oWZNFXysCaCIJuFiKKRvlt/jSxuhWGH
X-Received: by 2002:adf:ebce:: with SMTP id v14mr2438996wrn.20.1552491367498;
        Wed, 13 Mar 2019 08:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552491367; cv=none;
        d=google.com; s=arc-20160816;
        b=tKOUPw0jpntJFIx3B9Qh9iloYk7pz3wD0TJK2StldmUxbnDt8bM5bMhOUX0irVFgwr
         MyLF0+/gtfc5qj+kfBVidEICYjGhgkk5M0tvYiVVRHHFOZC99NIvesIqC4B9TC5pBJ4A
         5Glp4myZqacEePNDqhVTGJu4PMYD/llKgxsvzkSvwCtHngIOb74It++vttZuy2HziOl7
         lolrh5uMkvpAa3/ZDh+LK3+hD2lywzlF2fNcUVWJTq1LCGSWYqe+yGJP0vLacnnREY47
         pqjI9Wc+L52AXv5CEt35pssobM9Uhj7PYpzhqYrN7qZf2JVwzITxhq3e/CE5609gjcup
         BKOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CSsDuDy8ebrqtPQc2CCnJBOoQ5t2Id3bNQAxWjyiLTQ=;
        b=PldFzdScVaYt3OGEUXH1WpslxGZo4Frf3W8xaAWeCNvFgK+9Xl6dhntyY1eonqx//F
         i5fqQk33OOKKOsMwemY1lxISrWOq09mtlXGDgvbO+t1toHUM1TlbchAyHoD26Ob41z9j
         usfXDe6IXu2gPpTOK1o2/CgeyS5q8LxgFQbbx7MB+jabP6qUhO442qfEGtpU2p9ry4e5
         JaTZr5pmis3TG05zPJRcS76oh8XfyE5bFqgNF4E9giG3/q+mczqmZYLg4hUg672nZRJ1
         xTFgF921DZyT9KmzWTDMvw8mK0oCX52PZz3VhegRULGlVx4RIbvLlQElPjYR088B54KE
         wOWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a7si493501wrw.0.2019.03.13.08.36.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 08:36:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,474,1544482800"; 
   d="scan'208";a="299137950"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 16:35:42 +0100
Date: Wed, 13 Mar 2019 16:35:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove an unnecessary
 local variable in a function
In-Reply-To: <20190313153205.4974-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.20.1903131634500.27312@hadrien>
References: <20190313153205.4974-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:

> Remove an unnecessary local variable in  sm750_format_pll_reg function
> and replace its initialization directly in return type.
> Issue suggested by Coccinelle using ret.cocci.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 90f5480304f4..93abfa8b0090 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -391,7 +391,6 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
>  	unsigned int OD = pPLL->OD;
>  	unsigned int M = pPLL->M;
>  	unsigned int N = pPLL->N;
> -	unsigned int reg = 0;
>
>  	/*
>  	 * Note that all PLL's have the same format. Here, we just use
> @@ -399,13 +398,11 @@ unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
>  	 * register. On returning a 32 bit number, the value can be
>  	 * applied to any PLL in the calling function.
>  	 */
> -	reg = PLL_CTRL_POWER |
> +	return PLL_CTRL_POWER |
>  #ifndef VALIDATION_CHIP
>  		((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |
>  #endif
>  		((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
>  		((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
>  		((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
> -
> -	return reg;

This is going better in the right direction.  But maybe it is less
readable than before, with that very large expression and the ifndef...

julia

>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313153205.4974-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

