X-GM-THRID: 6199808911972761600
X-Received: by 10.112.125.104 with SMTP id mp8mr3949623lbb.20.1443505499535;
        Mon, 28 Sep 2015 22:44:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.170 with SMTP id fx10ls676883wib.51.canary; Mon, 28
 Sep 2015 22:44:58 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr1488965wic.5.1443505498951;
        Mon, 28 Sep 2015 22:44:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id fj10si671923wib.1.2015.09.28.22.44.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 22:44:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ge5so133630396wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 22:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=N/e2SEzpfO23ttMxjSnqRieSBvAUTIc8dJmzheY8dws=;
        b=Un+P7Z7qhSyHqNKpZR+eoHDBxbQlly7oWmQwDosvRVVOETgg6Y7Ig9+8BRJn1yxzIg
         4m1Z0CCNpWfyV+LFH6yeL5p0neBgerTvzM4A3pRbVpHaZPGHjXQiMu7rMLQazh6BrGPk
         LzbwtgWPozJ/ASNluJwlpNoxWoKkEp/04ZdxFAhM1s7C7GYG//FW5rtv+u1ulQdXndZS
         8rJVnqXTXEPfp/LTJRapjUZaV5RSYgGEpcaov11F3h6nMNYSWTo2abKGfXsCMm2vbdbg
         N89QosKrxemdKMCo2DXWU35Sm7vskHWCAbfn/kValnVk9r+AIXKkhyxvwa7ECRTNuYjy
         9Zbg==
X-Received: by 10.180.86.100 with SMTP id o4mr21971183wiz.59.1443505498840;
        Mon, 28 Sep 2015 22:44:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ju6sm7365314wid.9.2015.09.28.22.44.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 28 Sep 2015 22:44:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH] Staging: most: Use module_i2c_driver
Date: Tue, 29 Sep 2015 11:14:42 +0530
Message-Id: <1443505482-11667-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.560A2558.0415,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Macro module_i2c_driver is used for drivers whose init
and exit paths does only register and unregister to i2c
API. Remove some boilerplate code by using module_i2c_driver.

Problem found using Coccinelle.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/most/hdm-i2c/hdm_i2c.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/staging/most/hdm-i2c/hdm_i2c.c b/drivers/staging/most/hdm-i2c/hdm_i2c.c
index 029ded3..5fddb28 100644
--- a/drivers/staging/most/hdm-i2c/hdm_i2c.c
+++ b/drivers/staging/most/hdm-i2c/hdm_i2c.c
@@ -423,27 +423,7 @@ static struct i2c_driver i2c_driver = {
 	.id_table = i2c_id,
 };
 
-/**
- * hdm_i2c_init - Driver Registration Routine
- */
-static int __init hdm_i2c_init(void)
-{
-	pr_info("hdm_i2c_init()\n");
-
-	return i2c_add_driver(&i2c_driver);
-}
-
-/**
- * hdm_i2c_exit - Driver Cleanup Routine
- **/
-static void __exit hdm_i2c_exit(void)
-{
-	i2c_del_driver(&i2c_driver);
-	pr_info("hdm_i2c_exit()\n");
-}
-
-module_init(hdm_i2c_init);
-module_exit(hdm_i2c_exit);
+module_i2c_driver(i2c_driver);
 
 MODULE_AUTHOR("Jain Roy Ambi <JainRoy.Ambi@microchip.com>");
 MODULE_AUTHOR("Andrey Shvetsov <andrey.shvetsov@k2l.de>");
-- 
2.1.4


