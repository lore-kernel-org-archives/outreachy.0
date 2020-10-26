X-GM-THRID: 6885936091088551936
X-Received: by 2002:a92:844b:: with SMTP id l72mr8879603ild.244.1603685099515;
        Sun, 25 Oct 2020 21:04:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:50c:: with SMTP id d12ls1293236ils.10.gmail; Sun,
 25 Oct 2020 21:04:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxKg+GJQkmB/c/kHwYnsDJHRJf8Mixv4gvJ1nMLeEziGrJ/PwcwMsYbmLI275ELsLV4wqTI
X-Received: by 2002:a92:ba56:: with SMTP id o83mr10098533ili.19.1603685098364;
        Sun, 25 Oct 2020 21:04:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603685098; cv=none;
        d=google.com; s=arc-20160816;
        b=zM8q7KokvKpaPkRvyK/0QEim/SfvAihPkMF7RC0gm3MTLgC/wg01cWGj2ohEOkvxpU
         Vy98jJC0CIytaxegtKeZOvCn6xGHS4N7h/aC96f9nUC8IiN1LZyQNpBoZEJcBeLd5VJI
         x525FK84qGrwuceIifFywR3Bx1Vr0/blfeK+zS0ygGfLIEsOOGwZlU92tqJh64Pdooy1
         lWkPpZkv5xZmNQgHyUHCXdcxj6rVuVntT9rsHI5vDON3B8vcLR9iACbUT9qspTcahk8B
         GD9Wx54NNGgpbaC4PESnDsAvrIHC0pfZxyzVSrQ4dmGpBsVysmTPQePbdkTGTlkMAEn9
         ddkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6mqY69tiDXKz38qbV/PrCkNMMGmymtOyyGrul1BEJ8E=;
        b=rgf6AlrlythswzdFaocnghHOCsrOf/Mt5Qi1ZysN3pb114Aer9KWRvmgCMjPahnkko
         +UcGNwMwe3QzmZYHz+yKsFz4sfY1MfiYoE0bxV7Za0gR0hIZi5Etx4/ZBtqpaVlnrEMf
         kqfrVZ2+s3lSmNcEX0Ip7cku18IkjqlJpR18htonWxTQH5kqxFLLM0C0J+fuwUH20R4L
         55LTo498VWz2pAvyGP5DDSDIhSPa0fcVYixxog8+qFDfHO7jU11yYakgutkbf5/pEtZ5
         B2AQ72mi0FM29H+oC9lIxw7eq7GsglwzH5LAG5S86UStq49V+YtfDSP36jkZRkbOjBk3
         RI/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EZ/PRPeL";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id j7si533577ilc.4.2020.10.25.21.04.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 21:04:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EZ/PRPeL";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id x10so1847027plm.13
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 21:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6mqY69tiDXKz38qbV/PrCkNMMGmymtOyyGrul1BEJ8E=;
        b=EZ/PRPeLBw+/oy8tM7oD1KFlPpbbrhwkx+uaijRvJ+RqSJY+VppaHPmrnzcOPtIGF1
         +P0/X5VJ5BAKX+hrQeUaO43UH/kwIaKh/MiMzqYd+MkJWrz2nmU1dL3ERo+81crAPhMh
         U4cyimh+YyYD8iqdR/WQ6qawjgieXj3wKw5Jx7G9AA/zl3Bq8BjIjN6mCIhHWHLi565l
         gNNe+AxG/Jvoqf96qe92wkgumchj1gnLobNbhbzQ2pjYzpWmtmPq5y4QQkG2hkLVxWsY
         Ibesg+Ig8j9Yhvg29KkVOwtOAcX7E0fxN4Hd6iAUeWh8HUIr2ntLZgMcjWz1EV/VnJMd
         lRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6mqY69tiDXKz38qbV/PrCkNMMGmymtOyyGrul1BEJ8E=;
        b=G1x8vaNOfmlW92OblhDfz/Oe4VkwhBiqEzmAWiJ4BLgJXBNciJBGPSueAGxUoOgTpd
         dkLuRGOs36fdDoaKvLb2/S3muVyfBiGkzsVgnCYMFks44MHu0ERd7g6YTLJDXOIepK5Y
         SYFuOrE9y+4lzBisu47J1mlRjGPfLBuG3ALMAL+5gmhrMAKXOZVVjooOg9MmqP67vwVW
         /zgk1uTDJRlONk7nNPqSm+ZyPOnzV2UFOldzFHnt/ath5M7faPklqRl6UBC7mtD6sSsO
         WPZoZTWdRlgW5JsTEzfgGea1aqqa4HWux0C4zy7yr9E3IIv0Fq02kdqIgOCsRLWD1UIK
         KOsA==
X-Gm-Message-State: AOAM531tu9SAxB4zrj3CYuzb8Tr2abSftbTbTuFlw3oOPMcx6kGz4t5Q
	Zz+9mmJFiEn11hHvKBCrAts=
X-Received: by 2002:a17:90a:5292:: with SMTP id w18mr5487372pjh.191.1603685097763;
        Sun, 25 Oct 2020 21:04:57 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id n64sm10171261pfn.134.2020.10.25.21.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 21:04:57 -0700 (PDT)
Date: Mon, 26 Oct 2020 09:34:53 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201026040453.GC5074@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>

On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:

Hello,
Requesting a review / ack of this patch.

Thank you,
Deepak.

> Reformat lines that exceed 100 column in length. Issue reported by
> checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v1:
>    - No change in this patch.
>    - Patch 2/2 has a change.
> 
>  drivers/staging/kpc2000/kpc_dma/dma.c         | 27 +++++++++---
>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 44 +++++++++++++++----
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  9 ++--
>  3 files changed, 63 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> index 452a3f7c835d..b8d8294aa4c3 100644
> --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> @@ -16,7 +16,8 @@ irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
>  {
>  	struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;
>  
> -	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
> +	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) ||
> +	    (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
>  		schedule_work(&ldev->irq_work);
>  
>  	return IRQ_HANDLED;
> @@ -39,7 +40,9 @@ void  ndd_irq_worker(struct work_struct *ws)
>  	cur = eng->desc_completed;
>  	do {
>  		cur = cur->Next;
> -		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
> +		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
> +			cur,
> +			cur->acd);
>  		BUG_ON(cur == eng->desc_next); // Ordering failure.
>  
>  		if (cur->DescControlFlags & DMA_DESC_CTL_SOP) {
> @@ -56,7 +59,9 @@ void  ndd_irq_worker(struct work_struct *ws)
>  
>  		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
>  			if (cur->acd)
> -				transfer_complete_cb(cur->acd, eng->accumulated_bytes, eng->accumulated_flags | ACD_FLAG_DONE);
> +				transfer_complete_cb(cur->acd,
> +						     eng->accumulated_bytes,
> +						     eng->accumulated_flags | ACD_FLAG_DONE);
>  		}
>  
>  		eng->desc_completed = cur;
> @@ -103,7 +108,10 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
>  		eng->dir = DMA_TO_DEVICE;
>  
>  	eng->desc_pool_cnt = desc_cnt;
> -	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
> +	eng->desc_pool = dma_pool_create("KPC DMA Descriptors",
> +					 &eng->pldev->dev,
> +					 sizeof(struct kpc_dma_descriptor),
> +					 DMA_DESC_ALIGNMENT, 4096);
>  
>  	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
>  	if (!eng->desc_pool_first) {
> @@ -141,7 +149,11 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
>  	INIT_WORK(&eng->irq_work, ndd_irq_worker);
>  
>  	// Grab IRQ line
> -	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> +	rv = request_irq(eng->irq,
> +			 ndd_irq_handler,
> +			 IRQF_SHARED,
> +			 KP_DRIVER_NAME_DMA_CONTROLLER,
> +			 eng);
>  	if (rv) {
>  		dev_err(&eng->pldev->dev, "%s: failed to request_irq: %d\n", __func__, rv);
>  		return rv;
> @@ -195,7 +207,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
>  	}
>  
>  	// Clear any persistent bits just to make sure there is no residue from the reset
> -	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);
> +	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE |
> +				    ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR |
> +				    ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END |
> +				    ENG_CTL_DMA_WAITING_PERSIST), 0);
>  
>  	// Reset performance counters
>  
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index e1c7c04f16fe..b929987844ff 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -76,7 +76,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  
>  	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
>  	mmap_read_lock(current->mm);      /*  get memory map semaphore */
> -	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
> +	rv = pin_user_pages(iov_base,
> +			    acd->page_count,
> +			    FOLL_TOUCH | FOLL_WRITE,
> +			    acd->user_pages,
> +			    NULL);
>  	mmap_read_unlock(current->mm);        /*  release the semaphore */
>  	if (rv != acd->page_count) {
>  		nr_pages = rv;
> @@ -89,16 +93,25 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	nr_pages = acd->page_count;
>  
>  	// Allocate and setup the sg_table (scatterlist entries)
> -	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
> +	rv = sg_alloc_table_from_pages(&acd->sgt,
> +				       acd->user_pages,
> +				       acd->page_count,
> +				       iov_base & (PAGE_SIZE - 1),
> +				       iov_len, GFP_KERNEL);
>  	if (rv) {
>  		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
>  		goto unpin_pages;
>  	}
>  
>  	// Setup the DMA mapping for all the sg entries
> -	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
> +	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev,
> +					     acd->sgt.sgl,
> +					     acd->sgt.nents,
> +					     ldev->dir);
>  	if (acd->mapped_entry_count <= 0) {
> -		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
> +		dev_err(&priv->ldev->pldev->dev,
> +			"Couldn't dma_map_sg (%d)\n",
> +			acd->mapped_entry_count);
>  		goto free_table;
>  	}
>  
> @@ -111,14 +124,26 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  
>  	// Figoure out how many descriptors are available and return an error if there aren't enough
>  	num_descrs_avail = count_descriptors_available(ldev);
> -	dev_dbg(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
> +	dev_dbg(&priv->ldev->pldev->dev,
> +		"    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n",
> +		acd->mapped_entry_count,
> +		desc_needed,
> +		num_descrs_avail);
>  	if (desc_needed >= ldev->desc_pool_cnt) {
> -		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
> +		dev_warn(&priv->ldev->pldev->dev,
> +			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n",
> +			 acd->mapped_entry_count,
> +			 desc_needed,
> +			 num_descrs_avail);
>  		rv = -EAGAIN;
>  		goto err_descr_too_many;
>  	}
>  	if (desc_needed > num_descrs_avail) {
> -		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
> +		dev_warn(&priv->ldev->pldev->dev,
> +			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n",
> +			 acd->mapped_entry_count,
> +			 desc_needed,
> +			 num_descrs_avail);
>  		rv = -EMSGSIZE;
>  		goto err_descr_too_many;
>  	}
> @@ -163,7 +188,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
>  				desc->acd = acd;
>  
> -			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
> +			dev_dbg(&priv->ldev->pldev->dev,
> +				"  Filled descriptor %p (acd = %p)\n",
> +				desc,
> +				desc->acd);
>  
>  			ldev->desc_next = desc->Next;
>  			desc = desc->Next;
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 624d47bae4d1..7698e5ef2a7c 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -138,7 +138,8 @@ int  kpc_dma_probe(struct platform_device *pldev)
>  
>  	// Setup miscdev struct
>  	dev = MKDEV(assigned_major_num, pldev->id);
> -	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
> +	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev,
> +					  dev, ldev, "kpc_dma%d", pldev->id);
>  	if (IS_ERR(ldev->kpc_dma_dev)) {
>  		rv = PTR_ERR(ldev->kpc_dma_dev);
>  		dev_err(&ldev->pldev->dev, "%s: device_create failed: %d\n", __func__, rv);
> @@ -205,9 +206,11 @@ int __init kpc_dma_driver_init(void)
>  {
>  	int err;
>  
> -	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
> +	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0,
> +				KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
>  	if (err < 0) {
> -		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n", KPC_DMA_CHAR_MAJOR, err);
> +		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n",
> +		       KPC_DMA_CHAR_MAJOR, err);
>  		goto fail_chrdev_register;
>  	}
>  	assigned_major_num = err;
> -- 
> 2.25.1
> 

