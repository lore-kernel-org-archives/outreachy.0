X-GM-THRID: 6336937388721307648
X-Received: by 10.129.74.215 with SMTP id x206mr6030153ywa.88.1475478092745;
        Mon, 03 Oct 2016 00:01:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.68 with SMTP id h62ls9320924oth.17.gmail; Mon, 03 Oct
 2016 00:01:32 -0700 (PDT)
X-Received: by 10.159.37.230 with SMTP id 93mr5598363uaf.20.1475478092113;
        Mon, 03 Oct 2016 00:01:32 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si2259344pac.1.2016.10.03.00.01.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 00:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4F227723;
	Mon,  3 Oct 2016 07:01:31 +0000 (UTC)
Date: Mon, 3 Oct 2016 09:01:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Namrata A Shettar <namrataashettar@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: octeon-usb: Prefer using BIT macro
Message-ID: <20161003070136.GA3597@kroah.com>
References: <20161002183320.GA4992@namrata-HP-Pavilion-g6-Notebook-PC>
 <20161003000313.GB11244@raspberrypi.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161003000313.GB11244@raspberrypi.musicnaut.iki.fi>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Oct 03, 2016 at 03:03:13AM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Mon, Oct 03, 2016 at 12:03:25AM +0530, Namrata A Shettar wrote:
> > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= 1 << 0,
> > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= 1 << 1,
> > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= BIT(0),
> > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= BIT(1),
> >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK	= 3 << 3,
> > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= 1 << 3,
> > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= BIT(3),
> >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ		= 2 << 3,
> >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ		= 3 << 3,
> >  	/* Bits 3-4 used to encode the clock frequency */
> > -	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= 1 << 5,
> > +	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= BIT(5),
> 
> All entries should be converted to use BIT.

The ones that could be, were, right?  What else should be done here?

Well, there are bit mask macros now in the kernel tree, perhaps those
should be used, but I don't see how BIT() could be used for "3 << 3", do
you?

thanks,

gre gk-h

