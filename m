X-GM-THRID: 6199796620596346880
X-Received: by 10.182.20.195 with SMTP id p3mr21588183obe.28.1443502637514;
        Mon, 28 Sep 2015 21:57:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.36 with SMTP id xt4ls1229624obc.98.gmail; Mon, 28 Sep
 2015 21:57:17 -0700 (PDT)
X-Received: by 10.182.215.226 with SMTP id ol2mr22247745obc.11.1443502637128;
        Mon, 28 Sep 2015 21:57:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si2993318pac.2.2015.09.28.21.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 21:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so194829941pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 21:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=rwClMGH1IV694ninJRQa68Mn2zjLsHA5UqMpNxYdD+U=;
        b=Yhqrd7/pPQEwc0acNJoBdaXHwJAuQrTUpkKUZp4vflq7eWYeAwzQuG3zvDjH4nRlrK
         EcOoSkBmfMjDEMHT7yelJw36OlNAoODqOmXIHBnekg1lqkzoOw4PaYx17rsvKo5TAxtt
         U3To+byIkuDYU2yW0QQwcwS/QyGQQVIckMMm67fpzPE0Kq/SE5XWzJKhA2NnxNrjbUpP
         0HQGOw3TnU48kJ0b9iBkDZqy9eM07e2w72tcmK/4uzhQcH9xSN8XNU8sO+nik4FJnE+l
         zpKOyvaup174U4DTtu9oxVom3JaB/58JZH+C7UUtozqh1QC72BH2PeGLrT0hNF63L8Pk
         UABg==
X-Received: by 10.66.102.74 with SMTP id fm10mr30350760pab.151.1443502636948;
        Mon, 28 Sep 2015 21:57:16 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sl7sm22597776pbc.54.2015.09.28.21.57.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 28 Sep 2015 21:57:15 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH 1/2] Staging: gdm724x: gdm_usb.c: Use module_usb_driver
Date: Tue, 29 Sep 2015 10:26:48 +0530
Message-Id: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.560A1A2B.0182,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Macro module_usb_driver is used for drivers whose init
and exit paths does only register and unregister.Remove
boilerplate code by using module_usb_driver.

Problem found using Coccinelle.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 38 +-------------------------------------
 1 file changed, 1 insertion(+), 37 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index ed1a12f..3977663 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -998,43 +998,7 @@ static struct usb_driver gdm_usb_lte_driver = {
 	.reset_resume = gdm_usb_resume,
 };
 
-static int __init gdm_usb_lte_init(void)
-{
-	if (gdm_lte_event_init() < 0) {
-		pr_err("error creating event\n");
-		return -1;
-	}
-
-	usb_tx_wq = create_workqueue("usb_tx_wq");
-	if (usb_tx_wq == NULL)
-		return -1;
-
-	usb_rx_wq = create_workqueue("usb_rx_wq");
-	if (usb_rx_wq == NULL)
-		return -1;
-
-	return usb_register(&gdm_usb_lte_driver);
-}
-
-static void __exit gdm_usb_lte_exit(void)
-{
-	gdm_lte_event_exit();
-
-	usb_deregister(&gdm_usb_lte_driver);
-
-	if (usb_tx_wq) {
-		flush_workqueue(usb_tx_wq);
-		destroy_workqueue(usb_tx_wq);
-	}
-
-	if (usb_rx_wq) {
-		flush_workqueue(usb_rx_wq);
-		destroy_workqueue(usb_rx_wq);
-	}
-}
-
-module_init(gdm_usb_lte_init);
-module_exit(gdm_usb_lte_exit);
+module_usb_driver(gdm_usb_lte_driver);
 
 MODULE_VERSION(DRIVER_VERSION);
 MODULE_DESCRIPTION("GCT LTE USB Device Driver");
-- 
2.1.4


