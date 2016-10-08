X-GM-THRID: 6338470134532800512
X-Received: by 10.195.11.68 with SMTP id eg4mr1492027wjd.17.1475906552827;
        Fri, 07 Oct 2016 23:02:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.88 with SMTP id d85ls576646wmd.20.gmail; Fri, 07 Oct
 2016 23:02:32 -0700 (PDT)
X-Received: by 10.28.61.214 with SMTP id k205mr92077wma.15.1475906552297;
        Fri, 07 Oct 2016 23:02:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si273601wmw.0.2016.10.07.23.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:02:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,311,1473112800"; 
   d="scan'208";a="239913400"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2016 08:02:31 +0200
Date: Sat, 8 Oct 2016 08:02:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: i4l: move open brace to
 previous line
In-Reply-To: <20161007231321.GA3256@localhost>
Message-ID: <alpine.DEB.2.10.1610080800410.7750@hadrien>
References: <20161006214116.GA10879@localhost> <alpine.DEB.2.10.1610070722510.3074@hadrien> <20161007231321.GA3256@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 7 Oct 2016, Elizabeth Ferdman wrote:

> On Fri, Oct 07, 2016 at 07:23:12AM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 6 Oct 2016, Elizabeth Ferdman wrote:
> >
> > > Fix checkpatch error "open brace should be on previous line" since only
> > > functions should have their opening brace on a new line.
> > >
> > > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > > ---
> > >  drivers/staging/i4l/act2000/module.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> > > index 0573f51..4746a62 100644
> > > --- a/drivers/staging/i4l/act2000/module.c
> > > +++ b/drivers/staging/i4l/act2000/module.c
> > > @@ -19,8 +19,7 @@
> > >  #include <linux/slab.h>
> > >  #include <linux/init.h>
> > >
> > > -static unsigned short act2000_isa_ports[] =
> > > -{
> > > +static unsigned short act2000_isa_ports[] = {
> > >  	0x0200, 0x0240, 0x0280, 0x02c0, 0x0300, 0x0340, 0x0380,
> > >  	0xcfe0, 0xcfa0, 0xcf60, 0xcf20, 0xcee0, 0xcea0, 0xce60,
> > >  };
> >
> > Not related to this patch, but could this array be const?
> >
> hey julia,
> i'm looking into that but I don't know how to definitively answer that
> question... what's a good way to go about that?
>
> So far I've looked at the file, searched for occurrences of that array
> in the file, and I don't see the array being altered. However it is
> passed to some functions as in if(somefunction(act2000_isa_ports))...
> And then those functions pass it to other functions. The functions
> aren't saying const to show that they won't be altering the array.
>
> So it's kind of hard to know if it ever gets changed. Do you think that
> just adding the word "const" after static, and then successfully
> compiling would mean that it does work?

No, you need const declarations all the way down the line.  gcc doesn't
infer them.  If they are only local functions, then you should be able to
work it out.  If the array gets paseed to functions that are not in the
staging driver, then perhaps it is better to let it go at this point.

julia

