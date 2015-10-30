X-GM-THRID: 6211434117440995328
X-Received: by 10.112.130.41 with SMTP id ob9mr1721083lbb.17.1446212637583;
        Fri, 30 Oct 2015 06:43:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.17 with SMTP id 17ls134478wmj.12.gmail; Fri, 30 Oct 2015
 06:43:57 -0700 (PDT)
X-Received: by 10.28.55.135 with SMTP id e129mr705740wma.7.1446212637141;
        Fri, 30 Oct 2015 06:43:57 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m135si101804wmb.0.2015.10.30.06.43.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 06:43:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,218,1444687200"; 
   d="scan'208";a="185211587"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 14:43:56 +0100
Date: Fri, 30 Oct 2015 14:43:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: dgnc: Remove unused
 #include header file
In-Reply-To: <1446212156-28978-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510301443380.2364@hadrien>
References: <1446212156-28978-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 30 Oct 2015, Shraddha Barke wrote:

> Remove digi.h header since it is not needed.

Here too, it would be nicer to say "since nothing it defines is used in
this file".

julia

>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_utils.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_utils.c b/drivers/staging/dgnc/dgnc_utils.c
> index f76de82..95272f4 100644
> --- a/drivers/staging/dgnc/dgnc_utils.c
> +++ b/drivers/staging/dgnc/dgnc_utils.c
> @@ -1,7 +1,6 @@
>  #include <linux/tty.h>
>  #include <linux/sched.h>
>  #include "dgnc_utils.h"
> -#include "digi.h"
>
>  /*
>   * dgnc_ms_sleep()
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446212156-28978-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

