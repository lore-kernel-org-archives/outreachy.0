X-GM-THRID: 6391488130164195328
X-Received: by 10.46.83.7 with SMTP id h7mr2111012ljb.24.1488211687780;
        Mon, 27 Feb 2017 08:08:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.152 with SMTP id h24ls440200lji.53.gmail; Mon, 27 Feb
 2017 08:08:07 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr1912256lja.18.1488211687308;
        Mon, 27 Feb 2017 08:08:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si846307wmh.1.2017.02.27.08.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:08:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262283931"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 17:07:13 +0100
Date: Mon, 27 Feb 2017 17:07:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Lidza Louina <lidza.louina@gmail.com>, Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: dgnc: replace udelay with
 usleep_range
In-Reply-To: <20170227155229.GA4214@aishwarya>
Message-ID: <alpine.DEB.2.20.1702271706050.3032@hadrien>
References: <20170227155229.GA4214@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, Aishwarya Pant wrote:

> Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
> is preferred over udelay. There is one ocurrence of udelay in
> function cls_uart_init with non-atomic context that can be safely
> replaced by usleep_range(t, t + delta) where delta is t (as t is
> between 10 and 20 microseconds). Also replace usleep_range by udelay in
> function cls_flush_uart_write as it is called under a channel lock.

I have the impression that these are two separate issues that should be
treated in two separate patches.

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
> Changes in v3:
> 	- Replace usleep_range by udelay in cls_flush_uart_write
> 	- Fix diff in the commit message
> ---

You don't need a --- below your v3 comments, only above.

julia

>  drivers/staging/dgnc/dgnc_cls.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index c20ffdd..7068c3b 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
>
>  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
>  	       &ch->ch_cls_uart->isr_fcr);
> -	usleep_range(10, 20);
> +	udelay(10);
>
>  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  }
> @@ -1096,7 +1096,7 @@ static void cls_uart_init(struct channel_t *ch)
>
>  	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
>  	       &ch->ch_cls_uart->isr_fcr);
> -	udelay(10);
> +	usleep_range(10, 20);
>
>  	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170227155229.GA4214%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

