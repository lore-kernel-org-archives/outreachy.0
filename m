X-GM-THRID: 6206320165410308096
X-Received: by 10.194.156.193 with SMTP id wg1mr3952081wjb.3.1445021518388;
        Fri, 16 Oct 2015 11:51:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.73 with SMTP id gs9ls201792wib.2.canary; Fri, 16 Oct
 2015 11:51:57 -0700 (PDT)
X-Received: by 10.194.94.66 with SMTP id da2mr3946406wjb.7.1445021517703;
        Fri, 16 Oct 2015 11:51:57 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id hs5si159361wib.1.2015.10.16.11.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 11:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id p11so23115093wij.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 11:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dz9vF7QpFMW6Vpb37I6DBb+/Wjnt1bviUFCWc8wH5Tw=;
        b=UZXB8KiZZgTtxmd2Pf08ZFLBLW+662hsAFUkaufL7UlXK+Th2MB1qWHogzTGrKWTS+
         ulthi2aJgkIVK4LKc4vt/pugBBlORHh5J32vRz3EbTKVzA/4/IsU5/6MoSOjLSugZUUz
         KGbSqUTquX562mTSslFGIXAsMGCFwhAvOP857epoI+9JoXKXk29wpbuRUIBXx3Ljr317
         CpbQZjc0RUgDGEOu1klgNwXDP9vOxczrkYD4liTPiKG6T7SC5DiVc+3peIhDJJOsxHgr
         x07m8ujdbHKcnj+tp1Ih1NozmgJONfvu5TQEsUxlXlXz7TtRnEYXvnqPSthvCbgssHKw
         udtg==
X-Received: by 10.180.9.74 with SMTP id x10mr6390743wia.61.1445021517615;
        Fri, 16 Oct 2015 11:51:57 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id hk5sm24016475wjb.6.2015.10.16.11.51.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 11:51:56 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/3] Staging: olpc_dcon: Remove multiple blank lines
Date: Fri, 16 Oct 2015 21:51:43 +0300
Message-Id: <1445021505-6612-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index 3f424d1..d0f86d3 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -100,7 +100,6 @@ static int dcon_hw_init(struct dcon_priv *dcon, int is_init)
 	}
 	dcon_write(dcon, DCON_REG_MODE, dcon->disp_mode);
 
-
 	/* Set the scanline to interrupt on during resume */
 	dcon_write(dcon, DCON_REG_SCAN_INT, resumeline);
 
@@ -723,7 +722,6 @@ static int dcon_resume(struct device *dev)
 
 #endif /* CONFIG_PM */
 
-
 irqreturn_t dcon_interrupt(int irq, void *id)
 {
 	struct dcon_priv *dcon = id;
-- 
1.9.1


