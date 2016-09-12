X-GM-THRID: 6329492802868609024
X-Received: by 10.31.168.213 with SMTP id r204mr813187vke.5.1473776509522;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.197 with SMTP id q63ls1400021ota.13.gmail; Tue, 13 Sep
 2016 07:21:49 -0700 (PDT)
X-Received: by 10.157.47.73 with SMTP id h67mr12957436otb.5.1473776509115;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
Received: by 10.55.97.208 with SMTP id v199msqkb;
        Mon, 12 Sep 2016 10:37:09 -0700 (PDT)
X-Received: by 10.46.32.154 with SMTP id g26mr1899894lji.3.1473701829156;
        Mon, 12 Sep 2016 10:37:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si849364wmd.1.2016.09.12.10.37.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:37:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="192890248"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 19:37:08 +0200
Date: Mon, 12 Sep 2016 19:37:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: comedi_pcmcia:
 Fixes multiple blank lines issue
In-Reply-To: <a1d35405-1ff2-4642-a8da-533adbc6da70@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609121935010.29099@hadrien>
References: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com> <a1d35405-1ff2-4642-a8da-533adbc6da70@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1453012856-1473701827=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1453012856-1473701827=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Sep 2016, Namrata A Shettar wrote:

> There was an issue in getting the maintainer's list.Sorted now and sent it
> to the maintainers.

Actually, when you adjust a patch in any way, you should send the patch to
all of the original recipients.  Put [PATCH v2] in the subject line and an
explanation under the ---, eg

---

v2: added maintainers

See the Revising your patches section of the tutorial.

julia

>
> Thanks,
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
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a1d35405-1ff2-4642-a8da-
> 533adbc6da70%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1453012856-1473701827=:29099--

