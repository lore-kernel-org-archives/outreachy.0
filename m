X-GM-THRID: 6523195637320646656
X-Received: by 10.202.236.87 with SMTP id k84mr3038328oih.73.1518800116020;
        Fri, 16 Feb 2018 08:55:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.104.137 with SMTP id o9ls371365oik.15.gmail; Fri, 16 Feb
 2018 08:55:15 -0800 (PST)
X-Google-Smtp-Source: AH8x227FzTeLqNJ9uU0WcTi9oKmadT8HMKLYfjb7IIY0nquHC67OrcHjT/y3COg5KGI1mOThXjWv
X-Received: by 10.202.68.84 with SMTP id r81mr3160657oia.52.1518800115036;
        Fri, 16 Feb 2018 08:55:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518800114; cv=none;
        d=google.com; s=arc-20160816;
        b=lfQPadAdMpvUOpwtILlQhNLmrrqx9hav5CLmr7DV+cHhNcPvNpSC5j1CK6PAEz1N6B
         gXM+OgclqwOgp2ZZW4qanY/cf1NHMqPZeQuPDG2dtQE7BHjYrujsHLhWPESbM9sIAQ19
         eHmbYJQnAc/eHD7tOJ9qHqpltCwbfg/zIaEn1JGf44FBMCebAZQ8PGsLaqJI2Voz7ajY
         tSqhbY6f2jSVrXDqRe8IeDbIjpt4HZkezCh+7Om1pSm2qA4P1vCDbDS0pZVZez6Faq/v
         BJ0RdhYClq5UY9yW5OI/nZ41cTtPg84lRAfInhICKRQIhos1Lm3Y7DMv9/PXn0ifSmnA
         MAkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=17kJ8vUsNATujCT/PHBLCwiMjMPAkIthOnCrpKD9XwM=;
        b=NjIAM3wxcyINzgEFQRr3hte9zUfL5TXPPqFgKha5smKSF18iOB/4D3XAKELDBkCxJl
         +ECTW11lgXWVGgJ/7+334FACU4YhxOOYeUXF5bKgKCUihU0z/oZ9DxbB8rhYWUc73C53
         ikZF+8f7n/gC/eaSgWvfCj//x6iYeOy26xanArhbVnvUjYGKG4ciuqWlKk7UzEwKwKCm
         jWhbWxC/ETR7xv8Xt6EbFi3lQQu1zFfY7rdCP9FBy0dMEenGMk72eGle2rGUzTL2Gkmq
         +PyBarW/wNx8yDlKc7wzO13pVlFO4caC4H4fa4KBgzv+ScUiJ/sMUJ0bQRikNH7vYhqF
         jdjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oo//ttgV;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id i15si178501oik.1.2018.02.16.08.55.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 08:55:14 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oo//ttgV;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j9so2857789pgv.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 08:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=17kJ8vUsNATujCT/PHBLCwiMjMPAkIthOnCrpKD9XwM=;
        b=oo//ttgVUTft7Gqg00hIbM4F8thiztQn7JJV6OcQYTbOdMPxXckKIMq6Ccf1K6YhGU
         5BC52NQ5WrFA4Fq0JFk/IFRDe+xRg/WEH/42XuzpjuZTWmIBlzHXR6aWgjP1A/L9ngc5
         3IO3hflF1K8nyAIKjDWaPVByBpZL8/uQZgQQPjfbRVif26GGIgQFeJzBbwQ8B4NYZvhv
         HfxGYN96r8rze6GIjrZwqDgWkVb5AWBo0ze6VbO8gUjNGTWrKzPaNNhR5d5nkbFzTdXT
         dRyfH5citbwqSS2sMm3+QXXdn9vjbCb3uo3XsMD6sJNNjXZ3nSDf+oGQOsfmnRfuI3DZ
         B+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=17kJ8vUsNATujCT/PHBLCwiMjMPAkIthOnCrpKD9XwM=;
        b=AYGuGLgzN4lltwvlWu69a70/wfdCQxj0fHdB+9Aymf8CxvdAjtXIohF1KoDpvaMbEn
         UceygGP2JD8mcYtCPOuNCQrzEBlwd/rMpRLLAMX2FnPf1lxvMWlcC2sx+tpPinrsybK8
         uAOlRHK98t3zYFVm/+fuJmKwBECw1j8blEOdu6UrnJPhtxlfx6MUujP0IxU3hebkTnDs
         McRBWscFoubtNKG385jYueyBGxQJ9pfq2lkBrNxmYr3RvgU5QGi0p62XYz28ATGlrVB8
         a5oxuHfrIMrTkyxxsBRZ2YI+e7A79C4w5snR91FEOECLQ3Pwha34gdfWc+EhWHUYUnab
         eLLQ==
X-Gm-Message-State: APf1xPA4mS1OK2wzkNN2iv/flzWHDMUAlPH4reNUE1S/elJUAU455Oz0
	dTiAZNM+gN9XfYg4PB2TW2OzlQ==
X-Received: by 10.99.42.9 with SMTP id q9mr5621617pgq.45.1518800114410;
        Fri, 16 Feb 2018 08:55:14 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id t8sm40734602pgr.21.2018.02.16.08.55.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Feb 2018 08:55:13 -0800 (PST)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: boris.brezillon@free-electrons.com,
	richard@nod.at,
	dwmw2@infradead.org,
	computersforpeace@gmail.com,
	marek.vasut@gmail.com,
	cyrille.pitchen@wedev4u.fr,
	outreachy-kernel@googlegroups.com,
	ezequiel@vanguardiasur.com.ar
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH NAND 1/5] mtd/nand: Replace printk with pr_warn
Date: Fri, 16 Feb 2018 22:25:04 +0530
Message-Id: <49b0ddeaf74e473b0a5cd2a9fe2a3d0351349912.1518797480.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>

pr_*macro is the preferred way to print messages, replace all
printk(KERN_WARN, ...) with pr_warn.


Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/mtd/nand/ams-delta.c   |  2 +-
 drivers/mtd/nand/cafe_nand.c   |  4 ++--
 drivers/mtd/nand/cs553x_nand.c |  2 +-
 drivers/mtd/nand/diskonchip.c  |  8 ++++----
 drivers/mtd/nand/mxc_nand.c    |  2 +-
 drivers/mtd/nand/nand_bch.c    | 10 +++++-----
 drivers/mtd/nand/nandsim.c     |  2 +-
 7 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-delta.c
index dcec9cf..24b1c24 100644
--- a/drivers/mtd/nand/ams-delta.c
+++ b/drivers/mtd/nand/ams-delta.c
@@ -185,7 +185,7 @@ static int ams_delta_init(struct platform_device *pdev)
 	/* Allocate memory for MTD device structure and private data */
 	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
 	if (!this) {
-		printk (KERN_WARNING "Unable to allocate E3 NAND MTD device structure.\n");
+		pr_warn("Unable to allocate E3 NAND MTD device structure.\n");
 		err = -ENOMEM;
 		goto out;
 	}
diff --git a/drivers/mtd/nand/cafe_nand.c b/drivers/mtd/nand/cafe_nand.c
index bc558c4..1e84a6e 100644
--- a/drivers/mtd/nand/cafe_nand.c
+++ b/drivers/mtd/nand/cafe_nand.c
@@ -773,8 +773,8 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 		cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
 		cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
 	} else {
-		printk(KERN_WARNING "Unexpected NAND flash writesize %d. Aborting\n",
-		       mtd->writesize);
+		pr_warn("Unexpected NAND flash writesize %d. Aborting\n",
+			mtd->writesize);
 		goto out_free_dma;
 	}
 	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
diff --git a/drivers/mtd/nand/cs553x_nand.c b/drivers/mtd/nand/cs553x_nand.c
index d488775..d4269a4 100644
--- a/drivers/mtd/nand/cs553x_nand.c
+++ b/drivers/mtd/nand/cs553x_nand.c
@@ -211,7 +211,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 	/* map physical address */
 	this->IO_ADDR_R = this->IO_ADDR_W = ioremap(adr, 4096);
 	if (!this->IO_ADDR_R) {
-		printk(KERN_WARNING "ioremap cs553x NAND @0x%08lx failed\n", adr);
+		pr_warn("ioremap cs553x NAND @0x%08lx failed\n", adr);
 		err = -EIO;
 		goto out_mtd;
 	}
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index c3aa53c..dac4aec 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -1015,7 +1015,7 @@ static int __init find_media_headers(struct mtd_info *mtd, u_char *buf, const ch
 		if (retlen != mtd->writesize)
 			continue;
 		if (ret) {
-			printk(KERN_WARNING "ECC error scanning DOC at 0x%x\n", offs);
+			pr_warn("ECC error scanning DOC at 0x%x\n", offs);
 		}
 		if (memcmp(buf, id, 6))
 			continue;
@@ -1030,7 +1030,7 @@ static int __init find_media_headers(struct mtd_info *mtd, u_char *buf, const ch
 		return 2;
 	}
 	if (doc->mh0_page == -1) {
-		printk(KERN_WARNING "DiskOnChip %s Media Header not found.\n", id);
+		pr_warn("DiskOnChip %s Media Header not found.\n", id);
 		return 0;
 	}
 	/* Only one mediaheader was found.  We want buf to contain a
@@ -1093,7 +1093,7 @@ static inline int __init nftl_partscan(struct mtd_info *mtd, struct mtd_partitio
 			maxblocks = min(32768U, (maxblocks << 1) + psize);
 			mh->UnitSizeFactor--;
 		}
-		printk(KERN_WARNING "UnitSizeFactor=0x00 detected.  Correct value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
+		pr_warn("UnitSizeFactor=0x00 detected. Correct value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
 	}
 
 	/* NOTE: The lines below modify internal variables of the NAND and MTD
@@ -1512,7 +1512,7 @@ static int __init doc_probe(unsigned long physadr)
 	tmpb = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
 	tmpc = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
 	if ((tmp == tmpb) || (tmp != tmpc)) {
-		printk(KERN_WARNING "Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\n", physadr);
+		pr_warn("Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\n", physadr);
 		ret = -ENODEV;
 		goto notfound;
 	}
diff --git a/drivers/mtd/nand/mxc_nand.c b/drivers/mtd/nand/mxc_nand.c
index 53e5e03..e99c272 100644
--- a/drivers/mtd/nand/mxc_nand.c
+++ b/drivers/mtd/nand/mxc_nand.c
@@ -634,7 +634,7 @@ static int mxc_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
 	do {
 		err = ecc_stat & ecc_bit_mask;
 		if (err > err_limit) {
-			printk(KERN_WARNING "UnCorrectable RS-ECC Error\n");
+			pr_warn("UnCorrectable RS-ECC Error\n");
 			return -EBADMSG;
 		} else {
 			ret += err;
diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/nand_bch.c
index 505441c..366c04a 100644
--- a/drivers/mtd/nand/nand_bch.c
+++ b/drivers/mtd/nand/nand_bch.c
@@ -134,7 +134,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 	}
 
 	if (!eccsize || !eccbytes) {
-		printk(KERN_WARNING "ecc parameters not supplied\n");
+		pr_warn("ecc parameters not supplied\n");
 		goto fail;
 	}
 
@@ -151,8 +151,8 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 
 	/* verify that eccbytes has the expected value */
 	if (nbc->bch->ecc_bytes != eccbytes) {
-		printk(KERN_WARNING "invalid eccbytes %u, should be %u\n",
-		       eccbytes, nbc->bch->ecc_bytes);
+		pr_warn("invalid eccbytes %u, should be %u\n",
+			eccbytes, nbc->bch->ecc_bytes);
 		goto fail;
 	}
 
@@ -166,7 +166,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 
 	/* sanity checks */
 	if (8*(eccsize+eccbytes) >= (1 << m)) {
-		printk(KERN_WARNING "eccsize %u is too large\n", eccsize);
+		pr_warn("eccsize %u is too large\n", eccsize);
 		goto fail;
 	}
 
@@ -181,7 +181,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 	nand->ecc.steps = eccsteps;
 	nand->ecc.total = eccsteps * eccbytes;
 	if (mtd_ooblayout_count_eccbytes(mtd) != (eccsteps*eccbytes)) {
-		printk(KERN_WARNING "invalid ecc layout\n");
+		pr_warn("invalid ecc layout\n");
 		goto fail;
 	}
 
diff --git a/drivers/mtd/nand/nandsim.c b/drivers/mtd/nand/nandsim.c
index 246b439..b2436ea 100644
--- a/drivers/mtd/nand/nandsim.c
+++ b/drivers/mtd/nand/nandsim.c
@@ -188,7 +188,7 @@ MODULE_PARM_DESC(bch,		 "Enable BCH ecc and set how many bits should "
 #define NS_DBG(args...) \
 	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug: " args); } while(0)
 #define NS_WARN(args...) \
-	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: " args); } while(0)
+	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); } while(0)
 #define NS_ERR(args...) \
 	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); } while(0)
 #define NS_INFO(args...) \
-- 
2.7.4


