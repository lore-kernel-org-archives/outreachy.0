X-GM-THRID: 6335813974195437568
X-Received: by 10.194.93.167 with SMTP id cv7mr222162wjb.18.1475175578777;
        Thu, 29 Sep 2016 11:59:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.203 with SMTP id 194ls37084wmj.27.gmail; Thu, 29 Sep 2016
 11:59:38 -0700 (PDT)
X-Received: by 10.28.26.202 with SMTP id a193mr17147wma.9.1475175578282;
        Thu, 29 Sep 2016 11:59:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u190si16949wmf.0.2016.09.29.11.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 11:59:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,268,1473112800"; 
   d="scan'208";a="238804279"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Sep 2016 20:59:37 +0200
Date: Thu, 29 Sep 2016 20:59:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] mail delivery subsystem failure
In-Reply-To: <20160929183847.GD3294@localhost>
Message-ID: <alpine.DEB.2.10.1609292058190.3160@hadrien>
References: <20160929175401.GB3294@localhost> <alpine.DEB.2.10.1609292023060.3160@hadrien> <20160929183847.GD3294@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 29 Sep 2016, Elizabeth Ferdman wrote:

> On Thu, Sep 29, 2016 at 08:25:12PM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 29 Sep 2016, Elizabeth Ferdman wrote:
> >
> > > I'm trying to group-reply to a message Julia sent about my patch. It
> > > fails to send and I get this error for each recipient from Mail Delivery
> > > Subsystem: "Delivery to the following recipient failed permanently:"
> > >
> > > It's making it impossible to group-reply from mutt because google thinks
> > > it's spam... I tried doing it a second time but the same thing happened.
> > > I believe I've group replied before and it worked fine.
> > >
> > > Technical details of permanent failure:
> > > Message rejected. See https://support.google.com/mail/answer/69585 for
> > > more information.
> >
> > I'm the moderator of the group, so normally I should get informed about
> > any messages that are considered to be spam.  I haven't gotten anything
> > recently, and I didn't see anything in the web interface.
> >
> > On the other hand, I see that you did spell my name incorrectly:
> >
> > juia.lawall@lip6.fr,
> >
> The ellipsis is how google groups abbreviates all email addresses in the
> mailing list; I wrote out your full email address when I sent it.
> > Maybe lip6.fr is reacting in some way that google groups doesn't like?
> >
> Possibly: here's what i'm getting:
> Delivery to the following recipient failed permanently:
>
>      juia.lawall@lip6.fr

This is the problem.  The first name in my email address is julia, not
juia.  You left out the l.  I'm surprised that it would cause no one else
to receive the mail, though.

julia

>
>      Technical details of permanent failure:
>      Google tried to deliver your message, but it was rejected by the
>      server for the recipient domain lip6.fr by isis.lip6.fr.
>      [2001:660:3302:283c::2].
>
>      The error that the other server returned was:
>      550 5.1.1 <juia.lawall@lip6.fr>... User unknown
>
> > In any case, you can try just dropping me from the CC list.  I will get
> > the message via the group anyway.
> >
> Good idea i will try that.
> Liz
> > julia
> >
> >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160929175401.GB3294%40localhost.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160929183847.GD3294%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

