X-GM-THRID: 6329492802868609024
X-Received: by 10.66.226.10 with SMTP id ro10mr788829pac.29.1473776509951;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls539388itl.2.gmail; Tue, 13 Sep
 2016 07:21:49 -0700 (PDT)
X-Received: by 10.107.169.66 with SMTP id s63mr845321ioe.16.1473776509118;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
Received: by 10.55.11.136 with SMTP id 130msqkl;
        Mon, 12 Sep 2016 22:19:01 -0700 (PDT)
X-Received: by 10.25.152.10 with SMTP id a10mr3235650lfe.4.1473743941405;
        Mon, 12 Sep 2016 22:19:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si265364wmr.2.2016.09.12.22.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 22:19:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,326,1470693600"; 
   d="scan'208";a="192920259"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 07:18:35 +0200
Date: Tue, 13 Sep 2016 07:18:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: comedi_pcmcia:
 Fixes multiple blank lines issue
In-Reply-To: <617c0bbf-3f68-4fd4-b435-b73e7665b5bb@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609130718190.3330@hadrien>
References: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com> <617c0bbf-3f68-4fd4-b435-b73e7665b5bb@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1078738766-1473743915=:3330"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1078738766-1473743915=:3330
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 12 Sep 2016, Namrata A Shettar wrote:

> Yes,a mistake in naming the issue, an uneccessary blank line would have been
> apt.
> Sorry,for the inconvenience,

You should send a v2 with the correction.

julia

> Namrata
>
> On Monday, September 12, 2016 at 10:34:43 PM UTC+5:30, Namrata A Shettar
> wrote:
>       This patch fixes the checkpatch.pl issue:
>       -Please don't use multiple blank lines
>
>       Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
>       ---
>        drivers/staging/comedi/comedi_pcmcia.c | 1 -
>        1 file changed, 1 deletion(-)
>
>       diff --git a/drivers/staging/comedi/comedi_pcmcia.c
>       b/drivers/staging/comedi/comedi_pcmcia.c
>       index d7072a5..ec8a0ad 100644
>       --- a/drivers/staging/comedi/comedi_pcmcia.c
>       +++ b/drivers/staging/comedi/comedi_pcmcia.c
>       @@ -18,7 +18,6 @@
>
>        #include <linux/module.h>
>        #include <linux/kernel.h>
>       -
>        #include "comedi_pcmcia.h"
>
>        /**
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/617c0bbf-3f68-4fd4-b435-
> b73e7665b5bb%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1078738766-1473743915=:3330--

