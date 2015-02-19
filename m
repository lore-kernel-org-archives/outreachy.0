X-GM-THRID: 791728357376
X-Received: by 10.180.105.129 with SMTP id gm1mr952064wib.3.1424376796789;
        Thu, 19 Feb 2015 12:13:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls29976lac.49.gmail; Thu, 19 Feb
 2015 12:13:16 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr840280lbc.2.1424376796359;
        Thu, 19 Feb 2015 12:13:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si9108876wid.1.2015.02.19.12.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:13:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="122575192"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:13:15 +0100
Date: Thu, 19 Feb 2015 21:13:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: dma: ste_dma: Prefer
 kcalloc over kzalloc
In-Reply-To: <1424376408-29567-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192110270.2192@localhost6.localdomain6>
References: <1424376408-29567-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-2007100707-1424376795=:2192"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-2007100707-1424376795=:2192
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 19 Feb 2015, Hatice ERTÜRK wrote:

> WARNING: Prefer kcalloc over kzalloc with multiply
> chackpatch.pl warning in ste_dma40.c
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index 308795e..5cffef1 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -3290,7 +3290,7 @@ static struct d40_base * __init d40_hw_detect_init(struct platform_device *pdev)
>  		base->gen_dmac.init_reg_size = ARRAY_SIZE(dma_init_reg_v4a);
>  	}
>  
> -	base->phy_res = kzalloc(num_phy_chans * sizeof(struct d40_phy_res),
> +	base->phy_res = kcalloc(num_phy_chans * sizeof(struct d40_phy_res),
>  				GFP_KERNEL);

The difference between kzalloc and kcalloc in a case like this is that 
with kzalloc the multiplication is done in the argument list, before the 
call, and with kcalloc the arguments to be multiplied are passed in 
separately, their size is checked, and then the multiplication is done if 
it will not overflow.  In short, kcalloc takes three arguments, and your 
code provides only two.  You need to be sure that you have compiled the 
code before submitting a patch.

julia

>  	if (!base->phy_res)
>  		goto failure;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424376408-29567-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-2007100707-1424376795=:2192--

