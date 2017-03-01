X-GM-THRID: 6391853165907542016
X-Received: by 10.25.223.67 with SMTP id q3mr823727lfj.1.1488365791614;
        Wed, 01 Mar 2017 02:56:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.203 with SMTP id u194ls366381lja.20.gmail; Wed, 01 Mar
 2017 02:56:30 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr930913ljb.2.1488365790499;
        Wed, 01 Mar 2017 02:56:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si939579wme.2.2017.03.01.02.56.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 02:56:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,225,1484002800"; 
   d="scan'208";a="215146820"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 11:56:29 +0100
Date: Wed, 1 Mar 2017 11:56:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Lidza Louina <lidza.louina@gmail.com>, Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: dgnc: replace usleep_range
 with udelay
In-Reply-To: <20170301103315.GA4448@aishwarya>
Message-ID: <alpine.DEB.2.20.1703011154490.3941@hadrien>
References: <20170301103315.GA4448@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Mar 2017, Aishwarya Pant wrote:

> udelay is impelmented using a busy-wait loop and consumes CPU cycles
> while usleep_range is implemented using interrupts.cls_flush_uart_write()
> is called after a channel lock is acquired i.e. an atomic context.
> Hence delay in this method should use udelay instead of usleep_range.
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>
> ---
> Changes in v3:
> 	- Add a comment in code udelay to ignore checkpatch warning
> Changes in v2:
> 	- Edit commit message to explain why udelay should be used
>
>  drivers/staging/dgnc/dgnc_cls.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 28a3e16..ec190e5 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -609,7 +609,11 @@ static void cls_flush_uart_write(struct channel_t *ch)
>
>  	writeb((UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_XMIT),
>  	       &ch->ch_cls_uart->isr_fcr);
> -	usleep_range(10, 20);
> +
> +	/* Ignore checkpatch warning to replace udelay by usleep_range
> +	 * as this function is called under an atomic context
> +	 */
> +	udelay(10);

I think this doesn't follow the proper block comment format?

Anyway, perhaps something like "called in atomic context so usleep_range
not used" would be sufficient.

julia

>
>  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301103315.GA4448%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

