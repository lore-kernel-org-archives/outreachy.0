X-GM-THRID: 6332043627755208704
X-Received: by 10.25.74.71 with SMTP id x68mr3065506lfa.6.1474295993722;
        Mon, 19 Sep 2016 07:39:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.49.197 with SMTP id x188ls863416wmx.13.gmail; Mon, 19 Sep
 2016 07:39:53 -0700 (PDT)
X-Received: by 10.28.35.203 with SMTP id j194mr535877wmj.20.1474295993158;
        Mon, 19 Sep 2016 07:39:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTP id 185si1825067wmr.2.2016.09.19.07.39.53
        for <outreachy-kernel@googlegroups.com>;
        Mon, 19 Sep 2016 07:39:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,362,1470693600"; 
   d="scan'208";a="237398563"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 16:39:52 +0200
Date: Mon, 19 Sep 2016 16:39:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com, 
    aditya.shankar@microchip.com, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: wilc1000: Code cleanup
In-Reply-To: <CAOH+1jFvcwZHT=+4RkKSt9qXuHFXw_uSit8iJa67=8dBU3pasg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609191639290.3203@hadrien>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609191618590.3203@hadrien> <CAOH+1jH=Kx=hT8DZ4stQf5touCUeUofcJ9H50A3+odUK12r8cw@mail.gmail.com> <alpine.DEB.2.10.1609191630270.3203@hadrien>
 <CAOH+1jFvcwZHT=+4RkKSt9qXuHFXw_uSit8iJa67=8dBU3pasg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Bhumika Goyal wrote:

> On Mon, Sep 19, 2016 at 8:00 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Mon, 19 Sep 2016, Bhumika Goyal wrote:
> >
> >> On Mon, Sep 19, 2016 at 7:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> > On Mon, 19 Sep 2016, Bhumika Goyal wrote:
> >> >
> >> >> This patchset declares some functions as static and remove their
> >> >> declaration from headers. Also, drop prototypes of some already
> >> >> static functions.
> >> >
> >> > Isn't this a v2?
> >> >
> >> > julia
> >> >
> >> Actually, yes but they weren't sent as a patchset before. I realized
> >> that in order to make them work they need to be applied in series and
> >> so I combined them in a patchset.  Do I need to put a v2 then?
> >
> > I think it would make clear that there was something else from before that
> > should now be ignored.
> >
>
> Ok, but now is it still a v2 or a v3?

No idea :)  Whatever is one larger than where you were before.

julia

>
> Thanks,
> Bhumika
>
> > julia
> >
> >>
> >> Thanks,
> >> Bhumika
> >>
> >> >>
> >> >> Bhumika Goyal (2):
> >> >>   Staging: wilc1000: Drop static function prototypes
> >> >>   Staging: wilc1000: Make functions wilc_mac_{open/close} static
> >> >>
> >> >>  drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
> >> >>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
> >> >>  drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
> >> >>  3 files changed, 13 insertions(+), 23 deletions(-)
> >> >>
> >> >> --
> >> >> 1.9.1
> >> >>
> >> >> --
> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474293770-22208-1-git-send-email-bhumirks%40gmail.com.
> >> >> For more options, visit https://groups.google.com/d/optout.
> >> >>
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jH%3DKx%3DhT8DZ4stQf5touCUeUofcJ9H50A3%2BodUK12r8cw%40mail.gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jFvcwZHT%3D%2B4RkKSt9qXuHFXw_uSit8iJa67%3D8dBU3pasg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

