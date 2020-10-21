X-GM-THRID: 6885936091088551936
X-Received: by 2002:ac8:570f:: with SMTP id 15mr1447386qtw.203.1603256932102;
        Tue, 20 Oct 2020 22:08:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5956:: with SMTP id 22ls1564243qtz.4.gmail; Tue, 20 Oct
 2020 22:08:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxt3gCTu3kiLE/m0NfEwaf7krWMOfRwuGDKmpXOtY+nFpZd0KGhD8nVnVqxu9ZH2bobAsWp
X-Received: by 2002:ac8:5ac1:: with SMTP id d1mr1529608qtd.82.1603256930593;
        Tue, 20 Oct 2020 22:08:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603256930; cv=none;
        d=google.com; s=arc-20160816;
        b=CYcB9ytF2vUFgpnGOAafkc3n5VbEHMVDITguSnC7YLvdhDVyKpZPchKO/qfPLKr3l5
         G0je/IfycmRhzx54/aucQL54gcNMmc9xX2I44Kboc0DYABLHOywtwd9ZX1wweJq/yiBG
         X1K1zfS1mH6IIo6yKKKy62oHSBI0KZ5rRuY4Oe3DanEhrabgCQnxnB9OROxKYMzxpAjv
         sXAYmaZ+rGq4c7NnLSwQNurLiUZIfGyld87pDiwaPjXScjN16cry+i1xNO0LyKkzzEEB
         RIMMpv2BWvdJsAgQ+nKgiQf7ZtdqqZIHzQdndKSmx6bLKAxH7NryS5MCWFLhHcgEaLoX
         ODAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=b+KHAvp3X5Eh/wEAqouVvPKaON8S2Itae/m7a6dyU+8=;
        b=plYjzD5/+r99/38apswLbtiLZi1E90/PTG+YZPhnk0czl7XIuu59AH0/XjWI7+vckT
         +aDkZVZiOw3Sjw2uiCQ3G49P3gls0QtBhdLgazrZ1Vl2x+MvOArCoRYBF32rKhhPvxRC
         vhcWzDR8BMano8Ed6zL3+p2KHjl7eYvfP66gYt7+J4FSil597ISkRJSBoL/OHLZNCOQW
         mkedoW/00kA0Qq5iQqlpzdWmwk6RIdUIEJmM4tAwkcHYyRJAwQWy1nO2cq3fP9ewsBq9
         6nM7R/FBniSS0y/Z3VdxGV/QxHHPwpQ/v8ipKnB7k6bwKqcIJMBcsiFPKf0x869ASq2r
         veBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3v94ZDI;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g19si61413qtm.2.2020.10.20.22.08.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 22:08:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3v94ZDI;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id e7so752994pfn.12
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 22:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=b+KHAvp3X5Eh/wEAqouVvPKaON8S2Itae/m7a6dyU+8=;
        b=Q3v94ZDIFQ6gNeHcR5H+z2ks2cAziMo1zAv8okbdaNcraqB9OJg0d6bBxlRkwHd/eT
         DRdxbSOovEh7Wy4Le7kBIgUNu7YOcaFCOBYvL1E77nmLc9HRgR4VF4hOnxoK6mWgARpR
         6NN9HLeEnZieuY1P87rU93c7vPJmNoSUoHEtiHIvp5Sg3kYu+42Sd98gbLvsn3PsgFb/
         /Wh4k7UfjKaH0EJFXPtxgMP6HVJPQHgHnUxWBl/HZyFJgWAuNCiKk3GU02ziEA6DmBqU
         vqe2cmw/NpGMnUVQ6PzTVLSFqJw+I4Uom8BoyzTNesFCbp7FupdpF+aaCRDjzmnv+Rg/
         K1vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=b+KHAvp3X5Eh/wEAqouVvPKaON8S2Itae/m7a6dyU+8=;
        b=T1wryLFms0c6YMSs13QVi/cqDYFpaHVz8Mh0CDMpXghTkCQGbkLuYW5Bq5ATDiurvJ
         2TXnxWBmfqaXiQRc42fz24pMOpuZDu2zbSQts020Gz3XtrLfzdjb2MpMxW215CRZHm8B
         7NJT0R3/WyLTx8BKnKRF1W4gNZDzvCht2eMQeh/z7aXmznM3/W8xx4ZoTLgx3W+7faLh
         Np1CYT7XS/crZStBbTWj5yAwpHvkcHY1tNJ5eQTW44a5HarhmNhK75pCXHNC6hB+qIJc
         YzsYXsfJxbpgqFWch6pKAjsTZxBTVV470K9nem3OC5GSxYc2qfxb8EVjfpo9xrI7ouHA
         hByg==
X-Gm-Message-State: AOAM531YRvgXPEgiH+Gs1NJc+pJYDkmFB+m11j1G7jPfRshm3srDnuiy
	zvtjqtUbog0F8Os/r9tuPkBpgvXsv5c=
X-Received: by 2002:a63:4457:: with SMTP id t23mr1675307pgk.108.1603256929805;
        Tue, 20 Oct 2020 22:08:49 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id y14sm679717pfe.107.2020.10.20.22.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 22:08:49 -0700 (PDT)
Date: Wed, 21 Oct 2020 10:38:44 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: [PATCH 1/2] staging: kpc2000: kpc_dma: rearrange lines exceeding 100
 columns
Message-ID: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reformat lines that exceed 100 column in length. Issue reported by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/dma.c         | 27 +++++++++---
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 44 +++++++++++++++----
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  9 ++--
 3 files changed, 63 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 452a3f7c835d..b8d8294aa4c3 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -16,7 +16,8 @@ irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
 {
 	struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;
 
-	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
+	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) ||
+	    (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
 		schedule_work(&ldev->irq_work);
 
 	return IRQ_HANDLED;
@@ -39,7 +40,9 @@ void  ndd_irq_worker(struct work_struct *ws)
 	cur = eng->desc_completed;
 	do {
 		cur = cur->Next;
-		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
+		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
+			cur,
+			cur->acd);
 		BUG_ON(cur == eng->desc_next); // Ordering failure.
 
 		if (cur->DescControlFlags & DMA_DESC_CTL_SOP) {
@@ -56,7 +59,9 @@ void  ndd_irq_worker(struct work_struct *ws)
 
 		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
 			if (cur->acd)
-				transfer_complete_cb(cur->acd, eng->accumulated_bytes, eng->accumulated_flags | ACD_FLAG_DONE);
+				transfer_complete_cb(cur->acd,
+						     eng->accumulated_bytes,
+						     eng->accumulated_flags | ACD_FLAG_DONE);
 		}
 
 		eng->desc_completed = cur;
@@ -103,7 +108,10 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 		eng->dir = DMA_TO_DEVICE;
 
 	eng->desc_pool_cnt = desc_cnt;
-	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
+	eng->desc_pool = dma_pool_create("KPC DMA Descriptors",
+					 &eng->pldev->dev,
+					 sizeof(struct kpc_dma_descriptor),
+					 DMA_DESC_ALIGNMENT, 4096);
 
 	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
 	if (!eng->desc_pool_first) {
@@ -141,7 +149,11 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 	INIT_WORK(&eng->irq_work, ndd_irq_worker);
 
 	// Grab IRQ line
-	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
+	rv = request_irq(eng->irq,
+			 ndd_irq_handler,
+			 IRQF_SHARED,
+			 KP_DRIVER_NAME_DMA_CONTROLLER,
+			 eng);
 	if (rv) {
 		dev_err(&eng->pldev->dev, "%s: failed to request_irq: %d\n", __func__, rv);
 		return rv;
@@ -195,7 +207,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 	}
 
 	// Clear any persistent bits just to make sure there is no residue from the reset
-	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);
+	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE |
+				    ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR |
+				    ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END |
+				    ENG_CTL_DMA_WAITING_PERSIST), 0);
 
 	// Reset performance counters
 
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index e1c7c04f16fe..b929987844ff 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -76,7 +76,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	mmap_read_lock(current->mm);      /*  get memory map semaphore */
-	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
+	rv = pin_user_pages(iov_base,
+			    acd->page_count,
+			    FOLL_TOUCH | FOLL_WRITE,
+			    acd->user_pages,
+			    NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
 		nr_pages = rv;
@@ -89,16 +93,25 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	nr_pages = acd->page_count;
 
 	// Allocate and setup the sg_table (scatterlist entries)
-	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
+	rv = sg_alloc_table_from_pages(&acd->sgt,
+				       acd->user_pages,
+				       acd->page_count,
+				       iov_base & (PAGE_SIZE - 1),
+				       iov_len, GFP_KERNEL);
 	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
 		goto unpin_pages;
 	}
 
 	// Setup the DMA mapping for all the sg entries
-	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
+	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev,
+					     acd->sgt.sgl,
+					     acd->sgt.nents,
+					     ldev->dir);
 	if (acd->mapped_entry_count <= 0) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
+		dev_err(&priv->ldev->pldev->dev,
+			"Couldn't dma_map_sg (%d)\n",
+			acd->mapped_entry_count);
 		goto free_table;
 	}
 
@@ -111,14 +124,26 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Figoure out how many descriptors are available and return an error if there aren't enough
 	num_descrs_avail = count_descriptors_available(ldev);
-	dev_dbg(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
+	dev_dbg(&priv->ldev->pldev->dev,
+		"    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n",
+		acd->mapped_entry_count,
+		desc_needed,
+		num_descrs_avail);
 	if (desc_needed >= ldev->desc_pool_cnt) {
-		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
+		dev_warn(&priv->ldev->pldev->dev,
+			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n",
+			 acd->mapped_entry_count,
+			 desc_needed,
+			 num_descrs_avail);
 		rv = -EAGAIN;
 		goto err_descr_too_many;
 	}
 	if (desc_needed > num_descrs_avail) {
-		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
+		dev_warn(&priv->ldev->pldev->dev,
+			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n",
+			 acd->mapped_entry_count,
+			 desc_needed,
+			 num_descrs_avail);
 		rv = -EMSGSIZE;
 		goto err_descr_too_many;
 	}
@@ -163,7 +188,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
 				desc->acd = acd;
 
-			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
+			dev_dbg(&priv->ldev->pldev->dev,
+				"  Filled descriptor %p (acd = %p)\n",
+				desc,
+				desc->acd);
 
 			ldev->desc_next = desc->Next;
 			desc = desc->Next;
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 624d47bae4d1..7698e5ef2a7c 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -138,7 +138,8 @@ int  kpc_dma_probe(struct platform_device *pldev)
 
 	// Setup miscdev struct
 	dev = MKDEV(assigned_major_num, pldev->id);
-	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
+	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev,
+					  dev, ldev, "kpc_dma%d", pldev->id);
 	if (IS_ERR(ldev->kpc_dma_dev)) {
 		rv = PTR_ERR(ldev->kpc_dma_dev);
 		dev_err(&ldev->pldev->dev, "%s: device_create failed: %d\n", __func__, rv);
@@ -205,9 +206,11 @@ int __init kpc_dma_driver_init(void)
 {
 	int err;
 
-	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
+	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0,
+				KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
 	if (err < 0) {
-		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n", KPC_DMA_CHAR_MAJOR, err);
+		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n",
+		       KPC_DMA_CHAR_MAJOR, err);
 		goto fail_chrdev_register;
 	}
 	assigned_major_num = err;
-- 
2.25.1


