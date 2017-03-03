X-GM-THRID: 6393234614676094976
X-Received: by 10.46.5.136 with SMTP id 130mr598192ljf.6.1488557771973;
        Fri, 03 Mar 2017 08:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls1001384ljv.49.gmail; Fri, 03 Mar
 2017 08:16:11 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr601016ljb.2.1488557771632;
        Fri, 03 Mar 2017 08:16:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si272997wmf.0.2017.03.03.08.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 08:16:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,237,1484002800"; 
   d="scan'208";a="215487659"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 17:16:10 +0100
Date: Fri, 3 Mar 2017 17:15:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, marvin24@gmx.de, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 0/5] Fixed compilation error
In-Reply-To: <CALrZqyMKJvhQMAdjtLWWKTtxOP+icRZ6bctB0bTtzA8gJi+wNA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703031714430.3490@hadrien>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com> <1488556204.2179.32.camel@perches.com> <CALrZqyMKJvhQMAdjtLWWKTtxOP+icRZ6bctB0bTtzA8gJi+wNA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1154766461-1488557760=:3490"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1154766461-1488557760=:3490
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 3 Mar 2017, SIMRAN SINGHAL wrote:

> On Fri, Mar 3, 2017 at 9:20 PM, Joe Perches <joe@perches.com> wrote:
> > On Fri, 2017-03-03 at 17:05 +0530, simran singhal wrote:
> >> Fixed compilation warning in lustre/lustre/llite/range_lock.c
> >
> > Really?  What compilation warning was removed?
>
> CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
> drivers/staging/lustre/lustre/mgc/mgc_request.c: In function
> ‘mgc_set_info_async’:
> drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning:
> format ‘%s’ expects argument of type ‘char *’, but argument 3 has type
> ‘void *’ [-Wformat=]
>
> I was getting this warning because of changing (char *)val to val
> where val is a pointer to void.
> So I fixed this by reverting this change.

Someone pointed out recently that when you make the cover letter for vn+1,
the subject should not change.  It doesn't describe what is new in the
version.  You put that in the message.

julia

>
> Simran
>
> >
> >> simran singhal (5):
> >>   staging: nvec: Remove unnecessary cast on void pointer
> >>   staging: lustre: Remove unnecessary cast on void pointer
> >>   staging: lustre: lustre: Remove unnecessary cast on void pointer
> >>   staging: rts5208: Remove unnecessary cast on void pointer
> >>   staging: rtl8712: Remove unnecessary cast on void pointer
> >
> > What compiler warns about unnecessary casts?
> >
> >>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
> >>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
> >>  drivers/staging/lustre/lustre/mgc/mgc_request.c  |  2 +-
> >>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
> >>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
> >>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
> >>  6 files changed, 11 insertions(+), 13 deletions(-)
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyMKJvhQMAdjtLWWKTtxOP%2BicRZ6bctB0bTtzA8gJi%2BwNA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1154766461-1488557760=:3490--

