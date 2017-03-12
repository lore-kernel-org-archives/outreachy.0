X-GM-THRID: 6395863057719885824
X-Received: by 10.25.202.67 with SMTP id h3mr4082337lfj.30.1489333636698;
        Sun, 12 Mar 2017 08:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.17 with SMTP id z17ls1349469lja.50.gmail; Sun, 12 Mar
 2017 08:47:16 -0700 (PDT)
X-Received: by 10.46.83.7 with SMTP id h7mr5077925ljb.24.1489333636102;
        Sun, 12 Mar 2017 08:47:16 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si564515wmd.0.2017.03.12.08.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:47:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="216450255"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 16:47:14 +0100
Date: Sun, 12 Mar 2017 16:47:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, mchehab@kernel.org, 
    linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v1] staging: media: Remove unused
 function atomisp_set_stop_timeout()
In-Reply-To: <CALrZqyOdKmSF10Ba60_00OzzRMnKAt7XwjksmuQfGEKvBY-avg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703121645390.2174@hadrien>
References: <20170310133504.GA18916@singhal-Inspiron-5558> <20170312135423.GA911@kroah.com> <CALrZqyOdKmSF10Ba60_00OzzRMnKAt7XwjksmuQfGEKvBY-avg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, SIMRAN SINGHAL wrote:

> On Sun, Mar 12, 2017 at 7:24 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Fri, Mar 10, 2017 at 07:05:05PM +0530, simran singhal wrote:
> >> The function atomisp_set_stop_timeout on being called, simply returns
> >> back. The function hasn't been mentioned in the TODO and doesn't have
> >> FIXME code around. Hence, atomisp_set_stop_timeout and its calls have been
> >> removed.
> >>
> >> This was done using Coccinelle.
> >>
> >> @@
> >> identifier f;
> >> @@
> >>
> >> void f(...) {
> >>
> >> -return;
> >>
> >> }
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>  v1:
> >>    -Change Subject to include name of function
> >>    -change commit message to include the coccinelle script
> >
> > You should also cc: the developers doing all of the current work on this
> > driver, Alan Cox, to get their comment if this really is something that
> > can be removed or not.
> >
> > thanks,
> >
> Greg I have cc'd all the developers which script get_maintainer.pl showed:
>
> $ git show HEAD | perl scripts/get_maintainer.pl --separator ,
> --nokeywords --nogit --nogit-fallback --norolestats

Sometimes people do a lot of work on something without being the
maintainer.  You can see who has done this using git log.  Dropping some
of the "no" arguments might give you the same information, but in practice
the results tend to be an overapproximation...

julia

>
> Mauro Carvalho Chehab <mchehab@kernel.org>,Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>,
> linux-media@vger.kernel.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org
>
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyOdKmSF10Ba60_00OzzRMnKAt7XwjksmuQfGEKvBY-avg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

