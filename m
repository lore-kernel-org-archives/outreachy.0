X-GM-THRID: 6395849810528698368
X-Received: by 10.99.114.6 with SMTP id n6mr14876466pgc.58.1489333519642;
        Sun, 12 Mar 2017 08:45:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.11 with SMTP id d11ls1068554itc.1.canary-gmail; Sun, 12
 Mar 2017 08:45:18 -0700 (PDT)
X-Received: by 10.99.113.13 with SMTP id m13mr14654303pgc.162.1489333518695;
        Sun, 12 Mar 2017 08:45:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z191si809538itc.0.2017.03.12.08.45.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:45:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="264205033"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 16:45:16 +0100
Date: Sun, 12 Mar 2017 16:45:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: amplc_pci224:
 Convert macro GAT_CONFIG to static inline function
In-Reply-To: <20170312153329.GA20729@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703121643560.2174@hadrien>
References: <20170312153329.GA20729@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, simran singhal wrote:

> Convert macro GAT_CONFIG to static inline function as static inline
> functions are preferred over macros. This change is possible since the
> arguments at all call sites have the same type.
>
> This was done using Coccinelle:
>
> @r@
> expression e;
> @@
> - #define GAT_CONFIG(chan, src) e
> + static inline unsigned int pci224_gat_config(unsigned int chan,
> +                                              unsigned int src)
> +{
> +       return ((chan & 3) << 3) | (src & 7);
> +}

It doesn't really make sense to do this part with Coccinelle.  It is quite
a one-shot change.

You could say that the uses were updated with Coccinelle and give that
rule.

julia

>
> @r1@
> expression dev,reg,chan,src;
> @@
> -GAT_CONFIG(chan, src)
> +pci224_gat_config(chan, src)
>
> Also, the comment describing the macro has been removed manually.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>
>  v2:
>    -Change the name of static inline function
>    -put some code from 2 line to 1 line
>
>  drivers/staging/comedi/drivers/amplc_pci224.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
> index 2e6decf..07555cf 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci224.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci224.c
> @@ -216,8 +216,12 @@
>  #define GAT_GND		1	/* GND (i.e. disabled) */
>  #define GAT_EXT		2	/* reserved (external gate input) */
>  #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
> -/* Macro to construct gate input configuration register value. */
> -#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
> +
> +static inline unsigned int pci224_gat_config(unsigned int chan,
> +					     unsigned int src)
> +{
> +	return ((chan & 3) << 3) | (src & 7);
> +}
>
>  /*
>   * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
> @@ -817,10 +821,10 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
>  	 * source.
>  	 */
>  	/* Make sure Z2-0 is gated on.  */
> -	outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
> +	outb(pci224_gat_config(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
>  	/* Cascading with Z2-2. */
>  	/* Make sure Z2-2 is gated on.  */
> -	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
> +	outb(pci224_gat_config(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
>  	/* Z2-2 needs 10 MHz clock. */
>  	outb(CLK_CONFIG(2, CLK_10MHZ), devpriv->iobase1 + PCI224_ZCLK_SCE);
>  	/* Z2-0 is clocked from Z2-2's output. */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312153329.GA20729%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

