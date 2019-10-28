X-GM-THRID: 6752717498070597632
X-Received: by 2002:a2e:6101:: with SMTP id v1mr10630514ljb.122.1572244060630;
        Sun, 27 Oct 2019 23:27:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:6715:: with SMTP id b21ls543666lfc.15.gmail; Sun, 27 Oct
 2019 23:27:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+6u2n8wp9uwJzFfSPEHwx4R0UQIndwcWTsW8A8us4c9D7pb3Ve2APnSWjRA8jK7fUflTD
X-Received: by 2002:a19:41d7:: with SMTP id o206mr10201066lfa.188.1572244059440;
        Sun, 27 Oct 2019 23:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572244059; cv=none;
        d=google.com; s=arc-20160816;
        b=cSOTHJdFIZjEFo0HbT9h4dAESRnXFxbN5Pll+UgJpils5GNG9I87mf+OmYI2dBxRRP
         HK8jaRCQomChO8r/1HOGGh6Gd4l28dv3u9v9+o7k0d7yDYAUkCkvRUCHUg4Fxxedw0gW
         iWqsgnBgbc1+Tp99VN+E+jl6FqBxAxJ6HknPugfrPFVdzJXXuHEDGcuctH/fnu2KUxwa
         vVp4JmjWardTSzJtHgynayIsgDh+T9qoZOR3QVbH8QJWJUPkJws+d27o+n4O118BSvTu
         H+P5Zdt2S369Xc7NT+Iax/e+zIpuJDLC7zsZSKZf7a5/pWOg/+kqgzP1nQzsMd6SHGNh
         kakw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wSOM4fv7MX392s6Fg6RRwQqXQy084FaCAuEJGSHgb/E=;
        b=H/pwxsFfXSO9c/kEaPySFdH/SgRkyqpVHZsgo3NR98l3IQUyOe37sKVPmnZF7B8lWO
         0BS/8Gbo3Zp09cZqPzm4umbCP5SHHFamX0bSS/2afcO4Tq18wCazhpOuaqJT30TXSIGS
         C5kL7WaOeEqgPE2N2f3PoAvZfbnGGSGftoPjeOHO8GV4G0fXLO9CQEzkVKHoH6liqXkv
         yiMr5lkIpU1/3vuhn+pqcuoQsbFwjyo0WeGiOxS7xCO45dhBhwWk/8kMfDMTABm432cL
         nyZPqURTT7aMTfurrCEKzMUVXAiPdu6EsKltQ634uepPS6BUtgMU9qA/6/m1oQ9BHIpQ
         csgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k2si545942ljj.1.2019.10.27.23.27.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 23:27:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,239,1569276000"; 
   d="scan'208";a="324756430"
Received: from ppp-seco11pareq2-46-193-149-47.wb.wifirst.net (HELO hadrien) ([46.193.149.47])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2019 07:27:37 +0100
Date: Mon, 28 Oct 2019 07:27:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: Remove unnecessary
 line continuations
In-Reply-To: <20191028051237.3row7xnbr6pgn4bp@linux-kernel-dev>
Message-ID: <alpine.DEB.2.21.1910280726270.2314@hadrien>
References: <20191028051237.3row7xnbr6pgn4bp@linux-kernel-dev>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 28 Oct 2019, Frank A. Cancio Bello wrote:

> checkpatch message:
> "WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations"
>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 03c8937f80b0..94c2c708dc92 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -208,8 +208,8 @@ static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
>
>  static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
>  {
> -	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, " \
> -			"tctx %08x, tdtx: %08x, rbase %08x, " \
> +	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, "
> +			"tctx %08x, tdtx: %08x, rbase %08x, "
>  			"rcnt %08x, rctx %08x, rdtx %08x\n",

String should not be cut over multiple lines, even if it results in
exceeding 80 characters.  This makes it easier to grep for messages in the
code.  You could fix both problems at once, since they affect the same
code in each case.

julia

>  			mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
>  			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
> @@ -220,7 +220,7 @@ static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
>  			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
>  			mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
>
> -	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, " \
> +	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, "
>  			"intr_stat %08x, intr_mask %08x\n",
>  			mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
>  			mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
> @@ -243,9 +243,9 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
>  		tx_desc = &chan->tx_ring[i];
>  		rx_desc = &chan->rx_ring[i];
>
> -		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, " \
> +		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
>  				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
> -				i, tx_desc->addr0, tx_desc->flags, \
> +				i, tx_desc->addr0, tx_desc->flags,
>  				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
>  	}
>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191028051237.3row7xnbr6pgn4bp%40linux-kernel-dev.
>

