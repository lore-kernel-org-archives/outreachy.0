X-GM-THRID: 6261344132026859520
X-Received: by 10.182.91.9 with SMTP id ca9mr13382087obb.7.1457840461162;
        Sat, 12 Mar 2016 19:41:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.233 with SMTP id t96ls3272123qgd.49.gmail; Sat, 12 Mar
 2016 19:41:00 -0800 (PST)
X-Received: by 10.129.79.81 with SMTP id d78mr12981268ywb.23.1457840460471;
        Sat, 12 Mar 2016 19:41:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k15si518074igt.3.2016.03.12.19.40.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:41:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="207446863"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:40:57 +0100
Date: Sun, 13 Mar 2016 04:40:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: fixed spaces before
 and after "|" in dgnc_cls.c
In-Reply-To: <20160313013258.GA17143@spock>
Message-ID: <alpine.DEB.2.02.1603130440130.2069@localhost6.localdomain6>
References: <20160313013258.GA17143@spock>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 12 Mar 2016, Juliana Rodrigues wrote:

> This patch fixes the following issue while maintains 80 characters per line:
> 
> CHECK: spaces preferred around that '|' (ctx:VxV)
> +       writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
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

It doesn't fit on one line any more?  Note that the () around the first 
argument are not necessary either, if that would help to get it to fit 
into one line.

julia

> +		&ch->ch_cls_uart->isr_fcr);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160313013258.GA17143%40spock.
> For more options, visit https://groups.google.com/d/optout.
> 

