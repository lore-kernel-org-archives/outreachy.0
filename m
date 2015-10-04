X-GM-THRID: 6201725617113661440
X-Received: by 10.112.144.99 with SMTP id sl3mr4162548lbb.12.1443953800053;
        Sun, 04 Oct 2015 03:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.137 with SMTP id ce9ls290127wib.37.canary; Sun, 04 Oct
 2015 03:16:39 -0700 (PDT)
X-Received: by 10.180.160.146 with SMTP id xk18mr1139056wib.3.1443953799697;
        Sun, 04 Oct 2015 03:16:39 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si193366wif.2.2015.10.04.03.16.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 03:16:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,633,1437429600"; 
   d="scan'208";a="180971457"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 12:16:38 +0200
Date: Sun, 4 Oct 2015 12:16:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: Remove space
 before paranthesis
In-Reply-To: <20151004094242.GA4089@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1510041216270.2026@localhost6.localdomain6>
References: <20151004094242.GA4089@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove space before paranthesis ')'. Problem found using
> checkpatch.pl
> ERROR: space prohibited before that close parenthesis ')'
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         - Correct the commit message

Looks better, thanks.

julia

> 
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 1683b3d..665238c 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -268,7 +268,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
>  #endif
>  
>  
> -	if (pInitParam->powerMode != 0 )
> +	if (pInitParam->powerMode != 0)
>  		pInitParam->powerMode = 0;
>  	setPowerMode(pInitParam->powerMode);
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151004094242.GA4089%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

