X-GM-THRID: 6202887067130658816
X-Received: by 10.112.138.170 with SMTP id qr10mr1067573lbb.4.1444287937924;
        Thu, 08 Oct 2015 00:05:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.28.200 with SMTP id c191ls162696lfc.71.gmail; Thu, 08 Oct
 2015 00:05:37 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr1050261lbb.16.1444287937375;
        Thu, 08 Oct 2015 00:05:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si255506wib.2.2015.10.08.00.05.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 00:05:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,653,1437429600"; 
   d="scan'208";a="181678467"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2015 09:05:36 +0200
Date: Thu, 8 Oct 2015 08:05:32 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: sm750fb: Use ARRAY_SIZE
 macro
In-Reply-To: <1444222177-11153-2-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510080804150.2559@hadrien>
References: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com> <1444222177-11153-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 7 Oct 2015, Shraddha Barke wrote:

> ARRAY_SIZE is more concise to use when the size of an array is divided
> by the size of its type or the size of its first element.
>
> Change made using Coccinelle-
>
> @@
> type T;
> T[] E;
> @@
>
> - (sizeof(E)/sizeof(T))
> + ARRAY_SIZE(E)

This semantic patch doesn't have a pattern for the size of the first
element.  You don't have to put the complete semantic patch in the commit
message whn it does multiple things.  But it would be better to put the
part of the semantic patch that actually relates to the transformation
that is made.  Then someone can understand the transformation that was
made better.

julia

> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index e987971..f542cd5 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -391,10 +391,10 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
>
>  	if (pll->clockType != MXCLK_PLL) {
>  		xparm = &xparm_PIXEL[0];
> -		xcnt = sizeof(xparm_PIXEL)/sizeof(xparm_PIXEL[0]);
> +		xcnt = ARRAY_SIZE(xparm_PIXEL);
>  	} else {
>  		xparm = &xparm_MXCLK[0];
> -		xcnt = sizeof(xparm_MXCLK)/sizeof(xparm_MXCLK[0]);
> +		xcnt = ARRAY_SIZE(xparm_MXCLK);
>  	}
>
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444222177-11153-2-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

