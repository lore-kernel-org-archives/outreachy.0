X-GM-THRID: 6807884729429262336
X-Received: by 2002:a1c:2d8a:: with SMTP id t132mr8332440wmt.83.1585084943508;
        Tue, 24 Mar 2020 14:22:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls85814wme.3.gmail; Tue, 24 Mar
 2020 14:22:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFIQJgba6v6DkMmW5AyfsNgsJ7HynAsGKeBxhP39NijWZvcRNR6lStuDpMSuaseoLG01+0
X-Received: by 2002:a7b:caf2:: with SMTP id t18mr10157wml.80.1585084941570;
        Tue, 24 Mar 2020 14:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084941; cv=none;
        d=google.com; s=arc-20160816;
        b=x6JeuxK6UTP3DH9KQkqNu6NeCWrqaAQbfs6WpfqAw/tf8ya0lN1cwZVgmQpWgj0YcH
         B4MwlRPzf1jX9Lz3OhM3z6WCBEE4zLk427KhJePUzuMOvNowWwnpATUKiKcB9+JFkLY+
         Z18sGmBL0rt6BygTx5cLU38FQb6l+mfGsTTulIoOxvKRlJhGKjwHNs8eTHYL/WAYCVLJ
         0a6JGoh2NvC1R9xuC5ZFIfnZCJyz8Fh7ilW3YEAtG+C6S8FIMuJ9iDdQjH0yhqAvCya4
         LRF/Hh05mWrw1vv14mRtTaHm8KOnoMQnIW4misiSbuX+tKiBkiqBqP+rOrcjqGBPW+GM
         o+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=E6qHr+52sZYWoKz6aGZdedqDRTh+Yx+CU30h7JszRGI=;
        b=CgP8X+F09f+s1L8I65zfEduo6qwBuSugAdwBC2RW06DwSSBnSBFbIwGKQL9KyTVGUh
         Rk3GdW1yHBOAcA9I5cQGRYWOGhehewa3JJNw4OT5e8CqNmB5cYQorakLT6yjVbxgHecM
         NOGU6yUXVBCOpS2+be9/jJY+X/zms8z38UNk164yOAJWEg9TPq1AiELuIzICmgGSp1/B
         rFA62NNL+STVUp+PJLgqek2uPDHyjRdH+SWR1649Izj8uSc5XOFtefV4OoLxOeZoBOZR
         DPlPRLLysF9y3Q1ogMio48H3sU/BuVr7vAJi/j6RCgpk5VziDrljAGKiC21oLf78amNx
         B4sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si286758wrr.1.2020.03.24.14.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,301,1580770800"; 
   d="scan'208";a="343544199"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 22:22:20 +0100
Date: Tue, 24 Mar 2020 22:22:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
In-Reply-To: <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003242221390.3306@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com> <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Mar 2020, Sam Muhammed wrote:

> Cleanup Checkpatch.pl CHECKs about missing
> spaces around multiple operators.
>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index d93097ed781c..e599ae1bdfd0 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -19,7 +19,7 @@ static inline
>  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
>  {
>  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;

It seems that the & operators were lined up before and that is not the
case any more.

julia

>
>  	return last - first + 1;
>  }
> @@ -83,7 +83,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	}
>
>  	// Allocate and setup the sg_table (scatterlist entries)
> -	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE-1), iov_len, GFP_KERNEL);
> +	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
>  	if (rv) {
>  		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
>  		goto err_alloc_sg_table;
> @@ -126,7 +126,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			// Fill out the descriptor
>  			BUG_ON(!desc);
>  			clear_desc(desc);
> -			if (p != pcnt-1)
> +			if (p != pcnt - 1)
>  				desc->DescByteCount = 0x80000;
>  			else
>  				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
> @@ -136,7 +136,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
>  			if (i == 0 && p == 0)
>  				desc->DescControlFlags |= DMA_DESC_CTL_SOP;
> -			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
> +			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
>  				desc->DescControlFlags |= DMA_DESC_CTL_EOP | DMA_DESC_CTL_IRQONDONE;
>
>  			desc->DescCardAddrLS = (card_addr & 0xFFFFFFFF);
> @@ -148,13 +148,13 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000UL) >> 32;
>
>  			user_ctl = acd->priv->user_ctl;
> -			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
> +			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
>  				user_ctl = acd->priv->user_ctl_last;
>
>  			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFFUL) >>  0;
>  			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000UL) >> 32;
>
> -			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
> +			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
>  				desc->acd = acd;
>
>  			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9%40gmail.com.
>

