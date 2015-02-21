X-GM-THRID: 1888775831552
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5e28edf932a9a915
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr356712lbb.13.1424533511403;
        Sat, 21 Feb 2015 07:45:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.72 with SMTP id w8ls284429wiy.4.canary; Sat, 21 Feb
 2015 07:45:11 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr307394wid.1.1424533511237;
        Sat, 21 Feb 2015 07:45:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si327449wic.1.2015.02.21.07.45.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:45:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122808005"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:45:10 +0100
Date: Sat, 21 Feb 2015 16:45:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?UTF-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: used complete
In-Reply-To: <CAPYvaxMU3Wk9BbwNOD-1zXMi_Babtkwgt5zWRd9MdAx1968vKw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502211643530.2480@hadrien>
References: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com> <alpine.DEB.2.10.1502211632380.2480@hadrien> <CAPYvaxMU3Wk9BbwNOD-1zXMi_Babtkwgt5zWRd9MdAx1968vKw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-484040169-1424533505=:2480"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-484040169-1424533505=:2480
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Ayşe Melike Yurtoğlu wrote:

> Yes, I compiled this code and I've never met an error.

Do you have a file drivers/staging/lustre/lnet/lnet/router.o?

What do you expect that the added static will do?  Normally static goes on
a variable declaration, like static int x;.  Here you have it on a
function call.

julia

> 2015-02-21 17:33 GMT+02:00 Julia Lawall <julia.lawall@lip6.fr>:
>       On Sat, 21 Feb 2015, Melike Yurtoglu wrote:
>
>       > WARNING:consider using a completion
>       > completion for the static was added.That was found by running
>       checkpatch
>       >
>       > Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
>       > ---
>       >  drivers/staging/lustre/lnet/lnet/router.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/lustre/lnet/lnet/router.c
>       b/drivers/staging/lustre/lnet/lnet/router.c
>       > index 52ec0ab..e6907b7 100644
>       > --- a/drivers/staging/lustre/lnet/lnet/router.c
>       > +++ b/drivers/staging/lustre/lnet/lnet/router.c
>       > @@ -1032,7 +1032,7 @@ lnet_router_checker_start(void)
>       >           dead_router_check_interval <= 0)
>       >               return 0;
>       >
>       > -     sema_init(&the_lnet.ln_rc_signal, 0);
>       > +     static sema_init(&the_lnet.ln_rc_signal, 0);
>
>       I don't understand this code at all.  Does it compile?
>
>       julia
>
>       >       /* EQ size doesn't matter; the callback is guaranteed to
>       get every
>       >        * event */
>       >       eqsz = 0;
>       > --
>       > 1.8.3.2
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1424531114-12823-1-git-s
> end-email-aysemelikeyurtoglu%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-484040169-1424533505=:2480--

