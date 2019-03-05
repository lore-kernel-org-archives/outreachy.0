X-GM-THRID: 6664854131840122880
X-Received: by 2002:a50:a499:: with SMTP id w25mr3213245edb.3.1551782594003;
        Tue, 05 Mar 2019 02:43:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:af8d:: with SMTP id mj13ls1435072ejb.4.gmail; Tue,
 05 Mar 2019 02:43:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqxkq6sJP5Kw8YN1/zCatqBobcMsMh6fsXNu2IJZ6srpj8fsmLT/lySAnHCTMxWuFODTPdhP
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr2807698ejx.13.1551782593267;
        Tue, 05 Mar 2019 02:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551782593; cv=none;
        d=google.com; s=arc-20160816;
        b=DJYw/XW8QZeTcN5XP9RU2youf7SaMaDFK2yHAGS1I+Dui0hhEelW2W6Zws4IlHfJFa
         h3toxOU02Sce3g1Tg9dq4BLX0j8IGYtWITtYk1c4r2vo6Izl2ls3EOt28WOY7pQhSMsb
         iWw4Fu4sELh1ifXJO1rL4bThVBmuMd9KnKlVoWXkx7aXxgSwtptX2Wnwpvwghe+2MBM8
         896yW/E+uk+YzCf3pxeCPzjgEoqSy4MH1xpb53XNijWkk1cBWTabFdTx1Hcf6hwRGXII
         +HOtJylues+8RITAxFFGZjNPYCnhxE29rfnaohRVt5mYD+JH2C1Vp192sYYYSaHUD9rN
         HWKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fYYwaZ++xd3UDb107P5xsGbERIhAYoA+JHHb986EeYM=;
        b=iGi4KM70xN+wmP0bHKjfE/8aC9t2/6pa4vybYcbyAoFCC88eYOTi655VfvnJOHyNDs
         Dar8VxDWFAJ0rOAzw8C916Hcp7acwwCCTi/smBM0QMpub78uzOBoTPd+3jf8+Ka9K4fl
         RrTU+xMZgZc2bqk2ceUyU4C+qs+LKvo7Ou0zZjvFD61oNqeS5wyVxW/jUEol8CcFLUyM
         O/eSwceOq1E/eBULyH2cvaSXSjgvkKmaAEmkAU+Ogf0uSY84+eDmzk7MUYBAchFvisRl
         J4GZjEkKthG7oPr30yXOHBeefbKx27WnMRxjkawPlaTlEvMTnXRrckaOiO5ZKDFh0WYV
         OUyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h12si363258edh.4.2019.03.05.02.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:43:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="371970412"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 11:43:12 +0100
Date: Tue, 5 Mar 2019 11:43:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Fix various
 warnings in ralink-gdma
In-Reply-To: <20190305103753.GA15177@pthm>
Message-ID: <alpine.DEB.2.20.1903051141410.3701@hadrien>
References: <20190305103753.GA15177@pthm>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Daniela Mormocea wrote:

> Fix warnings regarding uint32_t, unsigned int, and
> unnecessary line continuations

You should cut this up into a series.  Don't fix multiple types of
warnings in a single patch.  First, you may make a mistake, and it is
easier to revert a whole patch than part of one.  Second, bigger patches
are harder to review, especially when one has to look for different things
in different places.

julia

>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 52 ++++++++++++++++---------------
>  1 file changed, 27 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index d78042e..d3afe5d 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -164,7 +164,7 @@ static inline uint32_t gdma_dma_read(struct gdma_dma_dev *dma_dev,
>  }
>
>  static inline void gdma_dma_write(struct gdma_dma_dev *dma_dev,
> -				  unsigned reg, uint32_t val)
> +				  unsigned int reg, uint32_t val)
>  {
>  	writel(val, dma_dev->base + reg);
>  }
> @@ -268,7 +268,7 @@ static int gdma_dma_terminate_all(struct dma_chan *c)
>
>  static void rt305x_dump_reg(struct gdma_dma_dev *dma_dev, int id)
>  {
> -	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, " \
> +	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, "
>  			"ctr1 %08x, intr %08x, signal %08x\n", id,
>  			gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
>  			gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
> @@ -283,7 +283,7 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
>  	dma_addr_t src_addr, dst_addr;
>  	struct gdma_dma_sg *sg;
> -	uint32_t ctrl0, ctrl1;
> +	u32 ctrl0, ctrl1;
>
>  	/* verify chan is already stopped */
>  	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
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
> @@ -342,8 +342,8 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>
>  static void rt3883_dump_reg(struct gdma_dma_dev *dma_dev, int id)
>  {
> -	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, " \
> -			"ctr1 %08x, unmask %08x, done %08x, " \
> +	dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 %08x, "
> +			"ctr1 %08x, unmask %08x, done %08x, "
>  			"req %08x, ack %08x, fin %08x\n", id,
>  			gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
>  			gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
> @@ -361,7 +361,7 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
>  	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
>  	dma_addr_t src_addr, dst_addr;
>  	struct gdma_dma_sg *sg;
> -	uint32_t ctrl0, ctrl1;
> +	u32 ctrl0, ctrl1;
>
>  	/* verify chan is already stopped */
>  	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
> @@ -377,21 +377,21 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
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
> @@ -399,8 +399,8 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
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
> @@ -741,7 +741,9 @@ static void gdma_dma_tasklet(unsigned long arg)
>  				atomic_inc(&dma_dev->cnt);
>  				gdma_start_transfer(dma_dev, chan);
>  			} else {
> -				dev_dbg(dma_dev->ddev.dev, "chan %d no desc to issue\n", chan->id);
> +				dev_dbg(dma_dev->ddev.dev,
> +					"chan %d no desc to issue\n",
> +					chan->id);
>  			}
>  			if (!dma_dev->chan_issued)
>  				break;
> @@ -753,7 +755,7 @@ static void gdma_dma_tasklet(unsigned long arg)
>
>  static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
>  {
> -	uint32_t gct;
> +	u32 gct;
>
>  	/* all chans round robin */
>  	gdma_dma_write(dma_dev, GDMA_RT305X_GCT, GDMA_REG_GCT_ARBIT_RR);
> @@ -767,7 +769,7 @@ static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
>
>  static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev)
>  {
> -	uint32_t gct;
> +	u32 gct;
>
>  	/* all chans round robin */
>  	gdma_dma_write(dma_dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR);
> @@ -819,7 +821,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
>  	match = of_match_device(gdma_of_match_table, &pdev->dev);
>  	if (!match)
>  		return -EINVAL;
> -	data = (struct gdma_data *) match->data;
> +	data = (struct gdma_data *)match->data;
>
>  	dma_dev = devm_kzalloc(&pdev->dev,
>  			       struct_size(dma_dev, chan, data->chancnt),
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305103753.GA15177%40pthm.
> For more options, visit https://groups.google.com/d/optout.
>

