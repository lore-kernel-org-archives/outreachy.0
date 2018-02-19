X-GM-THRID: 6524254373964414976
X-Received: by 10.99.174.68 with SMTP id e4mr597319pgp.122.1519046345736;
        Mon, 19 Feb 2018 05:19:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.195 with SMTP id a186ls1712371pgc.4.gmail; Mon, 19 Feb
 2018 05:19:04 -0800 (PST)
X-Google-Smtp-Source: AH8x227HJe+OA2EkJXHh2nrsKooasTAFkc1cbw/5D/KGZkzLm10bDQZgfEEuWTUIP0XaD9BA1L80
X-Received: by 10.99.8.130 with SMTP id 124mr3207864pgi.32.1519046344279;
        Mon, 19 Feb 2018 05:19:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519046344; cv=none;
        d=google.com; s=arc-20160816;
        b=Bk90eENqDt1udVmzkyvTb/bLTE5YnsehXa/oI4vxzM63yNbDD5AzAqDq0+ltvaM3A3
         o0Vq17zaBaJS5fV4cfNcMN9Z10GpIc071YWT3GFFf7jCmOiCOS0SM/NesdwUmLBd5zRu
         u+//ednpgxu24Bf1uCvPKN5YFrbeKUL34UEnefLPlZFQ/cD9I/PUk/sulhdlA0UrWvBe
         KG3e+axXU9tSTp8bmF0Pgx4CiXAiTsHfU72YC3Ock8BpZerqrePpLmix2CSMZQpQXf7s
         w2wa7h7a6ju50G94XEKQxrat+36TbhK1M7eKJ2KAnz/6n+SFtafkBQNYSKrPUGxmuOu8
         uBbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Q+gHhwLPC77JwOOyhZIll9Mi9ebJzOBjJ2I//E41Re0=;
        b=q/v7li5UXZaNF8g06v8PlaYH9VhNo2CYgthqrEpRQcMivrPbhnhZMbHSGbkgZLlG+T
         P0VaA4vaJn3t5+cI7rFDY4AhsN4ryvOT90VssBIQ6lsZsRrhWYxRBYs4YHLWgXQlNGah
         yU4UEkVy3NBW3SSNn60Ayjei1zx5LIPIowpbVCe+Yuj4WdwmmDH8o/EUhKAalTMRiMLx
         2JQhOofr5WcRAiRFyedEMmeBhYHGw5PB0N3LjteW5bS5t4r1Mb4AJFcH9nCyswXZntqv
         tyTg/uDCMpIinqoER8+Iu6/OKg4HZl26+z1v1PoT777itOQAm4K1zC5HMZY4hPh9XNnV
         TR6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pdaROg9n;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id w4-v6si363596plp.4.2018.02.19.05.19.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 05:19:04 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pdaROg9n;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id a6so2132827pfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 05:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Q+gHhwLPC77JwOOyhZIll9Mi9ebJzOBjJ2I//E41Re0=;
        b=pdaROg9nMgj+T+YJaNPZ2TELc/d0LObJydX9vWcZt1RQqrdyvXZ2R2XSzld2t3GFLe
         1PXm0yKQYhqb+TYlqsyVHF4EEXwBXaIyZwwO/GYPa+GmITVt21Jkr6qyOEF8jKbkta/L
         TVfgloZo+Jqe8dSC6vx6+JXCPhLzotH8eXuDTqiHqHZ0g+WmczP5OAWGk+xsy8aYCBPZ
         rKPpB1LLwy12Md352YQtavoiMpRR5NCKqXLNX+NAtHwT/JHfVvhOP15ZHpC5aT2Wk0QB
         Te8q2jrwnY1VOv1WmqKyYSB9teqt4cQbIU4GxYgc3QDeh+6Ak790Ll/AzYSC9DCuk/rq
         5zag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q+gHhwLPC77JwOOyhZIll9Mi9ebJzOBjJ2I//E41Re0=;
        b=loCfXV592zQwhBUWsSz1hYimPJNUtFWjBLIsVXU24/IVq9D/TY+WlANVsJ9b16TyY5
         fosyINtdLybw92iHZmUbPnnhyo3EWcSj39mvfCV5JawHAh/v1eBbkgO79TE+sL8U6fwS
         saMza9aSRQel3J2bZCL/Pl144xta+TTe1LHwp6jcLwNnK+SI4u+BDmG108jCe9WjRkKH
         7UGga6LRhsRnbgQRxLJbLryO6EscTc/9jLu+s8eaXE+BsQOKmK/DKpwpzojLstHGo3V0
         Ru86+yszAdZJI8lp/CRur9RBPDwRa3a+Ex3brKvobwQSWqPK5/6TESPWmzM+baCiToRV
         GjcQ==
X-Gm-Message-State: APf1xPCvkaU4mgcVrs8K0D2xWpQOQgQydhrjVfDrZRch3ydy8y3o6QI+
	Ljl4SGVdiCa0F2WmyAfG6zI=
X-Received: by 10.99.113.75 with SMTP id b11mr12539735pgn.271.1519046344002;
        Mon, 19 Feb 2018 05:19:04 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id z125sm53333841pfz.27.2018.02.19.05.19.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Feb 2018 05:19:03 -0800 (PST)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: boris.brezillon@free-electrons.com,
	richard@nod.at,
	dwmw2@infradead.org,
	computersforpeace@gmail.com,
	marek.vasut@gmail.com,
	cyrille.pitchen@wedev4u.fr,
	maximlevitsky@gmail.com,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH NAND] mtd: nand: Replace printk() with appropriate dev_*macro()
Date: Mon, 19 Feb 2018 18:48:59 +0530
Message-Id: <1519046339-9678-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace printks having a log level with the appropriate
dev_*macro.
Also, use pdev->dev as it is guaranteed in each case to be
properly initialized when passed into dev_*macro().

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/mtd/nand/ams-delta.c | 6 ++++--
 drivers/mtd/nand/cafe_nand.c | 5 +++--
 drivers/mtd/nand/sh_flctl.c  | 2 +-
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-delta.c
index dcec9cf..2419ca8 100644
--- a/drivers/mtd/nand/ams-delta.c
+++ b/drivers/mtd/nand/ams-delta.c
@@ -185,7 +185,8 @@ static int ams_delta_init(struct platform_device *pdev)
 	/* Allocate memory for MTD device structure and private data */
 	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
 	if (!this) {
-		printk (KERN_WARNING "Unable to allocate E3 NAND MTD device structure.\n");
+		dev_warn(&pdev->dev,
+			 "Unable to allocate E3 NAND MTD device structure.\n");
 		err = -ENOMEM;
 		goto out;
 	}
@@ -219,7 +220,8 @@ static int ams_delta_init(struct platform_device *pdev)
 		this->dev_ready = ams_delta_nand_ready;
 	} else {
 		this->dev_ready = NULL;
-		printk(KERN_NOTICE "Couldn't request gpio for Delta NAND ready.\n");
+		dev_notice(&pdev->dev,
+			   "Couldn't request gpio for Delta NAND ready.\n");
 	}
 	/* 25 us command delay time */
 	this->chip_delay = 30;
diff --git a/drivers/mtd/nand/cafe_nand.c b/drivers/mtd/nand/cafe_nand.c
index bc558c4..51f58ea 100644
--- a/drivers/mtd/nand/cafe_nand.c
+++ b/drivers/mtd/nand/cafe_nand.c
@@ -773,8 +773,9 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 		cafe->nand.bbt_td = &cafe_bbt_main_descr_512;
 		cafe->nand.bbt_md = &cafe_bbt_mirror_descr_512;
 	} else {
-		printk(KERN_WARNING "Unexpected NAND flash writesize %d. Aborting\n",
-		       mtd->writesize);
+		dev_warn(&cafe->pdev->dev,
+			 "Unexpected NAND flash writesize %d. Aborting\n",
+			 mtd->writesize);
 		goto out_free_dma;
 	}
 	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
diff --git a/drivers/mtd/nand/sh_flctl.c b/drivers/mtd/nand/sh_flctl.c
index e7f3c98..c534c49 100644
--- a/drivers/mtd/nand/sh_flctl.c
+++ b/drivers/mtd/nand/sh_flctl.c
@@ -877,7 +877,7 @@ static void flctl_cmdfunc(struct mtd_info *mtd, unsigned int command,
 			else if (!flctl->seqin_column)
 				execmd_write_page_sector(mtd);
 			else
-				printk(KERN_ERR "Invalid address !?\n");
+				dev_err(&flctl->pdev->dev, "Invalid address !?\n");
 			break;
 		}
 		set_cmd_regs(mtd, command, (command << 8) | NAND_CMD_SEQIN);
-- 
2.7.4


