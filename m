X-GM-THRID: 6523195637320646656
X-Received: by 10.36.25.201 with SMTP id b192mr2242200itb.17.1518800436884;
        Fri, 16 Feb 2018 09:00:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.173.155 with SMTP id m27ls620485ioo.6.gmail; Fri, 16 Feb
 2018 09:00:35 -0800 (PST)
X-Google-Smtp-Source: AH8x225ge0PoUQ0FEBMFTLrq+hfUDnteQVBxrGTjXaQR9M0rcJtP4ZAtDjeq1nxkuVCgpNW/LMOH
X-Received: by 10.107.27.15 with SMTP id b15mr6044770iob.73.1518800435892;
        Fri, 16 Feb 2018 09:00:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518800435; cv=none;
        d=google.com; s=arc-20160816;
        b=FifsiK1QRmOluAsmF6gfBje4lcwTAXCu+DE4agRax00777ZPriw+kBETNaoZhT/G2t
         XBJJFgHiV+XgOnnqXAprSNljRgEpHOXClMozxiw+R6blRllhAIueiB0puNYATNp+J29b
         /Ja5qmgfAUqYZ46V6EMpCauTvihOhvyWC6icZPwxn8KR0jWCwbRznMzg5Aeij8mDWt8T
         MeJI99Zc7Cvz1vsA9OfV4dvb39xrzW//4iQrTT/AdrzC53eRB1rBBOHK+ZwiRK03Bn7r
         qmhpy8Noovs7E1tl3e59L/e8hDjGkvJsIgbToOXM1oakTarRdG2ciCiQn3m1VnGABdNz
         wBcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=DOXJ5KdjPsnUl0e1MNsUNfiaP8xuFHj0BhswyMuC6a8=;
        b=qs25G0QtbozMh0zAn3brlk7Jt5v5SghvZvSDNCaLK/Gfp5SgLZyG1aGAwX4A9Bdh92
         jcEHx9v+QvYEqdl5L5xnKUFckNQBwxpIUzUEEmThoIyRT5m3jiNO4Xk5jYZSC+uXP9MI
         RUGXSYjN3CO6++weghtx4UB1NqS2ZZKedvC2/x993kYebhl7BNNxXAEOx3srG2Wzt+Cn
         wP5SgmVQbGaXds3W4e3K8UuPXIKBcwzLynvztgnrEARI2E50qVT3q6MkQ8HG5DrA5h/z
         NLgGkap78ij5+Y/p5x35yVlS6560WZ/7UBejhqeJsciwHuWAxIK/XANrSAKWdRvjGUGD
         wp7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OfnSHTW1;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id w7si48183iod.3.2018.02.16.09.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:00:35 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OfnSHTW1;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x242.google.com with SMTP id s13so1982271plq.6
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DOXJ5KdjPsnUl0e1MNsUNfiaP8xuFHj0BhswyMuC6a8=;
        b=OfnSHTW1cRTCrNwdlL0S9oh7TQG1CBUEL1PeXMhLdae2FXmtMdYG/ZsYQRKzmQJCr2
         lcCarLZuHjv0N6HZfHiCQh2Ff72O9nE4SeUkQx7RBwodms8wMRsfYgMCGDt9Zzo/z1pb
         fNuWWTllgOU5Vep233tShdyRqzYrCQ5cDciW1w0/jH+xkGcq8EdWj8SBHAEYpjFPHkKp
         ooNrlWEUippfpu2uUuYklZgNLGipF+8XW9gxMrPY+XWQr5xRKUUKYrSq0+9hOmge3wY5
         cygPLM+oDq0z+4i5VKRbewKyIUDhgvUxAgjo7FNQsCBYurjrA9M7dwGaNhYWK00l2MQl
         H5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=DOXJ5KdjPsnUl0e1MNsUNfiaP8xuFHj0BhswyMuC6a8=;
        b=Vunj4AmcgJe7P/zuAMeNRvbLuqZwf7kTsBvJV+Rb6juOABIGLUckvsfhaDseSTgoni
         DA4GkkovcIr+tbi2LfMRlA6cHAm2U1qMFyJQ7Yym6QfOWySFXHp3jnkl7e+uF4xtMwVp
         W8YZrcKzmzFRtEgOZxjeaNaPDW0d010D0kXmwc884tA1MiCu/y3d9+zeKWOGPYsnO80y
         FtPidiyE1C5l5XQyvokewS6iR3Ib1V4GnhZB23GMfCQZQ0f8MVDK6FPvXbz0d8VuSoHo
         fYtFAy7bOVOKx/S3izEDuN4/j3PBzqpmhzjXpncWVodstUeAkEBt8iTajz/jpmv5MiWn
         7nVg==
X-Gm-Message-State: APf1xPChR1K/Jnb+WZ3hGeyXaLHPLETD1yLuwxMKG0X9adyONFN5n3oj
	hdTblXvBucprCiMX6w24KUU=
X-Received: by 2002:a17:902:7844:: with SMTP id e4-v6mr6205641pln.83.1518800435518;
        Fri, 16 Feb 2018 09:00:35 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id n17sm3680327pfj.67.2018.02.16.09.00.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Feb 2018 09:00:34 -0800 (PST)
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
Subject: [PATCH NAND 3/5] mtd/nand: Replace printk with pr_err
Date: Fri, 16 Feb 2018 22:30:30 +0530
Message-Id: <ff151e69e86f76b54aaeb14f89ef0151fe1a64df.1518797480.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>

pr_*macro is the preferred way to print messages, replace all
printk(KERN_ERR, ...) with pr_err.


Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/mtd/nand/diskonchip.c   | 22 ++++++++++++----------
 drivers/mtd/nand/fsl_ifc_nand.c |  2 +-
 drivers/mtd/nand/nand_bch.c     |  2 +-
 drivers/mtd/nand/nandsim.c      |  2 +-
 drivers/mtd/nand/sh_flctl.c     |  2 +-
 5 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index ae2452d..93d23d1d 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -935,14 +935,15 @@ static int doc200x_correct_data(struct mtd_info *mtd, u_char *dat,
 
 		ret = doc_ecc_decode(rs_decoder, dat, calc_ecc);
 		if (ret > 0)
-			printk(KERN_ERR "doc200x_correct_data corrected %d errors\n", ret);
+			pr_err("doc200x_correct_data corrected %d errors\n",
+			       ret);
 	}
 	if (DoC_is_MillenniumPlus(doc))
 		WriteDOC(DOC_ECC_DIS, docptr, Mplus_ECCConf);
 	else
 		WriteDOC(DOC_ECC_DIS, docptr, ECCConf);
 	if (no_ecc_failures && mtd_is_eccerr(ret)) {
-		printk(KERN_ERR "suppressing ECC failure\n");
+		pr_err("suppressing ECC failure\n");
 		ret = 0;
 	}
 	return ret;
@@ -1039,7 +1040,7 @@ static int __init find_media_headers(struct mtd_info *mtd, u_char *buf, const ch
 	ret = mtd_read(mtd, offs, mtd->writesize, &retlen, buf);
 	if (retlen != mtd->writesize) {
 		/* Insanity.  Give up. */
-		printk(KERN_ERR "Read DiskOnChip Media Header once, but can't reread it???\n");
+		pr_err("Read DiskOnChip Media Header once, but can't reread it???\n");
 		return 0;
 	}
 	return 1;
@@ -1110,7 +1111,7 @@ static inline int __init nftl_partscan(struct mtd_info *mtd, struct mtd_partitio
 	}
 
 	if (blocks > maxblocks) {
-		printk(KERN_ERR "UnitSizeFactor of 0x%02x is inconsistent with device size.  Aborting.\n", mh->UnitSizeFactor);
+		pr_err("UnitSizeFactor of 0x%02x is inconsistent with device size.  Aborting.\n", mh->UnitSizeFactor);
 		goto out;
 	}
 
@@ -1203,13 +1204,13 @@ static inline int __init inftl_partscan(struct mtd_info *mtd, struct mtd_partiti
 
 	blocks = mtd->size >> vshift;
 	if (blocks > 32768) {
-		printk(KERN_ERR "BlockMultiplierBits=%d is inconsistent with device size.  Aborting.\n", mh->BlockMultiplierBits);
+		pr_err("BlockMultiplierBits=%d is inconsistent with device size. Aborting.\n", mh->BlockMultiplierBits);
 		goto out;
 	}
 
 	blocks = doc->chips_per_floor << (this->chip_shift - this->phys_erase_shift);
 	if (inftl_bbt_write && (blocks > mtd->erasesize)) {
-		printk(KERN_ERR "Writeable BBTs spanning more than one erase block are not yet supported.  FIX ME!\n");
+		pr_err("Writeable BBTs spanning more than one erase block are not yet supported.  FIX ME!\n");
 		goto out;
 	}
 
@@ -1309,7 +1310,7 @@ static int __init inftl_scan_bbt(struct mtd_info *mtd)
 	struct mtd_partition parts[5];
 
 	if (this->numchips > doc->chips_per_floor) {
-		printk(KERN_ERR "Multi-floor INFTL devices not yet supported.\n");
+		pr_err("Multi-floor INFTL devices not yet supported.\n");
 		return -EIO;
 	}
 
@@ -1437,7 +1438,8 @@ static int __init doc_probe(unsigned long physadr)
 		return -EBUSY;
 	virtadr = ioremap(physadr, DOC_IOREMAP_LEN);
 	if (!virtadr) {
-		printk(KERN_ERR "Diskonchip ioremap failed: 0x%x bytes at 0x%lx\n", DOC_IOREMAP_LEN, physadr);
+		pr_err("Diskonchip ioremap failed: 0x%x bytes at 0x%lx\n",
+		       DOC_IOREMAP_LEN, physadr);
 		ret = -EIO;
 		goto error_ioremap;
 	}
@@ -1496,7 +1498,7 @@ static int __init doc_probe(unsigned long physadr)
 			reg = DoC_Mplus_Toggle;
 			break;
 		case DOC_ChipID_DocMilPlus32:
-			printk(KERN_ERR "DiskOnChip Millennium Plus 32MB is not supported, ignoring.\n");
+			pr_err("DiskOnChip Millennium Plus 32MB is not supported, ignoring.\n");
 		default:
 			ret = -ENODEV;
 			goto notfound;
@@ -1666,7 +1668,7 @@ static int __init init_nanddoc(void)
 	 */
 	rs_decoder = init_rs(10, 0x409, FCR, 1, NROOTS);
 	if (!rs_decoder) {
-		printk(KERN_ERR "DiskOnChip: Could not create a RS decoder\n");
+		pr_err("DiskOnChip: Could not create a RS decoder\n");
 		return -ENOMEM;
 	}
 
diff --git a/drivers/mtd/nand/fsl_ifc_nand.c b/drivers/mtd/nand/fsl_ifc_nand.c
index 9e03bac..f88a493 100644
--- a/drivers/mtd/nand/fsl_ifc_nand.c
+++ b/drivers/mtd/nand/fsl_ifc_nand.c
@@ -805,7 +805,7 @@ static void fsl_ifc_sram_init(struct fsl_ifc_mtd *priv)
 			   msecs_to_jiffies(IFC_TIMEOUT_MSECS));
 
 	if (ctrl->nand_stat != IFC_NAND_EVTER_STAT_OPC)
-		printk(KERN_ERR "fsl-ifc: Failed to Initialise SRAM\n");
+		pr_err("fsl-ifc: Failed to Initialise SRAM\n");
 
 	/* Restore CSOR and CSOR_ext */
 	ifc_out32(csor, &ifc_global->csor_cs[cs].csor);
diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/nand_bch.c
index 366c04a..7f11b68 100644
--- a/drivers/mtd/nand/nand_bch.c
+++ b/drivers/mtd/nand/nand_bch.c
@@ -95,7 +95,7 @@ int nand_bch_correct_data(struct mtd_info *mtd, unsigned char *buf,
 					errloc[i]);
 		}
 	} else if (count < 0) {
-		printk(KERN_ERR "ecc unrecoverable error\n");
+		pr_err("ecc unrecoverable error\n");
 		count = -EBADMSG;
 	}
 	return count;
diff --git a/drivers/mtd/nand/nandsim.c b/drivers/mtd/nand/nandsim.c
index b2436ea..96df1c5 100644
--- a/drivers/mtd/nand/nandsim.c
+++ b/drivers/mtd/nand/nandsim.c
@@ -190,7 +190,7 @@ MODULE_PARM_DESC(bch,		 "Enable BCH ecc and set how many bits should "
 #define NS_WARN(args...) \
 	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); } while(0)
 #define NS_ERR(args...) \
-	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); } while(0)
+	do { pr_err(NS_OUTPUT_PREFIX " error: " args); } while(0)
 #define NS_INFO(args...) \
 	do { printk(KERN_INFO NS_OUTPUT_PREFIX " " args); } while(0)
 
diff --git a/drivers/mtd/nand/sh_flctl.c b/drivers/mtd/nand/sh_flctl.c
index e7f3c98..493f6b2 100644
--- a/drivers/mtd/nand/sh_flctl.c
+++ b/drivers/mtd/nand/sh_flctl.c
@@ -877,7 +877,7 @@ static void flctl_cmdfunc(struct mtd_info *mtd, unsigned int command,
 			else if (!flctl->seqin_column)
 				execmd_write_page_sector(mtd);
 			else
-				printk(KERN_ERR "Invalid address !?\n");
+				pr_err("Invalid address !?\n");
 			break;
 		}
 		set_cmd_regs(mtd, command, (command << 8) | NAND_CMD_SEQIN);
-- 
2.7.4


