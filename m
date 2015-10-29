X-GM-THRID: 6210989178229882880
X-Received: by 10.31.134.2 with SMTP id i2mr405553vkd.8.1446108608431;
        Thu, 29 Oct 2015 01:50:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.65.3 with SMTP id t3ls74005obs.57.gmail; Thu, 29 Oct 2015
 01:50:07 -0700 (PDT)
X-Received: by 10.182.128.101 with SMTP id nn5mr389311obb.31.1446108607874;
        Thu, 29 Oct 2015 01:50:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si83271pbb.0.2015.10.29.01.50.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 01:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so34726184pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 01:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=iWNyG3149eekds4FcB/WqlL8c7UQct3I0PV2jQ2LheE=;
        b=M/y9+d96h4+ecausGf25McFgaYT/FzhXiRrCrSfGBZsDne9ZzMmnGdH+BfokTL2NQi
         PLA2cDD4576h9z5O2jl9qSaKCjgknFUMBdQI/+J3Ty07wDllS1i2V5KHxSTyfYFU8a0A
         zQI6oB4XvwYE/cghMeVWXP0KjY1mnCTS0S+zZtN73PHrSECN+xMs43hx8rXAOOQvgmb3
         GVqAyWPa9JaQAXmZ5PL+x8u5Fk4JjgM+TIAuDzDM43039w0BgemTEkemf/LBM/zf1BQX
         wbR1zno9lTkyj/jom+iphA/vpL5AKhEBkyT0i5fttbIt8rktn8ryvqMbUT4hOtG8zZvy
         uW1g==
X-Received: by 10.68.226.161 with SMTP id rt1mr690306pbc.98.1446108607682;
        Thu, 29 Oct 2015 01:50:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.166.247])
        by smtp.gmail.com with ESMTPSA id qy7sm906040pab.37.2015.10.29.01.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 01:50:07 -0700 (PDT)
Date: Thu, 29 Oct 2015 14:20:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Remove wrapper function
Message-ID: <20151029085003.GA13195@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper function that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.c | 9 ++-------
 drivers/staging/rts5208/rtsx_chip.h | 1 -
 drivers/staging/rts5208/rtsx_scsi.c | 2 +-
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index c0ce659..ca9f021 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -109,11 +109,6 @@ void rtsx_enable_bus_int(struct rtsx_chip *chip)
 	dev_dbg(rtsx_dev(chip), "RTSX_BIER: 0x%08x\n", reg);
 }
 
-void rtsx_disable_bus_int(struct rtsx_chip *chip)
-{
-	rtsx_writel(chip, RTSX_BIER, 0);
-}
-
 static int rtsx_pre_handle_sdio_old(struct rtsx_chip *chip)
 {
 	int retval;
@@ -359,7 +354,7 @@ static int rtsx_enable_pcie_intr(struct rtsx_chip *chip)
 			rtsx_trace(chip);
 			return ret;
 		}
-		rtsx_disable_bus_int(chip);
+		rtsx_writel(chip, RTSX_BIER, 0);
 	} else {
 		rtsx_enable_bus_int(chip);
 	}
@@ -2217,7 +2212,7 @@ void rtsx_do_before_power_down(struct rtsx_chip *chip, int pm_stat)
 		return;
 
 	rtsx_release_cards(chip);
-	rtsx_disable_bus_int(chip);
+	rtsx_writel(chip, RTSX_BIER, 0);
 	turn_off_led(chip, LED_GPIO);
 
 #ifdef HW_AUTO_SWITCH_SD_BUS
diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
index c295b1e..2d6d6b8 100644
--- a/drivers/staging/rts5208/rtsx_chip.h
+++ b/drivers/staging/rts5208/rtsx_chip.h
@@ -953,7 +953,6 @@ int rtsx_force_power_down(struct rtsx_chip *chip, u8 ctl);
 void rtsx_disable_card_int(struct rtsx_chip *chip);
 void rtsx_enable_card_int(struct rtsx_chip *chip);
 void rtsx_enable_bus_int(struct rtsx_chip *chip);
-void rtsx_disable_bus_int(struct rtsx_chip *chip);
 int rtsx_reset_chip(struct rtsx_chip *chip);
 int rtsx_init_chip(struct rtsx_chip *chip);
 void rtsx_release_chip(struct rtsx_chip *chip);
diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 60871f3..ec8a1b0 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -1822,7 +1822,7 @@ static int set_chip_mode(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 			return TRANSPORT_FAILED;
 		}
 
-		rtsx_disable_bus_int(chip);
+		rtsx_writel(chip, RTSX_BIER, 0);
 
 		retval = rtsx_read_phy_register(chip, 0x1C, &reg);
 		if (retval != STATUS_SUCCESS) {
-- 
1.9.1


