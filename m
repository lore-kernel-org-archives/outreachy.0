X-GM-THRID: 6664868733855465472
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr262168wme.4.1551785842817;
        Tue, 05 Mar 2019 03:37:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d06:: with SMTP id t6ls302559wmt.10.gmail; Tue, 05 Mar
 2019 03:37:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqyltHaO3/0uiMKFSurwT1KPUwKNAhOJTEbvBrFGXh6mGGYrLZyQLWQzGt4qHEUfzXeYCKaJ
X-Received: by 2002:a05:600c:21d4:: with SMTP id x20mr277102wmj.25.1551785841978;
        Tue, 05 Mar 2019 03:37:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551785841; cv=none;
        d=google.com; s=arc-20160816;
        b=ki8nNOUW+xkaYihJXYVHz64rA4JWnjKd78Jot9OJIEeljFpkhmNOF7kQMOxZVQNsWb
         +wRHlm38XV14Wz5Qg66uEaGWDD5WZ9O4S/Ltnp1ecVQaj65RVdeJ0O+lZf8eWeLTFdPd
         C+5AdKUyH8A87dWI8A5Y49jxP30P2CZPc4TC7N6GNKHkuNnwLHAusDFOGqADLX+ggRYc
         xkwh+3YqZRJvKGcHD8VppbGlmqQ/nJZFe7jXf+87zcgtva14DsOLfACUoqtINNuUUrQE
         SEENB58kYpaAsfuAUNGbx9TGiiZBioEKIig+NU11oPBFKNDrihW3C7f9e3J4UHtDsZ8f
         MF5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CZYfC+dhXLLl6L/s26OXXw2cjmXGhLJRVVRudttSHCI=;
        b=se4C3LX1kjPPgNxLk9xxjjPOFZ8SaYDLMVbrLET5L/51duNV5Je9gyM3u1fi35e66D
         30uiUk20c3wTH/12/GGRCak7ZMI+t021WSiMjYnOvOl7DavwCeStxFxiWtSKK9TKW0YC
         dTiW9XMPsVPKomaTAM8vPI6rEaH/yPAJTyoHRO12ecJ8PnL7JEISTq43PmPpCh4/9+pt
         UXCySygQBBwCXbzxJ350EGnGOVs0/UbmIyQdDAnmew2Ez6T7HG72XOHR0iwq7H4yioXt
         6q4fQMsK7lkl8eoR/V1lJbktzXpvyfm7mUWoFm4TiVO0Dx5q85YDHCQL4DK9NAkOSRSg
         zqcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f185si372589wme.1.2019.03.05.03.37.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 03:37:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="371984810"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 12:37:21 +0100
Date: Tue, 5 Mar 2019 12:37:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Avoid unnecessary
 line continuations
In-Reply-To: <20190305113433.GA16894@pthm>
Message-ID: <alpine.DEB.2.20.1903051236200.3701@hadrien>
References: <20190305113433.GA16894@pthm>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Daniela Mormocea wrote:

> Get rid of unnecessary line continuations in
> boolean expressions, warning detected by checkpatch

Hi,

They should be in different patches, but they need to be in the same
series, so Greg knows in what order to apply them.

When you send the second version, please also add v2 and describe the
change since the first version under the ---

julia

>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index ccf9ccc..44a65e2 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -298,14 +298,14 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  	if (chan->desc->direction == DMA_MEM_TO_DEV) {
>  		src_addr = sg->src_addr;
>  		dst_addr = chan->fifo_addr;
> -		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED | \
> -			(8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | \
> +		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED |
> +			(8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) |
>  			(chan->slave_id << GDMA_RT305X_CTRL0_DST_REQ_SHIFT);
>  	} else if (chan->desc->direction == DMA_DEV_TO_MEM) {
>  		src_addr = chan->fifo_addr;
>  		dst_addr = sg->dst_addr;
> -		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED | \
> -			(chan->slave_id << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | \
> +		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED |
> +			(chan->slave_id << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) |
>  			(8 << GDMA_RT305X_CTRL0_DST_REQ_SHIFT);
>  	} else if (chan->desc->direction == DMA_MEM_TO_MEM) {
>  		/*
> @@ -314,8 +314,8 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  		 */
>  		src_addr = sg->src_addr;
>  		dst_addr = sg->dst_addr;
> -		ctrl0 = GDMA_REG_CTRL0_SW_MODE | \
> -			(8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
> +		ctrl0 = GDMA_REG_CTRL0_SW_MODE |
> +			(8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
>  			(8 << GDMA_REG_CTRL1_DST_REQ_SHIFT);
>  	} else {
>  		dev_err(dma_dev->ddev.dev, "direction type %d error\n",
> @@ -323,8 +323,8 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  		return -EINVAL;
>  	}
>
> -	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \
> -		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \
> +	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
> +		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
>  		 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
>  	ctrl1 = chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;
>
> @@ -376,21 +376,21 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  		src_addr = sg->src_addr;
>  		dst_addr = chan->fifo_addr;
>  		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED;
> -		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
> +		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
>  			(chan->slave_id << GDMA_REG_CTRL1_DST_REQ_SHIFT);
>  	} else if (chan->desc->direction == DMA_DEV_TO_MEM) {
>  		src_addr = chan->fifo_addr;
>  		dst_addr = sg->dst_addr;
>  		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED;
> -		ctrl1 = (chan->slave_id << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
> -			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | \
> +		ctrl1 = (chan->slave_id << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
> +			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) |
>  			GDMA_REG_CTRL1_COHERENT;
>  	} else if (chan->desc->direction == DMA_MEM_TO_MEM) {
>  		src_addr = sg->src_addr;
>  		dst_addr = sg->dst_addr;
>  		ctrl0 = GDMA_REG_CTRL0_SW_MODE;
> -		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
> -			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | \
> +		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
> +			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) |
>  			GDMA_REG_CTRL1_COHERENT;
>  	} else {
>  		dev_err(dma_dev->ddev.dev, "direction type %d error\n",
> @@ -398,8 +398,8 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  		return -EINVAL;
>  	}
>
> -	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \
> -		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \
> +	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
> +		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
>  		 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
>  	ctrl1 |= chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305113433.GA16894%40pthm.
> For more options, visit https://groups.google.com/d/optout.
>

