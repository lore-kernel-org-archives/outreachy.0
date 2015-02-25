X-GM-THRID: 3532128256000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2cd963ab497c3ca7,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr3265807wib.5.1424906789572;
        Wed, 25 Feb 2015 15:26:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.114 with SMTP id nb18ls1087721wic.26.canary; Wed, 25
 Feb 2015 15:26:29 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr3265588wid.1.1424906789308;
        Wed, 25 Feb 2015 15:26:29 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id ta1si1236833wic.1.2015.02.25.15.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:26:29 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id k48so6765403wev.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 15:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1TuzGOeg1DR30qACEBxI00AWSCuiR3sqBHYx/HY7dVA=;
        b=uOxXC0OrsVvFgWqBywHBf/J/6DgDi8C5X3EfQSOBcnII3LG7jL5w0rqFYKt/kX2Zoz
         kX6HIHLCziAGlAhVue5vSi/QA55N0LUecnsvx5GagewNrL2k4xWdNawQGDm2SfgFxr1D
         2KPieOFvinSDFl5LT3ADkkFYzgEQIx3ktmjZdtote/aU4mnmdnpJNuWrI2N+fnHxN+yy
         vqNWMH4pksS8izefzUObqClgY4oClsIczkFxq6BpjYvXebi8YUXB7ERfmlzTh3zlichu
         zxSixuGYHyM2hfdSPC3qUHgIwxC65tLfP52bKHiYaYk5tm8MigsjFnPdKprKBScSnUJC
         l4tg==
X-Received: by 10.194.173.138 with SMTP id bk10mr10639120wjc.112.1424906789237;
        Wed, 25 Feb 2015 15:26:29 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.61.145])
        by mx.google.com with ESMTPSA id ev7sm66928629wjb.47.2015.02.25.15.26.28
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 15:26:28 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: i2o: Add blank line
Date: Thu, 26 Feb 2015 01:26:36 +0200
Message-Id: <1424906796-8124-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/i2o/debug.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
index 7a16114..fa6fa87 100644
--- a/drivers/staging/i2o/debug.c
+++ b/drivers/staging/i2o/debug.c
@@ -54,6 +54,7 @@ void i2o_dump_message(struct i2o_message *m)
 #ifdef DEBUG
 	u32 *msg = (u32 *) m;
 	int i;
+
 	printk(KERN_INFO "Dumping I2O message size %d @ %p\n",
 	       msg[0] >> 16 & 0xffff, msg);
 	for (i = 0; i < ((msg[0] >> 16) & 0xffff); i++)
-- 
1.8.3.2


