X-GM-THRID: 6331367945282781184
X-Received: by 10.28.168.74 with SMTP id r71mr79543wme.1.1474277025187;
        Mon, 19 Sep 2016 02:23:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.41.135 with SMTP id p129ls1744745wmp.9.canary; Mon, 19 Sep
 2016 02:23:44 -0700 (PDT)
X-Received: by 10.194.178.166 with SMTP id cz6mr3000799wjc.0.1474277024729;
        Mon, 19 Sep 2016 02:23:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si524143wmb.1.2016.09.19.02.23.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:23:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="237344156"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 11:23:44 +0200
Date: Mon, 19 Sep 2016 11:23:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Using Coccinelle to detect bugs
In-Reply-To: <CAOCi2DEHiLTBC8Rgs3wQHO=7RVbznTVZjtvKbdoPXUbn4w083w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609191122230.3203@hadrien>
References: <CAOCi2DFRtAPuzNce3oEQGcu6yO388OE=fC3SBOS7ywVuebUV5w@mail.gmail.com> <alpine.DEB.2.10.1609172041250.3124@hadrien> <CAOCi2DEHiLTBC8Rgs3wQHO=7RVbznTVZjtvKbdoPXUbn4w083w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1527303954-1474277022=:3203"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1527303954-1474277022=:3203
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 19 Sep 2016, Gargi Sharma wrote:

> On Sun, Sep 18, 2016 at 12:20 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Sat, 17 Sep 2016, Gargi Sharma wrote:
> >
> > > Hi all!
> > > I have been trying to use Coccinelle scripts but I am getting the error
> :
> > > Fatal error: exception Failure("False should not be in the final result.
> > > Perhaps your rule doesn't contain any +/-/* code, or you have a failed
> > > dependency.  If the problem is not clear, try the option
> > > --debug-parse-cocci.").
> > >
> > > Steps I followed:
> > > 1. sudo apt-get install coccinelle
> > > 2.  make coccicheck MODE=report
> > > 3. run  spatch --sp-file scripts/coccinelle/misc/array_siz.cocci --dir
> > > drivers/staging/*
> >
> > Either you run make coccicheck or you run spatch with some arguments.
> > There is no file with the name scripts/coccinelle/misc/array_siz.cocci.
> > It would be scripts/coccinelle/misc/array_size.cocci.  I don't know if the
> > typo is in your command line, or if it just came when you sent the email.
> Yes, that was a typo. I meant to write array_size.cocci. 
>
> >
> > The short answer for the error message you got it that you need to run
> > that semantic patch using make coccicheck.  You can read about how to use
> > make coccicheck in the Linux kernel documentation, in
> > dev-tools/coccinelle.rst.
>
> make coccicheck MODE=patch returns a coccicheck failed after listing a
> few semantic patches. Is something wrong with my kernel build? 

Failed in what way?

In general, it is not helpful to say that something failed.  You should
for example give some output that shows what went wrong.

It may indeed help to pick up the coccinelle from github.

> Should I purge coccinelle installation and reinstall it?
> Also, the documentation folder in my staging-testing tree does not contain
> a dev-tools folder. It does have a coccinelle.txt though. Is that the same
> as dev-tools/coccinelle.rst?

Yes, that would be fine.  I was probably looking in linux-next.

julia

> Thanks for the detailed explanation. It helped clear a lot of things.
>
> gargi
>
> >
> > The long answer is that if you look at array_size.cocci, you will see at
> > the top:
> >
> > virtual patch
> > virtual context
> > virtual org
> > virtual report
> >
> > These are virtual rules, that are sort of like #ifdefs.  Basically, they
> > give you some choices about what kind of behavior you want.  If you want a
> > patch, ie the issue to be fixed, then when you run spatch, you can give
> > the command line argument -D patch.  Or if you just want a report, ie some
> > lines printing the file name and line number where the issue occurs, you
> > can give the command line -D report.  The various rules in the semantic
> > patch then depend on these virtual rules.  All of the rules in the
> > semantic patch that actually do something (make a change or print some
> > output) depend on these virtual rules in one way or the other.  So if you
> > don't give one of -D patch, etc, then it will have nothing to do, and you
> > will get the eror message you saw.
> >
> > >
> > > After which I get the error:
> > > Fatal error: exception Failure("False should not be in the final result.
> > > Perhaps your rule doesn't contain any +/-/* code, or you have a failed
> > > dependency.  If the problem is not clear, try the option
> > > --debug-parse-cocci.").
> > >
> > > I would also like to ask that a lot of script mentioned in coccinellery
> are
> > > not present in scripts/coccinelle. So if I want to run a scipt from
> > > coccinellery, do I clone the coccinellery repo as well?
> >
> > Yes.  The scripts in the kernel are things that are considered to be
> > useful, and to behave well.  The scripts in coccinellery are just random
> > things that have been collected over time.  You are most welcome to try
> > them, though.  For those, you run spatch directly, not make coccicheck,
> > since they don't normally provide any of the virtual rules.
> >
> > julia
> >
> > >
> > > Thanks!
> > > Gargi
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFRtAPuzNce3o
> EQGcu
> > > 6yO388OE%3DfC3SBOS7ywVuebUV5w%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
>
>
--8323329-1527303954-1474277022=:3203--

