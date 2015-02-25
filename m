X-GM-THRID: 3468768051200
X-Received: by 10.112.167.98 with SMTP id zn2mr828693lbb.6.1424905951969;
        Wed, 25 Feb 2015 15:12:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.132 with SMTP id ey4ls3057wid.48.gmail; Wed, 25 Feb
 2015 15:12:31 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr853111wjz.0.1424905951706;
        Wed, 25 Feb 2015 15:12:31 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id r6si5701wix.0.2015.02.25.15.12.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:12:31 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id m14so6656568wev.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 15:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=sqazUPWtM9ceVLcrPrtLU3bgzSTvQsCZHz0mpF3YTQQ=;
        b=bnRCLoUC5m853Pwy/sYBiLUq2nPLHGxvIWCONTz4mK9P5EssAX2cvp1ClOAK6b2uI5
         Gyu3G8wp0y6idabDdetO5pbpV8A3uHJ06odlWDp2UERyCYuhYTnuz4iI61DX42rT+xFg
         fVply/P6Iw1IqdxzPg/gvKBs5WsvEp0Rb6NrlTgGFpectx5SSWMdtN4qSjVvOpbgDhJn
         ndeigzQYuFoLkEViAbMG6+W52hez3N97gAhVfBYfO2XvdJQGk46943m8biuh7tAXh+7Q
         9xFRAs/1qs1S9kGgsnfkM4zqohynKOS9NA1nQcvgpMpgOCa3VDGwRNF3XTVp7tI/8clO
         9L5g==
X-Received: by 10.181.13.39 with SMTP id ev7mr45164927wid.3.1424905951639;
        Wed, 25 Feb 2015 15:12:31 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id ul1sm66870277wjc.0.2015.02.25.15.12.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Feb 2015 15:12:30 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 2/2] Staging: i2o: Corrected code indentation
Date: Thu, 26 Feb 2015 01:12:19 +0200
Message-Id: <1424905939-11537-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424905939-11537-1-git-send-email-aybuke.147@gmail.com>
References: <1424905939-11537-1-git-send-email-aybuke.147@gmail.com>

WARNING: suspect code indent for conditional statements(8,12)
spaces are converting to tabs suspect code indent is deleted.
That was found by running checkpatch.pl

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/i2o/device.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
index e47496c..cd6da9c 100644
--- a/drivers/staging/i2o/device.c
+++ b/drivers/staging/i2o/device.c
@@ -260,10 +260,10 @@ static int i2o_device_add(struct i2o_controller *c, i2o_lct_entry *entry)
 
 	/* create user entries referring to this device */
 	list_for_each_entry(tmp, &c->devices, list)
-	    if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
-		&& (tmp != i2o_dev)) {
-		rc = sysfs_create_link(&tmp->device.kobj,
-				       &i2o_dev->device.kobj, "user");
+		if ((tmp->lct_data.user_tid == i2o_dev->lct_data.tid)
+						&& (tmp != i2o_dev)) {
+			rc = sysfs_create_link(&tmp->device.kobj,
+						&i2o_dev->device.kobj, "user");
 		if (rc)
 			goto rmlink1;
 	}
@@ -279,10 +279,10 @@ static int i2o_device_add(struct i2o_controller *c, i2o_lct_entry *entry)
 
 	/* create parent entries referring to this device */
 	list_for_each_entry(tmp, &c->devices, list)
-	    if ((tmp->lct_data.parent_tid == i2o_dev->lct_data.tid)
-		&& (tmp != i2o_dev)) {
-		rc = sysfs_create_link(&tmp->device.kobj,
-				       &i2o_dev->device.kobj, "parent");
+		if ((tmp->lct_data.parent_tid == i2o_dev->lct_data.tid)
+						&& (tmp != i2o_dev)) {
+			rc = sysfs_create_link(&tmp->device.kobj,
+						&i2o_dev->device.kobj, "parent");
 		if (rc)
 			goto rmlink2;
 	}
-- 
1.9.1


