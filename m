X-GM-THRID: 6211220863007588352
X-Received: by 10.28.173.83 with SMTP id w80mr3115wme.0.1446162551633;
        Thu, 29 Oct 2015 16:49:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.83 with SMTP id 80ls4008wmo.23.gmail; Thu, 29 Oct 2015
 16:49:11 -0700 (PDT)
X-Received: by 10.28.170.75 with SMTP id t72mr1297715wme.5.1446162551158;
        Thu, 29 Oct 2015 16:49:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id g18si1565wmd.1.2015.10.29.16.49.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 16:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x232.google.com with SMTP id f134so361737wmf.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 16:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=lfIF23djk1DD9ViZGKuSdLJX8yQt+ud7v8jMw/e3GoI=;
        b=Vn2MlqlPNOraFCo244DNEJoyaVdSIf0/2dyy6Mktrt7qD97I3IKzFbm9q2AiEwzmQt
         ROQuZJ5uM7sJDMD5TggKd+/g4KyLgOzHE21aFGQEWWAbuPwYDHi3Uc0U8GKl5e3VLMZU
         wA6KlZHlu7xpp9aAfFjoDxm9WhEgcByzBgo6+B7nLKYnr1jGW9KpB5YI6IAie3BUploH
         jkGc1T8NDw1dY5wILxLA5tgnQrjUFy59bB6XTbo9N01Av1FRyoFmw7twanL9l9WL7ZAf
         vPLw4Q6B+8wJkzuYN8V7MQfJIaqP7PzUZ2YOjSpUcL4S9JyFNiK7D9j1tXmy5TyEMuIM
         lBdw==
X-Received: by 10.28.146.146 with SMTP id u140mr9485101wmd.85.1446162551022;
        Thu, 29 Oct 2015 16:49:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id d81sm46767wma.16.2015.10.29.16.49.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 16:49:10 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 1/2] staging: nvec: Add space around '<<'
Date: Fri, 30 Oct 2015 02:49:01 +0300
Message-Id: <1446162542-1037-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '<<'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/nvec/nvec.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 164634d..aab1c85 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -40,18 +40,18 @@
 #include "nvec.h"
 
 #define I2C_CNFG			0x00
-#define I2C_CNFG_PACKET_MODE_EN		(1<<10)
-#define I2C_CNFG_NEW_MASTER_SFM		(1<<11)
+#define I2C_CNFG_PACKET_MODE_EN		(1 << 10)
+#define I2C_CNFG_NEW_MASTER_SFM		(1 << 11)
 #define I2C_CNFG_DEBOUNCE_CNT_SHIFT	12
 
 #define I2C_SL_CNFG		0x20
-#define I2C_SL_NEWSL		(1<<2)
-#define I2C_SL_NACK		(1<<1)
-#define I2C_SL_RESP		(1<<0)
-#define I2C_SL_IRQ		(1<<3)
-#define END_TRANS		(1<<4)
-#define RCVD			(1<<2)
-#define RNW			(1<<1)
+#define I2C_SL_NEWSL		(1 << 2)
+#define I2C_SL_NACK		(1 << 1)
+#define I2C_SL_RESP		(1 << 0)
+#define I2C_SL_IRQ		(1 << 3)
+#define END_TRANS		(1 << 4)
+#define RCVD			(1 << 2)
+#define RNW			(1 << 1)
 
 #define I2C_SL_RCVD		0x24
 #define I2C_SL_STATUS		0x28
-- 
1.9.1


