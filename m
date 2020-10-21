X-GM-THRID: 6885970595942498304
X-Received: by 2002:a05:6808:10e:: with SMTP id b14mr2806901oie.152.1603295665413;
        Wed, 21 Oct 2020 08:54:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd17:: with SMTP id b23ls26400oii.2.gmail; Wed, 21 Oct
 2020 08:54:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmLpsNwRUKyRmEfZHY0Bi/soZ9Gjl4lBDWiFunwtPXkK53FOh3fWu16JjWTHYx81leDZ03
X-Received: by 2002:aca:af07:: with SMTP id y7mr2847190oie.176.1603295659073;
        Wed, 21 Oct 2020 08:54:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603295659; cv=none;
        d=google.com; s=arc-20160816;
        b=QYXAhGzoDYocD1WQfa2e82XI2QVPkhJpXb5ZqRwUfWUTYi5X9GGhXzUR9sGDWJ0cQx
         Gm54Ov5INHtF4hxgtyD0oIrrgrWH82Wq/1nXgk2CoSUCsUzyoNla9HEIB3EnECzXtnLJ
         qpfQtAOX3ipA3qKoNN1VeP3n6jR4/24cKYOw9jmnWDMtYvIZJdu3Qc7tmW2QZgvxZDiz
         er2AgjLRu8fvNW1R2ee4MVAVeHiRwYViY3Bx/dgWKWtiRc+npV8dRDk00gZqasu6ISpX
         6nTJOmOzZ/t+Z099kbemyPTIZi+ixBjcIlPK+b0mIKScp2DOsg1UE4Due2Q6jhAJpjC6
         5enA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=pV02ctL8hJRgE9ZXYjJbp6m9GwxR4Dob+DeuFIy/sV8=;
        b=bjC9trD6FaFAVad0u9GXMjFrz1TWNBBRTgZ1ZFvVT73BRsnH069S2yBNVWfsZNImJb
         RBVy1klQGp1OaZU9Rluni58v7FOx1hWKUwsXW3bJbUTnTzdRSyDu6z94PH6fP/pKGstV
         /7hIKQX97ZlLsalZ0DjljfJLFfTnhABZrqh27S4qdztV/NHsdT/pe9SR/Uac8IiSJ9FT
         kbW/dspgPCzbsHC2OBKUkMqX8tce8na+BOpJbOTeOKcTE6xJglXPTYKGwrlNKJNUA8pe
         8eYoMzoo3o1iQr4YHNIWV+VETG5amu13yy32ZtExydV/fVG0Y+ExNvkzATrTfvq2R2Yt
         /BAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mpIdLbA+;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n185si109176oih.3.2020.10.21.08.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 08:54:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mpIdLbA+;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g29so1726377pgl.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2020 08:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=pV02ctL8hJRgE9ZXYjJbp6m9GwxR4Dob+DeuFIy/sV8=;
        b=mpIdLbA+J3yx95OVCrIKkpx55H1g3syhYXDFsAfCYivio1VbJ/OCDd95Z90qH3tmn5
         U1qOKxFWCoq7fc9cZZHyYGVnsGUsjWzviu5kNK8XT586t8oo6NuvjvlYNZyujpLNNWkI
         VRaq5S2Yet/uwP2b6eveYFM8hRCDSTP3TKkkSPmsMKspafMxjjlkzjDDgFB8Hssu+71v
         pafC7LbqReNkME+KsfOCX5bERPhbifTwM4t2pI9r4aoTWUIHdjfaaVvdbZnQdJdqqx0k
         /O5lG6oUcr5VFb1ft6FUXC5aKudnLl15d6mDWU1C68L3DIYjB8qM/y3xmINX7EyLZmmC
         pGIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=pV02ctL8hJRgE9ZXYjJbp6m9GwxR4Dob+DeuFIy/sV8=;
        b=ajVABFjsVkkNsurY3LpLFMeJ8U4Fc+RfmvlR3ha9vX+IprBqUc3Rq6gDi+u1eWzkZA
         xL56zSNhlFVOIR7D4xwlEa2aYEvYnizBZ5qpUWUVftBJ99T9GVvwVOlxQJbLw0oXM2DB
         rhBBz8rFvVrHon9E2fhO2s+KbCkbX/81vbZBkcVw/fIOTeJtdqVZ/uNgdI7LS25ddGEH
         9WNQWgKsVPOruHj36NdXDRYxoWhtevezMDvYU3dMClohU2NyZDtXbFtybPjJPeuPUFco
         MNdAZY39ScfWjWII8/QIGocLLE/IaxwrchvkPjbPlnlH0Ld5hsc//ux1T3PCnlnQNQu5
         Fmiw==
X-Gm-Message-State: AOAM532C18VISuEq2/l+EVcUeXuSUjjdQaa1wvCy9GCNUC3Onwn2yk4u
	NLbJkXESM5XvNu/U8vk0n4Y=
X-Received: by 2002:a63:7f49:: with SMTP id p9mr3930740pgn.185.1603295658568;
        Wed, 21 Oct 2020 08:54:18 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id t17sm2500080pjs.39.2020.10.21.08.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 08:54:18 -0700 (PDT)
Date: Wed, 21 Oct 2020 21:24:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH v3 1/3] staging: kpc2000: rearrange lines exceeding 100
 columns
Message-ID: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reformat lines that exceed 100 column in length. Issue reported by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
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


