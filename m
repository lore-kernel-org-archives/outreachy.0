X-GM-THRID: 6336937388721307648
X-Received: by 10.66.129.140 with SMTP id nw12mr4940657pab.32.1475489592779;
        Mon, 03 Oct 2016 03:13:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.101 with SMTP id t92ls9675442ota.29.gmail; Mon, 03 Oct
 2016 03:13:12 -0700 (PDT)
X-Received: by 10.237.40.65 with SMTP id r59mr5610956qtd.40.1475489592393;
        Mon, 03 Oct 2016 03:13:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 203si797885pfu.0.2016.10.03.03.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B7D9171;
	Mon,  3 Oct 2016 10:13:11 +0000 (UTC)
Date: Mon, 3 Oct 2016 12:13:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Namrata A Shettar <namrataashettar@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: octeon-usb: Prefer using
 BIT macro
Message-ID: <20161003101312.GB6060@kroah.com>
References: <20161002183320.GA4992@namrata-HP-Pavilion-g6-Notebook-PC>
 <20161003000313.GB11244@raspberrypi.musicnaut.iki.fi>
 <20161003070136.GA3597@kroah.com>
 <20161003082049.GB15204@raspberrypi.musicnaut.iki.fi>
 <20161003092527.GB4579@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161003092527.GB4579@kroah.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 03, 2016 at 11:25:27AM +0200, Greg Kroah-Hartman wrote:
> On Mon, Oct 03, 2016 at 11:20:49AM +0300, Aaro Koskinen wrote:
> > Hi,
> > 
> > On Mon, Oct 03, 2016 at 09:01:36AM +0200, Greg Kroah-Hartman wrote:
> > > On Mon, Oct 03, 2016 at 03:03:13AM +0300, Aaro Koskinen wrote:
> > > > On Mon, Oct 03, 2016 at 12:03:25AM +0530, Namrata A Shettar wrote:
> > > > > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= 1 << 0,
> > > > > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= 1 << 1,
> > > > > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= BIT(0),
> > > > > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= BIT(1),
> > > > >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK	= 3 << 3,
> > > > > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= 1 << 3,
> > > > > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= BIT(3),
> > > > >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ		= 2 << 3,
> > > > >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ		= 3 << 3,
> > > > >  	/* Bits 3-4 used to encode the clock frequency */
> > > > > -	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= 1 << 5,
> > > > > +	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= BIT(5),
> > > > 
> > > > All entries should be converted to use BIT.
> > > 
> > > The ones that could be, were, right?  What else should be done here?
> > 
> > 24MHZ is BIT(4).
> 
> Oh yeah, nice catch.
> 
> > > Well, there are bit mask macros now in the kernel tree, perhaps those
> > > should be used, but I don't see how BIT() could be used for "3 << 3", do
> > > you?
> > 
> > BIT(3) | BIT(4)?
> 
> Maybe, but it's not an automatic conversion :)

But it could be, if you use GENMASK() instead, I'm sure you can write up
a transformation rule to do that in an automated way so that you know it
works properly...

thanks,

greg k-h

