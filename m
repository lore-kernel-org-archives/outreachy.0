X-GM-THRID: 6885903856141598720
X-Received: by 2002:a25:3b4b:: with SMTP id i72mr2248059yba.22.1603249426240;
        Tue, 20 Oct 2020 20:03:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:550a:: with SMTP id j10ls1987226ybb.2.gmail; Tue, 20 Oct
 2020 20:03:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWG06kxYxztXnJOBlXAXuX4YSCvD28le/+6KaWLdexJjEiZMi0YkHfFXYMru6penkYZnUB
X-Received: by 2002:a25:cfc1:: with SMTP id f184mr2285416ybg.498.1603249424641;
        Tue, 20 Oct 2020 20:03:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603249424; cv=none;
        d=google.com; s=arc-20160816;
        b=Vuj86rkSsf0hOZbpeSUtov+YbFCnvjGumnrBbvjGXBzIBLIlZnt/kT6kd1WCsHrgF7
         LIFhJmSuEqEusc+FwCNkUHsEdhqptP/vNfjsQhn3HOboCW+sauAglJtvUcShhFpYPIwr
         arq7LfMR9dA6zfnon7Z6azkmgh2GakCgS4xrgM4ezVKPVFmgkhVbJW1QjYqzwjqcFw9w
         uVvVeXJuOt3O6rSu7yif/GO936yjpq/n9U/Wxti5FDvuvi+lk8Sbn4gt9HpaJpoprSVG
         NqFYUD+iaVLi7vZCdcMmI2nfsIntQatQFpoUF+mk/MUXaS53NUwgpuIhj3gmh9eU4uIy
         Lblg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5vkScaGqTpAr8sEadR6e0ZKGuB2E37ElQJ/NHuCEUcw=;
        b=WZ7xmGvtq5yMYz96ISZcM8714OStbz1ONXpBxFBM9P6TKRdSZKgcYGv2ZB3Zhiv9KR
         POLB1RWErWEKZ3kiYg8wc8FZF1RE4emzjYCTwz2v1trXzWJc3k1RrRHKvlgUJcl+290k
         /5vzHYlqodR3OoHEKffxdjqCbWAaddTHOytfI+4/lXfcQsQkTODAkjv+SwEzPOcC1IQB
         PlRbvbYxRqwHHX9lKHOA5QO7But5aYhLLojSI2C12Tu8pwdNRLALM/ryCHu+jCoFW+aa
         VEDdFTxbOu5No9yYFFVqewzPoVb1svKJOf5grIfvK0iU7CXx96TIrS79cCmZ391XMOcq
         H8Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruyUFyBC;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s7si48795ybk.3.2020.10.20.20.03.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 20:03:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruyUFyBC;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id 1so471795ple.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 20:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=5vkScaGqTpAr8sEadR6e0ZKGuB2E37ElQJ/NHuCEUcw=;
        b=ruyUFyBCKOApMSfgZTtbT+vX6LXChKfcfB73SA7d9ckTZbdvAmjSsUb9I5ihWdDxL6
         2sc2zgKYLwfyP2O7z5TBkGGgewsKoxbRxr7V8yh16Bb3QCRq4YSLUNx9d+VaDy8TMFa9
         xzEOVT8x1eSiVsqvddhnOE+LiTo3Y0MLnY3sYwEfB1F+kt7LXi6903K0scTEkh4fO4ST
         sj32QRvIm7Na04Nldx9be89omhepF6bioL58x2t2yL7JGuZiBZuDY/o5zo23wxXJ9vDm
         xW4V+s9h8Y2Pnhfm9FWESGcvCTwzcOSV732oJXe5zAF6Xd3KdUgE60xj6/ejJr5TKcCF
         1LpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=5vkScaGqTpAr8sEadR6e0ZKGuB2E37ElQJ/NHuCEUcw=;
        b=YxGkKWEvGijSk4pC/Qj//GVqEim0E/L3OXgHoDfe3/m0X0eb8pLclWBWZV5XTWYVOf
         /z0CssmhbtW+t+rmOXSbRYZdQCO8v8d5E+8xyUQd+3rA3GZny+iugB8dFN0VVKTgXk0c
         O5xAqf3U5BiDMl5U2ONhCPyxIL8gL3nQN5ugxyHBInixvQh2wERShvrsCQhaLW1ZzZk6
         oFNT3ZUYzlG07MAIWpkyPsCbcF9ncI5pCAyTgbeT/z3pWz25eFAQJrtrjEagS0heXxaS
         qLfQI1tSAgf6fqRYbDdci+3SGrAxVbqbY6ZgfUefvAU+zp80BuSZ5Q/skLdo+swNFn9u
         /7IA==
X-Gm-Message-State: AOAM530nPjO3BhOIZZSlWlXLXNf14fymkrUV1rzTZWcJdo6bHWzy7NHy
	HGFPAfechrcvTQ5Os3uvjOw=
X-Received: by 2002:a17:90a:b38f:: with SMTP id e15mr1118103pjr.226.1603249423842;
        Tue, 20 Oct 2020 20:03:43 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id z20sm358162pfk.199.2020.10.20.20.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 20:03:42 -0700 (PDT)
Date: Wed, 21 Oct 2020 08:33:35 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH 1/2] staging: kpc2000: resolve various code style issues
Message-ID: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Multiple issues reported by checkpatch script around lines exceeding 100
columns, indentation of function parameters, extra blank lines. These
code formatting changes improves the code readability.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c  | 71 ++++++++++++++-----
 drivers/staging/kpc2000/kpc2000/core.c        |  3 +-
 .../staging/kpc2000/kpc2000/dma_common_defs.h |  3 +-
 3 files changed, 58 insertions(+), 19 deletions(-)

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
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 358d7b2f4ad1..6462a3059fb0 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -124,6 +124,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return count;
 }
+
 static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static ssize_t irq_mask_reg_show(struct device *dev,
@@ -367,7 +368,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
 
 	pcard->dma_bar_base = ioremap(dma_bar_phys_addr,
-					      dma_bar_phys_len);
+				      dma_bar_phys_len);
 	if (!pcard->dma_bar_base) {
 		dev_err(&pcard->pdev->dev,
 			"probe: DMA_BAR could not remap memory to virtual space\n");
diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index 21450e3d408f..8bc78be3c259 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -6,8 +6,7 @@
 #define KPC_DMA_S2C_BASE_OFFSET     0x0000
 #define KPC_DMA_C2S_BASE_OFFSET     0x2000
 #define KPC_DMA_ENGINE_SIZE         0x0100
-#define  ENGINE_CAP_PRESENT_MASK            0x1
-
+#define ENGINE_CAP_PRESENT_MASK     0x1
 
 #define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
 #define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
-- 
2.25.1


