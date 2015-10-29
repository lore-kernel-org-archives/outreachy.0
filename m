X-GM-THRID: 6210883504699342848
X-Received: by 10.66.165.7 with SMTP id yu7mr27651514pab.45.1446084004828;
        Wed, 28 Oct 2015 19:00:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.10 with SMTP id p10ls139780iop.89.gmail; Wed, 28 Oct
 2015 19:00:04 -0700 (PDT)
X-Received: by 10.66.187.41 with SMTP id fp9mr27134071pac.39.1446084004067;
        Wed, 28 Oct 2015 19:00:04 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id fa8si5201784pab.1.2015.10.28.19.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 19:00:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so23986137pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 19:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fG5HvnfDNOGXzWaYaJbth4q+bXrKxJKr0gf3PnSBVHA=;
        b=KabJK7v2hm0Va/cjpADdWDdtCLmoNclKjXNu9wmKPchvbed0m8l834zu3hMbUG9zL8
         ZG9Z6Dvxpay7f/wF25nAkBSKjCopZRHgG4/i5VfFWvjVm5EqmM8yUHrlwX6OxGKpRAXj
         VgSS2GDDTpJQ+iBsuw7cLrCzeuAt+lEoefEl60K0GMkBRd+0nziWOK82cmzzGnTK4JUw
         4bkQ4r5bbc+0+Az2Wb6NZdI8mOVtT9TCXkt8KT+XyqWzGbYgdpEL/JdsCWqxCvupvc8/
         VRGl+Tllx6BWbdxboRO7qWLwO87M1vaeJ8b57aY5lt4XsQcRU1F/udXQC58aNl8dhrDc
         X/cw==
X-Received: by 10.66.186.141 with SMTP id fk13mr56609967pac.7.1446084003936;
        Wed, 28 Oct 2015 19:00:03 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ij3sm32460041pbb.62.2015.10.28.19.00.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 19:00:03 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove unused function
Date: Wed, 28 Oct 2015 18:59:55 -0700
Message-Id: <1446083995-10878-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Function rtl8192_try_wake_queue is defined but not used, so remove it.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index e06864f..f4a4eae 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -5114,21 +5114,6 @@ static void __exit rtl8192_usb_module_exit(void)
 	RT_TRACE(COMP_DOWN, "Exiting");
 }
 
-
-void rtl8192_try_wake_queue(struct net_device *dev, int pri)
-{
-	unsigned long flags;
-	short enough_desc;
-	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
-
-	spin_lock_irqsave(&priv->tx_lock, flags);
-	enough_desc = check_nic_enough_desc(dev, pri);
-	spin_unlock_irqrestore(&priv->tx_lock, flags);
-
-	if (enough_desc)
-		ieee80211_wake_queue(priv->ieee80211);
-}
-
 void EnableHWSecurityConfig8192(struct net_device *dev)
 {
 	u8 SECR_value = 0x0;
-- 
1.9.1


