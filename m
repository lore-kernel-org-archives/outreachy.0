X-GM-THRID: 3366202638336
X-Received: by 10.112.144.130 with SMTP id sm2mr199441lbb.9.1424845855498;
        Tue, 24 Feb 2015 22:30:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.165 with SMTP id m5ls796489lag.31.gmail; Tue, 24 Feb
 2015 22:30:55 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr207933lba.16.1424845855066;
        Tue, 24 Feb 2015 22:30:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si1064080wif.0.2015.02.24.22.30.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 22:30:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,643,1418079600"; 
   d="scan'208";a="123271444"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 07:30:54 +0100
Date: Wed, 25 Feb 2015 07:30:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: replace printk(KERN_DEBUG
 ..) with pr_debug
In-Reply-To: <1424821014-12100-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.02.1502250729410.2063@localhost6.localdomain6>
References: <1424821014-12100-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 25 Feb 2015, aybuke ozdemir wrote:

> This patch fixes "Prefer [subsystem eg: netdev]_dbg([subsystem]dev,
> ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG"
> checkpatch.pl warning in c-qcam.c
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/media/parport/c-qcam.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/parport/c-qcam.c b/drivers/staging/media/parport/c-qcam.c
> index b9010bd..96a511e 100644
> --- a/drivers/staging/media/parport/c-qcam.c
> +++ b/drivers/staging/media/parport/c-qcam.c
> @@ -220,7 +220,7 @@ static int qc_detect(struct qcam *qcam)

I suspect that if you look through the field of the qcam structure, you 
can find one rgat contains a device-typed field, allowing you to use 
dev_debug.

julia

>  	    && qcam->pport->probe_info[0].model
>  	    && !strcmp(qcam->pdev->port->probe_info[0].model,
>  		       "Color QuickCam 2.0")) {
> -		printk(KERN_DEBUG "QuickCam: Found by IEEE1284 probe.\n");
> +		pr_debug("QuickCam: Found by IEEE1284 probe.\n");
>  		return 1;
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424821014-12100-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

