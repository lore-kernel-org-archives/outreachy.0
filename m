X-GM-THRID: 6201662223213920256
X-Received: by 10.112.138.170 with SMTP id qr10mr4168466lbb.4.1443937288567;
        Sat, 03 Oct 2015 22:41:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.207 with SMTP id y198ls393886lfd.107.gmail; Sat, 03 Oct
 2015 22:41:27 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr4061964lbc.23.1443937287960;
        Sat, 03 Oct 2015 22:41:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bj4si188084wib.1.2015.10.03.22.41.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 22:41:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,632,1437429600"; 
   d="scan'208";a="180941661"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 07:41:27 +0200
Date: Sun, 4 Oct 2015 07:41:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Removed space before
 paranthesis
In-Reply-To: <20151004052239.GA3895@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1510040738190.2173@localhost6.localdomain6>
References: <20151004052239.GA3895@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Amitoj Kaur Chawla wrote:

> Removed space before paranthesis ')'. Problem found using
> checkpatch.pl
> ERROR: space prohibited before that close parenthesis ')'

Removed should be Remove.  The message should "tell git what to do", not 
describe what you did.

julia

> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151004052239.GA3895%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

