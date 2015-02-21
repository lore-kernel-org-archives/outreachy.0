X-GM-THRID: 1779965100032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,728ab82d991058ec
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.72.44 with SMTP id a12mr375537wiv.0.1424545417207;
        Sat, 21 Feb 2015 11:03:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls292314wib.37.canary; Sat, 21 Feb
 2015 11:03:36 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr375623wic.4.1424545416914;
        Sat, 21 Feb 2015 11:03:36 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id r6si363933wix.0.2015.02.21.11.03.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:03:36 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so11114383wes.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QXtrJOtU95vmKhljeIaBcSUy3cwmFQCnDaXxoNho5oA=;
        b=vEihzsHCsC8bKNAmbFAAWocncV9TwQxBabq5Ytft2E/E9iz2Is2M+Hkz9uoxE3s55p
         bUq656K1LH16ChGnNW6vPmzyMWOncOln6GM0IZCu8YAaeuji/xU9JKvTj4g+rdHfcu0L
         eJB5CtKYUokHECDhoFHeuXfoigvv5IeK22vLmfSmBDnF6fe+dwdCgsA1TuwaGqupkPM0
         w1DgCTZxz3UIGHnlggnycVGr+4+o6J3lTWw/7By8d5LMXYNb77SYlmP2A5CzkD9L88T+
         1rPKFZuKMrh8AaDnZuRXyop5zIVFZO3+BIQohE4dzabp+jQ6X5NV3RakECv3rDRlKF9d
         PuiA==
X-Received: by 10.180.14.66 with SMTP id n2mr6128686wic.50.1424545416845;
        Sat, 21 Feb 2015 11:03:36 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id lg18sm8059010wic.23.2015.02.21.11.03.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:03:32 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fix do not use // c99 comments.
Date: Sat, 21 Feb 2015 21:03:23 +0200
Message-Id: <1424545403-6344-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "do not use // C99 comments" errors in
r8190_rtl8256.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
index fa6dd37..1e4afb7 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.h
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
@@ -13,7 +13,7 @@
 #ifndef RTL8225H
 #define RTL8225H
 
-#define RTL819X_TOTAL_RF_PATH 2 //for 8192U
+#define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
 extern void PHY_SetRF8256Bandwidth(struct net_device *dev , HT_CHANNEL_WIDTH Bandwidth);
 extern void PHY_RF8256_Config(struct net_device *dev);
 extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
-- 
1.9.1


