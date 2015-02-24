X-GM-THRID: 3366202638336
X-Received: by 10.112.25.7 with SMTP id y7mr48886lbf.21.1424821058859;
        Tue, 24 Feb 2015 15:37:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.132 with SMTP id i4ls689989lab.25.gmail; Tue, 24 Feb
 2015 15:37:37 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr57630lab.0.1424821057283;
        Tue, 24 Feb 2015 15:37:37 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id r6si1023205wix.0.2015.02.24.15.37.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 15:37:37 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id b13so314875wgh.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 15:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dNQWJBGc4rebvNfnstV6i3nOJXi5JI4HaOkXs0MR/0w=;
        b=tV2VyaSisYGZAGd5JsqfYX9/MXKIbKRy/To4OFpE7GCP3zl8EKfirl11XgnFRMJ1z0
         CwRf+iM6maKE1piLqaGMLeFPlBSSDLJVxN45im/917iCmwed4fqLsdZ/jsy6l9JKCguB
         NoTiiu8YUnBt56yfDa/FjUGP5fli3nUG2N/NZ5yotnpUcGpPZVRQ38J/CvwPy9FB/MtQ
         pu9t0p9J+iKAMt95vSLgV0eJUCwgw8JDcGOgQR1/ZAVGzCSk8XBIUYJluPmLH0bfNe9k
         Pe153fbeLki3lfGl0/P8tfLR4YI+Uc7AhnEe+R/6FSWL2sgpioMbnxZdogPJGqApifl2
         mdsA==
X-Received: by 10.180.91.112 with SMTP id cd16mr1302345wib.14.1424821057190;
        Tue, 24 Feb 2015 15:37:37 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id hv5sm62269861wjb.16.2015.02.24.15.37.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 15:37:36 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: media: replace printk(KERN_DEBUG ..) with pr_debug
Date: Wed, 25 Feb 2015 01:36:54 +0200
Message-Id: <1424821014-12100-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "Prefer [subsystem eg: netdev]_dbg([subsystem]dev,
... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG"
checkpatch.pl warning in c-qcam.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/media/parport/c-qcam.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/parport/c-qcam.c b/drivers/staging/media/parport/c-qcam.c
index b9010bd..96a511e 100644
--- a/drivers/staging/media/parport/c-qcam.c
+++ b/drivers/staging/media/parport/c-qcam.c
@@ -220,7 +220,7 @@ static int qc_detect(struct qcam *qcam)
 	    && qcam->pport->probe_info[0].model
 	    && !strcmp(qcam->pdev->port->probe_info[0].model,
 		       "Color QuickCam 2.0")) {
-		printk(KERN_DEBUG "QuickCam: Found by IEEE1284 probe.\n");
+		pr_debug("QuickCam: Found by IEEE1284 probe.\n");
 		return 1;
 	}
 
-- 
1.9.1


