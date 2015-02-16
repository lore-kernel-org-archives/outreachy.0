X-GM-THRID: 50771001344
X-Received: by 10.112.146.65 with SMTP id ta1mr115105lbb.19.1424099627243;
        Mon, 16 Feb 2015 07:13:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls78151laz.61.gmail; Mon, 16 Feb
 2015 07:13:46 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr2964019lbb.17.1424099626795;
        Mon, 16 Feb 2015 07:13:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l8si5630931wia.0.2015.02.16.07.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 16 Feb 2015 07:13:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,588,1418079600"; 
   d="scan'208";a="121972263"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Feb 2015 16:13:46 +0100
Date: Mon, 16 Feb 2015 16:13:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [OPW kernel] [PATCH] Staging: dgnc: Fix warning of code style
In-Reply-To: <20150216145502.GA18024@gmail.com>
Message-ID: <alpine.DEB.2.10.1502161601440.2375@hadrien>
References: <20150216145502.GA18024@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 16 Feb 2015, Vatika Harlalka wrote:

> This patch fixes checkpatch.pl WARNING:
> Line longer than 80 chars.

In this case, maybe it is ok, because the issue is very simple, but in
general try to make subject lines and commit logs that describe the
problema dn what you did to fix it, rather than just saying fix X.  For
example, you could say "Shorten long line to improve readability".

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
> index f177d3a..ace2af6 100644
> --- a/drivers/staging/dgnc/dgnc_driver.c
> +++ b/drivers/staging/dgnc/dgnc_driver.c
> @@ -606,7 +606,9 @@ static int dgnc_found_board(struct pci_dev *pdev, int id)
>  	dgnc_create_ports_sysfiles(brd);
>
>  	/* init our poll helper tasklet */
> -	tasklet_init(&brd->helper_tasklet, brd->bd_ops->tasklet, (unsigned long) brd);
> +	tasklet_init(&brd->helper_tasklet,
> +		     brd->bd_ops->tasklet,
> +		     (unsigned long) brd);

Actually, if you look at other calls to tasklet_init (and other functions)
in the kernel, it seems to be more common to put as much on a line as
possible.

Everything else about the format looks good.

julia

>  	spin_lock_irqsave(&dgnc_global_lock, flags);
>  	brd->msgbuf = NULL;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "opw-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to opw-kernel+unsubscribe@googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>

