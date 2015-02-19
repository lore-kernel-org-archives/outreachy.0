X-GM-THRID: 791728357376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,437c450923213588,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr1237856wic.3.1424371038923;
        Thu, 19 Feb 2015 10:37:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.30.38 with SMTP id p6ls194368lah.52.gmail; Thu, 19 Feb
 2015 10:37:18 -0800 (PST)
X-Received: by 10.112.45.197 with SMTP id p5mr807742lbm.18.1424371038487;
        Thu, 19 Feb 2015 10:37:18 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x243.google.com (mail-we0-x243.google.com. [2a00:1450:400c:c03::243])
        by gmr-mx.google.com with ESMTPS id by11si158016wib.1.2015.02.19.10.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) client-ip=2a00:1450:400c:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x243.google.com with SMTP id k11so335825wes.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yUrsR0iEzBB6HRuwPswbXRGepXWHWqGUQAqxwf/NURU=;
        b=cdFr3D13C5lABy2zmctHudTaWZb886XovMFgX6e0lzABrkYqP525ATowlZOGeQ/ZUS
         BBfXRem6AlCUwgPkB+uvt5nXfbQ14WRusGg5Fh1v920VH4FvtVb73Y2hnwTZfnadjReK
         cW7LdXI5W3N0tO1bjTMMWeMAfs7pgWstiV4kiA+etN0PVAQ74+A/vyGHqPXvbl8h3Ykp
         5hY71l/lO+Tmu8BNDfsdT2NqJI4174EC6xhFkx7Q+FK0JVcakRJIwPbdImeyr2l4qbge
         mPFY2y3jvjTzf8vROxivCsFLccST2aGPqKuRhgYD+2ToZ6caAB9o6LbX3ks8nazYTMDj
         aFhA==
X-Received: by 10.194.223.5 with SMTP id qq5mr11974472wjc.152.1424371038393;
        Thu, 19 Feb 2015 10:37:18 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id hj10sm25914539wjc.48.2015.02.19.10.37.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:37:16 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 6/6] Staging: drivers: dma: ste_dma: Prefer kcalloc over kzalloc
Date: Thu, 19 Feb 2015 20:37:07 +0200
Message-Id: <1424371027-27481-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Prefer kcalloc over kzalloc with multiply
chackpatch.pl warning in ste_dma40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 308795e..5cffef1 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -3290,7 +3290,7 @@ static struct d40_base * __init d40_hw_detect_init(struct platform_device *pdev)
 		base->gen_dmac.init_reg_size = ARRAY_SIZE(dma_init_reg_v4a);
 	}
 
-	base->phy_res = kzalloc(num_phy_chans * sizeof(struct d40_phy_res),
+	base->phy_res = kcalloc(num_phy_chans * sizeof(struct d40_phy_res),
 				GFP_KERNEL);
 	if (!base->phy_res)
 		goto failure;
-- 
1.9.1


