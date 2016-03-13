X-GM-THRID: 6261346523423965184
X-Received: by 10.28.63.201 with SMTP id m192mr1217182wma.5.1457840393040;
        Sat, 12 Mar 2016 19:39:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.129 with SMTP id k123ls603088lfb.62.gmail; Sat, 12 Mar
 2016 19:39:52 -0800 (PST)
X-Received: by 10.112.13.40 with SMTP id e8mr2091939lbc.24.1457840392380;
        Sat, 12 Mar 2016 19:39:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si310981wmf.2.2016.03.12.19.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:39:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="168376002"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:39:51 +0100
Date: Sun, 13 Mar 2016 04:39:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: replaces udelay with
 usleep_range in dgnc_cls.c
In-Reply-To: <20160313014216.GA20292@spock>
Message-ID: <alpine.DEB.2.02.1603130439400.2069@localhost6.localdomain6>
References: <20160313014216.GA20292@spock>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 12 Mar 2016, Juliana Rodrigues wrote:

> This patch fixes the following issue on checkpatch.pl:
> 
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> +       udelay(10);
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 6e1e475..ac6f7cd 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -1172,7 +1172,8 @@ static void cls_uart_init(struct channel_t *ch)
>  		UART_FCR_CLEAR_RCVR  |
>  		UART_FCR_CLEAR_XMIT),
>  		&ch->ch_cls_uart->isr_fcr);
> -	udelay(10);
> +

Why the blank line?

julia

> +	usleep_range(10000, 11000);
>  
>  	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160313014216.GA20292%40spock.
> For more options, visit https://groups.google.com/d/optout.
> 

