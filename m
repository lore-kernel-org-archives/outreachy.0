X-GM-THRID: 6395849810528698368
X-Received: by 10.157.66.1 with SMTP id q1mr12759610ote.47.1489327021116;
        Sun, 12 Mar 2017 06:57:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls12678659otf.39.gmail; Sun, 12 Mar
 2017 06:57:00 -0700 (PDT)
X-Received: by 10.157.68.168 with SMTP id v40mr12518239ote.59.1489327020762;
        Sun, 12 Mar 2017 06:57:00 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si2640640pfa.4.2017.03.12.06.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 824488F5;
	Sun, 12 Mar 2017 13:56:58 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:56:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: abbotti@mev.co.uk, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: comedi: amplc_pci224: Convert macro GAT_CONFIG
 to static inline function
Message-ID: <20170312135640.GB1209@kroah.com>
References: <20170310124231.GA24231@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310124231.GA24231@singhal-Inspiron-5558>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 06:12:31PM +0530, simran singhal wrote:
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
> + static inline unsigned int pci230_gat_config(unsigned int chan,
> +                                              unsigned int src)

Where did you get the name from?

> +{
> +       return ((chan & 3) << 3) | (src & 7);
> +}
> 
> @r1@
> expression dev,reg,chan,src;
> @@
> -GAT_CONFIG(chan, src)
> +pci230_gat_config(chan, src)
> 
> Also, the comment describing the macro has been removed manually.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/comedi/drivers/amplc_pci224.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
> index 2e6decf..46026f5 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci224.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci224.c
> @@ -216,8 +216,12 @@
>  #define GAT_GND		1	/* GND (i.e. disabled) */
>  #define GAT_EXT		2	/* reserved (external gate input) */
>  #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
> -/* Macro to construct gate input configuration register value. */
> -#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
> +
> +static inline unsigned int pci230_gat_config(unsigned int chan,
> +					     unsigned int src)
> +{
> +	return ((chan & 3) << 3) | (src & 7);
> +}
>  
>  /*
>   * Summary of CLK_OUTNM1 and GAT_NOUTNM2 connections for PCI224 and PCI234:
> @@ -817,10 +821,12 @@ static void pci224_ao_start_pacer(struct comedi_device *dev,
>  	 * source.
>  	 */
>  	/* Make sure Z2-0 is gated on.  */
> -	outb(GAT_CONFIG(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
> +	outb(pci230_gat_config(0, GAT_VCC),
> +	     devpriv->iobase1 + PCI224_ZGAT_SCE);

Why put this on 2 lines?

>  	/* Cascading with Z2-2. */
>  	/* Make sure Z2-2 is gated on.  */
> -	outb(GAT_CONFIG(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);
> +	outb(pci230_gat_config(2, GAT_VCC),
> +	     devpriv->iobase1 + PCI224_ZGAT_SCE);

Same here?

thanks,

greg k-h

