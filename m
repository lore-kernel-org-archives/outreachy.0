X-GM-THRID: 6395175324693299200
X-Received: by 10.46.21.79 with SMTP id 15mr390458ljv.8.1489094040527;
        Thu, 09 Mar 2017 13:14:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls809643ljt.24.gmail; Thu, 09 Mar 2017
 13:14:00 -0800 (PST)
X-Received: by 10.25.156.74 with SMTP id f71mr2280331lfe.26.1489094040195;
        Thu, 09 Mar 2017 13:14:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t131si12570wmf.1.2017.03.09.13.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 13:14:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,137,1486422000"; 
   d="scan'208";a="216216388"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 22:13:59 +0100
Date: Thu, 9 Mar 2017 22:13:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: wilc_spi:
 Rearrange the code
In-Reply-To: <20170309210619.GA9289@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703092211302.2306@hadrien>
References: <20170308170620.3898-1-diaconita.tamara@gmail.com> <20170308195109.GA3284@d830.WORKGROUP> <20170308211928.GA13352@d830.WORKGROUP> <CALks+gDqojhZqvbO3-5CGNwTKdu-JtGygvnUJoXSmtkqMLTeiw@mail.gmail.com> <20170308213853.GA20175@d830.WORKGROUP>
 <CALks+gCnyeS=or_sySwK9f1DZjt6FJPn9H+gDP_P6TGQTuJVuw@mail.gmail.com> <20170309170408.GB1621@d830.WORKGROUP> <alpine.DEB.2.20.1703092124460.2306@hadrien> <20170309210619.GA9289@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Alison Schofield wrote:

> On Thu, Mar 09, 2017 at 09:27:30PM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 9 Mar 2017, Alison Schofield wrote:
> >
> > > On Thu, Mar 09, 2017 at 08:24:28AM +0000, Tamara Diaconita wrote:
> > > > Hi,
> > > > The problem with the code was when I tried to split the lines with
> > > > dev_err(...). If I split them, I get errors like "missing terminating "
> > > >  character" even though this character is on the next line.
> > > > But if I don't split the line, I get warnings from checkpatch.pl.
> > > > Is it ok if I ignore these warnings?
> > >
> > > Tamara,
> > >
> > > I looked at func wilc_spi_read_int() with the intent of changing the line
> > > over 80 warning on dev_err to see your issue, but..the function is quite
> > > messy.  There is excessive bracketing {} and indentation going on.
> > >
> > > I'm thinking we need to clean up the excessive bracketing and indentation
> > > first, and then see which lines remain over 80 and deal with them.
> > >
> > > Julia - Can you take a look at this func and tell us if you agree that the
> > > extra brackets are not a desired style?
> >
> > Definitely agree.  It's OK to declare variable at eg the top of an if
> > branch if that seems really necessary from a conceptual point of view.
> > But they shouldn't be declared at all random places, as is done in this
> > function.  It's fine to just move the variables to the top of the
> > function.
> >
> > Kernel goto labels also don't have _ around them.
> >
> > julia
> >
>
> Tamara,
>
> How about a patchset that only focuses on this function:
>
>  Subject: [PATCH 0/N] staging: wilc1000: clean up wilc_spi_int.c
>
> 	where N is yet to be defined.
>
>   Let's assume patches 1 through N will each depend on the previous.
>   I'm thinking this might be a smooth way to do it.
>   See what you think and adjust as works best for you.
>
>   patch-1: declare variables at top of function
>   patch-2: remove useless brackets
>   patch-3: use kernel preferred indentation style
>
>   *** see what you are left with, maybe you'll have:
>
>   patch-4: ...something you fit with a line
>   patch-5: ...spelling
>
>   Wow  - it get's big and we're only focused on one function ;)
>
>   Mail the patchset to yourself.  Get a clean branch and
>   apply/compile each patch in sequence.  It should compile
>   after each addition.
>
>   So, we're basically abandoning the previous patchset.
>   That's ok.  You can get back to those other pieces in the
>   file after this patchset gets ack'd.

As a general rule, I think it could be a good idea to try to make smaller
patchsets.  Focus on one thing and try to do a good job of it (proper
subject line, helpful and comprehensive commit message, correct changes)
rather than trying to do everything to clean up a file at once.  It's
always possible to do the rest later.

julia

>
> alisons
>
> >>>>>>>>>>>>>>>>>>> snipped a whole lot of stuff <<<<<<<<<<<<<<<<<
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309210619.GA9289%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

