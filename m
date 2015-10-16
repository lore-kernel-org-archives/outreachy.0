X-GM-THRID: 6206320165410308096
X-Received: by 10.180.210.212 with SMTP id mw20mr1515486wic.3.1445021523368;
        Fri, 16 Oct 2015 11:52:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.194 with SMTP id fq2ls209669wib.3.gmail; Fri, 16 Oct
 2015 11:52:03 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr1513675wic.5.1445021523010;
        Fri, 16 Oct 2015 11:52:03 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id o3si168451wiz.1.2015.10.16.11.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 11:52:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ll6so24005633wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 11:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JSjpAmM3bTwN/6IPQVpvPRdJ2hSNPW0WqLvw9/lAHMM=;
        b=ihT283KfuFkyGe/AZW8g1dhwDf3Kr6LWA7+vE8lP5/dPjGR9/R4eBuCTlSc8sH+Tin
         4miUMc43iBWv4hJ0eWQ82ROSVqOh2ehA04bJgI6EVRelKel+w+t9Qaav0FmRmZaVu1aq
         agRkcRK7p8A9FyozbHm1BbXfqiuMLuB6At3ixm3GRyBfg1zZiog9t/fesvXxXCQ5+AQw
         mdl3n9iAY5D354NVyYY5rrTLbKCNLNGh3HZprfs+3eMPVz4jDcI25ir0Yej57+yQTZ+c
         wbRRr8zAxtQ9vkcuZ32VjGvt0XF18ZcDFIfmSrxsR80AovKcW+i2rKD8E/q0kzmZtr1g
         g7Hg==
X-Received: by 10.180.205.201 with SMTP id li9mr6741265wic.39.1445021522925;
        Fri, 16 Oct 2015 11:52:02 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id hk5sm24016475wjb.6.2015.10.16.11.52.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 11:52:02 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 3/3] Staging: olpc_dcon: Remove NULL comparison
Date: Fri, 16 Oct 2015 21:51:45 +0300
Message-Id: <1445021505-6612-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445021505-6612-1-git-send-email-aybuke.147@gmail.com>
References: <1445021505-6612-1-git-send-email-aybuke.147@gmail.com>

Problem found using checkpatch.pl
CHECK: Comparison to NULL could be written "(!)dcon_device"

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index 2c34f61..f45b2ef 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -616,7 +616,7 @@ static int dcon_probe(struct i2c_client *client, const struct i2c_device_id *id)
 
 	dcon_device = platform_device_alloc("dcon", -1);
 
-	if (dcon_device == NULL) {
+	if (!dcon_device) {
 		pr_err("Unable to create the DCON device\n");
 		rc = -ENOMEM;
 		goto eirq;
@@ -679,7 +679,7 @@ static int dcon_remove(struct i2c_client *client)
 
 	backlight_device_unregister(dcon->bl_dev);
 
-	if (dcon_device != NULL)
+	if (dcon_device)
 		platform_device_unregister(dcon_device);
 	cancel_work_sync(&dcon->switch_source);
 
-- 
1.9.1


