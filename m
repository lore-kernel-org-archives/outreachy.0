X-GM-THRID: 6212181078592978944
X-Received: by 10.28.51.146 with SMTP id z140mr1399008wmz.2.1446388714875;
        Sun, 01 Nov 2015 06:38:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.149 with SMTP id o143ls440151wmg.20.gmail; Sun, 01 Nov
 2015 06:38:34 -0800 (PST)
X-Received: by 10.28.132.75 with SMTP id g72mr1400612wmd.2.1446388714543;
        Sun, 01 Nov 2015 06:38:34 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id 13si357807wml.2.2015.11.01.06.38.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:38:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x236.google.com with SMTP id l128so42475781wml.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=y20mesL2sQmxkUpJbPaMYLJkxXjunqp/cHSYrgu9Yls=;
        b=GBHNx/PXruCrMDhUnBQR3+IF+GcTSZ6xshGQWUMRBNnC0Dt8hogAZtteDmX6j0l0Fb
         F50j/z1ugniwkN5/mhkDsM1lkZLH7aLGPJw6ku8ut4RE9vtLuZ5ZHalOVZByTjCYNTq0
         iNEXe43OL7tb+IIYQ4WPtN+mG6VMTxLGtTzZdpZLFHSq63GgoZEJ/7SL3TC3ZkWxW2CW
         Rw/Y1ql+0gUQX7XTgEo/a/XiQojA4na7Dt4bgQo2bEzz96ahBhuDnFry9PL0ktKqRlbJ
         +assCkHviX6lbVfXhB3IBLEA6wB0CFQvRxXu2cfx7PWaqXeAskqw/WUdkocRds+kgAYQ
         2A6A==
X-Received: by 10.28.21.9 with SMTP id 9mr8767007wmv.22.1446388714470;
        Sun, 01 Nov 2015 06:38:34 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id 199sm13077625wml.22.2015.11.01.06.38.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 06:38:34 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 2/5] staging: android: replace uint32_t with u32
Date: Sun,  1 Nov 2015 16:38:21 +0200
Message-Id: <10ceed38dfc65b3d44283fed6e2234a4170e1c6a.1446388483.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>

This patch makes use of the preferred kernel types such
as u16, u32.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

 drivers/staging/android/lowmemorykiller.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/lowmemorykiller.c b/drivers/staging/android/lowmemorykiller.c
index e679d84..de65db7 100644
--- a/drivers/staging/android/lowmemorykiller.c
+++ b/drivers/staging/android/lowmemorykiller.c
@@ -43,7 +43,7 @@
 #include <linux/profile.h>
 #include <linux/notifier.h>
 
-static uint32_t lowmem_debug_level = 1;
+static u32 lowmem_debug_level = 1;
 static short lowmem_adj[6] = {
 	0,
 	1,
-- 
2.1.4


