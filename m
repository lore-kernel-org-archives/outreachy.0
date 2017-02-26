X-GM-THRID: 6391488130164195328
X-Received: by 10.25.41.85 with SMTP id p82mr1549650lfp.16.1488135779032;
        Sun, 26 Feb 2017 11:02:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls374994ljb.3.gmail; Sun, 26 Feb 2017
 11:02:58 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr1373246lfd.12.1488135778418;
        Sun, 26 Feb 2017 11:02:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si618575wmh.1.2017.02.26.11.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 11:02:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,209,1484002800"; 
   d="scan'208";a="214772050"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 20:02:57 +0100
Date: Sun, 26 Feb 2017 20:02:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Lidza Louina <lidza.louina@gmail.com>, Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: replace udelay with
 usleep_range
In-Reply-To: <20170226183806.GA3498@aishwarya>
Message-ID: <alpine.DEB.2.20.1702262000560.2056@hadrien>
References: <20170226183806.GA3498@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, Aishwarya Pant wrote:

> Adding first patch for checkpatch warning on dgnc_cls.c -

What do you mean by "Adding first patch"?

Actually, commit messages should be written in the imperative (as you have
for the subject line), and should describe what you do and why.

> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt

Also commit messages should be limited to around 70 characters or so per
line.

How did you choose 20 as the upper bound?

julia

>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index c20ffdd..2cf146e 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -16,7 +16,7 @@
>  #include <linux/kernel.h>
>  #include <linux/sched.h>	/* For jiffies, task states */
>  #include <linux/interrupt.h>	/* For tasklet and interrupt structs/defines */
> -#include <linux/delay.h>	/* For udelay */
> +#include <linux/delay.h>	/* For usleep_range */
>  #include <linux/io.h>		/* For read[bwl]/write[bwl] */
>  #include <linux/serial.h>	/* For struct async_serial */
>  #include <linux/serial_reg.h>	/* For the various UART offsets */
> @@ -409,7 +409,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
>  	writeb(out, &ch->ch_cls_uart->mcr);
>
>  	/* Give time for the UART to actually drop the signals */
> -	udelay(10);
> +	usleep_range(10, 20);
>  }
>
>  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
> @@ -631,7 +631,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>
> -	udelay(10);
> +	usleep_range(10, 20);
>  }
>
>  /*
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170226183806.GA3498%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

