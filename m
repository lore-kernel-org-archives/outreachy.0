X-GM-THRID: 405220098048
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,66b80ad46f7caeb7,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.147.82 with SMTP id 79mr1571514qht.8.1424288975303;
        Wed, 18 Feb 2015 11:49:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.119.199 with SMTP id kw7ls98288obb.30.gmail; Wed, 18 Feb
 2015 11:49:35 -0800 (PST)
X-Received: by 10.182.34.133 with SMTP id z5mr1021250obi.3.1424288975131;
        Wed, 18 Feb 2015 11:49:35 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com. [209.85.192.173])
        by gmr-mx.google.com with ESMTPS id pc4si2639368pac.0.2015.02.18.11.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 11:49:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.173 as permitted sender) client-ip=209.85.192.173;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.173 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so3305064pdj.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 11:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Bq3tdRH4bj8rP4n4umDaTDIy2CbH+26K3RSHslg5FL8=;
        b=r/Oefe63DkGIbEF3kW2rSbRT87FkhZfotfP/08JBAM/YUat6XOELIc+MmWPByq6uut
         sU9bBAewm9El7j3/YKa2p0a14GOsIPozbUyA3CK+zVQDVXq+Fyviy5z8KvdehR9wrvA9
         3ou4bsJRjtLB6rJ64PchlMNCmYAVP6Vggg8oy/7bYC7bGD43fLx+9purkYiQxhDN279E
         SsxuegiKFUuW4I4+Wp5hOSqfLAydgUYsgAs2UW9ZPGaD3pi3Zc8sHbBYxh17BLIOaMdv
         gJmvtIBTgpiH7ZQTBeWodGcfmN2e+q0CC6N61HZkE1PSMQhAYst9/6XwbLFp2aDHgKFh
         ta5w==
X-Received: by 10.68.204.73 with SMTP id kw9mr1714094pbc.48.1424288974885;
        Wed, 18 Feb 2015 11:49:34 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id v5sm21580769pdh.9.2015.02.18.11.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 11:49:33 -0800 (PST)
Date: Thu, 19 Feb 2015 01:19:16 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i2o: Join quoted string split across lines
Message-ID: <20150218194915.GA28794@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the checkpatch.pl warnings "quoted string split accross lines" 

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/i2o/driver.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/i2o/driver.c b/drivers/staging/i2o/driver.c
index 111c3ed..06119bb 100644
--- a/drivers/staging/i2o/driver.c
+++ b/drivers/staging/i2o/driver.c
@@ -102,8 +102,7 @@ int i2o_driver_register(struct i2o_driver *drv)
 
 	for (i = 0; i2o_drivers[i]; i++)
 		if (i >= i2o_max_drivers) {
-			osm_err("too many drivers registered, increase "
-				"max_drivers\n");
+			osm_err("too many drivers registered, increase max_drivers\n");
 			spin_unlock_irqrestore(&i2o_drivers_lock, flags);
 			rc = -EFAULT;
 			goto out;
@@ -244,8 +243,8 @@ int i2o_driver_dispatch(struct i2o_controller *c, u32 m)
 	}
 
 	if (unlikely(!drv->reply)) {
-		osm_debug("%s: Reply to driver %s, but no reply function"
-			  " defined!\n", c->name, drv->name);
+		osm_debug("%s: Reply to driver %s, but no reply function defined!\n",
+			c->name, drv->name);
 		return -EIO;
 	}
 
-- 
1.9.1


