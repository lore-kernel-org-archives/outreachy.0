X-GM-THRID: 6201728963441590272
X-Received: by 10.112.138.170 with SMTP id qr10mr4306992lbb.4.1443953641928;
        Sun, 04 Oct 2015 03:14:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.30.18 with SMTP id e18ls337420lfe.35.gmail; Sun, 04 Oct
 2015 03:14:01 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr4304645lbb.22.1443953641278;
        Sun, 04 Oct 2015 03:14:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si190187wiv.3.2015.10.04.03.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 03:14:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,633,1437429600"; 
   d="scan'208";a="180971170"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 12:14:00 +0200
Date: Sun, 4 Oct 2015 12:14:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove space after
 paranthesis
In-Reply-To: <20151004095542.GA7011@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1510041211390.2026@localhost6.localdomain6>
References: <20151004095542.GA7011@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove space after paranthesis '('. Problem found using
> checkpatch.pl
> ERROR: space prohibited after that open parenthesis '('
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 665238c..9f0883b 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -600,9 +600,9 @@ unsigned int formatPllReg(pll_value_t *pPLL)
>         On returning a 32 bit number, the value can be applied to any PLL in the calling function.
>      */
>  	ulPllReg =
> -	FIELD_SET(  0, PANEL_PLL_CTRL, BYPASS, OFF)
> -	| FIELD_SET(  0, PANEL_PLL_CTRL, POWER,  ON)
> -	| FIELD_SET(  0, PANEL_PLL_CTRL, INPUT,  OSC)
> +	FIELD_SET(0, PANEL_PLL_CTRL, BYPASS, OFF)
> +	| FIELD_SET(0, PANEL_PLL_CTRL, POWER,  ON)
> +	| FIELD_SET(0, PANEL_PLL_CTRL, INPUT,  OSC)

This code still looks unpleasant.  It would be better with an extra tab in 
front of the lines of the right hand side of the assignment, and possibly 
with the first FIELD_SET on the same line as ulPllReg.  And there 
should uniformly be one space after the commas.  This makes several 
changes, but since they are all related to the formatting of a single 
expression, they could all be in one patch.

julia

>  #ifndef VALIDATION_CHIP
>  	| FIELD_VALUE(0, PANEL_PLL_CTRL, POD,    pPLL->POD)
>  #endif
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151004095542.GA7011%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

