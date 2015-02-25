X-GM-THRID: 3468768051200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,26dddd85f4bffbd9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr851280lax.10.1424905949110;
        Wed, 25 Feb 2015 15:12:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.172 with SMTP id gb12ls4656wic.21.gmail; Wed, 25 Feb
 2015 15:12:28 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr851202wjc.5.1424905948791;
        Wed, 25 Feb 2015 15:12:28 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id r6si5746wix.0.2015.02.25.15.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:12:28 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesp10 with SMTP id p10so4506912wes.12
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 15:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tbq2T+iqqM4SFmYDrPnddGG+9r6LsQmkQEUqWfh30R4=;
        b=0H0Ptg/rGAihvFDxVgAa8YGdSll7DFlDQM58hYJT/dBRc4m6CV9Zs4q9b5hOlDTkx3
         FqbW7dCalzLrwDDwjkFUv8yTBhabnoT/S0UMoo8WBSvDM/gMpUekBh0Lj53vY1epYoky
         ELfMbl8JH10jT7RhnJPrgGzKWy9yJlmxzwVQTSHBfM4y0/kr8UWwr8FR/+IkxL0Tm+FB
         /KvFBOaO0NyYJ+zGlkj2lIJQcgNBJhn+PUPG2WmSjDlSK2Ppg4/kPJuqnXybKlJdQ2V6
         5EhBIQa8mutdT1uYKf0SugGv7Jrmg5eanbFAJSrAAR4ifX2M3LirfleSd2zwUj/DdH4l
         GMGg==
X-Received: by 10.180.207.6 with SMTP id ls6mr45296853wic.13.1424905948678;
        Wed, 25 Feb 2015 15:12:28 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id ul1sm66870277wjc.0.2015.02.25.15.12.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Feb 2015 15:12:28 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 1/2] Staging: i2o: Remove unnecessary 'out of memory' message
Date: Thu, 26 Feb 2015 01:12:18 +0200
Message-Id: <1424905939-11537-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes unnecessay out of memory message fixing the following
checkpach.pl warning in device.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/i2o/device.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/i2o/device.c b/drivers/staging/i2o/device.c
index 2af2255..e47496c 100644
--- a/drivers/staging/i2o/device.c
+++ b/drivers/staging/i2o/device.c
@@ -565,10 +565,8 @@ int i2o_parm_table_get(struct i2o_device *dev, int oper, int group,
 		size += 4 - size % 4;
 
 	opblk = kmalloc(size, GFP_KERNEL);
-	if (opblk == NULL) {
-		printk(KERN_ERR "i2o: no memory for query buffer.\n");
+	if (opblk == NULL)
 		return -ENOMEM;
-	}
 
 	opblk[0] = 1;		/* operation count */
 	opblk[1] = 0;		/* pad */
-- 
1.9.1


