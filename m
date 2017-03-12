X-GM-THRID: 6396341070428372992
X-Received: by 10.223.142.196 with SMTP id q62mr437919wrb.8.1489325050289;
        Sun, 12 Mar 2017 06:24:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.28 with SMTP id s28ls686853ljd.22.gmail; Sun, 12 Mar
 2017 06:24:09 -0700 (PDT)
X-Received: by 10.46.8.90 with SMTP id g26mr4896791ljd.16.1489325049197;
        Sun, 12 Mar 2017 06:24:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si467275wmg.3.2017.03.12.06.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:24:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="216443968"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 14:24:08 +0100
Date: Sun, 12 Mar 2017 14:24:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Use macro
 DIV_ROUND_UP
In-Reply-To: <1489264063-3553-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703121423510.2174@hadrien>
References: <1489264063-3553-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Gargi Sharma wrote:

> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
> It clarifies the divisor calculations.

I already have these changes.

julia

> Coccinelle script:
>
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 2 +-
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index e6241fb..e09731e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -400,7 +400,7 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
>  	dma_addr_t dma_addr;
>
>  	offset = ((unsigned int)(unsigned long)buf & (PAGE_SIZE - 1));
> -	num_pages = (count + offset + PAGE_SIZE - 1) / PAGE_SIZE;
> +	num_pages = DIV_ROUND_UP(count + offset, PAGE_SIZE);
>
>  	pagelist_size = sizeof(PAGELIST_T) +
>  			(num_pages * sizeof(u32)) +
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index a5ba663..8c65f5b 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -1569,7 +1569,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
>  	offset = (int)(long)virt_addr & (PAGE_SIZE - 1);
>  	end_offset = (int)(long)end_virt_addr & (PAGE_SIZE - 1);
>
> -	num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
> +	num_pages = DIV_ROUND_UP(offset + num_bytes, PAGE_SIZE);
>
>  	pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
>  	if (pages == NULL) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489264063-3553-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

