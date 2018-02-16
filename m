X-GM-THRID: 6523195637320646656
X-Received: by 10.200.81.215 with SMTP id d23mr2480265qtn.31.1518803501052;
        Fri, 16 Feb 2018 09:51:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.45.134 with SMTP id t128ls1336188qkh.10.gmail; Fri, 16 Feb
 2018 09:51:40 -0800 (PST)
X-Received: by 10.55.203.67 with SMTP id d64mr4838231qkj.23.1518803500150;
        Fri, 16 Feb 2018 09:51:40 -0800 (PST)
Received: by 10.55.140.129 with SMTP id o123msqkd;
        Fri, 16 Feb 2018 09:48:42 -0800 (PST)
X-Google-Smtp-Source: AH8x225YD3HSLAs0WK/6ojXzeTU+ZzZ0PKdoGujWw6AhALpHOZQVH5g6ip/0/q1WPK1ffIKsufPf
X-Received: by 10.80.215.210 with SMTP id m18mr2081713edj.0.1518803321893;
        Fri, 16 Feb 2018 09:48:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518803321; cv=none;
        d=google.com; s=arc-20160816;
        b=izX+9WdL+yhfYOk+49EH6d0+Iq4hac+tV5CLcHVlRas+0R+WP+IZkiyIecEDcOJ46G
         N4jXI5W5NA43vs8ttU9sDB9BQOMoXlIB3CCWxI7WIo7G1DeRlmMVsxMljF4ZaFRX8OOw
         hkiEaPDWOlZzAA/waEoIlFkTyKpmSwj5aqWdMCWsB3q+25r7Pe1lR1hePAeHwTh4Jejw
         H18R95It90k7+YFXW5rgx7olAjl1PwWN+CMb8lpoThbwpWtgfdlVwAPk2/GTL9j60ja4
         89RoIpE1+S0G1ReZeCcRzX1VD9rDhhP8soLBNJfKV5ins2Kn67+0Qrr8mnYSlNceo3E5
         mFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=pbdFD0inDMe2+LsQaHFwdhJQfMSraYVoCA3rFlpgaDY=;
        b=evnEDZaoQfDnLtHIXdpOT0B1EM5Vz0My5EdP2emQTRPF9B1kvNhBvb9xITQbttnCOg
         WjshRr6KEaRy0bI/c0ro/E+IEM58MES2sR/oJOVGRMliTzrAv+WGgeZzZI0zv6PCMWT9
         uFWaUhu3KHiqz+s5HUzJms+KtI6gFJ6SYPa/rXHpNDwOngngbnWt1WseRG+hS54nCsqY
         t32DYjfjvfnA9y8BTaIUoelo34jX4M1iXwhrvJ2lZF+p+gOjM3UWHdYCHsDp7i5drfci
         MY/h78dFqc4+nMIg0MUCIWlEP7IngpbFSwM4tvyyEF3Sliix/B9cnaJ2UUZusQgsoylg
         kHKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id n22si738430edb.5.2018.02.16.09.48.41
        for <outreachy-kernel@googlegroups.com>;
        Fri, 16 Feb 2018 09:48:41 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id EE635207FD; Fri, 16 Feb 2018 18:48:40 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (unknown [91.160.177.164])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 8C53F20379;
	Fri, 16 Feb 2018 18:48:40 +0100 (CET)
Date: Fri, 16 Feb 2018 18:48:40 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Shreeya Patel
 <shreeya.patel23498@gmail.com>, Boris Brezillon
 <boris.brezillon@free-electrons.com>, Richard Weinberger <richard@nod.at>,
 David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille
 Pitchen <cyrille.pitchen@wedev4u.fr>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>, linux-mtd@lists.infradead.org
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk
 statements with pr_*macros
Message-ID: <20180216184840.096e534c@bbrezillon>
In-Reply-To: <CAAEAJfAtvm5bii9eyUnYmU=tQCOvE_hPk0eBJQ1vwgogbGYr-A@mail.gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
	<CAAEAJfAg_hei2PF37_oX2tf+Mv43ye-nEOt+KRVFerp1Jfzn2Q@mail.gmail.com>
	<alpine.DEB.2.20.1802161822560.4340@hadrien>
	<CAAEAJfAtvm5bii9eyUnYmU=tQCOvE_hPk0eBJQ1vwgogbGYr-A@mail.gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 16 Feb 2018 14:26:56 -0300
Ezequiel Garcia <ezequiel@vanguardiasur.com.ar> wrote:

> On 16 February 2018 at 14:23, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Fri, 16 Feb 2018, Ezequiel Garcia wrote:
> >  
> >> Hi Shreeya,
> >>
> >> Thanks for the contribution.
> >>
> >> On 16 February 2018 at 13:50, Shreeya Patel
> >> <shreeya.patel23498@gmail.com> wrote:  
> >> > This patchset removes all the log levels i.e. KERN_WARN,
> >> > KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> >> > statements and replaces the printk statements with appropriate
> >> > pr_*macros.
> >> > According to the kernel coding style, pr_*macro is the preferred
> >> > way to print the message.
> >> >  
> >>
> >> So, two things to begin with.
> >>
> >> First of all, despite this contribution being part of outreachy,
> >> I believe you can include mailing lists in your case.
> >>
> >> In other words, don't use the "nol" option in get_maintainer
> >> script and Cc the MTD mailing list: linux-mtd at lists.infradead.org.  
> >
> > Shouldn't the dev_* functions also be usable?
> >  
> 
> Provided that:
> 1. it's applicable, i.e. if in the context of a device.

Yep, be careful with that. The MTD/NAND subsystem initializes
mtd->dev.name quite late, so it's not safe to use &mtd->dev with
dev_<loglevel>(). Note that you can use the NAND controller pdev->dev if
available.

> 2. Richard is not too opposed to the idea.
> 
> Then, yes.



-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

