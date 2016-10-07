X-GM-THRID: 6338488741529649152
X-Received: by 10.194.82.170 with SMTP id j10mr83417wjy.14.1475818071929;
        Thu, 06 Oct 2016 22:27:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls636190wma.3.gmail; Thu, 06 Oct 2016
 22:27:50 -0700 (PDT)
X-Received: by 10.28.198.196 with SMTP id w187mr1453861wmf.1.1475818070951;
        Thu, 06 Oct 2016 22:27:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u64si116291wmf.0.2016.10.06.22.27.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:27:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,454,1473112800"; 
   d="scan'208";a="195925460"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2016 07:27:46 +0200
Date: Fri, 7 Oct 2016 07:27:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keila Novo <laurana5@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]staging/dgnc/dgnc_neo.h Lines less
 than 80 characters
In-Reply-To: <20161007224905.GA16609@kheixx-VB>
Message-ID: <alpine.DEB.2.10.1610070726530.3074@hadrien>
References: <20161007224905.GA16609@kheixx-VB>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Keila Novo wrote:

> Fix checkpatch.pl error: "Lines over 80 characters" to conform
> to Kernel coding style.
>
> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.h | 23 +++++++++++++----------
>  1 file changed, 13 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.h b/drivers/staging/dgnc/dgnc_neo.h
> index abddd48..5b9a870 100644
> --- a/drivers/staging/dgnc/dgnc_neo.h
> +++ b/drivers/staging/dgnc/dgnc_neo.h
> @@ -30,7 +30,7 @@
>  struct neo_uart_struct {
>  	u8 txrx;		/* WR  RHR/THR - Holding Reg */
>  	u8 ier;		/* WR  IER - Interrupt Enable Reg */
> -	u8 isr_fcr;		/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
> +	u8 isr_fcr;/* WR  ISR/FCR - Interrupt Status Reg/Fifo Control Reg */
>  	u8 lcr;		/* WR  LCR - Line Control Reg */
>  	u8 mcr;		/* WR  MCR - Modem Control Reg */
>  	u8 lsr;		/* WR  LSR - Line Status Reg */

The rsult does not look very nice.  It would be betterto put a space after
the ; in the line that you changed, and then line all the other lines up
with that.

julia

> @@ -108,19 +108,21 @@ struct neo_uart_struct {
>  /* 17158 Extended IIR's */
>  #define UART_17158_IIR_RDI_TIMEOUT	0x0C	/* Receiver data TIMEOUT */
>  #define UART_17158_IIR_XONXOFF		0x10	/* Received an XON/XOFF char */
> -#define UART_17158_IIR_HWFLOW_STATE_CHANGE 0x20	/* CTS/DSR or RTS/DTR state change */
> +#define UART_17158_IIR_HWFLOW_STATE_CHANGE 0x20
> +					/* CTS/DSR or RTS/DTR state change */
>  #define UART_17158_IIR_FIFO_ENABLED	0xC0	/* 16550 FIFOs are Enabled */
>
>  /*
>   * These are the extended interrupts that get sent
>   * back to us from the UART's 32bit interrupt register
>   */
> -#define UART_17158_RX_LINE_STATUS	0x1	/* RX Ready */
> -#define UART_17158_RXRDY_TIMEOUT	0x2	/* RX Ready Timeout */
> -#define UART_17158_TXRDY		0x3	/* TX Ready */
> -#define UART_17158_MSR			0x4	/* Modem State Change */
> -#define UART_17158_TX_AND_FIFO_CLR	0x40	/* Transmitter Holding Reg Empty */
> -#define UART_17158_RX_FIFO_DATA_ERROR	0x80	/* UART detected an RX FIFO Data error */
> +#define UART_17158_RX_LINE_STATUS  0x1	/* RX Ready */
> +#define UART_17158_RXRDY_TIMEOUT   0x2	/* RX Ready Timeout */
> +#define UART_17158_TXRDY	   0x3	/* TX Ready */
> +#define UART_17158_MSR		   0x4	/* Modem State Change */
> +#define UART_17158_TX_AND_FIFO_CLR 0x40	/* Transmitter Holding Reg Empty */
> +#define UART_17158_RX_FIFO_DATA_ERROR 0x80
> +				/* UART detected an RX FIFO Data error */
>
>  /*
>   * These are the EXTENDED definitions for the 17C158's Interrupt
> @@ -132,8 +134,9 @@ struct neo_uart_struct {
>  #define UART_17158_EFR_RTSDTR	0x40	/* Auto RTS/DTR Flow Control Enable */
>  #define UART_17158_EFR_CTSDSR	0x80	/* Auto CTS/DSR Flow COntrol Enable */
>
> -#define UART_17158_XOFF_DETECT	0x1	/* Indicates whether chip saw an incoming XOFF char  */
> -#define UART_17158_XON_DETECT	0x2	/* Indicates whether chip saw an incoming XON char */
> +#define UART_17158_XOFF_DETECT	0x1
> +				/*Indicates if chip saw incoming XOFF char  */
> +#define UART_17158_XON_DETECT	0x2 /*Indicates if chip saw incoming XON char */
>
>  #define UART_17158_IER_RSVD1	0x10	/* Reserved by Exar */
>  #define UART_17158_IER_XOFF	0x20	/* Xoff Interrupt Enable */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161007224905.GA16609%40kheixx-VB.
> For more options, visit https://groups.google.com/d/optout.
>

