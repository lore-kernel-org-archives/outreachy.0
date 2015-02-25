X-GM-THRID: 3439324037120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,80159bc5318acee5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr793477lan.1.1424898556268;
        Wed, 25 Feb 2015 13:09:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.71 with SMTP id i7ls815353lai.44.gmail; Wed, 25 Feb 2015
 13:09:14 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr787073lbo.8.1424898554588;
        Wed, 25 Feb 2015 13:09:14 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id ew5si1217694wid.1.2015.02.25.13.09.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 13:09:14 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so6244082wgh.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 13:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0KgMl0ZjI0P/DofwI5WarYNbDvCjWtdUAfg5+8DQgdY=;
        b=FJyqXQdD/vUnUbD7+S9N5g5ET1Jjr9nHGxp2kI648k1WoOllvWjUg0lG4A1T5NZddS
         TC268ARr2xIXL9Kc8oKkbf3CUyjb4YQWKIU+7k/2HPzLg+16JjeCZulOtXmfxWp5fRT8
         FujmPp6XpreIXgeZmoAKbA9EMQHnnJHFJuXK7qlaL8tDRCL1bC0bd8n4npQQxXMWHaPO
         px1zQatzjKeZu8xXyvNAYlBj/Q5gTSwtv2SPLYDqe+uEuWbZ8QSr8qJJpaPYmnfm3IPs
         Y2CWiZjnRDOqFJWW0xNHn2HaRwqXvMgjGkUE58CNFWgy7y+/dfT1oUPGhHbsX4yhnclK
         1KDw==
X-Received: by 10.194.2.240 with SMTP id 16mr10175531wjx.108.1424898554473;
        Wed, 25 Feb 2015 13:09:14 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id nb9sm26819992wic.3.2015.02.25.13.09.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Feb 2015 13:09:13 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: media: Replaced library asm/uaccess.h with
Date: Wed, 25 Feb 2015 23:09:00 +0200
Message-Id: <1424898540-7853-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch is to replace library asm/uaccess.h with linux/uaccess.h
as per checkpatch warning.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/media/parport/c-qcam.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/parport/c-qcam.c b/drivers/staging/media/parport/c-qcam.c
index b9010bd..740a661 100644
--- a/drivers/staging/media/parport/c-qcam.c
+++ b/drivers/staging/media/parport/c-qcam.c
@@ -36,7 +36,7 @@
 #include <linux/mutex.h>
 #include <linux/jiffies.h>
 #include <linux/videodev2.h>
-#include <asm/uaccess.h>
+#include <linux/uaccess.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-common.h>
 #include <media/v4l2-ioctl.h>
-- 
1.9.1


