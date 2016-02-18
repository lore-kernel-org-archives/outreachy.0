X-GM-THRID: 6252325247022792704
X-Received: by 10.28.47.140 with SMTP id v134mr259569wmv.3.1455790668179;
        Thu, 18 Feb 2016 02:17:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.200 with SMTP id 69ls1075506lfr.13.gmail; Thu, 18 Feb
 2016 02:17:47 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr898006lfe.1.1455790667368;
        Thu, 18 Feb 2016 02:17:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si94967wme.0.2016.02.18.02.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:17:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,464,1449529200"; 
   d="scan'208";a="165144139"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Feb 2016 11:17:46 +0100
Date: Thu, 18 Feb 2016 05:17:43 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: Fwd: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Delete
 double assignment
In-Reply-To: <CAOH+1jGB=EFPMTLiMYfem4dQ2QMR5p5PvsWz3=UJYW=8hQbYdw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602180517010.2685@hadrien>
References: <1455732899-17222-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1602171837210.4547@hadrien> <CAOH+1jE2Fc=0wGkj=PjTPtY6MK41YP6LxxRKP5DfEEKMXPENtQ@mail.gmail.com> <CAOH+1jGB=EFPMTLiMYfem4dQ2QMR5p5PvsWz3=UJYW=8hQbYdw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 18 Feb 2016, Bhumika Goyal wrote:

> On Thu, Feb 18, 2016 at 5:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Wed, 17 Feb 2016, Bhumika Goyal wrote:
> >
> >> The two assignments here are identical so one can be removed.
> >> Found using coccinelle:
> >> @@
> >> expression i;
> >> @@
> >>
> >> *i = ...;
> >>  i = ...;
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  drivers/staging/comedi/drivers/dt2814.c | 1 -
> >>  1 file changed, 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> >> index 66705f9..e40ad56 100644
> >> --- a/drivers/staging/comedi/drivers/dt2814.c
> >> +++ b/drivers/staging/comedi/drivers/dt2814.c
> >> @@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
> >>               return -EIO;
> >>       }
> >>       i = inb(dev->iobase + DT2814_DATA);
> >> -     i = inb(dev->iobase + DT2814_DATA);
> >
> > Inb reads from the device.  The first call may have a side effect.
> >
> > julia
> >
>
> Ok and here the reason might be that both calls are important because
> suppose the value is not read in first call it can be read in the
> second call?  Please correct me if I am wrong.

I think that it is possible that reading a value from the device can cause
the device to perform some activity.

julia

>
> Thanks,
> Bhumika
> >>       if (it->options[1]) {
> >>               ret = request_irq(it->options[1], dt2814_interrupt, 0,
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455732899-17222-1-git-send-email-bhumirks%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jGB%3DEFPMTLiMYfem4dQ2QMR5p5PvsWz3%3DUJYW%3D8hQbYdw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

