X-GM-THRID: 6523195637320646656
X-Received: by 10.159.61.32 with SMTP id l32mr5828667uai.89.1518800284356;
        Fri, 16 Feb 2018 08:58:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.13.143 with SMTP id i15ls277503uak.8.gmail; Fri, 16 Feb
 2018 08:58:03 -0800 (PST)
X-Google-Smtp-Source: AH8x224IrB5+H7ul6TSw9P2zQQY29w+ucLTxe32hZBNfqlJFWcOgZB6NjVnAZyhlnzZmEmfRJ+IX
X-Received: by 10.159.61.32 with SMTP id l32mr5828651uai.89.1518800283185;
        Fri, 16 Feb 2018 08:58:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518800283; cv=none;
        d=google.com; s=arc-20160816;
        b=pC16x3mbK0ljS8O6COxN7IGmqehgvXxmM2s6PiK5I5m4xl5sWUbS0gIf5zZsnxEGhL
         JA+emvAlqZEEolDt9xm8oNF5V40HeL7S7Oq5+0ZHHghW7DoDzO+TF04Xb8mfmHNzBnV6
         xPmYpKg2TsWGYGdBksN4VlzG4m5OO8fjSj2tzxaHnOUEWrmg9Xek9g94svA//LGoVexc
         RtSr051wrhamfH1ff8ySPqmj/h5i1Y8l666w8+pL6HYXE5gUqw8qEjb4Hhoxb8ZVWQII
         JX54f9vUErLl9SspMPR6Zu6//b8Gfk1W5Q8relA08mRIN8BQuwPzbV4O1Iz7PdVdAO6e
         3VkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=7i9BAxTBT43d5hI9c5eMqP1EWIRyYxrrpM4GQFwY61I=;
        b=hqt5h5SL6WYX1SMMJ/tgG6QX3iVZemeI/a19JfDOM5vR0xsGC8nUR2Jckvnr3M5H28
         be6maVwkBfZayhf9rySqax1R0LKm52pVqOB6Ep6VcWRyl7qhv+mp5ihwU4VgXKOXhV1e
         73gCnYZfvHLjFB0DPZpQVfYqDRpAt0w0DiL6Ao2YBt3fEkuwQ+a089Uei0XM3JGWbP7L
         KsWdrdh7jkKVihmUxlfXNeeOp/LC8UCIeBgtpw3e7a69qTGzSWzhn9e32qnMQqDergof
         eN+2gWKOQE9+79QqMTgTBTfPdr6a0TzQgVH8Lg11R+faMX4IMeq0ch7205/rskJ9Tfxd
         ICKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gKZ7/LOZ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x236.google.com (mail-pg0-x236.google.com. [2607:f8b0:400e:c05::236])
        by gmr-mx.google.com with ESMTPS id 73si1394513vkg.2.2018.02.16.08.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 08:58:03 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) client-ip=2607:f8b0:400e:c05::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gKZ7/LOZ;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x236.google.com with SMTP id g12so2870126pgs.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 08:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7i9BAxTBT43d5hI9c5eMqP1EWIRyYxrrpM4GQFwY61I=;
        b=gKZ7/LOZEysBA1jAcAfGx8wqa/lGkS9UFsMdkdGZwVm6UZ7FIBe5wXF9hfaWWeCYqx
         MijIC/v3D5yzbXQU+0DfyxvC0+t7LmWLxKKg4Kfut2kmtdsXuMdX7r2YvjYLoqYnGcod
         vPHWet614aa5SBTiH/m0DRRbNsv/1CGBErf5LGdXG3DCDxxd/nnuGVY8PNSITl0k8FKR
         QIcoSAEnq+ZlRWP6UshNoWgSbOvCCYqLJfiAglzcKd4KSW+/AKE+KckTpFs8vIHUuYHS
         YPflM/XeXC1mwklHKpQQ7LbqF9uZL3i+y69rmSsc/iBv0c8M8umdq20oGY0wzOx8nCMh
         qojQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7i9BAxTBT43d5hI9c5eMqP1EWIRyYxrrpM4GQFwY61I=;
        b=Avm6P8oPNA9Yln7I8rzdpHTiSvP47kBS70yN949jq7HsjpE5tKNeOg+vHXpji/oEmb
         OC+or+/0Hbe+wI5MBYR8hIkfMSFXTU86R8BOL6K39G4IA+kEJV36dRgbkpZgJfCFxgCw
         egZQUWPdGCFb50JiSDUJ155tXR7runba1qSiM2o8zQWhYH0Is4ndR1N8gehi7JLGDEqh
         40Zel6KSzUp2m3a5O/P0ejyl2eN5HX0em04zwao0azpdK8Ds9buXamhZFupIld4wmsH1
         Rx0VcMjanWQX/fbAX+F+91IIT5xQSzFc9IcI4rwsx3loW5fRgrWdy3uw3fVGuxC6WVrG
         ZQtw==
X-Gm-Message-State: APf1xPB1Zqj3FDwrWeFugsaOlSVJhwBFBoOYRaLQWCgDGVel02hqPc3k
	BCnS+LlnhNmnuYtFzhNbhz4=
X-Received: by 10.98.144.87 with SMTP id a84mr6666475pfe.96.1518800282800;
        Fri, 16 Feb 2018 08:58:02 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id c12sm9456572pfm.53.2018.02.16.08.58.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Feb 2018 08:58:02 -0800 (PST)
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
Subject: [PATCH NAND 2/5] mtd/nand: Replace printk with pr_notice
Date: Fri, 16 Feb 2018 22:27:57 +0530
Message-Id: <bce0a17aa300e8cc4a3a5535039fadae4f5928a5.1518797480.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>

pr_*macro is the preferred way to print messages, replace all
printk(KERN_NOTICE, ...) with pr_notice.


Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/mtd/nand/ams-delta.c   | 2 +-
 drivers/mtd/nand/cs553x_nand.c | 4 ++--
 drivers/mtd/nand/diskonchip.c  | 2 +-
 drivers/mtd/nand/r852.c        | 2 +-
 drivers/mtd/nand/sm_common.c   | 5 ++---
 5 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-delta.c
index 24b1c24..e120ce9 100644
--- a/drivers/mtd/nand/ams-delta.c
+++ b/drivers/mtd/nand/ams-delta.c
@@ -219,7 +219,7 @@ static int ams_delta_init(struct platform_device *pdev)
 		this->dev_ready = ams_delta_nand_ready;
 	} else {
 		this->dev_ready = NULL;
-		printk(KERN_NOTICE "Couldn't request gpio for Delta NAND ready.\n");
+		pr_notice("Couldn't request gpio for Delta NAND ready.\n");
 	}
 	/* 25 us command delay time */
 	this->chip_delay = 30;
diff --git a/drivers/mtd/nand/cs553x_nand.c b/drivers/mtd/nand/cs553x_nand.c
index d4269a4..ec54f81 100644
--- a/drivers/mtd/nand/cs553x_nand.c
+++ b/drivers/mtd/nand/cs553x_nand.c
@@ -189,10 +189,10 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 	struct nand_chip *this;
 	struct mtd_info *new_mtd;
 
-	printk(KERN_NOTICE "Probing CS553x NAND controller CS#%d at %sIO 0x%08lx\n", cs, mmio?"MM":"P", adr);
+	pr_notice("Probing CS553x NAND controller CS#%d at %sIO 0x%08lx\n", cs, mmio?"MM":"P", adr);
 
 	if (!mmio) {
-		printk(KERN_NOTICE "PIO mode not yet implemented for CS553X NAND controller\n");
+		pr_notice("PIO mode not yet implemented for CS553X NAND controller\n");
 		return -ENXIO;
 	}
 
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index dac4aec..ae2452d 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -1551,7 +1551,7 @@ static int __init doc_probe(unsigned long physadr)
 		}
 	}
 
-	printk(KERN_NOTICE "DiskOnChip found at 0x%lx\n", physadr);
+	pr_notice("DiskOnChip found at 0x%lx\n", physadr);
 
 	len = sizeof(struct nand_chip) + sizeof(struct doc_priv) +
 	      (2 * sizeof(struct nand_bbt_descr));
diff --git a/drivers/mtd/nand/r852.c b/drivers/mtd/nand/r852.c
index fc9287a..3d54c6a 100644
--- a/drivers/mtd/nand/r852.c
+++ b/drivers/mtd/nand/r852.c
@@ -935,7 +935,7 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
 		&dev->card_detect_work, 0);
 
 
-	printk(KERN_NOTICE DRV_NAME ": driver loaded successfully\n");
+	pr_notice(DRV_NAME ": driver loaded successfully\n");
 	return 0;
 
 error10:
diff --git a/drivers/mtd/nand/sm_common.c b/drivers/mtd/nand/sm_common.c
index c378705..7f5044a 100644
--- a/drivers/mtd/nand/sm_common.c
+++ b/drivers/mtd/nand/sm_common.c
@@ -119,9 +119,8 @@ static int sm_block_markbad(struct mtd_info *mtd, loff_t ofs)
 
 	ret = mtd_write_oob(mtd, ofs, &ops);
 	if (ret < 0 || ops.oobretlen != SM_OOB_SIZE) {
-		printk(KERN_NOTICE
-			"sm_common: can't mark sector at %i as bad\n",
-								(int)ofs);
+		pr_notice("sm_common: can't mark sector at %i as bad\n",
+			  (int)ofs);
 		return -EIO;
 	}
 
-- 
2.7.4


