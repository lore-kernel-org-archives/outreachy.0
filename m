X-GM-THRID: 126410031104
X-Received: by 10.180.101.101 with SMTP id ff5mr3428631wib.5.1424183408042;
        Tue, 17 Feb 2015 06:30:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.71 with SMTP id eo7ls53903wib.21.canary; Tue, 17 Feb
 2015 06:30:07 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr3645971wjz.0.1424183407724;
        Tue, 17 Feb 2015 06:30:07 -0800 (PST)
Received: by 10.194.198.231 with SMTP id jf7mswjc;
        Tue, 17 Feb 2015 06:28:29 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr3609091lbj.23.1424183308399;
        Tue, 17 Feb 2015 06:28:28 -0800 (PST)
Return-Path: <ksenija@ksenija-aspire-v3-572>
Received: from ksenija-Aspire-V3-572 (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by gmr-mx.google.com with ESMTPS id ev8si5944818wib.3.2015.02.17.06.28.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 06:28:28 -0800 (PST)
Received-SPF: temperror (google.com: error in processing during lookup of ksenija@ksenija-aspire-v3-572: DNS timeout) client-ip=77.46.215.254;
Authentication-Results: gmr-mx.google.com;
       spf=temperror (google.com: error in processing during lookup of ksenija@ksenija-aspire-v3-572: DNS timeout) smtp.mail=ksenija@ksenija-aspire-v3-572;
       dmarc=fail (p=NONE dis=NONE) header.from=gmail.com
Received: from ksenija-Aspire-V3-572 (localhost [127.0.0.1])
	by ksenija-Aspire-V3-572 (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id t1HESQ5R005048;
	Tue, 17 Feb 2015 15:28:26 +0100
Received: (from ksenija@localhost)
	by ksenija-Aspire-V3-572 (8.14.4/8.14.4/Submit) id t1HESQuc005046;
	Tue, 17 Feb 2015 15:28:26 +0100
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: media: vino: Replace C99 with C89 style comment.
Date: Tue, 17 Feb 2015 15:27:24 +0100
Message-Id: <1424183244-4997-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl error in saa7191.c file
ERROR: "do not use C99 // comments"

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
 drivers/staging/media/vino/saa7191.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
index 8e96992..087acab 100644
--- a/drivers/staging/media/vino/saa7191.c
+++ b/drivers/staging/media/vino/saa7191.c
@@ -33,7 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
 MODULE_LICENSE("GPL");
 
 
-// #define SAA7191_DEBUG
+/* #define SAA7191_DEBUG */
 
 #ifdef SAA7191_DEBUG
 #define dprintk(x...) printk("SAA7191: " x);
-- 
1.9.1


