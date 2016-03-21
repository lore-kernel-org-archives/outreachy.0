X-GM-THRID: 6263480963249995776
X-Received: by 10.157.40.15 with SMTP id m15mr2318974otb.32.1458597886894;
        Mon, 21 Mar 2016 15:04:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.5 with SMTP id f5ls1005055igh.30.canary; Mon, 21 Mar
 2016 15:04:46 -0700 (PDT)
X-Received: by 10.66.63.104 with SMTP id f8mr25738060pas.4.1458597886459;
        Mon, 21 Mar 2016 15:04:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si3678745pfj.0.2016.03.21.15.04.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 15:04:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ED0922C;
	Mon, 21 Mar 2016 22:04:45 +0000 (UTC)
Date: Mon, 21 Mar 2016 18:04:44 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] staging: comedi: amplc_pci224:
 Convert macro CLK_CONFIG to static inline function
Message-ID: <20160321220444.GC5091@kroah.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
 <28884b9d0d2f9a209f034a9eb2343293a0711628.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28884b9d0d2f9a209f034a9eb2343293a0711628.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 12:45:06AM +0530, Bhaktipriya Shridhar wrote:
> Convert macro CLK_CONFIG to static inline function as static inline
> functions are preferred over macros. Since every single user of this
> macro passes the argument into the outb() function, with
> (dev->iobase + ...) as the address, the two calls have been merged
> into one.
> 
> This was done using Coccinelle:
> 
> @r@
> identifier f;
> expression e;
> @@
> - #define CLK_CONFIG(chan, src) e
> + static inline void pci224_clk_config(struct pci224_private *devpriv,
> +                                      unsigned int reg, unsigned int chan,
> +                                      unsigned int src)
> +{
> +       outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
> +}
> 
> @r1@
> expression devp,reg,chan,src;
> @@
> -outb(CLK_CONFIG(chan, src), devp->iobase1 + reg);
> +pci224_clk_config(devp, reg, chan, src);
> 
> Also, the comment describing the macro has been removed manually.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Since every single user of this macro passes the argument
> 	 into the outb() function, with (devpriv->iobase1 + ...)
> 	 as the address, the two calls have been merged into one.
> 
>  drivers/staging/comedi/drivers/amplc_pci224.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
> index cac011f..5bc1377 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci224.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci224.c
> @@ -201,8 +201,12 @@
>  #define CLK_1KHZ	5	/* internal 1 kHz clock */
>  #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
>  #define CLK_EXT		7	/* external clock */
> -/* Macro to construct clock input configuration register value. */
> -#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
> +static inline void pci224_clk_config(struct pci224_private *devpriv,
> +				     unsigned int reg, unsigned int chan,
> +				     unsigned int src)
> +{
> +	outb(((chan & 3) << 3) | (src & 7), devpriv->iobase1 + reg);
> +}

If you were to do this, you need a blank line before the function.  But
again, I don't think this is a good change, it doesn't help much...

thanks,

greg k-h

