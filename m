X-GM-THRID: 6341957980641034240
X-Received: by 10.107.58.67 with SMTP id h64mr7358709ioa.96.1476721160679;
        Mon, 17 Oct 2016 09:19:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.72 with SMTP id q69ls2574197itc.3.canary; Mon, 17 Oct
 2016 09:19:17 -0700 (PDT)
X-Received: by 10.66.232.138 with SMTP id to10mr6229978pac.15.1476721157795;
        Mon, 17 Oct 2016 09:19:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a143si5423022pfa.2.2016.10.17.09.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 09:19:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 121E9A49;
	Mon, 17 Oct 2016 16:19:16 +0000 (UTC)
Date: Mon, 17 Oct 2016 18:19:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: vc04_services: vchiq_arm: Use ARRAY_SIZE
 macro
Message-ID: <20161017161924.GA21783@kroah.com>
References: <20161016133051.GA28472@sayli-HP-15-Notebook-PC>
 <20161017073440.GA27518@kroah.com>
 <CAKG5xWiAdt-PRyu1qVLE=Sr9z1xV77Wo_WJuMe8ptc6yYjEO1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWiAdt-PRyu1qVLE=Sr9z1xV77Wo_WJuMe8ptc6yYjEO1g@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Mon, Oct 17, 2016 at 08:42:31PM +0530, sayli karnik wrote:
> On Mon, Oct 17, 2016 at 1:04 PM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Sun, Oct 16, 2016 at 07:00:51PM +0530, sayli karnik wrote:
> >> This patch uses ARRAY_SIZE macro instead of division of two sizeofs to
> >> find array size.
> >> Done using coccinelle.
> >> @@
> >> type T;
> >> T[] E;
> >> @@
> >> (
> >> - (sizeof(E)/sizeof(*E))
> >> + ARRAY_SIZE(E)
> >> |
> >> - (sizeof(E)/sizeof(E[...]))
> >> + ARRAY_SIZE(E)
> >> |
> >> - (sizeof(E)/sizeof(T))
> >> + ARRAY_SIZE(E)
> >> )
> >>
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >> Changes in v2:
> >> Adjusted the changed part in one line
> >>
> >>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> >> index 5ec7c96..7fee140 100644
> >> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> >> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> >> @@ -190,8 +190,7 @@ static const char *const ioctl_names[] = {
> >>       "CLOSE_DELIVERED"
> >>  };
> >>
> >> -vchiq_static_assert((sizeof(ioctl_names)/sizeof(ioctl_names[0])) ==
> >> -     (VCHIQ_IOC_MAX + 1));
> >> +vchiq_static_assert(ARRAY_SIZE(ioctl_names) == (VCHIQ_IOC_MAX + 1));
> >
> > How were you able to test build this change?  The code is currently
> > broken in the build unless you add a number of external patches at the
> > moment :(
> >
> Yes it is broken.
> Also there isn't a Makefile in
> drivers/staging/vc04_services/interface/vchiq_arm/ to build it.

That's ok, the Makefile a few directories up from that is the one that
builds it.

I'm going to hold off applying this patch until you can test-build it.

thanks,

greg k-h

