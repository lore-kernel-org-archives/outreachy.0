X-GM-THRID: 6329492802868609024
X-Received: by 10.46.9.5 with SMTP id 5mr623145ljj.0.1473700014189;
        Mon, 12 Sep 2016 10:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.32.69 with SMTP id g66ls422247lfg.8.gmail; Mon, 12 Sep 2016
 10:06:53 -0700 (PDT)
X-Received: by 10.25.152.10 with SMTP id a10mr2875930lfe.4.1473700013684;
        Mon, 12 Sep 2016 10:06:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b1si89352wmg.0.2016.09.12.10.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:06:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="192888174"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 19:06:53 +0200
Date: Mon, 12 Sep 2016 19:06:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: comedi_pcmcia: Fixes
 multiple blank lines issue
In-Reply-To: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609121906281.29099@hadrien>
References: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-750045508-1473700012=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-750045508-1473700012=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 12 Sep 2016, Namrata A Shettar wrote:

> This patch fixes the checkpatch.pl issue:
> -Please don't use multiple blank lines

This is fine, but I guess there is a maintainer for this file?

julia

>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/comedi/comedi_pcmcia.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/comedi_pcmcia.c
> b/drivers/staging/comedi/comedi_pcmcia.c
> index d7072a5..ec8a0ad 100644
> --- a/drivers/staging/comedi/comedi_pcmcia.c
> +++ b/drivers/staging/comedi/comedi_pcmcia.c
> @@ -18,7 +18,6 @@
>
>  #include <linux/module.h>
>  #include <linux/kernel.h>
> -
>  #include "comedi_pcmcia.h"
>
>  /**
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDEjFOCD2WZmVWedeRc
> asU_48CmaTpOCKT3QJWbRB5zFgQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-750045508-1473700012=:29099--

