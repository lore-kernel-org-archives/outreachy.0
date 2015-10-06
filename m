X-GM-THRID: 6202253257836855296
X-Received: by 10.112.144.99 with SMTP id sl3mr5953044lbb.12.1444115585616;
        Tue, 06 Oct 2015 00:13:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls574822lfs.29.gmail; Tue, 06 Oct
 2015 00:13:05 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr6016991lbb.0.1444115585048;
        Tue, 06 Oct 2015 00:13:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si488565wiz.0.2015.10.06.00.13.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 00:13:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,642,1437429600"; 
   d="scan'208";a="181264683"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Oct 2015 09:13:04 +0200
Date: Tue, 6 Oct 2015 08:12:58 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
In-Reply-To: <CA+5yK5Hh=0vgxfVb1WzXiy4w6z9GG9mJEHC21Bsvd9zdGzCJMw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510060812440.2553@hadrien>
References: <20151005195012.GA21881@amitoj-Inspiron-3542> <alpine.DEB.2.10.1510052131070.2608@hadrien> <CA+5yK5Hh=0vgxfVb1WzXiy4w6z9GG9mJEHC21Bsvd9zdGzCJMw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-436580856-1444115584=:2553"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-436580856-1444115584=:2553
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

> >> Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over udelay;
> >> see Documentation/timers/timers-howto.txt".
> >> Replace `udelay()` with a call to `usleep_range()` with a reasonable
> upper limit.
> >
> > What is the definition of reasonable?  Do maybe other similar drivers use
> > these values?
> >
>
> I checked over here and here. They both used 1000. However, this uses 20.
> But, the first two drivers seemed more similar to me. I couldn't find
> anything in the documentation specifying the selection of range.

OK.

julia

> > julia
> >
> >>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5Hh%3D0vgxfVb1Wz
> Xiy4w6z9GG9mJEHC21Bsvd9zdGzCJMw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-436580856-1444115584=:2553--

