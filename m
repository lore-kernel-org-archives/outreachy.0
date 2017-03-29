X-GM-THRID: 6402645752993021952
X-Received: by 10.223.151.155 with SMTP id s27mr207150wrb.9.1490823114607;
        Wed, 29 Mar 2017 14:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.80 with SMTP id y16ls1608083lfj.10.gmail; Wed, 29 Mar
 2017 14:31:53 -0700 (PDT)
X-Received: by 10.46.19.9 with SMTP id 9mr391576ljt.28.1490823113753;
        Wed, 29 Mar 2017 14:31:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si598349wma.0.2017.03.29.14.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 14:31:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,243,1486422000"; 
   d="scan'208";a="218529026"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2017 23:31:52 +0200
Date: Wed, 29 Mar 2017 23:31:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Lars-Peter Clausen <lars@metafoo.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] iio: adc: max1363: constify
 attribute_group structures
In-Reply-To: <CALrZqyOPVDA+4n56d3c+jZRsiaQ52vYEjA+Or1j8Z2LNgi58OQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703292331160.2146@hadrien>
References: <20170328201528.GA15455@singhal-Inspiron-5558> <2f65895f-52a8-df0f-0743-7cda5a7915dc@kernel.org> <CALrZqyOPVDA+4n56d3c+jZRsiaQ52vYEjA+Or1j8Z2LNgi58OQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 30 Mar 2017, SIMRAN SINGHAL wrote:

> On Thu, Mar 30, 2017 at 2:41 AM, Jonathan Cameron <jic23@kernel.org> wrote:
> > On 28/03/17 21:15, simran singhal wrote:
> >> Check for attribute_group structures that are only stored in the
> >> event_attrs filed of iio_info structure. As the event_attrs field of
> >> iio_info structures is constant, so these attribute_group structures can
> >> also be declared constant. Done using coccinelle:
> >>
> >> @r1 disable optional_qualifier @
> >> identifier i;
> >> position p;
> >> @@
> >> static struct attribute_group i@p = {...};
> >>
> >> @ok1@
> >> identifier r1.i;
> >> position p;
> >> struct iio_info x;
> >> @@
> >> x.event_attrs=&i@p;
> >>
> >> @bad@
> >> position p!={r1.p,ok1.p};
> >> identifier r1.i;
> >> @@
> >> i@p
> >>
> >> @depends on !bad disable optional_qualifier@
> >> identifier r1.i;
> >> @@
> >> static
> >> +const
> >> struct attribute_group i={...};
> >>
> >> @depends on !bad disable optional_qualifier@
> >> identifier r1.i;
> >> @@
> >> +const
> >> struct attribute_group i;
> >>
> >> File size before:
> >>    text    data     bss     dec     hex filename
> >>   36951     448       0   37399    9217 drivers/iio/adc/max1363.o
> >>
> >> File size after:
> >>    text          data     bss     dec     hex filename
> >>   37015           384       0   37399    9217 drivers/iio/adc/max1363.o
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> > Applied to the togreg branch of iio.git and pushed out as testing for
> > the autobuilders to play with it.
> >
>
> But my tree is up-to-date and I also test it before sending.

One never knows...

julia


>
> > Thanks,
> >
> > Jonathan
> >> ---
> >>  drivers/iio/adc/max1363.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/iio/adc/max1363.c b/drivers/iio/adc/max1363.c
> >> index c6c12fe..80eada4 100644
> >> --- a/drivers/iio/adc/max1363.c
> >> +++ b/drivers/iio/adc/max1363.c
> >> @@ -1007,7 +1007,7 @@ static struct attribute *max1363_event_attributes[] = {
> >>       NULL,
> >>  };
> >>
> >> -static struct attribute_group max1363_event_attribute_group = {
> >> +static const struct attribute_group max1363_event_attribute_group = {
> >>       .attrs = max1363_event_attributes,
> >>  };
> >>
> >>
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyOPVDA%2B4n56d3c%2BjZRsiaQ52vYEjA%2BOr1j8Z2LNgi58OQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

