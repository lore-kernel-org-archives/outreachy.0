X-GM-THRID: 6392187075653795840
X-Received: by 10.25.210.76 with SMTP id j73mr350041lfg.15.1488297323141;
        Tue, 28 Feb 2017 07:55:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls161146lja.0.gmail; Tue, 28 Feb 2017
 07:55:22 -0800 (PST)
X-Received: by 10.25.33.67 with SMTP id h64mr334098lfh.22.1488297322600;
        Tue, 28 Feb 2017 07:55:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si205040wmn.2.2017.02.28.07.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 07:55:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,220,1484002800"; 
   d="scan'208";a="215037015"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 16:55:21 +0100
Date: Tue, 28 Feb 2017 16:55:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: thomas.petazzoni@free-electrons.com, noralf@tronnes.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Merged two identical
 conditionals into one.
In-Reply-To: <1488297006-9801-1-git-send-email-narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1702281654590.3872@hadrien>
References: <1488297006-9801-1-git-send-email-narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Feb 2017, Narcisa Ana Maria Vasile wrote:

> Merged two if conditionals into a single one, since they had exactly
> the same condition.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/fbtft/fbtft_device.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
> index c164d0f..0d97473 100644
> --- a/drivers/staging/fbtft/fbtft_device.c
> +++ b/drivers/staging/fbtft/fbtft_device.c
> @@ -1448,11 +1448,10 @@ static int __init fbtft_device_init(void)
>  	if (fbtft_device_param_gpios[0].name[0])
>  		gpio = fbtft_device_param_gpios;
>
> -	if (verbose > 2)
> +	if (verbose > 2) {
>  		pr_spi_devices(); /* print list of registered SPI devices */
> -
> -	if (verbose > 2)
>  		pr_p_devices(); /* print list of 'fb' platform devices */
> +	}
>
>  	pr_debug("name='%s', busnum=%d, cs=%d\n", name, busnum, cs);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488297006-9801-1-git-send-email-narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

