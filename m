X-GM-THRID: 6806929906514001920
X-Received: by 2002:aa7:c783:: with SMTP id n3mr17158282eds.8.1584873209994;
        Sun, 22 Mar 2020 03:33:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ce14:: with SMTP id y20ls6196762edi.2.gmail; Sun, 22 Mar
 2020 03:33:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vspNymoHv577KKt0QEATK5+fdUN1nhCSh7eY5vUHhLy+jpuGEaUQ5NpLSybPr0FmfADGRAJ
X-Received: by 2002:aa7:c69a:: with SMTP id n26mr16707810edq.136.1584873208453;
        Sun, 22 Mar 2020 03:33:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584873208; cv=none;
        d=google.com; s=arc-20160816;
        b=tEOJhcNOqiGXCpyDSd9poaCRUd2LFkHz5xFGi87T43mFcAMk2SQlum0jaMLJXorYmr
         HRuykQ/BuWFW9ZQudLzo9HcAd2wyD+o92WmV2+kx7T3RxWti3CuRLSAd7cWIcer/6vDW
         ssR8jfPyVFl6/R+ySUs31EpVFKqHCtw4k8AvEnRHlnZDuGQ9jCeM+V2ME7jfuN0eHv2V
         Skp7kTKQ6oI1J1G1oql6H83GOW2Abaa8pVsBR+3TO7AbEdp7jceefPDpbgKDvivwVBvW
         9LBU5d+PVJxSvR+fdv91A/aCuwQn4ehEnfPn70fohBiGzy6XAp5H9AaxPrUXZI/+H47h
         q4eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=arSW+2X9QzlAp+HzP9Lozp9g+XtpxDPTiCzopqiEydA=;
        b=H0qWQpzXB0GbcAFLlqsoqKyv/gfpI+sAFAhZfja4KNuNVcIfubAbudOvUX0ybI+HGN
         fH2S/Wbk119swLlBfrXy0CVdF+sTLVJ1ooBDDyacxBzFXRR6yNOL2/TRq8djzBE/wG97
         McmGi11bs5eoAJml++YLCiA3lch7jE/2Y0qcRdxpPHPh/ThKW849InFOJpkUacnTaOBJ
         5bXv//JEUkP+UTnhHa3AI7xQMvsPyVQVuBVgZLC0DtStEyIj78DpW/t3hUOX/zABV+g4
         ZGam2e2fvJ5mPRlvIQDISHprzj+887QqrJdmrtiErMBENmA3Fn+fE0hseV1X3zpAfPIe
         Gubg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ck3si469362edb.5.2020.03.22.03.33.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 03:33:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="441533804"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 11:33:14 +0100
Date: Sun, 22 Mar 2020 11:33:13 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: hp: Use netdev_warn().
In-Reply-To: <b4343fc44a1ee33256fbcd87d78b718f7b381b39.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221132000.2325@hadrien>
References: <20200322072424.3922-1-jane.pnx9@gmail.com>  <alpine.DEB.2.21.2003221012440.2325@hadrien> <b4343fc44a1ee33256fbcd87d78b718f7b381b39.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> On Sun, 2020-03-22 at 10:13 +0100, Julia Lawall wrote:
> >
> > On Sun, 22 Mar 2020, Sam Muhammed wrote:
> >
> > > This replaces printk(KERN_WARNING ..) with netdev_warn(),
> > > as the use of printk(KERN_<LEVEL> ..) isn't preferred when
> > > a struct net_device is available.
> >
> > This is better, but it's printk that is not desirable in general, whether
> > the KERN_WARNING is there or nor.  So the log message could be simpler,
> > thus making it easier for someone who is looking at to see the issue
> > quickly.
> >
>
> Okay, i thought id make it more specific, v4?

Yes.

>
> I have another question about kernel printing messages,
>  for messages not specific to a particular device we use pr_warn, ive
> got a driver that made a _user-defined_ pr_warn macro in a "driver.h"
> and used it across the driver.
>
> shouldn't #include <linux/printk.h> replace this _macro_ ?
> that including it in the "driver.h" will recursively include it
> _driver-wide_
>
> or its more of "i use one macro and i want to load fast" so they prefer
> using their custom pr_warn?

I think it would be better to use standard kernel functions, unless there
is some strong reason not to do so.  You could see what their macro does,
and see whether similar functionality already exists.

julia


> Thank you.
> Sam
>
> > julia
> >
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
>
> > > Changes in v3:
> > > - Update subject line and log message to be more clear and descriptive.
> > >
> > > Changes in v2:
> > > - Remove the " : " from the print message, netdev_warn() doesn't need it.
> > >
> > >  drivers/staging/hp/hp100.c | 9 ++++-----
> > >  1 file changed, 4 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > > index b89c4dcf53f5..1afd511260d0 100644
> > > --- a/drivers/staging/hp/hp100.c
> > > +++ b/drivers/staging/hp/hp100.c
> > > @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > >
> > >  	eid = hp100_read_id(ioaddr);
> > >  	if (eid == NULL) {	/* bad checksum? */
> > > -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> > > -		       __func__, ioaddr);
> > > +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);
> > >  		goto out2;
> > >  	}
> > >
> > > @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> > >  	for (i = uc = 0; i < 7; i++)
> > >  		uc += hp100_inb(LAN_ADDR + i);
> > >  	if (uc != 0xff) {
> > > -		printk(KERN_WARNING
> > > -		       "%s: bad lan address checksum at port 0x%x)\n",
> > > -		       __func__, ioaddr);
> > > +		netdev_warn(dev,
> > > +			    "bad lan address checksum at port 0x%x)\n",
> > > +			    ioaddr);
> > >  		err = -EIO;
> > >  		goto out2;
> > >  	}
> > > ---
> > > 2.20.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322072424.3922-1-jane.pnx9%40gmail.com.
> > >
>
>
>

