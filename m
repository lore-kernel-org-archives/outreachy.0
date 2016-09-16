X-GM-THRID: 6330756111319171072
X-Received: by 10.194.126.165 with SMTP id mz5mr2289501wjb.5.1474020469486;
        Fri, 16 Sep 2016 03:07:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.203 with SMTP id s194ls117932lfs.32.gmail; Fri, 16 Sep
 2016 03:07:48 -0700 (PDT)
X-Received: by 10.46.71.207 with SMTP id u198mr2278110lja.2.1474020468756;
        Fri, 16 Sep 2016 03:07:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si716920wmd.1.2016.09.16.03.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 03:07:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,344,1470693600"; 
   d="scan'208";a="193651553"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 12:07:48 +0200
Date: Fri, 16 Sep 2016 12:07:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 5/8] staging: wlan-ng: add spaces
 around <<
In-Reply-To: <CAOCi2DFFBUX825dA0oKCysyaKRaVDegwLBc3d2UDEpgkKc=mOg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609161206540.3049@hadrien>
References: <cover.1473993585.git.gs051095@gmail.com> <73a02d3096f26d75f39cc09779e7d9f74eda9828.1473993585.git.gs051095@gmail.com> <alpine.DEB.2.10.1609160738320.3122@hadrien> <CAOCi2DFFBUX825dA0oKCysyaKRaVDegwLBc3d2UDEpgkKc=mOg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-670017855-1474020467=:3049"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-670017855-1474020467=:3049
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 16 Sep 2016, Gargi Sharma wrote:

> On Fri, Sep 16, 2016 at 11:09 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Fri, 16 Sep 2016, Gargi Sharma wrote:
> >
> > > add spaces around << to fix the checkpatch issue, spaces preferred
> > > around that '<<'.
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > >  drivers/staging/wlan-ng/hfa384x.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/wlan-ng/hfa384x.h
> b/drivers/staging/wlan-ng/hfa384x.h
> > > index 4bbbce5..616da07 100644
> > > --- a/drivers/staging/wlan-ng/hfa384x.h
> > > +++ b/drivers/staging/wlan-ng/hfa384x.h
> > > @@ -508,7 +508,7 @@ Communication Frames: Test/Get/Set Field Values for
> Transmit Frames
> > >       HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
> > >       HFA384x_TXSTATUS_RETRYERR))
> > >
> > > -#define      HFA384x_TX_SET(v, m, s)         ((((u16)(v))<<((u16)(s)))
> & ((u16)(m)))
> > > +#define      HFA384x_TX_SET(v, m, s)         ((((u16)(v)) <<
> ((u16)(s))) & ((u16)(m)))
> > >
> > >  #define      HFA384x_TX_MACPORT_SET(v)       HFA384x_TX_SET(v,
> HFA384x_TX_MACPORT, 8)
> > >  #define      HFA384x_TX_STRUCTYPE_SET(v)     HFA384x_TX_SET(v, \
> >
> > This code quite unnecessarily exceeds 80 characters.  Add another patch to
> > the series that moves the macro names to their normal position, one space
> > after the #define.
> I will add another patch to the series. :) A few of the patches from this
> series have been accepted by Greg, should I drop them from the next series? 

Greg said that he is caught up.  So you can just start over in terms of
the version numbers.  You should be sure to first pull his most recent
code.

julia

>
> Thanks,
> gargi
>
> >
> > julia
> >
> > > --
> > > 2.9.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/73a02d3096f26d75f39cc097
> 79e7d9f74eda9828.1473993585.git.gs051095%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFFBUX825dA0oKCysy
> aKRaVDegwLBc3d2UDEpgkKc%3DmOg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-670017855-1474020467=:3049--

