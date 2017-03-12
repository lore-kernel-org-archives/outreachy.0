X-GM-THRID: 6396623308648873984
X-Received: by 10.25.216.154 with SMTP id r26mr3904259lfi.7.1489330549038;
        Sun, 12 Mar 2017 07:55:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.26 with SMTP id y26ls1436536lja.2.gmail; Sun, 12 Mar
 2017 07:55:48 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr4128128lfd.23.1489330548610;
        Sun, 12 Mar 2017 07:55:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si502552wmg.0.2017.03.12.07.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:55:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="264202571"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 15:55:32 +0100
Date: Sun, 12 Mar 2017 15:55:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use true/false instead of 1/0
 for bool initialisations
In-Reply-To: <CAKG5xWhTjVxD1+3mhpm1JE-rWoW5mLkOAj3dbGuOvyomDjQEDA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703121554350.2174@hadrien>
References: <cover.1489329182.git.karniksayli1995@gmail.com> <alpine.DEB.2.20.1703121546590.2174@hadrien> <CAKG5xWhTjVxD1+3mhpm1JE-rWoW5mLkOAj3dbGuOvyomDjQEDA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, sayli karnik wrote:

> On Sun, Mar 12, 2017 at 8:17 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 12 Mar 2017, sayli karnik wrote:
> >
> >> The patch series uses true and false instead of 1 and 0 as bool variable
> >> values. Detected by coccinelle/misc/boolinit.cocci.
> >>
> >> sayli karnik (2):
> >>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
> >>     initialisations
> >>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
> >>     initialisations
> >
> > The two lines are identical?
> >
> Actually one is for mt9m114.c and the other for mt9m114.h
> Had sent 2 separate patches initially, but re-sent them as a series as
> suggested by Greg.

OK, I haven't see the actual series yet for some reason, but every patch
has to have a different subject line.

Maybe it would make sense to just merge them into one.

julia

> > julia
> >
> >>
> >>  drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
> >>  drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
> >>  2 files changed, 5 insertions(+), 5 deletions(-)
> >>
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489329182.git.karniksayli1995%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

