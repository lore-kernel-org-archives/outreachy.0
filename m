X-GM-THRID: 6755228047172960256
X-Received: by 2002:a1c:558a:: with SMTP id j132mr590137wmb.21.1572983438424;
        Tue, 05 Nov 2019 11:50:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:387:: with SMTP id 129ls3956896wmd.3.canary-gmail; Tue,
 05 Nov 2019 11:50:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqzYThEBQCRWkCAUUWQqBAeTtfvuq9Kt3/U9oJ4B6881B52wdCsGltd27XEGuIbBUky28DZ8
X-Received: by 2002:a05:600c:21c4:: with SMTP id x4mr576400wmj.172.1572983437216;
        Tue, 05 Nov 2019 11:50:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572983437; cv=none;
        d=google.com; s=arc-20160816;
        b=Jfgm444AU9i5OyMB+tCW+4mgCVCHoUAv7I1zxtYNbb4uT7zxaA19fy1I04chLtax01
         1nIk6cseqNddJLZlYq1ief47oSRTlGeBtp+t0XdwHzUncBPwCtZM98gvfyktNjBvDcd4
         m5BuLbUQy1gSOPCNOkFIYd9eNY9iuMco+WnGEoSFBot3iTxHy6i6vyTw+7VCAjFpjV71
         k/322LFNAFyi+2VtFEtmQscUq3Yq+OBu72fL+1k3x0lKxU7rA4+F4Mkg66quBJfnz2YV
         KSSG79R/N+R3eqbotirxoAEVYgCqfkBwWnL/TGWhyKgT7xrxU2wbFLzI2ULa2+JfDe2B
         H2Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qD61KVPaVsk54Zg7RZ44yVolhisscFtDs3LFQVIZKOw=;
        b=DShMmHekwM8EhwZrpd8hxReYV0k6utPRNQ13Sj7kDnSJSLfj7akw6a3FVP2gEpmBZ4
         xMjLXDKkta21kECpGRCTlI7ddQBNeE9pkF6EsJEhjT5tQp19IVOqZF61DY6EQrupZlTl
         lw89ojsUJr9a3IRYMujdeXaqwP8Dl/t6nri7UzRW81FeSZc/hVi7duNdzfWObXtXvoeh
         zXOD5rTjvR2HqnXlsJ9VNdaHT2NolCGil/8UfRmyzpDtBtdh81zXaL31n/r5XFSHtR9k
         joG9gtg4gQ2YavygFN9k1I+L1NlL076vaKwxuHWEdyffuexsWgnPtq5ktPbrd2yycZ1S
         880g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b198si54517wmd.4.2019.11.05.11.50.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 11:50:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,271,1569276000"; 
   d="scan'208";a="410507742"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2019 20:50:36 +0100
Date: Tue, 5 Nov 2019 20:50:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: mt7621-dma: align to
 match open parenthesis
In-Reply-To: <20191105193814.46748-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911052050220.3220@hadrien>
References: <20191105193814.46748-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Nov 2019, Jules Irenge wrote:

> Align to match open parenthesis.
>
> "CHECK: Alignment should match open parenthesis".
> Issue detected by checkpatch tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> changes in the RESEND
> -included one more allignment which was left out

Then it's not a resend, it's a V2.

julia

>
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 94c2c708dc92..20b898954416 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -548,7 +548,8 @@ static int mtk_hsdam_alloc_desc(struct mtk_hsdam_engine *hsdma,
>  	int i;
>
>  	chan->tx_ring = dma_alloc_coherent(hsdma->ddev.dev,
> -			2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
> +					   2 * HSDMA_DESCS_NUM *
> +					   sizeof(*chan->tx_ring),
>  			&chan->desc_addr, GFP_ATOMIC | __GFP_ZERO);
>  	if (!chan->tx_ring)
>  		goto no_mem;
> @@ -569,8 +570,8 @@ static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
>  {
>  	if (chan->tx_ring) {
>  		dma_free_coherent(hsdma->ddev.dev,
> -				2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
> -				chan->tx_ring, chan->desc_addr);
> +				  2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
> +				  chan->tx_ring, chan->desc_addr);
>  		chan->tx_ring = NULL;
>  		chan->rx_ring = NULL;
>  	}
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191105193814.46748-1-jbi.octave%40gmail.com.
>

