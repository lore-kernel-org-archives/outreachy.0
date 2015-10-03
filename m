X-GM-THRID: 6201124442892926976
X-Received: by 10.180.160.146 with SMTP id xk18mr520163wib.3.1443879331384;
        Sat, 03 Oct 2015 06:35:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.85.81 with SMTP id j78ls318003lfb.81.gmail; Sat, 03 Oct
 2015 06:35:30 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr3678482lbb.22.1443879330610;
        Sat, 03 Oct 2015 06:35:30 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si110269wib.2.2015.10.03.06.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 06:35:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,628,1437429600"; 
   d="scan'208";a="180856764"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 15:35:30 +0200
Date: Sat, 3 Oct 2015 15:35:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Switch unnecessary
 /** to /*
In-Reply-To: <CAGZ2q2x2isxseeCSJwrmaPsLCRF=07p+TU6ZbHoRZUGSYHRuPg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510031533040.2586@hadrien>
References: <1443811785-50375-1-git-send-email-cristina.moraru09@gmail.com> <alpine.DEB.2.02.1510022225350.2163@localhost6.localdomain6> <CAGZ2q2x2isxseeCSJwrmaPsLCRF=07p+TU6ZbHoRZUGSYHRuPg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1772183141-1443879329=:2586"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1772183141-1443879329=:2586
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 3 Oct 2015, Cristina-Gabriela Moraru wrote:

> Yes, I changed "/**" to "/*" where "/**" was used in regular comments and
> not kernel-doc comments.
>
> For example, the code:
> > /**
> > * cvm_oct_poll_queue - Workqueue for polling operations.
> > */
> > struct workqueue_struct *cvm_oct_poll_queue;
>
>
> caused the following warning when I run the script kernel-doc:
> > ethernet.c:92: warning: cannot understand function prototype: 'struct
> workqueue_struct *cvm_oct_poll_queue;'

OK, it's not so clear, because your commit message doesn't say what tool
generated the warning.  One would normally think that a warning about the
function prototype would relate to the function code in some way.

But overall, there seems to be only one kind of fix, not two, so it would
be better to put only the message that best corresponds to what the fix
does.

Remember not to top post.

julia

> As far as I understood it, kernel-doc script failed to parse the comment
> because it did not have the correct formatting for a kernel-doc comment for
> a function or structure. But the comment was a regular comment describing
> the use of one variable although it was using the reserved "/**".
>
>
> 2015-10-02 23:26 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:
>       On Fri, 2 Oct 2015, Cristina Moraru wrote:
>
>       > Fix kernel-doc comment used as regular comment.
>       > Fix 'cannot understand function prototype' Warning
>
>       Not sure to understand this one.  There seem to be only the
>       changes on the
>       comment starting characters, as described in the subject line.
>
>       julia
>
>       >
>       > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
>       > ---
>       >  drivers/staging/octeon/ethernet.c | 6 +++---
>       >  1 file changed, 3 insertions(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/octeon/ethernet.c
>       b/drivers/staging/octeon/ethernet.c
>       > index 87ab6c6..14eb4af 100644
>       > --- a/drivers/staging/octeon/ethernet.c
>       > +++ b/drivers/staging/octeon/ethernet.c
>       > @@ -86,19 +86,19 @@ int rx_napi_weight = 32;
>       >  module_param(rx_napi_weight, int, 0444);
>       >  MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT
>       parameter.");
>       >
>       > -/**
>       > +/*
>       >   * cvm_oct_poll_queue - Workqueue for polling operations.
>       >   */
>       >  struct workqueue_struct *cvm_oct_poll_queue;
>       >
>       > -/**
>       > +/*
>       >   * cvm_oct_poll_queue_stopping - flag to indicate polling
>       should stop.
>       >   *
>       >   * Set to one right before cvm_oct_poll_queue is destroyed.
>       >   */
>       >  atomic_t cvm_oct_poll_queue_stopping = ATOMIC_INIT(0);
>       >
>       > -/**
>       > +/*
>       >   * Array of every ethernet device owned by this driver
>       indexed by
>       >   * the ipd input port number.
>       >   */
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1443811785-50375-1-git-s
> end-email-cristina.moraru09%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-1772183141-1443879329=:2586--

