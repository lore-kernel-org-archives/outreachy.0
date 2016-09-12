X-GM-THRID: 6329385396003143680
X-Received: by 10.28.206.138 with SMTP id e132mr1540941wmg.5.1473675441608;
        Mon, 12 Sep 2016 03:17:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.198.79 with SMTP id w76ls448439wmf.1.canary; Mon, 12 Sep
 2016 03:17:20 -0700 (PDT)
X-Received: by 10.28.193.198 with SMTP id r189mr1550470wmf.7.1473675440987;
        Mon, 12 Sep 2016 03:17:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b1si248844wmg.0.2016.09.12.03.17.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 03:17:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,322,1470693600"; 
   d="scan'208";a="236093866"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 12:17:20 +0200
Date: Mon, 12 Sep 2016 12:17:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unnecessary
 blank line
In-Reply-To: <20160912100728.GA4810@toblerone>
Message-ID: <alpine.DEB.2.10.1609121216100.3049@hadrien>
References: <20160912100728.GA4810@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Sep 2016, Rehas Sachdeva wrote:

> This patch fixes the checkpatch.pl warning:
> Blank lines aren't necessary before a close brace '}'
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index f4d9000..f6233ec 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -131,7 +131,6 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
>  		reg_data =  _nbu2ss_readl(
>  			(u32 *)IO_ADDRESS(USB_BASE_ADDRESS + i + 12));
>  		dev_dbg(&udc->dev, " %08x\n", (int)reg_data);
> -
>  	}
>
>  	spin_lock(&udc->lock);

This looks like a good start :)

For this round, however, you should also submit the patch to the
maintainers of the file, as described here:

https://kernelnewbies.org/FirstKernelPatch#submit_a_patch

The tutorial was just updated with this information yesterday, so you may
have missed it, if you got started before.

julia

