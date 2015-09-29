X-GM-THRID: 6200050658971746304
X-Received: by 10.107.131.194 with SMTP id n63mr856914ioi.8.1443561785562;
        Tue, 29 Sep 2015 14:23:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.75.166 with SMTP id d6ls73423obw.85.gmail; Tue, 29 Sep
 2015 14:23:05 -0700 (PDT)
X-Received: by 10.182.24.71 with SMTP id s7mr175806obf.42.1443561785220;
        Tue, 29 Sep 2015 14:23:05 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si3478408pbb.2.2015.09.29.14.23.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:23:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id lk4so16400475pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 14:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=dFoeAWn1YXCOow+pOe2DmZPg/wTqgTiYWGMJnQsrPD0=;
        b=nc78jbsuG88SFGOW/d+RqiiPo/8t4rUvV9LCJ33d7WQ1w9Z4DEMIsSCKcrKrogB9Is
         +k1f543ppsyMsNRbM0JiQIAkCKwajYfZVrZpQBecz/3vJiFnTd3GFj0w28pYp/uXJ7sB
         lJZhDZd/Ua0FgngDznBqW++QDnVFfts1cbUwj6gMp2/jADQ51JvO3Tagu8ypfwm2qABR
         nM9FGwOpLQF57ofXsQtnoq0WQkVwKq6QDs1/GlIbxlS6v5Qmx5rclM5miyITAWFefeeH
         DLymYRAqhFzY4RLiohYUvM/Z5E55kAdRAddLHbj0YOMdBT41wxdpv5yGIG+1OZSZW6NT
         mEnA==
X-Received: by 10.68.219.194 with SMTP id pq2mr249633pbc.20.1443561785089;
        Tue, 29 Sep 2015 14:23:05 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id a17sm27328896pbu.55.2015.09.29.14.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 29 Sep 2015 14:23:04 -0700 (PDT)
Date: Wed, 30 Sep 2015 02:52:57 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Drivers: power: max8997_charger: Fixed coding style and
 irrelevant messages
Message-ID: <20150929212257.GA13394@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Added blank line after declaration of variables
and commented out an unnecessary error print statement.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/power/max8997_charger.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/power/max8997_charger.c b/drivers/power/max8997_charger.c
index 0b2eab5..00127f3 100644
--- a/drivers/power/max8997_charger.c
+++ b/drivers/power/max8997_charger.c
@@ -106,6 +106,7 @@ static int max8997_battery_probe(struct platform_device *pdev)
 
 	if (pdata->eoc_mA) {
 		int val = (pdata->eoc_mA - 50) / 10;
+
 		if (val < 0)
 			val = 0;
 		if (val > 0xf)
@@ -149,7 +150,7 @@ static int max8997_battery_probe(struct platform_device *pdev)
 	charger = devm_kzalloc(&pdev->dev, sizeof(struct charger_data),
 				GFP_KERNEL);
 	if (charger == NULL) {
-		dev_err(&pdev->dev, "Cannot allocate memory.\n");
+		/*dev_err(&pdev->dev, "Cannot allocate memory.\n");*/
 		return -ENOMEM;
 	}
 
-- 
2.1.0


