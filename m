X-GM-THRID: 6263480963249995776
X-Received: by 10.140.217.17 with SMTP id n17mr24703282qhb.30.1458597891388;
        Mon, 21 Mar 2016 15:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.85.101 with SMTP id g5ls993487igz.2.gmail; Mon, 21 Mar 2016
 15:04:51 -0700 (PDT)
X-Received: by 10.50.143.101 with SMTP id sd5mr12970131igb.4.1458597890990;
        Mon, 21 Mar 2016 15:04:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4253990pfa.2.2016.03.21.15.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 15:04:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7874F2C;
	Mon, 21 Mar 2016 22:04:50 +0000 (UTC)
Date: Mon, 21 Mar 2016 18:04:49 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] staging: comedi: amplc_pci230:
 Convert macro CLK_CONFIG to static inline function
Message-ID: <20160321220449.GD5091@kroah.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
 <89df043b193021a979cffa87472398640097fc9e.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89df043b193021a979cffa87472398640097fc9e.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 12:41:27AM +0530, Bhaktipriya Shridhar wrote:
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
> + static inline void pci230_clk_config(struct comedi_device *dev,
> +                                      unsigned int reg,unsigned int chan,
> +                                      unsigned int src)
> +{
> +       outb(((chan & 3) << 3) | (src & 7), dev->iobase + reg);
> +}
> 
> @r1@
> expression dev,reg,chan,src;
> @@
> -outb(CLK_CONFIG(chan, src), dev->iobase + reg);
> +pci230_clk_config(dev, reg, chan, src);
> 
> Also, the comment describing the macro has been removed manually.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	- Since every single usage of this macro passes the argument into
> 	  the outb() function, with (dev->iobase + ...) as the address,
> 	  the two calls have been merged into one.
> 
>  drivers/staging/comedi/drivers/amplc_pci230.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
> index 907c39c..635cd46 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci230.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci230.c
> @@ -369,8 +369,12 @@
>  #define CLK_1KHZ	5	/* internal 1 kHz clock */
>  #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
>  #define CLK_EXT		7	/* external clock */
> -/* Macro to construct clock input configuration register value. */
> -#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
> +static inline void pci230_clk_config(struct comedi_device *dev,
> +				     unsigned int reg, unsigned int chan,
> +				     unsigned int src)
> +{
> +	outb(((chan & 3) << 3) | (src & 7), dev->iobase + reg);
> +}
> 
>  /*
>   * Counter/timer gate input configuration sources.
> @@ -687,7 +691,7 @@ static void pci230_ct_setup_ns_mode(struct comedi_device *dev, unsigned int ct,
>  	/* Determine clock source and count. */
>  	clk_src = pci230_choose_clk_count(ns, &count, flags);
>  	/* Program clock source. */
> -	outb(CLK_CONFIG(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
> +	pci230_clk_config(dev, PCI230_ZCLK_SCE, ct, clk_src);

This is only done in one place, just "open code" it, no need for a
separate function at all here.

Actually, the original code is nicer, it makes more sense, and a macro
is just fine, no need to change it.

thanks,

greg k-h

