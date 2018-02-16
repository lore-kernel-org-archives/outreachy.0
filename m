X-GM-THRID: 6523195637320646656
X-Received: by 10.107.19.37 with SMTP id b37mr8401114ioj.13.1518800915323;
        Fri, 16 Feb 2018 09:08:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.173.155 with SMTP id m27ls624377ioo.6.gmail; Fri, 16 Feb
 2018 09:08:34 -0800 (PST)
X-Google-Smtp-Source: AH8x224vdLy4Qa0zzup1S3WUkGM3/tAVlu5N7sQ3cax4WVRTf+slw7XTe0VQPTUnPkFWfv3jLZLh
X-Received: by 10.107.137.19 with SMTP id l19mr6217525iod.0.1518800914300;
        Fri, 16 Feb 2018 09:08:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518800914; cv=none;
        d=google.com; s=arc-20160816;
        b=GVAVCGBl6qkcHRpFwc/ub/7MYPiDCvACiHhXTKcBwJOGAzAElIsi5utDVCMc+U97+G
         FsTHQwOFylAyWFA1ZJrbAWiBAu9yGXL329qYlztXz6z9/ZLO9KEV92BgDKL1IxMP5aI/
         WFUoOy11BHkvlD5VQ6IB/pvI8XrYBEMrkTRignqSevOVzFtRfBXLxqRAgLgstTHmmb2Q
         XYbWPKxLd3NJLE1hA6hDx3Aqkp+A2g1P954ut/dUUCv8pu0+9wmPb0P06GRrj7FI5IP6
         3jNO2a+iS8KqiFLplh/1USitWx3jXGX9ViQ4O8TYeOSl+8eQ/NKOWI9ELqKO8zVL0GsH
         YbfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=DF1NX8t6b2i9BGF8JBwcs3YLXHM//tEyGD8ngQ/c/z8=;
        b=YGHbvnY/1CwIzc1RSv2uuxJsF1WJB20sOF6Y16YCbmHL7Q4pUGP5eG9x9Hs/uXlwnN
         c3N9WogOQjt9a0b6xVnwSVsnuyc0xWm/iCll7HAw4hHP6OiTxbyMih1hf6PDF7sO3pPa
         NyKrHutpGt0NiK5UYL9eiHxQRsL11hN/Ch3/aahkwSyktxVNhE7qEcHhFFMSY9BZs49L
         QS7wu4RPcQVDWrz0RPUuVkfJ5pCpPx7ehq0Hjdkquo1oihcu3VViEdl5/fhGiSyJe8kr
         PltAK8FBVhjHFJh6uE6neFj9zcrw9jAsThG/kH/3sKXhCsoqxav7NbvJbTz484ihYR0p
         wESw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rc9xLDoU;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g129si202916itd.2.2018.02.16.09.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 09:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rc9xLDoU;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id a11so2857645pgu.13
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 09:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DF1NX8t6b2i9BGF8JBwcs3YLXHM//tEyGD8ngQ/c/z8=;
        b=rc9xLDoUJj9X94q1SXdbuT3eG9eKPA0muawaIqa3vgTZ8V+0GV00UXnBheb8jVb2hx
         twaKmHgyV/JOT6fv7U26ct2MFxfx7nCZSnmwRd/2hUcmXfEsDTe6BGttMboSheU6OAa1
         oqJsRJ79dYGRl02tA6DF5GuRnl1VbV150gEaiAQYRjS5CNLT8xQ52vwNtNNCqvD+HZNV
         nUmkeEw9BDhiTDoGJ4P1gl9gSB/BMwpNtfcI91Ww+/hdcsiaTmDwcri201UqWWtV1uqX
         vQ4CEzbwOsJuMtTVTWxqQFixcTvsYoM7iab/u0xhSIBoKwBDmdIM6r0lsGDlFZ3FGMOi
         cd7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=DF1NX8t6b2i9BGF8JBwcs3YLXHM//tEyGD8ngQ/c/z8=;
        b=DEEK0bhB8SFS5/vgKQUPfXj4zdtHybtB19Zy1E43H0O2uawMuMYnBUtZl9qHHbINZj
         4xiq9RH2eN/xFjlLT17jCLfdY9x8ViXvikWdsthw3fiAbEfXQrJNtTIVOrL/7WZhZAdE
         muj/X96SDom5oOkNRFph9TAsjQWyo/FiyH45ru2Fa7ras/cZeubImJo7nVtnTdpgSwru
         Bd0Vboqlrbs7HUNk8nTKcI1Ue87FO83TPcRdF9BNkL/KIIKaMrpEx+LzQVhEPjHchpD/
         gW2en0OZkU9iv0zFLxs4IjMukGU4pbWHjnox7NMQ63bikUsBeQYIq8x4ElT0EWWElXMy
         yGEA==
X-Gm-Message-State: APf1xPBs8FZu1o5LmnWF8ehtAw430XoWGIptTS2Y0q6wkG5Bzq6QOqzw
	AbH0ipFiBMNjwgLJ+goKAi2AAQ==
X-Received: by 10.98.2.6 with SMTP id 6mr6661045pfc.237.1518800913674;
        Fri, 16 Feb 2018 09:08:33 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([103.212.140.144])
        by smtp.gmail.com with ESMTPSA id j25sm4377234pgn.92.2018.02.16.09.08.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Feb 2018 09:08:32 -0800 (PST)
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
Subject: [PATCH NAND 5/5] mtd/nand: Replace printk with pr_debug
Date: Fri, 16 Feb 2018 22:38:28 +0530
Message-Id: <9f88672d06731a54e8499e0e2939fc3d7139d425.1518797480.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1518797480.git.shreeya.patel23498@gmail.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>

pr_*macro is the preferred way to print messages, replace all
printk(KERN_DEBUG, ...) with pr_debug.


Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/mtd/nand/diskonchip.c | 5 +++--
 drivers/mtd/nand/nandsim.c    | 4 ++--
 drivers/mtd/nand/r852.h       | 4 ++--
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
index d921b9a..4821ecc 100644
--- a/drivers/mtd/nand/diskonchip.c
+++ b/drivers/mtd/nand/diskonchip.c
@@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct mtd_info *mtd)
 			break;
 	}
 	doc->chips_per_floor = i;
-	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
+	pr_debug("Detected %d chips per floor.\n", i);
 }
 
 static int doc200x_wait(struct mtd_info *mtd, struct nand_chip *this)
@@ -1548,7 +1548,8 @@ static int __init doc_probe(unsigned long physadr)
 		}
 		newval = ~newval;
 		if (oldval == newval) {
-			printk(KERN_DEBUG "Found alias of DOC at 0x%lx to 0x%lx\n", doc->physadr, physadr);
+			pr_debug("Found alias of DOC at 0x%lx to 0x%lx\n",
+				 doc->physadr, physadr);
 			goto notfound;
 		}
 	}
diff --git a/drivers/mtd/nand/nandsim.c b/drivers/mtd/nand/nandsim.c
index cfcc907..4e5f817 100644
--- a/drivers/mtd/nand/nandsim.c
+++ b/drivers/mtd/nand/nandsim.c
@@ -184,9 +184,9 @@ MODULE_PARM_DESC(bch,		 "Enable BCH ecc and set how many bits should "
 
 /* Simulator's output macros (logging, debugging, warning, error) */
 #define NS_LOG(args...) \
-	do { if (log) printk(KERN_DEBUG NS_OUTPUT_PREFIX " log: " args); } while(0)
+	do { if (log) pr_debug(NS_OUTPUT_PREFIX " log: " args); } while(0)
 #define NS_DBG(args...) \
-	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug: " args); } while(0)
+	do { if (dbg) pr_debug(NS_OUTPUT_PREFIX " debug: " args); } while(0)
 #define NS_WARN(args...) \
 	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); } while(0)
 #define NS_ERR(args...) \
diff --git a/drivers/mtd/nand/r852.h b/drivers/mtd/nand/r852.h
index c59ca11..63de9b6 100644
--- a/drivers/mtd/nand/r852.h
+++ b/drivers/mtd/nand/r852.h
@@ -149,11 +149,11 @@ struct r852_device {
 
 #define dbg(format, ...) \
 	if (debug) \
-		printk(KERN_DEBUG DRV_NAME ": " format "\n", ## __VA_ARGS__)
+		pr_debug(DRV_NAME ": " format "\n", ## __VA_ARGS__)
 
 #define dbg_verbose(format, ...) \
 	if (debug > 1) \
-		printk(KERN_DEBUG DRV_NAME ": " format "\n", ## __VA_ARGS__)
+		pr_debug(DRV_NAME ": " format "\n", ## __VA_ARGS__)
 
 
 #define message(format, ...) \
-- 
2.7.4


