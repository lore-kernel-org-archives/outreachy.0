X-GM-THRID: 6254173347374956544
X-Received: by 10.129.159.131 with SMTP id w125mr31772871ywg.26.1456242597914;
        Tue, 23 Feb 2016 07:49:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.49 with SMTP id m46ls2445729qgd.4.gmail; Tue, 23 Feb
 2016 07:49:56 -0800 (PST)
X-Received: by 10.140.99.106 with SMTP id p97mr4879467qge.13.1456242596180;
        Tue, 23 Feb 2016 07:49:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id iq8si2276805igb.0.2016.02.23.07.49.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:49:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,489,1449529200"; 
   d="scan'208";a="165722995"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 16:49:53 +0100
Date: Tue, 23 Feb 2016 16:49:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Use
 kmalloc_array
In-Reply-To: <20160222174716.GA27662@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602231648460.2040@localhost6.localdomain6>
References: <20160222174716.GA27662@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:

> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.
> This was done using Coccinelle:
> 
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(
> + kmalloc_array(
> e2
> - *
> + ,
> sizeof(e1), C)
> |
> - kmalloc(
> + kmalloc_array(
> e1
> - *
> + ,
> sizeof(t), C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(e1)
> - *
> e2
> + ,
> + sizeof(e1)
> , C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(t)
> - *
> e1
> + ,
> + sizeof(t)
> , C)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	- Modified Coccinelle script to respect 80 character limit.

I'm not sure to understand this comment.  Was the Coccinelle script itself 
over 80 characters, or was it producing code that went over 80 characters.  
In the latter case, changing the spacing in the semantic patch won't 
affect the spacing in the generated code.

julia

>  drivers/staging/fbtft/fb_agm1264k-fl.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> index 2a50cf9..ba9fc44 100644
> --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> @@ -272,8 +272,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	int ret = 0;
> 
>  	/* buffer to convert RGB565 -> grayscale16 -> Dithered image 1bpp */
> -	signed short *convert_buf = kmalloc(par->info->var.xres *
> -		par->info->var.yres * sizeof(signed short), GFP_NOIO);
> +	signed short *convert_buf = kmalloc_array(par->info->var.xres *
> +		par->info->var.yres, sizeof(signed short), GFP_NOIO);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222174716.GA27662%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 

