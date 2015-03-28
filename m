X-GM-THRID: 10218275602432
X-Received: by 10.112.130.71 with SMTP id oc7mr1950125lbb.13.1427576020064;
        Sat, 28 Mar 2015 13:53:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.202.133 with SMTP id ki5ls513553lac.90.gmail; Sat, 28 Mar
 2015 13:53:39 -0700 (PDT)
X-Received: by 10.112.130.71 with SMTP id oc7mr1950117lbb.13.1427576019345;
        Sat, 28 Mar 2015 13:53:39 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id p4si358251wiz.0.2015.03.28.13.53.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 13:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id dm7so26281004wgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 13:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=o0ihXjtdU0N1qVZcm4YEQd6vzSV/7oiBvfP+a27c2b4=;
        b=IuO3jFPJNOPUpc3O+BLG8U9ieH8q/7MaGKGocDC4TAbfoZvK1tA3jcewCO02a/olIl
         MTYbF4okv7eiUv/Ec5WXUIdr2zV54eYaA5RH+YOlh3Dr1ZR0BcDqkJ9rmEHa2iJkv0NC
         Ii+GTKG9MrSO0zRP9f8WfpyPOnCJ7ogFKpSBK/w2a2UKiOCJa2NNXrgjEc7A8NGVicZA
         nYeHAfrMFKeZXLsC7TOHFJIKwpfo9ftYT7y9qR3NhPBIYQTaO4k9+mj4g+iHZjWn03AC
         96US1gKcQdT1xT6Zjxxz+sOqt6xY4xoXj+C1SNSUTvkmieJGcrID4qou9Z+MY9TNxl06
         ysTA==
X-Received: by 10.195.13.104 with SMTP id ex8mr48167839wjd.12.1427576019247;
        Sat, 28 Mar 2015 13:53:39 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id d9sm8529673wib.20.2015.03.28.13.53.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2015 13:53:38 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: r8192U_core: Remove unnecessary check
Date: Sat, 28 Mar 2015 22:53:24 +0200
Message-Id: <1427576004-22684-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unnecessary check since kfree() handles NULL pointers fine.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 8834c23..bce44ba 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1724,10 +1724,8 @@ static void rtl8192_usb_deleteendpoints(struct net_device *dev)
 	}
 	kfree(priv->oldaddr);
 	priv->oldaddr = NULL;
-	if (priv->pp_rxskb) {
-		kfree(priv->pp_rxskb);
-		priv->pp_rxskb = NULL;
-	}
+	kfree(priv->pp_rxskb);
+	priv->pp_rxskb = NULL;
 }
 #else
 void rtl8192_usb_deleteendpoints(struct net_device *dev)
@@ -1752,11 +1750,8 @@ void rtl8192_usb_deleteendpoints(struct net_device *dev)
 	priv->rx_urb = NULL;
 	kfree(priv->oldaddr);
 	priv->oldaddr = NULL;
-	if (priv->pp_rxskb) {
-		kfree(priv->pp_rxskb);
-		priv->pp_rxskb = 0;
-
-	}
+	kfree(priv->pp_rxskb);
+	priv->pp_rxskb = 0;
 
 #endif
 }
-- 
1.9.1


