X-GM-THRID: 6523195637320646656
X-Received: by 10.200.13.200 with SMTP id t8mr4771409qti.20.1518800593996;
        Fri, 16 Feb 2018 09:03:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.16.15 with SMTP id z15ls1611601qti.10.gmail; Fri, 16 Feb
 2018 09:03:13 -0800 (PST)
X-Google-Smtp-Source: AH8x2262AAxZYig9vIT41C/MpOU2NUrmonovGLjqgpUwrk1non23z7y4FGwvlUvAC33+2QfI6nJc
X-Received: by 10.237.53.243 with SMTP id d48mr4904787qte.33.1518800593021;
        Fri, 16 Feb 2018 09:03:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518800592; cv=none;
        d=google.com; s=arc-20160816;
        b=dmjLof+DOF9m69VVA1oezPhjEPcTxAjLCKLqJjmmkgmHAbFCOA2qUXxdkPwlq59Q1u
         43ZdcCCGlu4ML3VdYM0bS0BPVFk6Kz7ZeNSRyWBobZSqwijTwoiw/E0MV1/NBONg1daY
         uJ6uXvH5P0fdDztqlY24z5IwPoABFL35qqBGQhkwcOMjFO8/ZVBwZbrPMb8SGYmNBOBQ
         USmLeufDqBHW4hsZVUjUV2xE1Dc4T7R0ro0pTaaNcJX+SSOfZNY9+d2fBnxccwhIpsew
         ZR8XwkZhCJrv0nv5l5aQD7TyLBvWMCYRiXJ8z8o0pz/FgeSjHWJAqwXUPIw1CqOCOhoO
         Bn2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=rNrvu9lI9ffoSZINMW/e76SPJMi9JemgHbJYtapLdh8=;
        b=dZh5odFZl3QOZLh2KodHiuXGZraUNnXdCZ0l4dSfz8UATTkN5Uzw1SS2UF9dD4mrR0
         NQ2xMZRsZ5hGHucdxy7rbGEMvSeEz7uH9yVI241baBAi8MkzK/w8iNot9wUMiEa0lfUw
         8SCPkHsJ87GGiHCCYW1lAeM/PmGnYaXd/nXQhgdEYq3NKGj31FrUB7arC5QFh+MzzOL7
         f/d8iew6NC5Uxzbxo8jiuf523WmXf/ay3RDrp3hQJ2mGjIsCFTdacpq8AFjd985QtnDh
         u/cJ6CeqUJTGJE8/TzqmQOBzeKe/Pyn+l3rkAVa+D479Jtbkh7VNooyrSIpwv2U+TRqj
         WhkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Id9Lf8tq;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id p12si225553qtl.1.2018.02.16.09.03.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:03:12 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Id9Lf8tq;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id w17so2871730pgv.6
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rNrvu9lI9ffoSZINMW/e76SPJMi9JemgHbJYtapLdh8=;
        b=Id9Lf8tqdW2AsWqU2SKsbzK+j0+iRolunZkD0XjnDH7oFyiR1HBumOaHztq89KciX3
         blsdZv9uunWUwe7DWby+dEQ5K9h056bteLkJf+zknrqNQ29z5oKWG2o7gHlx9dMeIIVv
         Sj6IrYYXxte4oIjk5OdQ20DUklLfRbOYi/K6ew3FcKxvqsPSurPZtEeCWuh/E4TpbPeD
         /Cxk88Y10C/Pocz2B+phSeODl6VmkefA8zOowEl7LVLyzVUDZp3+XzDCw4Y45k2HaSeB
         4gKg1n3qN6748kLT4VkOVbbq7cf8G/HKsm8qgJmfuyNOF5mJ54pNFVsWbZwJJcxjxPWB
         tOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rNrvu9lI9ffoSZINMW/e76SPJMi9JemgHbJYtapLdh8=;
        b=dE+o6GkX8XzWgk8Ogiy0NwV2iEposj831cmKwpNZ0BB55otyuM5ID/bgLZWC6pK7sM
         SMzJRK7OeyeDR9DYBdEELcQ9IYfFJXMchxSOhTiLkefZQII5/agsyvQe9IDvrpToWpqV
         5/P7Blh+ZLbMa9UuhjVFhr9vk6z632ONKwhzAWjlGyqp/v7JCShRZX/65F38uVOQwJEr
         TPr36LJM/B2OjSfWsnZpTy1NI1kvmFYAux6uo8PcDkzKTRZ9n6uQ+EXYXKYaw0enzFx2
         vBztpV9PQ++osPrH8YJbK1DEzq2fInDm7RNqKkEc8DgrO4Pcw8EoT/R5Ja+RTKr0SDQy
         uiBA==
X-Gm-Message-State: APf1xPBcVAA528ecb9tzBzZhyVTcHF8yMkNl/kBheuWofhCzNF6QCfLG
	BXQ/RV4Hbw/94xgZ3jvLi8RUIQ==
X-Received: by 10.99.97.7 with SMTP id v7mr5787423pgb.239.1518800592113;
        Fri, 16 Feb 2018 09:03:12 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id g63sm55588831pfg.17.2018.02.16.09.03.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Feb 2018 09:03:11 -0800 (PST)
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
Subject: [PATCH NAND 4/5] mtd/nand: Replace printk with pr_info
Date: Fri, 16 Feb 2018 22:33:05 +0530
Message-Id: <bcd714a094082d5bea47559828c859296a01b7b0.1518797480.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>

pr_*macro is the preferred way to print messages, replace all
printk(KERN_INFO, ...) with pr_info.


Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/mtd/nand/cs553x_nand.c   |  2 +-
 drivers/mtd/nand/diskonchip.c    | 39 ++++++++++++++++++++-------------------
 drivers/mtd/nand/fsl_elbc_nand.c |  4 ++--
 drivers/mtd/nand/nandsim.c       |  2 +-
 drivers/mtd/nand/r852.h          |  2 +-
 5 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/mtd/nand/cs553x_nand.c b/drivers/mtd/nand/cs553x_nand.c
index ec54f81..e690ddc 100644
--- a/drivers/mtd/nand/cs553x_nand.c
+++ b/drivers/mtd/nand/cs553x_nand.c
@@ -295,7 +295,7 @@ static int __init cs553x_init(void)
 	/* If it doesn't have the NAND controller enabled, abort */
 	rdmsrl(MSR_DIVIL_BALL_OPTS, val);
 	if (val & PIN_OPT_IDE) {
-		printk(KERN_INFO "CS553x NAND controller: Flash I/O not enabled in MSR_DIVIL_BALL_OPTS.\n");
+		pr_info("CS553x NAND controller: Flash I/O not enabled in MSR_DIVIL_BALL_OPTS.\n");
 		return -ENXIO;
 	}
 
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index 93d23d1d..d921b9a 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -411,7 +411,7 @@ static uint16_t __init doc200x_ident_chip(struct mtd_info *mtd, int nr)
 
 		ident.dword = readl(docptr + DoC_2k_CDSN_IO);
 		if (((ident.byte[0] << 8) | ident.byte[1]) == ret) {
-			printk(KERN_INFO "DiskOnChip 2000 responds to DWORD access\n");
+			pr_info("DiskOnChip 2000 responds to DWORD access\n");
 			this->read_buf = &doc2000_readbuf_dword;
 		}
 	}
@@ -1020,7 +1020,7 @@ static int __init find_media_headers(struct mtd_info *mtd, u_char *buf, const ch
 		}
 		if (memcmp(buf, id, 6))
 			continue;
-		printk(KERN_INFO "Found DiskOnChip %s Media Header at 0x%x\n", id, offs);
+		pr_info("Found DiskOnChip %s Media Header at 0x%x\n", id, offs);
 		if (doc->mh0_page == -1) {
 			doc->mh0_page = offs >> this->page_shift;
 			if (!findmirror)
@@ -1070,11 +1070,11 @@ static inline int __init nftl_partscan(struct mtd_info *mtd, struct mtd_partitio
 	le16_to_cpus(&mh->FirstPhysicalEUN);
 	le32_to_cpus(&mh->FormattedSize);
 
-	printk(KERN_INFO "    DataOrgID        = %s\n"
-			 "    NumEraseUnits    = %d\n"
-			 "    FirstPhysicalEUN = %d\n"
-			 "    FormattedSize    = %d\n"
-			 "    UnitSizeFactor   = %d\n",
+	pr_info("    DataOrgID        = %s\n"
+		"    NumEraseUnits    = %d\n"
+		"    FirstPhysicalEUN = %d\n"
+		"    FormattedSize    = %d\n"
+		"    UnitSizeFactor   = %d\n",
 		mh->DataOrgID, mh->NumEraseUnits,
 		mh->FirstPhysicalEUN, mh->FormattedSize,
 		mh->UnitSizeFactor);
@@ -1105,7 +1105,7 @@ static inline int __init nftl_partscan(struct mtd_info *mtd, struct mtd_partitio
 	if (mh->UnitSizeFactor != 0xff) {
 		this->bbt_erase_shift += (0xff - mh->UnitSizeFactor);
 		mtd->erasesize <<= (0xff - mh->UnitSizeFactor);
-		printk(KERN_INFO "Setting virtual erase size to %d\n", mtd->erasesize);
+		pr_info("Setting virtual erase size to %d\n", mtd->erasesize);
 		blocks = mtd->size >> this->bbt_erase_shift;
 		maxblocks = min(32768U, mtd->erasesize - psize);
 	}
@@ -1182,14 +1182,14 @@ static inline int __init inftl_partscan(struct mtd_info *mtd, struct mtd_partiti
 	le32_to_cpus(&mh->FormatFlags);
 	le32_to_cpus(&mh->PercentUsed);
 
-	printk(KERN_INFO "    bootRecordID          = %s\n"
-			 "    NoOfBootImageBlocks   = %d\n"
-			 "    NoOfBinaryPartitions  = %d\n"
-			 "    NoOfBDTLPartitions    = %d\n"
-			 "    BlockMultiplerBits    = %d\n"
-			 "    FormatFlgs            = %d\n"
-			 "    OsakVersion           = %d.%d.%d.%d\n"
-			 "    PercentUsed           = %d\n",
+	pr_info("    bootRecordID          = %s\n"
+		"    NoOfBootImageBlocks   = %d\n"
+		"    NoOfBinaryPartitions  = %d\n"
+		"    NoOfBDTLPartitions    = %d\n"
+		"    BlockMultiplerBits    = %d\n"
+		"    FormatFlgs            = %d\n"
+		"    OsakVersion           = %d.%d.%d.%d\n"
+		"    PercentUsed           = %d\n",
 		mh->bootRecordID, mh->NoOfBootImageBlocks,
 		mh->NoOfBinaryPartitions,
 		mh->NoOfBDTLPartitions,
@@ -1224,7 +1224,7 @@ static inline int __init inftl_partscan(struct mtd_info *mtd, struct mtd_partiti
 		le32_to_cpus(&ip->spareUnits);
 		le32_to_cpus(&ip->Reserved0);
 
-		printk(KERN_INFO	"    PARTITION[%d] ->\n"
+		pr_info("    PARTITION[%d] ->\n"
 			"        virtualUnits    = %d\n"
 			"        firstUnit       = %d\n"
 			"        lastUnit        = %d\n"
@@ -1673,7 +1673,8 @@ static int __init init_nanddoc(void)
 	}
 
 	if (doc_config_location) {
-		printk(KERN_INFO "Using configured DiskOnChip probe address 0x%lx\n", doc_config_location);
+		pr_info("Using configured DiskOnChip probe address 0x%lx\n",
+			doc_config_location);
 		ret = doc_probe(doc_config_location);
 		if (ret < 0)
 			goto outerr;
@@ -1685,7 +1686,7 @@ static int __init init_nanddoc(void)
 	/* No banner message any more. Print a message if no DiskOnChip
 	   found, so the user knows we at least tried. */
 	if (!doclist) {
-		printk(KERN_INFO "No valid DiskOnChip devices found\n");
+		pr_info("No valid DiskOnChip devices found\n");
 		ret = -ENODEV;
 		goto outerr;
 	}
diff --git a/drivers/mtd/nand/fsl_elbc_nand.c b/drivers/mtd/nand/fsl_elbc_nand.c
index 17db2f9..396216c2 100644
--- a/drivers/mtd/nand/fsl_elbc_nand.c
+++ b/drivers/mtd/nand/fsl_elbc_nand.c
@@ -929,8 +929,8 @@ static int fsl_elbc_nand_probe(struct platform_device *pdev)
 	mtd_device_parse_register(mtd, part_probe_types, NULL,
 				  NULL, 0);
 
-	printk(KERN_INFO "eLBC NAND device at 0x%llx, bank %d\n",
-	       (unsigned long long)res.start, priv->bank);
+	pr_info("eLBC NAND device at 0x%llx, bank %d\n",
+		(unsigned long long)res.start, priv->bank);
 	return 0;
 
 err:
diff --git a/drivers/mtd/nand/nandsim.c b/drivers/mtd/nand/nandsim.c
index 96df1c5..cfcc907 100644
--- a/drivers/mtd/nand/nandsim.c
+++ b/drivers/mtd/nand/nandsim.c
@@ -192,7 +192,7 @@ MODULE_PARM_DESC(bch,		 "Enable BCH ecc and set how many bits should "
 #define NS_ERR(args...) \
 	do { pr_err(NS_OUTPUT_PREFIX " error: " args); } while(0)
 #define NS_INFO(args...) \
-	do { printk(KERN_INFO NS_OUTPUT_PREFIX " " args); } while(0)
+	do { pr_info(NS_OUTPUT_PREFIX " " args); } while(0)
 
 /* Busy-wait delay macros (microseconds, milliseconds) */
 #define NS_UDELAY(us) \
diff --git a/drivers/mtd/nand/r852.h b/drivers/mtd/nand/r852.h
index 8713c57..c59ca11 100644
--- a/drivers/mtd/nand/r852.h
+++ b/drivers/mtd/nand/r852.h
@@ -157,4 +157,4 @@ struct r852_device {
 
 
 #define message(format, ...) \
-	printk(KERN_INFO DRV_NAME ": " format "\n", ## __VA_ARGS__)
+	pr_info(DRV_NAME ": " format "\n", ## __VA_ARGS__)
-- 
2.7.4


