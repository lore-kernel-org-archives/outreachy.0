X-GM-THRID: 6200413753544015872
X-Received: by 10.112.164.1 with SMTP id ym1mr874903lbb.15.1443649069781;
        Wed, 30 Sep 2015 14:37:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.7 with SMTP id a7ls65815lfe.100.gmail; Wed, 30 Sep 2015
 14:37:49 -0700 (PDT)
X-Received: by 10.112.170.67 with SMTP id ak3mr878543lbc.6.1443649069190;
        Wed, 30 Sep 2015 14:37:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o5si305414wib.0.2015.09.30.14.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:37:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,614,1437429600"; 
   d="scan'208";a="180288312"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 23:37:48 +0200
Date: Wed, 30 Sep 2015 23:37:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:dgnc: Fixed indentation
 warning
In-Reply-To: <1443646292-46803-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1509302337310.1977@localhost6.localdomain6>
References: <1443646292-46803-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, Cristina Moraru wrote:

> Fixed 'suspect code indent for conditional statements (8, 24)' Warning
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index a629a78..9159e8e 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -628,13 +628,14 @@ static void cls_param(struct tty_struct *tty)
>  	 * we are in hardware flow control mode, or CLOCAL/FORCEDCD is not set.
>  	 */
>  	if ((ch->ch_digi.digi_flags & CTSPACE) ||
> -		(ch->ch_digi.digi_flags & RTSPACE) ||
> -		(ch->ch_c_cflag & CRTSCTS) ||
> -		!(ch->ch_digi.digi_flags & DIGI_FORCEDCD) ||
> -		!(ch->ch_c_cflag & CLOCAL))
> -			ier |= UART_IER_MSI;
> +	    (ch->ch_digi.digi_flags & RTSPACE) ||
> +	    (ch->ch_c_cflag & CRTSCTS) ||
> +	    !(ch->ch_digi.digi_flags & DIGI_FORCEDCD) ||
> +	    !(ch->ch_c_cflag & CLOCAL))
> +

I don't think that the blank line is needed.

julia

> +		ier |= UART_IER_MSI;
>  	else
> -			ier &= ~UART_IER_MSI;
> +		ier &= ~UART_IER_MSI;
>  
>  	ier |= UART_IER_THRI;
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443646292-46803-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

