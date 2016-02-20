X-GM-THRID: 6252325247022792704
X-Received: by 10.28.47.140 with SMTP id v134mr385320wmv.3.1456010489241;
        Sat, 20 Feb 2016 15:21:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.194 with SMTP id 63ls163239lfy.18.gmail; Sat, 20 Feb
 2016 15:21:28 -0800 (PST)
X-Received: by 10.112.181.33 with SMTP id dt1mr2657915lbc.22.1456010488591;
        Sat, 20 Feb 2016 15:21:28 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s141si835200wmd.1.2016.02.20.15.21.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:21:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 35691A15;
	Sat, 20 Feb 2016 23:21:27 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:21:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: Fwd: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Delete
 double assignment
Message-ID: <20160220232126.GA16317@kroah.com>
References: <1455732899-17222-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1602171837210.4547@hadrien>
 <CAOH+1jE2Fc=0wGkj=PjTPtY6MK41YP6LxxRKP5DfEEKMXPENtQ@mail.gmail.com>
 <CAOH+1jGB=EFPMTLiMYfem4dQ2QMR5p5PvsWz3=UJYW=8hQbYdw@mail.gmail.com>
 <alpine.DEB.2.10.1602180517010.2685@hadrien>
 <CAOH+1jHq_xXwXRQfXhjqxMw9WW2Pprese+fANi1LchRq=JSz8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOH+1jHq_xXwXRQfXhjqxMw9WW2Pprese+fANi1LchRq=JSz8Q@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 04:08:43PM +0530, Bhumika Goyal wrote:
> On Thu, Feb 18, 2016 at 3:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 18 Feb 2016, Bhumika Goyal wrote:
> >
> >> On Thu, Feb 18, 2016 at 5:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> >
> >> > On Wed, 17 Feb 2016, Bhumika Goyal wrote:
> >> >
> >> >> The two assignments here are identical so one can be removed.
> >> >> Found using coccinelle:
> >> >> @@
> >> >> expression i;
> >> >> @@
> >> >>
> >> >> *i = ...;
> >> >>  i = ...;
> >> >>
> >> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> >> ---
> >> >>  drivers/staging/comedi/drivers/dt2814.c | 1 -
> >> >>  1 file changed, 1 deletion(-)
> >> >>
> >> >> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> >> >> index 66705f9..e40ad56 100644
> >> >> --- a/drivers/staging/comedi/drivers/dt2814.c
> >> >> +++ b/drivers/staging/comedi/drivers/dt2814.c
> >> >> @@ -249,7 +249,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
> >> >>               return -EIO;
> >> >>       }
> >> >>       i = inb(dev->iobase + DT2814_DATA);
> >> >> -     i = inb(dev->iobase + DT2814_DATA);
> >> >
> >> > Inb reads from the device.  The first call may have a side effect.
> >> >
> >> > julia
> >> >
> >>
> >> Ok and here the reason might be that both calls are important because
> >> suppose the value is not read in first call it can be read in the
> >> second call?  Please correct me if I am wrong.
> >
> > I think that it is possible that reading a value from the device can cause
> > the device to perform some activity.
> >
> > julia
> >
> 
> Ok got it.

Also, sometimes hardware needs to be read multiple times in order for it
to work.  There's lots of code in the kernel to work around hardware
issues like this, as that's the job of the kernel.

thanks,

greg k-h

