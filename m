X-GM-THRID: 6806652966405144576
X-Received: by 2002:a05:6402:b71:: with SMTP id cb17mr13264430edb.190.1584803390765;
        Sat, 21 Mar 2020 08:09:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f682:: with SMTP id d2ls1119445edn.11.gmail; Sat, 21 Mar
 2020 08:09:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtlkn8ihKTsS3sVNnh7FuJ0GPeG+M5Yu9Rb0AbLvoRF9hAkGcLFEkTQPhhfKXeDwCL6MRWV
X-Received: by 2002:aa7:c691:: with SMTP id n17mr13621139edq.5.1584803389161;
        Sat, 21 Mar 2020 08:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584803389; cv=none;
        d=google.com; s=arc-20160816;
        b=AIjYtxcjfdII5+Em8xgLNXXkNvCzEt0e8b73poO+j/Jy7N+Hnni2QA4P4mGwMSwcuY
         fIMBp+ERBzJiOMpAtjb4hXgqAWrVvqpvbMlollGSlnjB18+AUYF5hXYzis9VZl/LogAk
         aw9H+64CPzpXrmdS4dUR48XRaY6FB5D1CQQH+5KI0BAGASy2+5w9WLGVorcwJI+Jy8Di
         ujfDwYx0EZAJY0QXA3BrEHHnpCGnlDx5EafoV+XyiPPqaF0WZYxUiJyT//s9gYJSjazt
         gs0XzPZxqXheDfFnQ/w9wUjTME84SItVDLGgqpj8J/c0ygjXY6iZiSeKU7dMiCNbOTCa
         Zq/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BNJfxhzWHe4+wQWh1KZKfP/njmM+Zm34nVHv4sztAYI=;
        b=t2ZNpxl0tgUU+D9HOxhUvp8L6dS9l83edhXDBy10svGEq3oKDzqumc1lPMMatYI2Yc
         A0xAdxfq8CmRGQRpMrbQenNobqv3PrVy8VuAio7FXCf2p6rH4ZumGaNQzYfkANYg0BTI
         TaTeVaKunvKSYImqq1kEXufPdUUXK+dYN4VSpRl1o1cav0xnwai1cZGW2igV6h9ugvzV
         o2A2E2SX/rGWw5VzaP8zrTDiXckRR91rBusZB0e3ZfBL+NUT3VBk9Mh/0rhyOc++Ds5Y
         E5+EQ3enjx1yHJUPLHVCPSMKyyEJrfxpmQh/q1LkH8jj7KsC4+tvWlJ/w8h+aTR1lBW3
         VMjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cw13si504572edb.2.2020.03.21.08.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 08:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,289,1580770800"; 
   d="scan'208";a="343160423"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 16:09:48 +0100
Date: Sat, 21 Mar 2020 16:09:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: hp: Replace printk(KERN_WARNING
 ..) with netdev_warn().
In-Reply-To: <68e7db7304d86d9fb7e8c586a8eccd5bbf559f80.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003211609100.2522@hadrien>
References: <20200321132919.27704-1-jane.pnx9@gmail.com>  <alpine.DEB.2.21.2003211444450.2522@hadrien> <68e7db7304d86d9fb7e8c586a8eccd5bbf559f80.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, Sam Muhammed wrote:

> On Sat, 2020-03-21 at 14:59 +0100, Julia Lawall wrote:
> >
> > On Sat, 21 Mar 2020, Sam Muhammed wrote:
> >
> > > Fixup the following Checkpatch.pl WARNING:
> > > WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ...
> > > then dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > >  drivers/staging/hp/hp100.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > > index b89c4dcf53f5..89af70571661 100644
> > > --- a/drivers/staging/hp/hp100.c
> > > +++ b/drivers/staging/hp/hp100.c
> > > @@ -469,8 +469,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > >
> > >  	eid = hp100_read_id(ioaddr);
> > >  	if (eid == NULL) {	/* bad checksum? */
> > > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > > -		       __func__, ioaddr);
> > > +		netdev_warn(dev,
> > > +			    " : bad ID checksum at base port 0x%x\n", ioaddr);
> > >  		goto out2;
> > >  	}
> > >
> > > @@ -478,9 +478,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > >  	for (i = uc = 0; i < 7; i++)
> > >  		uc += hp100_inb(LAN_ADDR + i);
> > >  	if (uc != 0xff) {
> > > -		printk(KERN_WARNING
> > > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > > -		       __func__, ioaddr);
> > > +		netdev_warn(dev,
> > > +			    " : bad lan address checksum at port 0x%x)\n",
> > > +			    ioaddr);
> >
> > Other calls to netdev_warn don't have a string that starts with " : ", so
> > you can probably drop that part as well.
> >
>
> OK, thats a v2?

Yes.

>
> I have some questions about replacing printk in general, if its
> associated with KERN_<LEVEL>, i know which netdev_*/dev_* ..macro to
> replace it with, but when its just printk("some string"), with no other
> arg, its hard to know to which netdev_*/dev_* macro it should be
> replaced with (_dbg, _warn ...etc)
>
> what indications can i use or refer to with this?

I think you would have to guess from the contents.

julia

