X-GM-THRID: 1346431352832
X-Received: by 10.236.20.99 with SMTP id o63mr628162yho.40.1424446788041;
        Fri, 20 Feb 2015 07:39:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.107.38 with SMTP id gz6ls203138igb.35.canary; Fri, 20 Feb
 2015 07:39:47 -0800 (PST)
X-Received: by 10.50.153.2 with SMTP id vc2mr12279771igb.1.1424446787888;
        Fri, 20 Feb 2015 07:39:47 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id f2si3309172pdg.0.2015.02.20.07.39.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 07:39:47 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id eu11so8765265pac.10
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ahY3nEwHMIw8xdbDdr/6Migj/V2DjoAICrbn9bb838o=;
        b=y20H5CY7wOukp8Si2pvq9vDJ/zEObluDEMulowNXrr2a3N/AZGBMLRM0wOqk83EGt1
         fBPUVE+itYYaXsNgY60HwuSS3tSlhfXm0fD870G07uU5UPQkbSXye9Q2gbp1VRpXgC87
         FBn042R0JkqQEmzfjrUsyvFGrTe+7Zdypr27/QiAxQGr5h6QxeTXNESespkYfVPkmXq7
         rl9PABpoO8SstbNUdB6pGIOSPNFgc6ZGbaPcRq1P8qV2j+HrosCnHqnp0r91PhqhQIAu
         WLTu8u3JavhCOIss8WBIDXDFSM+YqCi8ESIG1FwqZ/OcqiJxLCnFk3vzk1zGfhk2ax2w
         EvXA==
X-Received: by 10.66.102.4 with SMTP id fk4mr17446785pab.111.1424446787722;
        Fri, 20 Feb 2015 07:39:47 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from localhost.localdomain ([111.93.6.70])
        by mx.google.com with ESMTPSA id ms5sm27167769pbb.59.2015.02.20.07.39.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 07:39:46 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: [PATCH] staging: i2o : Replace printk with dev_warn
Date: Fri, 20 Feb 2015 21:10:33 +0530
Message-Id: <1424446833-22298-1-git-send-email-navyasri.tech@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: Prefer netdev_info(netdev, ... then dev_info
(dev, ... then pr_info(...  to printk(KERN_INFO ...

i2o being a device driver, printk(KERN_WARNING can be
replaced with the dev_warn function which is preferable.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/i2o/exec-osm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i2o/exec-osm.c b/drivers/staging/i2o/exec-osm.c
index 16d857d..89e464d 100644
--- a/drivers/staging/i2o/exec-osm.c
+++ b/drivers/staging/i2o/exec-osm.c
@@ -507,7 +507,7 @@ static int i2o_exec_reply(struct i2o_controller *c, u32 m,
 	 * to aid in debugging.
 	 *
 	 */
-	printk(KERN_WARNING "%s: Unsolicited message reply sent to core!"
+	dev_warn(c->pdev->dev, "%s: Unsolicited message reply sent to core!"
 	       "Message dumped to syslog\n", c->name);
 	i2o_dump_message(msg);
 
-- 
1.9.1


