X-GM-THRID: 6253707231891554304
X-Received: by 10.112.132.97 with SMTP id ot1mr873496lbb.10.1456057407877;
        Sun, 21 Feb 2016 04:23:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.94 with SMTP id n91ls237082lfi.99.gmail; Sun, 21 Feb
 2016 04:23:25 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr2800894lbb.7.1456057405577;
        Sun, 21 Feb 2016 04:23:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si737284wmd.0.2016.02.21.04.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 04:23:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,480,1449529200"; 
   d="scan'208";a="203976044"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2016 13:23:24 +0100
Date: Sun, 21 Feb 2016 07:23:22 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Prefer using
 kmalloc_array
In-Reply-To: <20160221113832.GA28242@Karyakshetra>
Message-ID: <alpine.DEB.2.10.1602210722520.2782@hadrien>
References: <20160221113832.GA28242@Karyakshetra>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 21 Feb 2016, Bhaktipriya Shridhar wrote:

> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.
> This was done using Coccinelle:
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(sizeof(e1)*e2, C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(e1), C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(t), C)
> + kmalloc_array(e2, sizeof(t), C)
> |
> - kmalloc(sizeof(t)*e2, C)
> + kmalloc_array(e2, sizeof(t), C)
> )
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/fbtft/fb_agm1264k-fl.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 2a50cf9..5fbfd50 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -272,8 +272,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int ret = 0;
>
>  	/* buffer to convert RGB565 -> grayscale16 -> Dithered image 1bpp */
> -	signed short *convert_buf = kmalloc(par->info->var.xres *
> -		par->info->var.yres * sizeof(signed short), GFP_NOIO);
> +	signed short *convert_buf = kmalloc_array(par->info->var.xres * par->info->var.yres,
> +						  sizeof(signed short),
> +						  GFP_NOIO);

You should adjust the output of Coccinelle so as to not introduce 80
character violations.

julia

>
>  	if (!convert_buf)
>  		return -ENOMEM;
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160221113832.GA28242%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
>

