X-GM-THRID: 6752717498070597632
X-Received: by 2002:a6b:e20f:: with SMTP id z15mr16293531ioc.199.1572246049295;
        Mon, 28 Oct 2019 00:00:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:37cd:: with SMTP id r196ls1141999jar.8.gmail; Mon, 28
 Oct 2019 00:00:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwy6xOgtLBcTtkFC0OYXyruCtugUExhlKxMg6gVZ4+D5V1Jpsr2QtUnU4S30TfjbYwNifvx
X-Received: by 2002:a02:8568:: with SMTP id g95mr4296813jai.24.1572246047842;
        Mon, 28 Oct 2019 00:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572246047; cv=none;
        d=google.com; s=arc-20160816;
        b=v01LrJLc8TiGZfy8Go/3k4BS4SEfRgO8bw4afpf8/yDfiQOp4o14oupg9EdjXs3rzA
         hXW+8D9stkwS+MkpOp/ZxmOEYFuaHznyA7ahix8F5AWuvDWZU1rIHeJqZO19/gl1k1Ci
         tSEZw1QZF2c1vgrkuRWzeyB3d6PSNAWy4BwKqpD2xpwODBZ9skbU44Ims3/183cviphb
         txs+3Vis16XaLmfcySq20Sj/yCfLn02tsWl7sQMr6D+DxMfgGEK1IxQREyemlLRLCVx4
         RpqPl0CLDtKafnMSmwHbIEQkLpfSG58R4SCAhkvPWleEh36uABgS9Nc69j47FTdfjHyl
         UE6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NLbDYF1j3ztyZwgIV9Nha7YGiFyworgZITLkNwUeSMg=;
        b=xSOjAByogwUIJEMVpOAQq64EOaQiVhpbmyqqIhS8X0kBlutgDPzniPpYPrWohhxYsv
         zzoAYamx3v+Qj639kj8UyeYJnerfuJ0RWEjYsqx/fqRg6ecpqx7a/smSnxSWc/sinh+z
         2kO/jFgowfeFYSadJzTdqypYETWMecrato1xmZnEA7vmiZ882zj/h5uMvcyTQ9yhspSA
         OS379gokiGHbtDS1MwonEBLAHPe6YgIi+ue5rySGY16lYwUqIWKJFw94Sc0AAiOKiPF8
         /2m6DS6VAdTW3XEpKg1rxWPeNJcnF7utfWD/h6ESS4UcWvb7tjtJIGaT0TvxlS7tYCzZ
         dMig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=pYJ9rzIf;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id x18si514417ill.2.2019.10.28.00.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 00:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=pYJ9rzIf;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe44.google.com with SMTP id w25so1703998vso.4
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 00:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NLbDYF1j3ztyZwgIV9Nha7YGiFyworgZITLkNwUeSMg=;
        b=pYJ9rzIfg6N6XV9eR0Ku9XoJich/uNViPgUtoMq7qIl6DtLljHQsbRa3tu5mCJBC80
         j08JVfmR41eFLSP/y0jq/1iwCz0SqIL9FJfthl/d6dsFPUFBc/xEuKyxp8rXF51Kd912
         KnZ3vrnKJTLAcjUx339gplvUeDh8wqfne5HK48AqCHWAhP5OtzgLMnfxoCYUHxSFPKZD
         pH7W+RPdV06JoQAyfqE1/Y0ciB1Rw+IO/6Zwe7rTSj/2jk5giio0nNNBOcXeCXACheQ6
         qXdhiP7gVtPgOxD7+vwa+1rBvZvFvb8kykIeQvHolqNqpOa4Jbxzr9H+SdG3Xsi3zbC2
         B67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NLbDYF1j3ztyZwgIV9Nha7YGiFyworgZITLkNwUeSMg=;
        b=CEXdkDFTaTlEEJQBngOsemP6u17YQj9USLLIWewVTOi0bLoYfNk3gW1ZFSMptvBvuB
         JGrK7EUXz70Rc9HVI/2DU+AIOdcfBGyKUqXtSiaEhCmN9S3FUhg1iSJ5NhgZq5rMwa8M
         U3QNOSMhhip+t5Lr+wh9yqLeEcGjSaXnZ3ZK+suLOMVv1jmwEziRiLVQFP60DuSI0jqs
         +GsDsaAQa/Iyo7GM1vdmNuyUnFA/D6poKuXdMDl5QqWEpAhBnwNtOxfI+kdS2457kLDi
         Pz+6fBss95yVAt9OkCI+LpCnBmBOIi7aciOq6bpD2evFw+mfVuEdeW4/kfvlhJRdmAL8
         8bew==
X-Gm-Message-State: APjAAAUslna3iqKL8WbVMh69F5H/msAjpWvIUX11JBStgXiJLSe0r4jy
	Vn7L1PzW1E0xgBPHpQVGzh7gIQ==
X-Received: by 2002:a67:c21d:: with SMTP id i29mr8769742vsj.72.1572246046996;
        Mon, 28 Oct 2019 00:00:46 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id 94sm4295571uah.9.2019.10.28.00.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 00:00:46 -0700 (PDT)
Date: Mon, 28 Oct 2019 07:00:45 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: Remove
 unnecessary line continuations
Message-ID: <20191028070045.tjxnumxuv365vask@linux-kernel-dev>
References: <20191028051237.3row7xnbr6pgn4bp@linux-kernel-dev>
 <alpine.DEB.2.21.1910280726270.2314@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910280726270.2314@hadrien>
User-Agent: NeoMutt/20171215

On Mon, Oct 28, 2019 at 07:27:36AM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 28 Oct 2019, Frank A. Cancio Bello wrote:
> 
> > checkpatch message:
> > "WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations"
> >
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 03c8937f80b0..94c2c708dc92 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -208,8 +208,8 @@ static void mtk_hsdma_reset_chan(struct mtk_hsdam_engine *hsdma,
> >
> >  static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
> >  {
> > -	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, " \
> > -			"tctx %08x, tdtx: %08x, rbase %08x, " \
> > +	dev_dbg(hsdma->ddev.dev, "tbase %08x, tcnt %08x, "
> > +			"tctx %08x, tdtx: %08x, rbase %08x, "
> >  			"rcnt %08x, rctx %08x, rdtx %08x\n",
> 
> String should not be cut over multiple lines, even if it results in
> exceeding 80 characters.  This makes it easier to grep for messages in the
> code.  You could fix both problems at once, since they affect the same
> code in each case.
> 
> julia
>

Thank you Julia for the suggestion. I already sent a new version of the patch.

frank a.

> >  			mtk_hsdma_read(hsdma, HSDMA_REG_TX_BASE),
> >  			mtk_hsdma_read(hsdma, HSDMA_REG_TX_CNT),
> > @@ -220,7 +220,7 @@ static void hsdma_dump_reg(struct mtk_hsdam_engine *hsdma)
> >  			mtk_hsdma_read(hsdma, HSDMA_REG_RX_CRX),
> >  			mtk_hsdma_read(hsdma, HSDMA_REG_RX_DRX));
> >
> > -	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, " \
> > +	dev_dbg(hsdma->ddev.dev, "info %08x, glo %08x, delay %08x, "
> >  			"intr_stat %08x, intr_mask %08x\n",
> >  			mtk_hsdma_read(hsdma, HSDMA_REG_INFO),
> >  			mtk_hsdma_read(hsdma, HSDMA_REG_GLO_CFG),
> > @@ -243,9 +243,9 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
> >  		tx_desc = &chan->tx_ring[i];
> >  		rx_desc = &chan->rx_ring[i];
> >
> > -		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, " \
> > +		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
> >  				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
> > -				i, tx_desc->addr0, tx_desc->flags, \
> > +				i, tx_desc->addr0, tx_desc->flags,
> >  				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
> >  	}
> >  }
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191028051237.3row7xnbr6pgn4bp%40linux-kernel-dev.
> >

