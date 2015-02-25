X-GM-THRID: 3468768051200
X-Received: by 10.112.189.227 with SMTP id gl3mr846579lbc.2.1424902240398;
        Wed, 25 Feb 2015 14:10:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.225 with SMTP id fb1ls1104482wib.38.canary; Wed, 25
 Feb 2015 14:10:40 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr823852wjb.1.1424902240086;
        Wed, 25 Feb 2015 14:10:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id ew5si1226857wid.1.2015.02.25.14.10.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 14:10:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id x3so6436546wes.7
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 14:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hec7cgFY84IuQMSVjzO3fnismfCgepW/V656FUU8JYM=;
        b=wHp+t95UhaM/A11LsFBL3T4x8si0L41x7a47a8W+rFKnEvz54RKOGJr7cj1avSAmz1
         AHZrOMJ6t8cd25goaZFcsI8WgVkgs2QinE0o1zpw0kej3WxEW6bFkr44l2oNyPIQoZbV
         kHCfMha5tCQtpohvJWg6pMv4UGPGOWrCa6Sq/JKodmto70mTeP7CebV9dwmwEbcLJKOC
         zmdhR8X+18t3I1X3P4LWKwGdtl4JTrcxKecEEGrrP8LjRY7+sohbHIArrxZRcLvppMbq
         g5mob6dpRHY4cVW9MD6IUTdnSHbdpYOsYOJYqRgRhe8/ggysEH+u2dBtlmYRQppGJaK1
         J30Q==
X-Received: by 10.194.60.104 with SMTP id g8mr10360451wjr.96.1424902240027;
        Wed, 25 Feb 2015 14:10:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id u18sm66702211wjq.42.2015.02.25.14.10.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Feb 2015 14:10:39 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 3/3] Staging: i2o: Corrected code indentation
Date: Thu, 26 Feb 2015 00:10:22 +0200
Message-Id: <1424902222-10105-3-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>
References: <1424902222-10105-1-git-send-email-aybuke.147@gmail.com>

WARNING: suspect code indent for conditional statements(8,12)
spaces are converting to tabs suspect code indent is deleted.
That was found by running checkpatch.pl

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/i2o/device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
index e47496c..d643043 100644
--- a/drivers/staging/i2o/device.c
+++ b/drivers/staging/i2o/device.c
@@ -260,9 +260,9 @@ static int i2o_device_add(struct i2o_controller *c, i2o_lct_entry *entry)
 
 	/* create user entries referring to this device */
 	list_for_each_entry(tmp, &c->devices, list)
-	    if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
+		if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
 		&& (tmp != i2o_dev)) {
-		rc = sysfs_create_link(&tmp->device.kobj,
+			rc = sysfs_create_link(&tmp->device.kobj,
 				       &i2o_dev->device.kobj, "user");
 		if (rc)
 			goto rmlink1;
@@ -279,9 +279,9 @@ static int i2o_device_add(struct i2o_controller *c, i2o_lct_entry *entry)
 
 	/* create parent entries referring to this device */
 	list_for_each_entry(tmp, &c->devices, list)
-	    if ((tmp->lct_data.parent_tid == i2o_dev->lct_data.tid)
+		if ((tmp->lct_data.parent_tid == i2o_dev->lct_data.tid)
 		&& (tmp != i2o_dev)) {
-		rc = sysfs_create_link(&tmp->device.kobj,
+			rc = sysfs_create_link(&tmp->device.kobj,
 				       &i2o_dev->device.kobj, "parent");
 		if (rc)
 			goto rmlink2;
-- 
1.9.1


