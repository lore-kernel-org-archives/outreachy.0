X-GM-THRID: 6336937388721307648
X-Received: by 10.66.232.4 with SMTP id tk4mr3447722pac.31.1475513896524;
        Mon, 03 Oct 2016 09:58:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.86 with SMTP id u83ls2454420itc.20.gmail; Mon, 03 Oct
 2016 09:58:14 -0700 (PDT)
X-Received: by 10.66.193.36 with SMTP id hl4mr5762215pac.83.1475513894345;
        Mon, 03 Oct 2016 09:58:14 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z73si2018701pfa.1.2016.10.03.09.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 09:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so8073806paz.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 09:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OsO67newjB4Dt7xxGWQNKJFqM24DWVxcfzEsYGAy0KM=;
        b=iWIUqF9Gsy6snsr2ONxcuLDNycoV6Ow8dR4tG3+XFa/ndaYD+/oGb6OosE6/IJNYzr
         KjMpppMZxH7/pTtDs70dP+J/E0+KwcKlcJatAaC2KC/sgDtsbQKzxIjOC7hwoxtm9UL0
         vFdjHV20MIrpjLS9V8kue3JMZJd2AghZKaEkhBEJK/JUx9ShaWN1MOSifXA0OECDhZBZ
         DEtjIuEssd0a4aZ8hEr1sGNCFyOs23ZTIJWnjpWY9HOlAlP1Axt5OgHMMoR+oeZFFYOU
         XQKrX3Vd6BrhMnYl8vvvW/1+lCUR/D11KsKDG916bk9vIpvVvaoBIycvW3LiOLlLyO6T
         tmEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OsO67newjB4Dt7xxGWQNKJFqM24DWVxcfzEsYGAy0KM=;
        b=Oxz0zMkTp4QYFe4g4N8PSIbbWSPbdcxLGZbHhut8F/dYWgVPTgON02BDoNEH1RXdnZ
         eE6aIf9RSzKOI7C6AasVKoziBhMJXVzyEwv+aXMygbPjuwTmpEa2s/idJwTCjIVZMSDo
         +ptlAXkEOZ2tP1xosXOO8JVciTdZSEELpvIBdTYdB/XnbFJbqKX/82fCCMkGg7L+MEvZ
         FmIrkAuoUWj98pUVcJH5KRrx8fmfeupNQJkEye6WI6nQI1FO+N3H6VxkWYqurcjPQHKs
         rEC9+lpvLXZt62y/0wMRFOoSBb7K9SOOZ57mZsF7sVubevOOlg3JDi3pq8RotbLMbNtK
         hVJA==
X-Gm-Message-State: AA6/9RlFwM/gIJ61B/fYZJF8hfjKij58ANzOXnqDVr6vxvWc8Iy5E5AX0hG0xHseCkTuRg==
X-Received: by 10.66.89.4 with SMTP id bk4mr18634382pab.22.1475513894185;
        Mon, 03 Oct 2016 09:58:14 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id y184sm23624737pfg.39.2016.10.03.09.58.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 09:58:13 -0700 (PDT)
Date: Mon, 3 Oct 2016 22:27:40 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: octeon-usb: Prefer using
 BIT macro
Message-ID: <20161003165736.GA4168@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20161002183320.GA4992@namrata-HP-Pavilion-g6-Notebook-PC>
 <20161003000313.GB11244@raspberrypi.musicnaut.iki.fi>
 <20161003070136.GA3597@kroah.com>
 <20161003082049.GB15204@raspberrypi.musicnaut.iki.fi>
 <20161003092527.GB4579@kroah.com>
 <20161003101312.GB6060@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161003101312.GB6060@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 03, 2016 at 12:13:12PM +0200, Greg Kroah-Hartman wrote:
> On Mon, Oct 03, 2016 at 11:25:27AM +0200, Greg Kroah-Hartman wrote:
> > On Mon, Oct 03, 2016 at 11:20:49AM +0300, Aaro Koskinen wrote:
> > > Hi,
> > > 
> > > On Mon, Oct 03, 2016 at 09:01:36AM +0200, Greg Kroah-Hartman wrote:
> > > > On Mon, Oct 03, 2016 at 03:03:13AM +0300, Aaro Koskinen wrote:
> > > > > On Mon, Oct 03, 2016 at 12:03:25AM +0530, Namrata A Shettar wrote:
> > > > > > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= 1 << 0,
> > > > > > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= 1 << 1,
> > > > > > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI		= BIT(0),
> > > > > > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND		= BIT(1),
> > > > > >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK	= 3 << 3,
> > > > > > -	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= 1 << 3,
> > > > > > +	CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ		= BIT(3),
> > > > > >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ		= 2 << 3,
> > > > > >  	CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ		= 3 << 3,
> > > > > >  	/* Bits 3-4 used to encode the clock frequency */
> > > > > > -	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= 1 << 5,
> > > > > > +	CVMX_USB_INITIALIZE_FLAGS_NO_DMA		= BIT(5),
> > > > > 
> > > > > All entries should be converted to use BIT.
> > > > 
> > > > The ones that could be, were, right?  What else should be done here?
> > > 
> > > 24MHZ is BIT(4).
> > 
> > Oh yeah, nice catch.
> > 
> > > > Well, there are bit mask macros now in the kernel tree, perhaps those
> > > > should be used, but I don't see how BIT() could be used for "3 << 3", do
> > > > you?
> > > 
> > > BIT(3) | BIT(4)?
> > 
> > Maybe, but it's not an automatic conversion :)
> 
> But it could be, if you use GENMASK() instead, I'm sure you can write up
> a transformation rule to do that in an automated way so that you know it
> works properly...
> 
> thanks,
> 
> greg k-h


Yes, that can be done! I'll try doing that and send a revised patch.
Thanks for pointing that out Aaro! and for the help Greg :).

namrata

