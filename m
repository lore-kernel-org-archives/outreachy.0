X-GM-THRID: 6466070722699591680
X-Received: by 10.28.136.143 with SMTP id k137mr436818wmd.3.1505502312372;
        Fri, 15 Sep 2017 12:05:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls487503wmf.5.canary-gmail; Fri, 15
 Sep 2017 12:05:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBh4RCo9+egnlgc4Ur9Oq0pVstLdJyk/Mjh8p/JuMTA2/3lsCL4OVZLIls3Q2FQq03hLxOm
X-Received: by 10.28.165.70 with SMTP id o67mr432089wme.10.1505502310958;
        Fri, 15 Sep 2017 12:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505502310; cv=none;
        d=google.com; s=arc-20160816;
        b=sbz01aMiXLvNZ/rS9EnjsaxcHHRJs3p3ok3Df28I9KnGQbUaFnnqdsemmUOyJpETdR
         jwgX3bTFbXsZspg5x0FVWSdIZmx2vGusbyezJHHr0eCrBa6QSiNS0yRYMNjbbFWwr2Vj
         JJ50cNX6wukoH2CFuhH7Lf2pPWdtskqXjn/Fwh9UP3FJkbEVWUIqkU52vrXTNczioiJI
         k3VtYhPicE5jiGHdIHEJMsjPtfY/Q0wbqxo0JkteEIKhF06zBuZubAZnpBnkG5ABCHj3
         /ObUmm1ilq1KkywNqz4YDAKypIHWVYO8UJ1nCzUfJH41UaNbRXpuemJ4/Wtdbm+P4+Z+
         BLEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=UH8wYjLU+G6ZIhVHR5THbU2cSUnJ00l/w/vuUqT5T2I=;
        b=Czev5KxRfz4KrwqeK8mvTtCaQwmtGLDIbqau9SlRXmpjQqMPcXN3jpVvMYC3zZZflH
         WkSoOSNie4nkkuKk4qYrFwWbC9Z8daJeCE3L//8HkbvIDn7iowc10Lqj1ie98+fW84kU
         UH8B5VwFcIetlSqloP1ISBHH0XUnR56Jja3KKRZBTt4Ed9ne3DM4ooNzFK8kLO0ivOAP
         GlQ3pg7532ynIkm4f9h8lKUMrpfNDqRfO00Z7TgdDLg1i1Fnw55UH4s4/Y7emO3poXN3
         dYwPgOTkaBWlDMGwwMnWiQaQQlTIqMHLtlK68V2OhUrFAY7XPMnA2F8rFwJdtPmpK4F/
         NCDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si32129wmi.2.2017.09.15.12.05.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:05:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,398,1500933600"; 
   d="scan'208";a="291324529"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 21:05:10 +0200
Date: Fri, 15 Sep 2017 21:05:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    gilad@benyossef.com, dan.carpenter@oracle.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: use usleep_range
 instead of udelay
In-Reply-To: <20170915181639.GA19334@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709152103120.2533@hadrien>
References: <20170915181639.GA19334@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Keerthi Reddy wrote:

> This patch fixes the checkpatch.pl check
>
> CHECK: usleep_range is preferred over udelay

Have you compiled any of this code?  Because usleep_range takes two
arguments, and you have given it only one.  Be sure that you have actually
produced a .o file for all of the files you have changed before sending a
patch.  And don't just blindly follow checkpatch.  It says that
usleep_range is preferred over udelay, but to change one function to
another you have to know what the old one does and how the new one can
preserve the required behavior.

julia

>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c |  6 +++---
>  drivers/staging/dgnc/dgnc_neo.c | 10 +++++-----
>  2 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 870ae3d..fb1df19 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -397,7 +397,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
>  	writeb(out, &ch->ch_cls_uart->mcr);
>
>  	/* Give time for the UART to actually drop the signals */
> -	udelay(10);
> +	usleep_range(10);
>  }
>
>  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
> @@ -587,7 +587,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
>  	       &ch->ch_cls_uart->isr_fcr);
>
>  	/* Must use *delay family functions in atomic context */
> -	udelay(10);
> +	usleep_range(10);
>
>  	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>  }
> @@ -609,7 +609,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>
> -	udelay(10);
> +	usleep_range(10);
>  }
>
>  /* Send any/all changes to the line to the UART. */
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index c7cc490..5ec1026 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1230,7 +1230,7 @@ static void neo_flush_uart_write(struct channel_t *ch)
>  		 */
>  		tmp = readb(&ch->ch_neo_uart->isr_fcr);
>  		if (tmp & 4)
> -			udelay(10);
> +			usleep_range(10);
>  		else
>  			break;
>  	}
> @@ -1261,7 +1261,7 @@ static void neo_flush_uart_read(struct channel_t *ch)
>  		 */
>  		tmp = readb(&ch->ch_neo_uart->isr_fcr);
>  		if (tmp & 2)
> -			udelay(10);
> +			usleep_range(10);
>  		else
>  			break;
>  	}
> @@ -1483,7 +1483,7 @@ static void neo_assert_modem_signals(struct channel_t *ch)
>  	neo_pci_posting_flush(ch->ch_bd);
>
>  	/* Give time for the UART to actually raise/drop the signals */
> -	udelay(10);
> +	usleep_range(10);
>  }
>
>  static void neo_send_start_character(struct channel_t *ch)
> @@ -1495,7 +1495,7 @@ static void neo_send_start_character(struct channel_t *ch)
>  		ch->ch_xon_sends++;
>  		writeb(ch->ch_startc, &ch->ch_neo_uart->txrx);
>  		neo_pci_posting_flush(ch->ch_bd);
> -		udelay(10);
> +		usleep_range(10);
>  	}
>  }
>
> @@ -1508,7 +1508,7 @@ static void neo_send_stop_character(struct channel_t *ch)
>  		ch->ch_xoff_sends++;
>  		writeb(ch->ch_stopc, &ch->ch_neo_uart->txrx);
>  		neo_pci_posting_flush(ch->ch_bd);
> -		udelay(10);
> +		usleep_range(10);
>  	}
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170915181639.GA19334%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

