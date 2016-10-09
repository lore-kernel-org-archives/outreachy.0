X-GM-THRID: 6337746804060192768
X-Received: by 10.28.154.197 with SMTP id c188mr261391wme.19.1475992130636;
        Sat, 08 Oct 2016 22:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.75 with SMTP id 72ls248565ljj.3.gmail; Sat, 08 Oct 2016
 22:48:49 -0700 (PDT)
X-Received: by 10.25.203.193 with SMTP id b184mr1645259lfg.5.1475992129585;
        Sat, 08 Oct 2016 22:48:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si579438wmr.2.2016.10.08.22.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 22:48:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,316,1473112800"; 
   d="scan'208";a="239977089"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 07:48:48 +0200
Date: Sun, 9 Oct 2016 07:48:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3] staging: sm750fb: Replace
 printk() with pr_info().
In-Reply-To: <20161009020854.GA30508@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610090748050.3134@hadrien>
References: <20161005205247.GA8857@lennorien.com> <20161006124826.GA14551@kroah.com> <20161009020854.GA30508@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Elise Lennion wrote:

> On Thu, Oct 06, 2016 at 02:48:26PM +0200, Greg KH wrote:
> > On Wed, Oct 05, 2016 at 05:52:47PM -0300, Elise Lennion wrote:
> > > Fix checkpatch warning:
> > >
> > > WARNING: printk() should include KERN_ facility level
> > >
> > > New checkpatch warning appears after including KERN_ facility level.
> > >
> > > Fix checkpatch warning:
> > >
> > > WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> > >
> > > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > > ---
> > >
> > > v2: Fixed new checkpatch warning noted by Julia Lawall <julia.lawall@lip6.fr>
> > > Reworked to use pr_info() instead of printk()
> > >
> > >  drivers/staging/sm750fb/ddk750_help.c | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> > > index 9637dd3..475a943 100644
> > > --- a/drivers/staging/sm750fb/ddk750_help.c
> > > +++ b/drivers/staging/sm750fb/ddk750_help.c
> > > @@ -11,7 +11,5 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
> > >  	devId750 = devId;
> > >  	revId750 = revId;
> > >  	if (revId == 0xfe)
> > > -		printk("found sm750le\n");
> > > +		pr_info("found sm750le\n");
> > >  }
> > > -
> > > -
> >
> > Why are you deleting these extra lines?
> >
>
> I was fixing a checkpatch CHECK and forgot to put it in a different commit, sorry.
>
> > And why can't you use dev_info() here instead of pr_info()?
> >
> > thanks,
> >
> > greg k-h
>
> I didn't use dev_info() because I didn't find a reference to a device struct.
>
> I searched about how to use dev_* and all examples I found passed a pointer to a device struct in the function call.
>
> In this case, without the pointer, how can I find the device to pass to dev_info()?

Maybe the information is available in a function that calls this one, and
you can add an extra parameter?

julia

>
> thank you.
>
> elise
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161009020854.GA30508%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

