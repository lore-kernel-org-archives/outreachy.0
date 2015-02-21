X-GM-THRID: 2154080239616
X-Received: by 10.112.130.70 with SMTP id oc6mr460790lbb.13.1424552001684;
        Sat, 21 Feb 2015 12:53:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.137 with SMTP id jw9ls277499wid.44.canary; Sat, 21 Feb
 2015 12:53:21 -0800 (PST)
X-Received: by 10.180.81.34 with SMTP id w2mr407028wix.2.1424552001393;
        Sat, 21 Feb 2015 12:53:21 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id l8si567734wia.0.2015.02.21.12.53.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:53:21 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f43.google.com with SMTP id z12so19098807wgg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ermxsh6OpJDunpEQIRGt8oEjjEqiytcpzZbUAtSxsf8=;
        b=inVyNapMq3/sugvb6/aFVq1KlbqA90MCdU/XvtJcYZqx0onsGoCMSJrbv/Xx1xd2BO
         0aouzLWZavASK1xAjHq4ePA6amdiqQ42JAglP6v/rU7c5aEmWOqUSzsM0Ly6vCjxwv0A
         xn1clMa5grq5EvJhAiJwNxnRtVjswTqQ6f8azJirFnW9CnssaCpwBGhofYv5WU0mtHrB
         JbwqKx0krkAszLKtMhFHgi/KxJ2VLVE3dq6dNXG5XNcnDgtyX5JnYlymWJ02doRzFhPw
         kBOy1yUm60jK8vYOWH2Kyt3KDi1x1+zaueXGvX/j1yOlQ31J45vYm1cKHuWF8xKxyA5a
         O5xA==
X-Received: by 10.181.13.174 with SMTP id ez14mr6896680wid.72.1424552001328;
        Sat, 21 Feb 2015 12:53:21 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id hm6sm48113608wjb.32.2015.02.21.12.53.20
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 12:53:20 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: removed trailing whitespace in dgnc
Date: Sat, 21 Feb 2015 22:53:17 +0200
Message-Id: <1424551997-5909-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Removed all trailing whitespace in
"drivers/staging/dgnc/dgnc_sysfs.c"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 0d425ad..6c3b387 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -125,9 +125,8 @@ void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver)
 	rc |= driver_create_file(driverfs, &driver_attr_debug);
 	rc |= driver_create_file(driverfs, &driver_attr_rawreadok);
 	rc |= driver_create_file(driverfs, &driver_attr_pollrate);
-	if (rc) {
+	if (rc)
 		printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");
-	}
 }
 
 
@@ -397,9 +396,8 @@ void dgnc_create_ports_sysfiles(struct dgnc_board *bd)
 	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_ports_txcount);
 	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_vpd);
 	rc |= device_create_file(&(bd->pdev->dev), &dev_attr_serial_number);
-	if (rc) {
+	if (rc)
 		printk(KERN_ERR "DGNC: sysfs device_create_file failed!\n");
-	}
 }
 
 
-- 
1.8.3.2


