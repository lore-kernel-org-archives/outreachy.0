X-GM-THRID: 6340987629622788096
X-Received: by 10.31.169.22 with SMTP id s22mr1928045vke.34.1476376765126;
        Thu, 13 Oct 2016 09:39:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.15 with SMTP id p15ls2349308iod.36.gmail; Thu, 13 Oct
 2016 09:39:20 -0700 (PDT)
X-Received: by 10.36.28.82 with SMTP id c79mr2377565itc.29.1476376760963;
        Thu, 13 Oct 2016 09:39:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t8si2133752vkb.2.2016.10.13.09.39.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 09:39:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,340,1473112800"; 
   d="scan'208";a="240685712"
Received: from ppp-seco11pareq2-46-193-142-73.wb.wifirst.net (HELO hadrien) ([46.193.142.73])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 18:39:18 +0200
Date: Thu, 13 Oct 2016 18:39:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: netlogic: Compress return
 logic into one line
In-Reply-To: <20161013163027.GA6040@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610131838520.3674@hadrien>
References: <20161013163027.GA6040@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 13 Oct 2016, Mihaela Muraru wrote:

> Simplify function returns by merging assignment and return into
> one command line.
> Found with Coccinelle
> @@
> expression e, ret;
> @@
>
> -ret =
> +return
>         e;
> -return ret;
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 552a7dc..766969d 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -1006,8 +1006,7 @@ static int xlr_net_probe(struct platform_device *pdev)
>  	adapter = (struct xlr_adapter *)
>  		devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
>  	if (!adapter) {
> -		err = -ENOMEM;
> -		return err;
> +		return -ENOMEM;
>  	}

Now there is only one statement in the if branch so the braces aren't
needed.

julia

>
>  	/*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161013163027.GA6040%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

