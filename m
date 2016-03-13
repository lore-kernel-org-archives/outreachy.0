X-GM-THRID: 6261406154981638144
X-Received: by 10.28.63.201 with SMTP id m192mr1247426wma.5.1457847225881;
        Sat, 12 Mar 2016 21:33:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.136.139 with SMTP id k133ls614566lfd.103.gmail; Sat, 12 Mar
 2016 21:33:45 -0800 (PST)
X-Received: by 10.25.142.130 with SMTP id q124mr2156383lfd.9.1457847225109;
        Sat, 12 Mar 2016 21:33:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si264374wmd.2.2016.03.12.21.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 21:33:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,329,1454972400"; 
   d="scan'208";a="168383056"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 06:33:44 +0100
Date: Sun, 13 Mar 2016 06:33:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: fixed spaces before
 and after "|"
In-Reply-To: <20160313052049.GA12145@spock>
Message-ID: <alpine.DEB.2.02.1603130632380.2069@localhost6.localdomain6>
References: <20160313052049.GA12145@spock>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patch fixes the following issue while mantains
> 80 character per line limit by removing
> unnecessary parenthesis.
> 
> CHECK: spaces preferred around that '|' (ctx:VxV)
> +       writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
> Changes on v2:
>    - Removed file name from subject line
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 51db98b..6e1e475 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -1168,8 +1168,10 @@ static void cls_uart_init(struct channel_t *ch)
>  	/* Clear out UART and FIFO */
>  	readb(&ch->ch_cls_uart->txrx);
>  
> -	writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
> -	       &ch->ch_cls_uart->isr_fcr);
> +	writeb((UART_FCR_ENABLE_FIFO |
> +		UART_FCR_CLEAR_RCVR  |
> +		UART_FCR_CLEAR_XMIT),

So it couldn't fit on one line?  Or not even on two lines?

> +		&ch->ch_cls_uart->isr_fcr);

This line should not have been affected by the patch.  It has been 
indented by one more space to make it look like it is part of the | rather 
than an argument of writeb.

julia

>  	udelay(10);
>  
>  	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160313052049.GA12145%40spock.
> For more options, visit https://groups.google.com/d/optout.
> 

