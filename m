X-GM-THRID: 8453156241408
X-Received: by 10.112.219.102 with SMTP id pn6mr8549783lbc.12.1426458402397;
        Sun, 15 Mar 2015 15:26:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.168 with SMTP id j8ls498618wiy.1.gmail; Sun, 15 Mar
 2015 15:26:41 -0700 (PDT)
X-Received: by 10.180.87.166 with SMTP id az6mr1838303wib.1.1426458401852;
        Sun, 15 Mar 2015 15:26:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id sf8si555173wic.2.2015.03.15.15.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 15:26:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id cc7so26398900wgb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 15:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MGVN/2jzNFtA6FlSd2HkTB0nwVNXJSkQxwDbomWIxMQ=;
        b=Uh6JRWO2wiLFCFZ5Ms9gviEDVrs440usipeBm8Sr2l8cIhFUkrehHuCC86AtSdm05K
         1zSr6PP4gqy2XSHyAbBEyj2xTHYs/WE7GfhUdIBvoEyVLAU7LLHdKRaZ8CMzoMM9OHDx
         pR+32z3gRTTHYBovgnxO+8CIP+xx5hY9HjJTKxKZ3EPFtXIWIKlt72FeUom89oA/KCp/
         3LGclinsAJXwFU1ZFGCyl2gHt8SM8H1yznBdIubJCI9czBg2C/Ri5URbVwf2w75SBf29
         K4pfmAStiRF8MKv7M3ZyNvHCJhmwrgldmaPtYxcFUvVN6odZJzqnXysPiWX3xve4GYKp
         weMw==
X-Received: by 10.180.89.227 with SMTP id br3mr67532621wib.67.1426458401741;
        Sun, 15 Mar 2015 15:26:41 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id hl15sm12658853wib.3.2015.03.15.15.26.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 15:26:40 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 0A3F9C1F52; Mon, 16 Mar 2015 01:26:37 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: emuxx_udc: replace pr_* with dev_*
Date: Mon, 16 Mar 2015 01:26:37 +0300
Message-Id: <1426458397-16773-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

dev_* is prefered over pr_* when appropriate dev structure is present.
This patch replace pr_info and pr_warn with its dev_ counterpart.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 35dc1c4..69bcf43 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1426,7 +1426,7 @@ static void _nbu2ss_set_test_mode(struct nbu2ss_udc *udc, u32 mode)
 	if (mode > MAX_TEST_MODE_NUM)
 		return;
 
-	pr_info("SET FEATURE : test mode = %d\n", mode);
+	dev_info(udc->dev, "SET FEATURE : test mode = %d\n", mode);
 
 	data = _nbu2ss_readl(&udc->p_regs->USB_CONTROL);
 	data &= ~TEST_FORCE_ENABLE;
@@ -1885,8 +1885,8 @@ static inline void _nbu2ss_ep0_int(struct nbu2ss_udc *udc)
 			| STG_END_INT | EP0_OUT_NULL_INT);
 
 	if (status == 0) {
-		pr_info("--- %s Not Decode Interrupt\n", __func__);
-		pr_info("--- EP0_STATUS = 0x%08x\n", intr);
+		dev_info(udc->dev, "%s Not Decode Interrupt\n", __func__);
+		dev_info(udc->dev, "EP0_STATUS = 0x%08x\n", intr);
 		return;
 	}
 
@@ -2407,7 +2407,7 @@ static inline void _nbu2ss_check_vbus(struct nbu2ss_udc *udc)
 		udc->linux_suspended = 0;
 
 		_nbu2ss_reset_controller(udc);
-		pr_info(" ----- VBUS OFF\n");
+		dev_info(udc->dev, " ----- VBUS OFF\n");
 
 		if (udc->vbus_active == 1) {
 			/* VBUS OFF */
@@ -2433,7 +2433,7 @@ static inline void _nbu2ss_check_vbus(struct nbu2ss_udc *udc)
 		if (reg_dt == 0)
 			return;
 
-		pr_info(" ----- VBUS ON\n");
+		dev_info(udc->dev, " ----- VBUS ON\n");
 
 		if (udc->linux_suspended)
 			return;
@@ -2768,7 +2768,7 @@ static int nbu2ss_ep_queue(
 /*	INFO("=== %s(ep%d), zero=%d\n", __func__, ep->epnum, _req->zero); */
 
 	if (udc->vbus_active == 0) {
-		pr_info("Can't ep_queue (VBUS OFF)\n");
+		dev_info(udc->dev, "Can't ep_queue (VBUS OFF)\n");
 		return -ESHUTDOWN;
 	}
 
@@ -3092,7 +3092,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
 
 	data = gpio_get_value(VBUS_VALUE);
 	if (data == 0) {
-		pr_warn("VBUS LEVEL = %d\n", data);
+		dev_warn(&pgadget->dev, "VBUS LEVEL = %d\n", data);
 		return -EINVAL;
 	}
 
-- 
1.9.1


