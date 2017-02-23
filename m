X-GM-THRID: 6390403831947067392
X-Received: by 10.107.157.6 with SMTP id g6mr12851687ioe.79.1487881836999;
        Thu, 23 Feb 2017 12:30:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.40.140 with SMTP id h134ls63278ith.5.gmail; Thu, 23 Feb
 2017 12:30:36 -0800 (PST)
X-Received: by 10.107.176.142 with SMTP id z136mr12248177ioe.62.1487881836224;
        Thu, 23 Feb 2017 12:30:36 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h130si1121885pfe.1.2017.02.23.12.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:30:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id z128so229926pgb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 12:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=smpQ3Xit8SiLpbyQt5dr0X87IdKtw3j0FOTwvOyNmJQ=;
        b=MpbelJNVOkA3wdn1QT6eM9enFtgs8BHKUpI+EyQ0EHJPZBeTnaQ8/Nj88IpbtWHq4U
         FnCbgrHl2r9BKhvaIXhiKGrphNyj7+6ZUJ0xF664cGSIiA8upx67O0siGEiAs/faClOW
         k2TyWKY5gdjOthMsfbGZXydZ/5j7Crl30geTbkFST0ChJpoK+WO1Q/bTAW8FciL/GU22
         xjrzksdZihLd/840Z6G/vnu3EMvPwOMohfMqdQcFunWCBIpHl6yrMFnIp/xTqCcc9Dx2
         DnruOQevgKYAS3aBD+radKB4c0vNgxvc3J8y9koygTht7k7L8vcIOpjYWHZNApjnoFJU
         psiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=smpQ3Xit8SiLpbyQt5dr0X87IdKtw3j0FOTwvOyNmJQ=;
        b=PXU1oODraM7h+vW1IEQwqpJ0AByGLsEg5QL6YKBhT1WFcN2ZLr5CyZpsy4yGW07uvL
         L+m4NjJ/p96EbLwVTA/VH6rN3Vdfdz6JCN17Tl4MgmzTfI6o9X0P8gN4DrLc3MBrNCpo
         sVRUTWYB12spe4FXTPRr7nyBqG1RR4hcRzKgEPLIYTV89Eme3L7Sz2d/teiqLSR0ePQO
         mRkfRHW2dfrvrqEvkBlS+nbNRGM9RlshVLr87KIpBVK3yHwPCHAyNDvDFPKoIBvbfR3K
         /iCRraujq1vuM+7lqxkOW9Na+T7gQRWS1MjvM4m2JFj/GYJNUQYjoWb6mVuZsl8k+FxW
         WpeQ==
X-Gm-Message-State: AMke39nXuwfIaRj3r+hLSpMp0hlcxfGsqyPeTI3ZnVl5sqF2fBQAx8M2BUtrYsud8+5FcQ==
X-Received: by 10.99.50.132 with SMTP id y126mr51223956pgy.8.1487881836003;
        Thu, 23 Feb 2017 12:30:36 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id x65sm11306997pfx.115.2017.02.23.12.30.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 12:30:35 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: vc04_services: Remove explicit NULL comparison
Date: Fri, 24 Feb 2017 01:58:18 +0530
Message-Id: <1487881698-31340-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace explicit NULL comparison with ! operator to
simplify code.

Found with Coccinelle script:
@@
expression ptr;
position p;
statement s0, s1;
@@

ptr@p =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
alloc_netdev\|dev_alloc_skb\)(...)
... when != ptr

if (
(
+ !
ptr
- == NULL
)
) s0 else s1

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 1dc8627..b1db750 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1572,7 +1572,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
 	num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
 
 	pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
-	if (pages == NULL) {
+	if (!pages) {
 		vchiq_log_error(vchiq_arm_log_level,
 			"Unable to allocation memory for %d pages\n",
 			num_pages);
-- 
2.7.4


