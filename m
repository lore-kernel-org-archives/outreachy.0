X-GM-THRID: 6391488130164195328
X-Received: by 10.99.94.7 with SMTP id s7mr6962616pgb.105.1488206321944;
        Mon, 27 Feb 2017 06:38:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls13925130ote.14.gmail; Mon, 27 Feb
 2017 06:38:41 -0800 (PST)
X-Received: by 10.176.83.151 with SMTP id k23mr4408941uaa.20.1488206321451;
        Mon, 27 Feb 2017 06:38:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si3357691pfd.3.2017.02.27.06.38.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 06:38:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AEA11721;
	Mon, 27 Feb 2017 14:38:40 +0000 (UTC)
Date: Mon, 27 Feb 2017 15:38:32 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: dgnc: replace udelay with usleep_range
Message-ID: <20170227143832.GA14933@kroah.com>
References: <20170227124633.GA3008@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170227124633.GA3008@aishwarya>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Feb 27, 2017 at 06:16:33PM +0530, Aishwarya Pant wrote:
> Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
> is preferred over udelay. There are two ocurrences of udelay
> in non-atomic context that can be safely replaced by
> usleep_range(t, t + delta). Pick delta as t (as t is between
> 10 and 20 microseconds).
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
> Changes in v2:
> 	- Revert usage of usleep_range in atomic context
> 	- Clean-up the commit message
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 2cf146e..368c6ba 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -16,7 +16,7 @@
>  #include <linux/kernel.h>
>  #include <linux/sched.h>	/* For jiffies, task states */
>  #include <linux/interrupt.h>	/* For tasklet and interrupt structs/defines */
> -#include <linux/delay.h>	/* For usleep_range */
> +#include <linux/delay.h>	/* For udelay and usleep_range */
>  #include <linux/io.h>		/* For read[bwl]/write[bwl] */
>  #include <linux/serial.h>	/* For struct async_serial */
>  #include <linux/serial_reg.h>	/* For the various UART offsets */
> @@ -609,7 +609,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
>  
>  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
>  	       &ch->ch_cls_uart->isr_fcr);
> -	usleep_range(10, 20);
> +	udelay(10);
>  
>  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  }
> @@ -631,7 +631,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>  
> -	usleep_range(10, 20);
> +	udelay(10);
>  }
>  
>  /*

Your patch seems to be backwards :(

