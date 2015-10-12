X-GM-THRID: 6204748912681549824
X-Received: by 10.182.20.195 with SMTP id p3mr24492919obe.28.1444655683430;
        Mon, 12 Oct 2015 06:14:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.145 with SMTP id 17ls1559544iot.4.gmail; Mon, 12 Oct
 2015 06:14:42 -0700 (PDT)
X-Received: by 10.68.231.66 with SMTP id te2mr23969360pbc.5.1444655682934;
        Mon, 12 Oct 2015 06:14:42 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si1700797pbb.0.2015.10.12.06.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ve7so96313173pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 06:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=GHBDdpmdResjKnPacY/nQkol+23KGDoAc5rGMb5dQzw=;
        b=nXstfEvIRmXwOk4JQVEbh98MGCKvcjCqeWaD4M/fZyja6yS7/6/lBLOYmS2ohnHXNj
         WkSFn5C5F2M9gk5eXvTTtbEOT3GWVrTzwxnHMt5mVKjHjfUxpAL6Y8NXu17z1qSh7ofL
         ckH5xSH0fqWfW4kPprns9ntV0ZVHvm6OTpwogR+Ps3HHA2/HQKX6p12vx+m4WRBEyWqK
         OEpgwglUZ0ojvrYbTfonGfY+qc7KmeexQfRsgDvcte3iaTX5u5duDXKxaH7Wyc+IZD8z
         qfB2WdJs75UWvXW2LWYVR6B5DkzsIrhwwmkZJ/xs/BuT6alpPmqDNTShWWWaUfJUOY4I
         CCrQ==
X-Received: by 10.68.202.9 with SMTP id ke9mr34804798pbc.85.1444655682785;
        Mon, 12 Oct 2015 06:14:42 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id d13sm16913574pbu.20.2015.10.12.06.14.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 06:14:42 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: most: hdm-i2c: Drop owner assignment from i2c driver
Date: Mon, 12 Oct 2015 18:44:34 +0530
Message-Id: <1444655674-19991-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561BB241.01F5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

i2c_driver does not need to set an owner because core will set it

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/most/hdm-i2c/hdm_i2c.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/most/hdm-i2c/hdm_i2c.c b/drivers/staging/most/hdm-i2c/hdm_i2c.c
index cffea40..9768281 100644
--- a/drivers/staging/most/hdm-i2c/hdm_i2c.c
+++ b/drivers/staging/most/hdm-i2c/hdm_i2c.c
@@ -416,7 +416,6 @@ MODULE_DEVICE_TABLE(i2c, i2c_id);
 static struct i2c_driver i2c_driver = {
 	.driver = {
 		.name = "hdm_i2c",
-		.owner = THIS_MODULE,
 	},
 	.probe = i2c_probe,
 	.remove = i2c_remove,
-- 
2.1.4


