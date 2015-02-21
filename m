X-GM-THRID: 1957029740544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b1158ab4e74b4086
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr307754wib.5.1424533881585;
        Sat, 21 Feb 2015 07:51:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.14 with SMTP id t14ls386408laz.61.gmail; Sat, 21 Feb
 2015 07:51:20 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr347658laa.2.1424533880116;
        Sat, 21 Feb 2015 07:51:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si335980wix.0.2015.02.21.07.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:51:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100858143"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:51:19 +0100
Date: Sat, 21 Feb 2015 16:51:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: dma: Add require
 space before that '('
In-Reply-To: <1424533739-1562-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211650480.2480@hadrien>
References: <1424533739-1562-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject could be more concise as Add space before (

julia

On Sat, 21 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes checkpatch.pl error in file ste_dma40.c
> ERROR: space required before the open parenthesis '('
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index 15d4946..9c6d2a2 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -3551,7 +3551,7 @@ static int __init d40_probe(struct platform_device *pdev)
>
>  	if (!plat_data) {
>  		if (np) {
> -			if(d40_of_probe(pdev, np)) {
> +			if (d40_of_probe(pdev, np)) {
>  				ret = -ENOMEM;
>  				goto failure;
>  			}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424533739-1562-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

