X-GM-THRID: 5879750459392
X-Received: by 10.43.172.4 with SMTP id nw4mr27181469icc.3.1425295919260;
        Mon, 02 Mar 2015 03:31:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.70 with SMTP id f64ls556726qge.20.gmail; Mon, 02 Mar
 2015 03:31:59 -0800 (PST)
X-Received: by 10.236.111.4 with SMTP id v4mr27547220yhg.55.1425295919109;
        Mon, 02 Mar 2015 03:31:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g3si856579igr.2.2015.03.02.03.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 03:31:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,675,1418079600"; 
   d="scan'208";a="101779646"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Mar 2015 12:31:55 +0100
Date: Mon, 2 Mar 2015 05:31:51 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniel Baluta <daniel.baluta@gmail.com>
cc: Vatika Harlalka <vatikaharlalka@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Replace if-else with
 ternary operator
In-Reply-To: <CAEnQRZC9WWvU4VEXJRdQwqz-4uOZ+zMxeU0kfie2u6Qp+UECzA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503020530480.2642@hadrien>
References: <20150302111756.GA17499@akanksha> <CAEnQRZC9WWvU4VEXJRdQwqz-4uOZ+zMxeU0kfie2u6Qp+UECzA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 2 Mar 2015, Daniel Baluta wrote:

> On Mon, Mar 2, 2015 at 1:17 PM, Vatika Harlalka
> <vatikaharlalka@gmail.com> wrote:
> > This patch uses Coccinelle script to replace the if-else
> > block with ternary operator to make it more compact.
> >
> > Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> > ---
> >  drivers/staging/comedi/drivers.c | 9 +++------
> >  1 file changed, 3 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> > index f32e714..8fda5f3 100644
> > --- a/drivers/staging/comedi/drivers.c
> > +++ b/drivers/staging/comedi/drivers.c
> > @@ -363,8 +363,7 @@ unsigned int comedi_nscans_left(struct comedi_subdevice *s,
> >                 if (async->scans_done < cmd->stop_arg)
> >                         scans_left = cmd->stop_arg - async->scans_done;
> >
> > -               if (nscans > scans_left)
> > -                       nscans = scans_left;
> > +               nscans = (nscans <= scans_left) ? nscans : scans_left;
>
> This doesn't look as an improvement to me. It even makes code harder to read.

I don't think that kernel developers are so used to using ?.  In any case,
I don't remember seeing it much.  Perhaps it could be useful if there are
two branches and both branches assign the same variable to a constant.

julia

