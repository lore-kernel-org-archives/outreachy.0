X-GM-THRID: 746747592704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35770f706c8015
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.138.202 with SMTP id qs10mr760419lbb.24.1424369420118;
        Thu, 19 Feb 2015 10:10:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.227 with SMTP id v3ls344062wiw.33.gmail; Thu, 19 Feb
 2015 10:10:19 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr526349wix.0.1424369419837;
        Thu, 19 Feb 2015 10:10:19 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id el6si927134wib.2.2015.02.19.10.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:10:19 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x243.google.com with SMTP id b13so2576096wgh.2
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FwcEPS28OXP+fxj8oca4SwjljTUmS5NaSmeqEFXf0/U=;
        b=DGysOwp0aenwSzeJKp5zNKz2FIoCI+q2sKvcpswJL+wNhIMGo6bDHsD4IgoL9FnqRY
         X8Ek05VC1GzcMdMXPDOinsGRxvJarld9w2KmNEDuxGLHoSZaargm7I3ucFub4BlawCT7
         0720bYeuNbaua674i8hk3I6yeddoPCOPUm7SL7Py+ymJ8J//La1M5Ycrxzj13ZS4/Ypw
         404Z5PRsr5Dec7cJex7xoCSNjehHagaJu7vXksP1sJF4LSaLFeRizu9DhCJ1a1tIbML6
         3z67sVk+LwBsXfM0ePdcgG0vWax41rUm2cDqsDSy0J1SLNzZ0R82W9vpiuShTAT5Im4f
         QR6g==
X-Received: by 10.194.234.40 with SMTP id ub8mr11822099wjc.100.1424369419715;
        Thu, 19 Feb 2015 10:10:19 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id ax10sm38453471wjc.26.2015.02.19.10.10.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:10:18 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 5/5] Staging: drivers: dma: ste_dma40: fixed trailing statements
Date: Thu, 19 Feb 2015 20:10:08 +0200
Message-Id: <1424369408-27171-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: trailing statements should be on next line
chackpatch.pl error in ste_dma40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 796c070..308795e 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -2372,9 +2372,11 @@ static struct dma_chan *d40_xlate(struct of_phandle_args *dma_spec,
 
 	switch (D40_DT_FLAGS_MODE(flags)) {
 	case 0:
-		cfg.mode = STEDMA40_MODE_LOGICAL; break;
+		cfg.mode = STEDMA40_MODE_LOGICAL;
+		break;
 	case 1:
-		cfg.mode = STEDMA40_MODE_PHYSICAL; break;
+		cfg.mode = STEDMA40_MODE_PHYSICAL;
+		break;
 	}
 
 	switch (D40_DT_FLAGS_DIR(flags)) {
-- 
1.9.1


