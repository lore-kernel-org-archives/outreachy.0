X-GM-THRID: 6885970595942498304
X-Received: by 2002:a9d:3a09:: with SMTP id j9mr1667170otc.312.1603264966229;
        Wed, 21 Oct 2020 00:22:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls1128129oth.1.gmail; Wed,
 21 Oct 2020 00:22:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQPuRUKeRdrs1A7eIhhIDrKIXBH5AUpU4gyaV7uPNp5e87hYcci2GUmf33qLYcwxIguJGp
X-Received: by 2002:a05:6830:2436:: with SMTP id k22mr1639475ots.185.1603264964979;
        Wed, 21 Oct 2020 00:22:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603264964; cv=none;
        d=google.com; s=arc-20160816;
        b=CszeFwBdwzrNlB6bEiObASmtWdJEJY3AkA1Q17VnKl9gTEn1Hlbrir7QFd8NrFIqaF
         EuKK/5fHv8zIcSDtfYBtrxfz0TW+Nq40e27HbbdpCFwVJp7hhSldEXjki0CoofGTSvyP
         Wa0efVzl8GUQkYbfNxU9WbJaVJZm6b+GAMtztpRQfn+U1ZmLaPBdHOW1bpp25OFCzgFO
         E9ZohbTiFLGhiaUml8ZOsRw0hM48SshQiW7YpwPCeax2hhU2fkzN+odnGDcPqUAi4Utq
         TC7/qSiJ0HY+WlbiPBqKvLYCeItQFt7RoduP2E2i/g37pj897b3JbPQxcnYa3GOIRzEi
         uDCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=TDUK2ueSGjIe6K+YFlkySvwrKftZbl2/og1v3K5Fvho=;
        b=s1acqxDowZ1PwbBWjCUaJXC81WLAdCyRfTz+w7F54+WdGmGTUYrNg6Z+jFc0ELl/to
         JT+Gjzl5zmyCrBEVBqRrhweSx1D4VJ5jLWUb1fflJM8opLvtDGb+sERet1D7ZsR0DHTD
         nOk3w6yKHX7SIdNQ/kBgIa+NXn5E2+D2DFWCzTOVjodyDaIB1eBqGA1YcQnNfSqiGYSz
         lpuFtP4OwJjUijvkSjwwsYZPdRcO/eXEE+TgoNkbD0B+3/CakeNOW5hJJQwCUG3y1Std
         TWvbs5C7sEYnQmpfxJn0JyGBeB4CY2J0u4ziRS3EJMAWIUAh9NOogc8vF/xo4BgepWQ+
         vXiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OBi+Qzvj;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id d22si139077ooj.1.2020.10.21.00.22.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 00:22:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OBi+Qzvj;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t18so776547plo.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 00:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=TDUK2ueSGjIe6K+YFlkySvwrKftZbl2/og1v3K5Fvho=;
        b=OBi+Qzvjm6zbf2H3I+dHK8W52+iXxbsUBCrWB7Zlimu44wRJAJhF2YTtl2aAPzw45P
         yLi+lnLZvwNXC9ssHHPzQ9ho00HeZ0q4Fu4qskKQ8qG6a+UbARJTZFoUgIDKhmM+a3Mn
         NPNJqEJMoguATa3u9ciA5yf7TxCVyR5BopVFeNNG5GmCE4BFyhy63kVLqHTT79pc/95w
         7bVhb8avF1O7sfV3RNZ9Aqbm1YAODwAFSFhIYelH4CqxlzKHcsZkGDbyYSz4opL5juzb
         Cnx4W6JT5P+d1Cx9kzmL2Vug4V0Mq/afk7Wiu88UT+Y5mfvYDBxYShY4RABPSoyqDujS
         8E7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=TDUK2ueSGjIe6K+YFlkySvwrKftZbl2/og1v3K5Fvho=;
        b=tuIMPCj3dwscfoBt9flxnctrSlgK8y/UD5/DToo00XiNJu2Aqzjg3u8d1jyKNjnuJF
         lQM4DMfWsx3BPCOwxFuuKbgQnO+ujSA3EIkeiiiJeQ2wrf6p5ccyKU1dLsyovEOcjGih
         WsnwqWv/psamHdpONKavhNT1LjdJLeKUuzmDCYOTdDbZmje2LV2fPu6rULISWHA0q4Xr
         zN8ZaNLxmz1OIjqFiPvzP3sjD7xQLmhCWJDJNIJP4KQfvOyyoP1QUt7z1PmiGM+iKFQl
         fRefvMjTXFvXJCmyb8E8qC54EnF7TJlPhvmI3+r0R2ziMB6vXSj2FnRYprolS4WSZByI
         Ai5g==
X-Gm-Message-State: AOAM530A7TzlPccvSJYRArVh9OyTqZhj7pYQLP9zieBvb2YkmbyKwSWD
	1JZse1olyLdYi2IoOvHxHlQ=
X-Received: by 2002:a17:902:d355:b029:d4:d88c:ded9 with SMTP id l21-20020a170902d355b02900d4d88cded9mr2226257plk.13.1603264964258;
        Wed, 21 Oct 2020 00:22:44 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id k127sm1419005pgk.10.2020.10.21.00.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 00:22:43 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:52:39 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v2 1/3] staging: kpc2000: rearrange lines exceeding 100
 columns
Message-ID: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reformat lines that exceed 100 column in length. Issue reported by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Updated patch subject and description to be specific to the issue
     being fixed.
   - Introduced patch 3/3.
   - Suggested by Vaishali T.

 drivers/staging/kpc2000/kpc2000/cell_probe.c | 71 +++++++++++++++-----
 1 file changed, 55 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 738122afc2ae..e7e963d62699 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -30,9 +30,12 @@
  *
  */
 
-#define KPC_OLD_DMA_CH_NUM(present, channel)   ((present) ? (0x8 | ((channel) & 0x7)) : 0)
-#define KPC_OLD_S2C_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
-#define KPC_OLD_C2S_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
+#define KPC_OLD_DMA_CH_NUM(present, channel)   \
+		((present) ? (0x8 | ((channel) & 0x7)) : 0)
+#define KPC_OLD_S2C_DMA_CH_NUM(cte)   \
+		KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
+#define KPC_OLD_C2S_DMA_CH_NUM(cte)   \
+		KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
 
 #define KP_CORE_ID_INVALID      0
 #define KP_CORE_ID_I2C          3
@@ -67,7 +70,8 @@ void  parse_core_table_entry_v0(struct core_table_entry *cte, const u64 read_val
 static
 void dbg_cte(struct kp2000_device *pcard, struct core_table_entry *cte)
 {
-	dev_dbg(&pcard->pdev->dev, "CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
+	dev_dbg(&pcard->pdev->dev,
+		"CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
 		cte->type,
 		cte->offset,
 		cte->offset / 4096,
@@ -107,7 +111,14 @@ static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
 		.ddna              = pcard->ddna,
 	};
 
-	dev_dbg(&pcard->pdev->dev, "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
+	dev_dbg(&pcard->pdev->dev,
+		"Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
+		cte.type,
+		KPC_OLD_S2C_DMA_CH_NUM(cte),
+		KPC_OLD_C2S_DMA_CH_NUM(cte),
+		cte.offset,
+		cte.length,
+		cte.length / 8);
 
 	cell.platform_data = &core_pdata;
 	cell.pdata_size = sizeof(struct kpc_core_device_platdata);
@@ -290,7 +301,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 	struct kpc_uio_device *kudev;
 	int rv;
 
-	dev_dbg(&pcard->pdev->dev, "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
+	dev_dbg(&pcard->pdev->dev,
+		"Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
+		cte.type,
+		KPC_OLD_S2C_DMA_CH_NUM(cte),
+		KPC_OLD_C2S_DMA_CH_NUM(cte),
+		cte.offset,
+		cte.length,
+		cte.length / 8);
 
 	kudev = kzalloc(sizeof(*kudev), GFP_KERNEL);
 	if (!kudev)
@@ -315,10 +333,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 
 	kudev->uioinfo.mem[0].name = "uiomap";
 	kudev->uioinfo.mem[0].addr = pci_resource_start(pcard->pdev, REG_BAR) + cte.offset;
-	kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1); // Round up to nearest PAGE_SIZE boundary
+
+	// Round up to nearest PAGE_SIZE boundary
+	kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
 	kudev->uioinfo.mem[0].memtype = UIO_MEM_PHYS;
 
-	kudev->dev = device_create(kpc_uio_class, &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d", kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
+	kudev->dev = device_create(kpc_uio_class,
+				   &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d",
+				   kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
 	if (IS_ERR(kudev->dev)) {
 		dev_err(&pcard->pdev->dev, "%s: device_create failed!\n",
 			__func__);
@@ -341,7 +363,9 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 	return 0;
 }
 
-static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
+static int  create_dma_engine_core(struct kp2000_device *pcard,
+				   size_t engine_regs_offset,
+				   int engine_num, int irq_num)
 {
 	struct mfd_cell  cell = { .id = engine_num };
 	struct resource  resources[2];
@@ -380,18 +404,28 @@ static int  kp2000_setup_dma_controller(struct kp2000_device *pcard)
 
 	// S2C Engines
 	for (i = 0 ; i < 32 ; i++) {
-		capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
+		capabilities_reg = readq(pcard->dma_bar_base +
+					 KPC_DMA_S2C_BASE_OFFSET +
+					 (KPC_DMA_ENGINE_SIZE * i));
+
 		if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
-			err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), i,  pcard->pdev->irq);
+			err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET +
+							    (KPC_DMA_ENGINE_SIZE * i)),
+						     i, pcard->pdev->irq);
 			if (err)
 				goto err_out;
 		}
 	}
 	// C2S Engines
 	for (i = 0 ; i < 32 ; i++) {
-		capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
+		capabilities_reg = readq(pcard->dma_bar_base +
+					 KPC_DMA_C2S_BASE_OFFSET +
+					 (KPC_DMA_ENGINE_SIZE * i));
+
 		if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
-			err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), 32 + i,  pcard->pdev->irq);
+			err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET +
+							    (KPC_DMA_ENGINE_SIZE * i)),
+						     32 + i,  pcard->pdev->irq);
 			if (err)
 				goto err_out;
 		}
@@ -433,10 +467,15 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
 	// Then, iterate over the possible core types.
 	for (current_type_id = 1 ; current_type_id <= highest_core_id ; current_type_id++) {
 		unsigned int core_num = 0;
-		// Foreach core type, iterate the whole table and instantiate subdevices for each core.
-		// Yes, this is O(n*m) but the actual runtime is small enough that it's an acceptable tradeoff.
+		/*
+		 * Foreach core type, iterate the whole table and instantiate
+		 * subdevices for each core.
+		 * Yes, this is O(n*m) but the actual runtime is small enough
+		 * that it's an acceptable tradeoff.
+		 */
 		for (i = 0 ; i < pcard->core_table_length ; i++) {
-			read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
+			read_val = readq(pcard->sysinfo_regs_base +
+					 ((pcard->core_table_offset + i) * 8));
 			parse_core_table_entry(&cte, read_val, pcard->core_table_rev);
 
 			if (cte.type != current_type_id)
-- 
2.25.1


