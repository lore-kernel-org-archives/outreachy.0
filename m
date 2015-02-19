X-GM-THRID: 863708905472
X-Received: by 10.112.50.106 with SMTP id b10mr837101lbo.8.1424377430333;
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.131 with SMTP id i3ls365470wib.35.gmail; Thu, 19 Feb
 2015 12:23:50 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr830196wjc.7.1424377430058;
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si4584227wix.0.2015.02.19.12.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100663354"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:23:49 +0100
Date: Thu, 19 Feb 2015 21:23:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 9/9] Staging: drivers: dma: ste_dma40:
 used to __initdata after dma_init_reg_v4a[]
In-Reply-To: <1424375181-29098-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192123280.2192@localhost6.localdomain6>
References: <1424375181-29098-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-994758387-1424377429=:2192"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-994758387-1424377429=:2192
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 19 Feb 2015, Hatice ERTÜRK wrote:

> WARNING: __initdata should be placed after dma_init_reg_v4a[]
> checkpatch.pl warning in ste_dma40.c
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index e4b823d..c6c8e81 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -281,7 +281,7 @@ struct d40_reg_val {
>  	unsigned int val;
>  };
>  
> -static __initdata struct d40_reg_val dma_init_reg_v4a[] = {
> +static __initdata struct dma_init_reg_v4a[] d40_reg_val = {

This is also incorrect, like in the previous patch addressing this issue.

julia

>  	/* Clock every part of the DMA block from start */
>  	{ .reg = D40_DREG_GCC,    .val = D40_DREG_GCC_ENABLE_ALL},
>  
> @@ -299,7 +299,7 @@ static __initdata struct d40_reg_val dma_init_reg_v4a[] = {
>  	{ .reg = D40_DREG_LCTIS2, .val = 0xFFFFFFFF},
>  	{ .reg = D40_DREG_LCTIS3, .val = 0xFFFFFFFF}
>  };
> -static __initdata struct d40_reg_val dma_init_reg_v4b[] = {
> +static __initdata struct dma_init_reg_v4b[] d40_reg_val = {
>  	/* Clock every part of the DMA block from start */
>  	{ .reg = D40_DREG_GCC,    .val = D40_DREG_GCC_ENABLE_ALL},
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424375181-29098-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-994758387-1424377429=:2192--

