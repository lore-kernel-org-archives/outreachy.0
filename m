X-GM-THRID: 6332957936966434816
X-Received: by 10.25.203.81 with SMTP id b78mr235956lfg.8.1474608603729;
        Thu, 22 Sep 2016 22:30:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.79 with SMTP id j76ls123481wmg.25.gmail; Thu, 22 Sep
 2016 22:30:03 -0700 (PDT)
X-Received: by 10.28.67.132 with SMTP id q126mr46272wma.21.1474608603050;
        Thu, 22 Sep 2016 22:30:03 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si119369wmb.1.2016.09.22.22.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 22:30:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,380,1470693600"; 
   d="scan'208";a="237949900"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Sep 2016 07:29:56 +0200
Date: Fri, 23 Sep 2016 07:29:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Break up long
 comment
In-Reply-To: <20160922224339.GC3579@localhost>
Message-ID: <alpine.DEB.2.10.1609230728530.3341@hadrien>
References: <20160922011045.GA3636@localhost> <alpine.DEB.2.10.1609220804360.3472@hadrien> <20160922224339.GC3579@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 22 Sep 2016, Elizabeth Ferdman wrote:

> On Thu, Sep 22, 2016 at 08:08:20AM +0200, Julia Lawall wrote:
> >
> >
> > On Wed, 21 Sep 2016, Elizabeth Ferdman wrote:
> >
> > > This patch splits a long comment up into two lines; error found by checkpatch
> > >
> > > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > > ---
> > >  drivers/staging/dgnc/dgnc_neo.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> > > index e794056..cb63351 100644
> > > --- a/drivers/staging/dgnc/dgnc_neo.c
> > > +++ b/drivers/staging/dgnc/dgnc_neo.c
> > > @@ -996,7 +996,8 @@ static irqreturn_t neo_intr(int irq, void *voidbrd)
> > >
> > >   case UART_17158_TXRDY:
> > >   /*
> > > - * TXRDY interrupt clears after reading ISR register for the UART channel.
> > > + * TXRDY interrupt clears after reading
> > > + * ISR register for the UART channel.
> >
> > The form of the patch is OK, but I don't think that he change is an
> > improvement.  I guess it was one character over before, or something like
> > that, because even with the added character at the front for the change,
> > the line looks fine.  But the main problem with the change is that the
> > lines now look visually similar in a way that doesn't correspond to the
> > semantics of the comment.  One has the impression that there are two
> > independent points, one about TXRDY and one about ISR, and that a period
> > was incorrectly omitted at the end of the first line.  But this is not the
> > case.  TXRDY is the subject and ISR is the object.
> >
> > julia
> >
> > >   */
> > >
> > >   /*
> > > --
> > > 2.1.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922011045.GA3636%40localhost.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> Julia, thanks for the feedback. It was caught by checkpatch, but it
> wasn't even over 80 chars. I must have been looking at the bigger
> number in vim. Since this shouldn't have been patched in the first
> place, I'm not going to do any revising here. I'll just move on to
> another one.

Good job for not top posting, but it is better to put your reply right
under the text you are replying to.  I had to scan through your message
several times before finding your comment...

julia

>
> Elizabeth
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922224339.GC3579%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

