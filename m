X-GM-THRID: 7869323804672
X-Received: by 10.182.133.69 with SMTP id pa5mr41509183obb.32.1426164512813;
        Thu, 12 Mar 2015 05:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.168 with SMTP id 37ls1184005qgp.18.gmail; Thu, 12 Mar
 2015 05:48:32 -0700 (PDT)
X-Received: by 10.236.30.41 with SMTP id j29mr41423617yha.28.1426164512667;
        Thu, 12 Mar 2015 05:48:32 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id pc4si1310000pac.0.2015.03.12.05.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 05:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id v10so19832586pde.13
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 05:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ODyDCB8FDe1Le6on15sPtuTvlOTxEPt4aMThT9vPhTY=;
        b=YmsPNVUrY2QOTGdoQ2iID0186XEp9lkf3GS6/6vY7hRJicTnk/CLSsdjQd5NeHzj5N
         DiI+MGpxvB1q9XPElT5zd+ZS0/d5xBl/aUzsrQ5OPJRZ4EtyuypJa1gQGII2o0Nnb3vT
         aq3LctyCMGZxlAESOGdvJBvjUuZYtmoHOFGhttk0UbfbyEFwt0T/ubpTZ6CKSiuIyHrr
         S/MTEEnJD3nuPKxvVT6MYUaIg2GYbdPr6aK9XMLfT3gMx/Fm3rTLr0Fek17Akp4JPP0Z
         FKSZO1Z6uVZ6hsrXye3ZNU5RkuSGpUFu2T5pF36xggjKt9vfa7XEGqSUQnMjd9QcHI4W
         ltxA==
X-Received: by 10.66.138.46 with SMTP id qn14mr12809716pab.34.1426164512253;
        Thu, 12 Mar 2015 05:48:32 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fr13sm10892198pdb.55.2015.03.12.05.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 05:48:31 -0700 (PDT)
Date: Thu, 12 Mar 2015 18:16:43 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: power: Replace use of devm_kzalloc instead of
 kzalloc
Message-ID: <20150312124643.GA16399@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch moves shared private data kzalloc to managed devm_kzalloc and
so kfree is not required.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/power/intel_mid_battery.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/power/intel_mid_battery.c b/drivers/power/intel_mid_battery.c
index de3f39e..8282e14 100644
--- a/drivers/power/intel_mid_battery.c
+++ b/drivers/power/intel_mid_battery.c
@@ -656,7 +656,7 @@ static int probe(int irq, struct device *dev)
 
 	dev_dbg(dev, "pmic-battery: found pmic battery device\n");
 
-	pbi = kzalloc(sizeof(*pbi), GFP_KERNEL);
+	pbi = devm_kzalloc(dev, sizeof(*pbi), GFP_KERNEL);
 	if (!pbi) {
 		dev_err(dev, "%s(): memory allocation failed\n",
 								__func__);
@@ -734,7 +734,6 @@ power_reg_failed:
 requestirq_failed:
 	destroy_workqueue(pbi->monitor_wqueue);
 wqueue_failed:
-	kfree(pbi);
 
 	return retval;
 }
-- 
1.9.1


