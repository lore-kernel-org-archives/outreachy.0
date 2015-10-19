X-GM-THRID: 6207401921303543808
X-Received: by 10.194.156.193 with SMTP id wg1mr6861312wjb.3.1445273384489;
        Mon, 19 Oct 2015 09:49:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.229 with SMTP id p5ls654677wif.45.gmail; Mon, 19 Oct
 2015 09:49:43 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr4438226wib.0.1445273383735;
        Mon, 19 Oct 2015 09:49:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id o3si556936wiz.1.2015.10.19.09.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 09:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id fx6so14541174wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 09:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3STheWJLlpIHsigZiuuC302MDseZ7cphAt/9/efHt9M=;
        b=jj0mLq52Gke0lEn2m0apJI7M4VZT4u3Y9oCD5YEgiOUlxpAy/yBPD1MukDmYIwF4KJ
         cEVkmT63JuZYuKFoAWu2fR4yIzzRuTcuD3VkRenrEg/tOJ1MNXOIhjNKe6FPrO6FLR1b
         KmtzmBE/xIOr83Z70DsPlXO44lsjIL1NO7rHzO/kHFul0Eb87yFrsSadI1GwV2w6O8O3
         IZrGNDxVbEMcpRlWjGQGMEnlQVFoZEPYi1LIcm4cyhuZGl/FcfSobId1Dqrl4Zq+ditl
         f8XvUYD9HNkqMJ4qV+eeMiBiB/OVY0RFo18FLuRWvCg4BxjSyQdrFnzGI1veYhSXiWh7
         EyzA==
X-Received: by 10.180.75.47 with SMTP id z15mr20822793wiv.36.1445273383593;
        Mon, 19 Oct 2015 09:49:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ew2sm15707154wic.20.2015.10.19.09.49.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 09:49:42 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192e: Use module_pci_driver
Date: Mon, 19 Oct 2015 18:49:12 +0200
Message-Id: <1445273352-6576-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Use module_pci_driver for drivers whose init and exit functions only
register and unregister, respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 2e3c25c..8f989a9 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -2775,24 +2775,7 @@ bool rtl92e_disable_nic(struct net_device *dev)
 	return true;
 }
 
-static int __init _rtl92e_pci_module_init(void)
-{
-	pr_info("\nLinux kernel driver for RTL8192E WLAN cards\n");
-	pr_info("Copyright (c) 2007-2008, Realsil Wlan Driver\n");
-
-	if (0 != pci_register_driver(&rtl8192_pci_driver)) {
-		/*pci_unregister_driver (&rtl8192_pci_driver);*/
-		return -ENODEV;
-	}
-	return 0;
-}
-
-static void __exit _rtl92e_pci_module_exit(void)
-{
-	pci_unregister_driver(&rtl8192_pci_driver);
-
-	RT_TRACE(COMP_DOWN, "Exiting");
-}
+module_pci_driver(rtl8192_pci_driver);
 
 void rtl92e_check_rfctrl_gpio_timer(unsigned long data)
 {
@@ -2809,9 +2792,6 @@ void rtl92e_check_rfctrl_gpio_timer(unsigned long data)
 /***************************************************************************
 	------------------- module init / exit stubs ----------------
 ****************************************************************************/
-module_init(_rtl92e_pci_module_init);
-module_exit(_rtl92e_pci_module_exit);
-
 MODULE_DESCRIPTION("Linux driver for Realtek RTL819x WiFi cards");
 MODULE_AUTHOR(DRV_COPYRIGHT " " DRV_AUTHOR);
 MODULE_VERSION(DRV_VERSION);
-- 
1.9.1


