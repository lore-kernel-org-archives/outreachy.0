X-GM-THRID: 6200896862154653696
X-Received: by 10.112.151.9 with SMTP id um9mr2343068lbb.19.1443776954229;
        Fri, 02 Oct 2015 02:09:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.198 with SMTP id p189ls206920lfd.79.gmail; Fri, 02 Oct
 2015 02:09:13 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr1673675lbb.7.1443776953642;
        Fri, 02 Oct 2015 02:09:13 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c1si201332wiv.3.2015.10.02.02.09.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 02:09:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,622,1437429600"; 
   d="scan'208";a="180630368"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2015 11:09:13 +0200
Date: Fri, 2 Oct 2015 11:09:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
In-Reply-To: <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1510021108450.2677@hadrien>
References: <20151002040637.GA41415@ubuntu> <alpine.DEB.2.10.1510020959500.2633@hadrien> <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-471188553-1443776953=:2677"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-471188553-1443776953=:2677
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 2 Oct 2015, Shivani Bhardwaj wrote:

> I tried declaring it first, it didn't work. I added the header, it worked.
> Now, when I tried again, it works without header too. I'll update the patch,
> I must have done something wrong while declaring for the first time. Thanks,
> Julia. I'm sorry I'm making such petty errors, I'm noting everything, I'll
> make sure to send a good patch soon.

If the header declares the function, then it doesn't seem like a good idea
to declare the function locally as well.

julia

>
> On Friday, October 2, 2015 at 1:30:40 PM UTC+5:30, Julia Lawall wrote:
>       On Fri, 2 Oct 2015, Shivani Bhardwaj wrote:
>
>       > Fixed the error for implicit declaration of the function
>       > 'of_find_all_nodes' by adding the appropriate header file and
>       declaring
>       > the function before it has been called.
>
>       I haven't looked at the code, but I wonder why you need both the
>       header
>       file and the local declaration?
>
>       julia
>
>       > Signed-off-by: Shivani Bhardwaj: <shiva...@gmail.com>
>       > ---
>       >  drivers/staging/board/board.c | 2 ++
>       >  1 file changed, 2 insertions(+)
>       >
>       > diff --git a/drivers/staging/board/board.c
>       b/drivers/staging/board/board.c
>       > index 29d456e..8d0ac82 100644
>       > --- a/drivers/staging/board/board.c
>       > +++ b/drivers/staging/board/board.c
>       > @@ -19,11 +19,13 @@
>       >  #include <linux/of_irq.h>
>       >  #include <linux/platform_device.h>
>       >  #include <linux/pm_domain.h>
>       > +#include <asm/prom.h>
>       >
>       >  #include "board.h"
>       >
>       >  static struct device_node *irqc_node __initdata;
>       >  static unsigned int irqc_base __initdata;
>       > +struct device_node *of_find_all_nodes(struct device_node
>       *prev);
>       >
>       >  static bool find_by_address(u64 base_address)
>       >  {
>       > --
>       > 2.1.0
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20151002040637.GA41415%4
>       0ubuntu.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/83a1df2c-03c5-456a-9131-
> 3dca7182d7ef%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-471188553-1443776953=:2677--

