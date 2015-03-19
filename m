X-GM-THRID: 9171390955520
X-Received: by 10.112.202.227 with SMTP id kl3mr5702803lbc.2.1426795781795;
        Thu, 19 Mar 2015 13:09:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.13 with SMTP id j13ls205569wie.51.canary; Thu, 19 Mar
 2015 13:09:41 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr9302116wjc.5.1426795781511;
        Thu, 19 Mar 2015 13:09:41 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si217307wia.0.2015.03.19.13.09.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 13:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id k59so66362432wet.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 13:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jUg2D+np5lrnMWZ22Qz9V9nQVejf5apP2jKgHcHEqno=;
        b=JvQalt6zZYnLBPKUkrJ0uPS02r/Ug8JyE7qdhWRlo7FMJIHCo0Cw2c2pvh1+g9y8Og
         gweSmDTwjptzFD4YCU2n1cf5BLQ8YhyvesI69u8RcDirUCDOP5IiFP1U8vq7j0r2kYhg
         JuuMV6725gLekwp/fZbP7mas2jt92PxLoP0ZBHuVemTC3KyPytZ8sKEu18YT5Jp6s5Y3
         IsYGTuww15n3DrW7wW359RouHgQriVZfyO6kNXFw0SG2pDw9e5nTOkIvnkQUKI5dhDeS
         jArSw/IWu9Eou5WKVy5qXP1WlqPKJb27NtqT0Bnqvq4vmxrTlBhC96Ck6tgKY4esR+8S
         BqdA==
X-Received: by 10.180.98.137 with SMTP id ei9mr14875193wib.92.1426795781414;
        Thu, 19 Mar 2015 13:09:41 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id m9sm8853350wiz.24.2015.03.19.13.09.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2015 13:09:40 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192e: rtl8192e: Delete space
Date: Thu, 19 Mar 2015 22:09:34 +0200
Message-Id: <1426795774-22420-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 2fbb964..c6097b3 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -1540,7 +1540,7 @@ RESET_START:
 			SEM_UP_IEEE_WX(&ieee->wx_sem);
 		} else {
 			printk(KERN_INFO "ieee->state is NOT LINKED\n");
-			rtllib_softmac_stop_protocol(priv->rtllib, 0 , true);
+			rtllib_softmac_stop_protocol(priv->rtllib, 0, true);
 		}
 
 		dm_backup_dynamic_mechanism_state(dev);
@@ -2530,7 +2530,7 @@ void rtl8192_commit(struct net_device *dev)
 
 	if (priv->up == 0)
 		return;
-	rtllib_softmac_stop_protocol(priv->rtllib, 0 , true);
+	rtllib_softmac_stop_protocol(priv->rtllib, 0, true);
 	rtl8192_irq_disable(dev);
 	priv->ops->stop_adapter(dev, true);
 	_rtl8192_up(dev, false);
-- 
1.9.1


