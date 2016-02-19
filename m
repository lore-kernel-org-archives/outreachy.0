X-GM-THRID: 6252987180306661376
X-Received: by 10.112.204.97 with SMTP id kx1mr1787188lbc.0.1455887029129;
        Fri, 19 Feb 2016 05:03:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.65.133 with SMTP id o127ls147505wma.2.canary; Fri, 19 Feb
 2016 05:03:48 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr1788279wjf.0.1455887028667;
        Fri, 19 Feb 2016 05:03:48 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id s141si460264wmd.1.2016.02.19.05.03.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:03:48 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id c200so74213171wme.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qhSo/4blCO/007uflkRRa0lgnG1PplJHhkr78gCmuxI=;
        b=kZkFeXSEoN3cLOPNEpPtl++v+mh0NWgR3X3oJbicEmhInYDX1qgK9yeKZQiDOmrNF4
         KsnNvped/7TYOOvDw63tx9x+8vNWVKgyMt9FzmqdfxEeCWhEjVa+W2qPQ89yxttcOHpV
         iVYFOjhgxp2Z4sr+U10U/Ckxpm9bvRFyvVIFACftsFYvreotK/5l0jGsLfQOOJsi6+jL
         vuM3kyT4Ym7IhfRj2nHQLCQzrhc6vAEMLvqjquMfyqNMP4t+/q7VGZlLiDYXzk4GKNcm
         +0IpAmTKM4n86W+ZqBx+DEMeRWdZ1kPrlPQGPFPxG6lkT65/6HtlJ6ygephz9HlXSjOe
         7lRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qhSo/4blCO/007uflkRRa0lgnG1PplJHhkr78gCmuxI=;
        b=lhzzHcjL7pI5Z9l1Zb41dyIsdO54JEUP2KkIOHgd4mBEecggxOINYJsEj+SQ8krD1M
         99vuIF41pblQp8NqDAbG15cLS/9P0lSi91g+u/lpCDwaLOAhkrBPed1vYpspCgVQ4DDk
         Soc4thhqGWhwEP0onVEVQdFiChUYUEHKbwAWkVOEdlP+ukwNKeICI/A/NXCBHTFEfscZ
         e30LQ6V/NuNnbC8G9XaOG3o+2Nu0rX+w8+pEKTH+YDhrUyqvr9xAdfZysvgj0PUQoCXI
         BdLMh+QCd9m9gEsgyVZPeaL0EBvw1CFRsk17F7KSEEIcFvQ8resP557pzSxNEYW2Zm5d
         gaOg==
X-Gm-Message-State: AG10YOT0mNqed1T+v8K1E4MG0HP+/I28/64vjGpcCYolnh9yt4tq6PtOhHLp9/Ri8guvgg==
X-Received: by 10.28.146.145 with SMTP id u139mr8760111wmd.81.1455887028508;
        Fri, 19 Feb 2016 05:03:48 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.14.29.107])
        by smtp.gmail.com with ESMTPSA id fv6sm7568293wjc.12.2016.02.19.05.03.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:03:47 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: nvec: Add space around '<<'
Date: Fri, 19 Feb 2016 15:03:41 +0200
Message-Id: <1455887021-6535-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '<<'.Problem found using checkpatch.pl

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
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


