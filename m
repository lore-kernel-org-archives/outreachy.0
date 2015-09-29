X-GM-THRID: 6199796620596346880
X-Received: by 10.182.106.11 with SMTP id gq11mr21493420obb.25.1443502639925;
        Mon, 28 Sep 2015 21:57:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.246 with SMTP id u109ls3348150qge.65.gmail; Mon, 28
 Sep 2015 21:57:19 -0700 (PDT)
X-Received: by 10.31.3.93 with SMTP id 90mr21692441vkd.0.1443502639408;
        Mon, 28 Sep 2015 21:57:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id w5si3088882pbt.1.2015.09.28.21.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 21:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so198822210pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 21:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OuRIyWGRA9bQ+XLp1/y9fGJZexhz+9Llev4mzwJG3gw=;
        b=aZbOUpa+izq+rNAvdyrV3RXDZzp8e5C137ppvXudPgl9HAwod9T5/cpcyhJaAjY3GG
         764GEZ/K+HIe2V6LkHYg0YyYLnAsqrQzdYAmbmKeZVGwuPUlr6Pkgua0Lf0t52C2kpM0
         LXgJCIvVgVWIjYU1SMIVCaeejI4eQjrafUiM67DssSdxdeWWPBD+mCI8zJJW0Ldz5cnY
         gLdQBhykq3NaAC0Q2B62hZ/q1kqMs+yWn4fkKldS/TdrsYG2nLewd22GRsnbKWLfAnwN
         xfgJRePTWVFOMyx7XaNzsXzCvPyFziieEhKwsDz4bSkk4vl38nZnVdNSw8KlAhwIcXba
         7odg==
X-Received: by 10.66.120.80 with SMTP id la16mr2639461pab.1.1443502639237;
        Mon, 28 Sep 2015 21:57:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sl7sm22597776pbc.54.2015.09.28.21.57.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 28 Sep 2015 21:57:18 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH 2/2] Staging: gdm724x: gdm_mux.c: Use module_usb_driver
Date: Tue, 29 Sep 2015 10:26:49 +0530
Message-Id: <1443502609-9918-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
References: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.560A1A2E.0128,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Macro module_usb_driver is used for drivers whose init
and exit paths does only register and unregister. Remove boilerplate code
by using module_usb_driver.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/gdm724x/gdm_mux.c | 29 +----------------------------
 1 file changed, 1 insertion(+), 28 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 1cf24e4..7cd9b87 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -658,34 +658,7 @@ static struct usb_driver gdm_mux_driver = {
 	.reset_resume = gdm_mux_resume,
 };
 
-static int __init gdm_usb_mux_init(void)
-{
-
-	mux_rx_wq = create_workqueue("mux_rx_wq");
-	if (mux_rx_wq == NULL) {
-		pr_err("work queue create fail\n");
-		return -1;
-	}
-
-	register_lte_tty_driver();
-
-	return usb_register(&gdm_mux_driver);
-}
-
-static void __exit gdm_usb_mux_exit(void)
-{
-	unregister_lte_tty_driver();
-
-	if (mux_rx_wq) {
-		flush_workqueue(mux_rx_wq);
-		destroy_workqueue(mux_rx_wq);
-	}
-
-	usb_deregister(&gdm_mux_driver);
-}
-
-module_init(gdm_usb_mux_init);
-module_exit(gdm_usb_mux_exit);
+module_usb_driver(gdm_mux_driver);
 
 MODULE_DESCRIPTION("GCT LTE TTY Device Driver");
 MODULE_LICENSE("GPL");
-- 
2.1.4


