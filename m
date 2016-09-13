X-GM-THRID: 6329721618764398592
X-Received: by 10.28.193.198 with SMTP id r189mr2451465wmf.2.1473753522739;
        Tue, 13 Sep 2016 00:58:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.205 with SMTP id r196ls28949lfd.15.gmail; Tue, 13 Sep
 2016 00:58:42 -0700 (PDT)
X-Received: by 10.46.69.10 with SMTP id s10mr3321213lja.1.1473753522158;
        Tue, 13 Sep 2016 00:58:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si1304620wmd.1.2016.09.13.00.58.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 00:58:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,327,1470693600"; 
   d="scan'208";a="192937725"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 09:58:41 +0200
Date: Tue, 13 Sep 2016 09:58:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    lidza.louina@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: dgnc_cls.c: usleep_range
 is preferred over udelay
In-Reply-To: <20160913075211.GA6959@life-desktop>
Message-ID: <alpine.DEB.2.10.1609130958040.3355@hadrien>
References: <20160913075211.GA6959@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Anchal Jain wrote:

> According to Documentation/timers/timers-howto.txt"
> udelay() is only called once from a place where sleeping is allowed.
> We can replace it with a call to usleep_range()
> with a reasonable upper limit.
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
>  drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
>  2 files changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 4e1e0dc6..1b07255 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -410,7 +410,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
>  	writeb(out, &ch->ch_cls_uart->mcr);
>
>  	/* Give time for the UART to actually drop the signals */
> -	udelay(10);
> +	usleep_range(10, 20);
>  }
>
>  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
> @@ -632,7 +632,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>
> -	udelay(10);
> +	usleep_delay(10, 20);
>  }
>
>  /*
> @@ -1104,7 +1104,7 @@ static void cls_uart_init(struct channel_t *ch)
>
>  	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
>  	       &ch->ch_cls_uart->isr_fcr);
> -	udelay(10);
> +	usleep_delay(10, 20);
>
>  	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index 242f82f..22f7684 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -59,9 +59,15 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>
>  	/* Get WILC header */
>  	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
> +<<<<<<< HEAD

This looks like git noise, and should not be in the patch.

julia


>  	/*
>  	 * The packet offset field contain info about what type of management
>  	 * the frame we are dealing with and ack status
> +=======
> +
> +	/* The packet offset field conain info about what type of management
> +	 * frame we are dealing with and ack status
> +>>>>>>> staging: wilc1000: Fix lines over 80 characters
>  	 */
>  	pkt_offset = GET_PKT_OFFSET(header);
>
> @@ -128,8 +134,13 @@ struct tx_complete_mon_data {
>  static void mgmt_tx_complete(void *priv, int status)
>  {
>  	struct tx_complete_mon_data *pv_data = priv;
> +<<<<<<< HEAD
>  	/*
>  	 * in case of fully hosting mode, the freeing will be done
> +=======
> +
> +	/* in case of fully hosting mode, the freeing will be done
> +>>>>>>> staging: wilc1000: Fix lines over 80 characters
>  	 * in response to the cfg packet
>  	 */
>  	kfree(pv_data->buff);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913075211.GA6959%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

