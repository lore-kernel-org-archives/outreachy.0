X-GM-THRID: 6200961771427069952
X-Received: by 10.112.209.73 with SMTP id mk9mr2345744lbc.14.1443776788166;
        Fri, 02 Oct 2015 02:06:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.67 with SMTP id 64ls216260lfz.41.gmail; Fri, 02 Oct 2015
 02:06:27 -0700 (PDT)
X-Received: by 10.112.132.6 with SMTP id oq6mr2318709lbb.1.1443776787685;
        Fri, 02 Oct 2015 02:06:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si203391wib.1.2015.10.02.02.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 02:06:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,622,1437429600"; 
   d="scan'208";a="180629412"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2015 11:06:27 +0200
Date: Fri, 2 Oct 2015 11:06:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: board: Removed unnecessary
 header file
In-Reply-To: <20151002081827.GA56279@ubuntu>
Message-ID: <alpine.DEB.2.10.1510021104570.2677@hadrien>
References: <20151002081827.GA56279@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 2 Oct 2015, Shivani Bhardwaj wrote:

> Fixed the problem with previous version by removing the unnecessary
> header file that was added in previous version.

This is not the right way to make a v2.  Your v1 will not be accepted, so
your v2 work should be based on the original code, not the result of your
previous patch.  Put the changes for v2 under the ---

However, are you sure that it is the header that is not needed, and nothe
local declaration that is not needed?

julia

> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/board/board.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
> index 8d0ac82..edbc590 100644
> --- a/drivers/staging/board/board.c
> +++ b/drivers/staging/board/board.c
> @@ -19,8 +19,6 @@
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> -#include <asm/prom.h>
> -
>  #include "board.h"
>
>  static struct device_node *irqc_node __initdata;
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151002081827.GA56279%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

