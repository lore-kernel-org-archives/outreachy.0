X-GM-THRID: 6807884729429262336
X-Received: by 2002:ac2:4a88:: with SMTP id l8mr47711lfp.138.1585084990648;
        Tue, 24 Mar 2020 14:23:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8e69:: with SMTP id t9ls24624ljk.4.gmail; Tue, 24 Mar
 2020 14:23:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vujraW+wsnBwTGW2L59K/unp6xsRajwZiGbKRGrVg0zBqRDpASDGov/tU98opBMh0kOzc7q
X-Received: by 2002:a2e:9949:: with SMTP id r9mr18972409ljj.135.1585084988816;
        Tue, 24 Mar 2020 14:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084988; cv=none;
        d=google.com; s=arc-20160816;
        b=siIv6Goc7fywZIB25NKCANCTS7876xa8CUt+mvV8S6Peg7n+tFmqVUEwPM8IEOx8oD
         kr2BM6zgzhfzzuP0gRuc+exp1ZQu5Lp9Uu0FoRXNC7Oc6uVXcoHvSyUkDXIrw5SD5uMq
         hC1CJxtmCn21d6u88pcdzAHOQxqrWe6HnL0ig5eXpH/FwfHlhRH9ZKwSUgKyZkUMi+QI
         2GOuKEn26ctH4xSx4b0kHjXwvkqsAXarEqzq0RkbXy4RsQ2xvag2C81KkJqvj+Se8pbY
         JKjx8sD96SO2LM1dJ9buPZwboH0W48zvI5HTjhT/09H09CBhj1pviKDJx9J7sAqX36zP
         IfJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4dOncHrGiZZ3fCqi0xJQfCExDY3jpumwK7IP6MXjHyk=;
        b=x0UCbCo6gcyzMqCRpcFCXVe/3NQyZrxeirBLK7z3VWQRyXoBnnMQwZsXuVm9d55qTi
         8uHusDw0YDm9akI9xOymQiHjWxS52/CTdKTTXSp1I1s6eZy8QLfKUQYy6yLvucR2OM4u
         W5SNEv/5RXpikl8E1kNAaP7sfP03d4JAd8T5AdHXcypGMfV95Bw+8FWiIbsH/yRg5ycm
         iui+n97+Y3VYfe7BHuXbs1wfppQsBu/8f1KwYyrymeAG7r/2SpTb+vnqH2oGIa4a0f7+
         Nzxx5IdKK3e09fdgRpxFrJJgIqwSOWO5h0BKYdVFYNFHSIVA82B6hpJfBtMwAe59THdi
         rleQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d12si1118214lfi.2.2020.03.24.14.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,301,1580770800"; 
   d="scan'208";a="442012503"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 22:23:08 +0100
Date: Tue, 24 Mar 2020 22:23:07 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/6] Staging: kpc2000: kpc_dma: Remove
 unnecessary braces.
In-Reply-To: <0a3ec63321dce008fc8dd790f42ef8490135b307.1585082158.git.jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003242222570.3306@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com> <0a3ec63321dce008fc8dd790f42ef8490135b307.1585082158.git.jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 24 Mar 2020, Sam Muhammed wrote:

> Removing braces of single statement blocks,

removing is not imperative.

> they are not really needed.
>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/dma.c         |  5 ++---
>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 20 +++++++++----------
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  3 +--
>  3 files changed, 12 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> index 4bfbc717bc07..5ccc93ed2b61 100644
> --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> @@ -97,11 +97,10 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
>  	if (WARN(!(caps & ENG_CAP_PRESENT), "%s() called for DMA Engine at %p which isn't present in hardware!\n", __func__, eng))
>  		return -ENXIO;
>
> -	if (caps & ENG_CAP_DIRECTION) {
> +	if (caps & ENG_CAP_DIRECTION)
>  		eng->dir = DMA_FROM_DEVICE;
> -	} else {
> +	else
>  		eng->dir = DMA_TO_DEVICE;
> -	}
>
>  	eng->desc_pool_cnt = desc_cnt;
>  	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 21ebab7dbc7b..d93097ed781c 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -126,11 +126,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			// Fill out the descriptor
>  			BUG_ON(!desc);
>  			clear_desc(desc);
> -			if (p != pcnt-1) {
> +			if (p != pcnt-1)
>  				desc->DescByteCount = 0x80000;
> -			} else {
> +			else
>  				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
> -			}
> +
>  			desc->DescBufferByteCount = desc->DescByteCount;
>
>  			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
> @@ -148,9 +148,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000UL) >> 32;
>
>  			user_ctl = acd->priv->user_ctl;
> -			if (i == acd->mapped_entry_count-1 && p == pcnt-1) {
> +			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
>  				user_ctl = acd->priv->user_ctl_last;
> -			}
> +
>  			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFFUL) >>  0;
>  			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000UL) >> 32;
>
> @@ -188,9 +188,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	sg_free_table(&acd->sgt);
>   err_dma_map_sg:
>   err_alloc_sg_table:
> -	for (i = 0 ; i < acd->page_count ; i++) {
> +	for (i = 0 ; i < acd->page_count ; i++)
>  		put_page(acd->user_pages[i]);
> -	}
> +
>   err_get_user_pages:
>  	kfree(acd->user_pages);
>   err_alloc_userpages:
> @@ -210,16 +210,14 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
>  	BUG_ON(!acd->ldev->pldev);
>
>  	for (i = 0 ; i < acd->page_count ; i++) {
> -		if (!PageReserved(acd->user_pages[i])) {
> +		if (!PageReserved(acd->user_pages[i]))
>  			set_page_dirty(acd->user_pages[i]);
> -		}
>  	}
>
>  	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
>
> -	for (i = 0 ; i < acd->page_count ; i++) {
> +	for (i = 0 ; i < acd->page_count ; i++)
>  		put_page(acd->user_pages[i]);
> -	}
>
>  	sg_free_table(&acd->sgt);
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 25ea16a1981e..bc81afb6ade2 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -26,9 +26,8 @@ struct kpc_dma_device *kpc_dma_lookup_device(int minor)
>
>  	mutex_lock(&kpc_dma_mtx);
>  	list_for_each_entry(c, &kpc_dma_list, list) {
> -		if (c->pldev->id == minor) {
> +		if (c->pldev->id == minor)
>  			goto out;
> -		}
>  	}
>  	c = NULL; // not-found case
>  out:
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0a3ec63321dce008fc8dd790f42ef8490135b307.1585082158.git.jane.pnx9%40gmail.com.
>

