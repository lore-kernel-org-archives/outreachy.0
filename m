X-GM-THRID: 863708905472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,88794f066cd73ec5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.171.37 with SMTP id ar5mr825245lbc.16.1424375189392;
        Thu, 19 Feb 2015 11:46:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.232 with SMTP id uh8ls198329lac.82.gmail; Thu, 19 Feb
 2015 11:46:27 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr825288laa.2.1424375187906;
        Thu, 19 Feb 2015 11:46:27 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x242.google.com (mail-wg0-x242.google.com. [2a00:1450:400c:c00::242])
        by gmr-mx.google.com with ESMTPS id ew5si9104215wid.1.2015.02.19.11.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:46:27 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) client-ip=2a00:1450:400c:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::242 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x242.google.com with SMTP id l18so2699429wgh.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qRc1hHhVRQgwayhaMunueXry6M+mJ7k+NZ0/5FmODpM=;
        b=xn+AAAZw//eCUTaTkzRvyffoNlCJtQYRfe8oAsyQf5fwdwV6R/tfrobPfYqsvF2kk+
         gFQdJR1pKvB4ODlrtdOsxIQYuekNqdtzbGFaGNuxyWvnDOhZ3dKzrtLHX95rJfUctxzb
         Swcp1mGnrfISorQI/kvItc3NYJGcbTv5iI00p29zYERETNCsMdshLlLdNl1oNt4JUm52
         cO/7TehJyYKCDUyl8ESwRWv0BtpphZtY1f8GmZOWyZskRin6GTPM8EBK6adJ4m8T9uMQ
         MUtn7sQSXxsMZy6qOO6YbjRyweOp+USXIyUcBdL+MYFMMFUwvIKifTSZa4HwJkzVZAA+
         +6xg==
X-Received: by 10.194.57.199 with SMTP id k7mr12481364wjq.1.1424375187827;
        Thu, 19 Feb 2015 11:46:27 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id 18sm38761551wjr.46.2015.02.19.11.46.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 11:46:27 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 9/9] Staging: drivers: dma: ste_dma40: used to __initdata after dma_init_reg_v4a[]
Date: Thu, 19 Feb 2015 21:46:21 +0200
Message-Id: <1424375181-29098-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: __initdata should be placed after dma_init_reg_v4a[]
checkpatch.pl warning in ste_dma40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index e4b823d..c6c8e81 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -281,7 +281,7 @@ struct d40_reg_val {
 	unsigned int val;
 };
 
-static __initdata struct d40_reg_val dma_init_reg_v4a[] = {
+static __initdata struct dma_init_reg_v4a[] d40_reg_val = {
 	/* Clock every part of the DMA block from start */
 	{ .reg = D40_DREG_GCC,    .val = D40_DREG_GCC_ENABLE_ALL},
 
@@ -299,7 +299,7 @@ static __initdata struct d40_reg_val dma_init_reg_v4a[] = {
 	{ .reg = D40_DREG_LCTIS2, .val = 0xFFFFFFFF},
 	{ .reg = D40_DREG_LCTIS3, .val = 0xFFFFFFFF}
 };
-static __initdata struct d40_reg_val dma_init_reg_v4b[] = {
+static __initdata struct dma_init_reg_v4b[] d40_reg_val = {
 	/* Clock every part of the DMA block from start */
 	{ .reg = D40_DREG_GCC,    .val = D40_DREG_GCC_ENABLE_ALL},
 
-- 
1.9.1


