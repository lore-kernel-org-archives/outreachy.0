X-GM-THRID: 1818210861056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9777c64e70853096
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr414729lah.8.1424546206131;
        Sat, 21 Feb 2015 11:16:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.140 with SMTP id jo12ls409856lab.19.gmail; Sat, 21 Feb
 2015 11:16:45 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr410930lbc.0.1424546205598;
        Sat, 21 Feb 2015 11:16:45 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id i7si362730wif.0.2015.02.21.11.16.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:16:45 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f53.google.com with SMTP id a1so18675665wgh.12
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5Rvw/FM12Q2gXBoybGAGfWHcvmGv4tbNRGESTt8nWXI=;
        b=R0aFTi3KkFkJv1xyLWmEVMjAmkjhH4wwUGoaxc31WT05/XS1Z6MbqrAVZWUXc0Tcvk
         HRF76ZfpdjCPoSrfSWJhEBiFwGYavUTmEAlN4wFG+4EOj8S4rF1Wvr4ETjPPAWvvgGbY
         2Xy+27ioRStJzVBZp37WKBMFbBPrwzFvaWEA6Xk6PSflhsevcRCfMA5AQrACfBRTbb43
         UBz/WwCxdV0ydE+gTLmbCmkLR11Ty2FEHREvh5z2rOKCTj1/b1rMv4r9k0t5DagUR8Am
         CFweEbsCq1SpC3ZHX2aNYlPuhLN+oB4h8nnXGyAn0z4EWOyhz8zC6VSVjJu6yb6AO9Kv
         xBdQ==
X-Received: by 10.180.74.39 with SMTP id q7mr6150495wiv.73.1424546205504;
        Sat, 21 Feb 2015 11:16:45 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id hs7sm8150731wib.4.2015.02.21.11.16.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:16:44 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove space before ','
Date: Sat, 21 Feb 2015 21:16:34 +0200
Message-Id: <1424546194-7949-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl error in file r8190_rtl8256.h
ERROR: space prohibited before that ',' (ctx:WxW)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
index 1e4afb7..7a5a388 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.h
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
@@ -14,7 +14,7 @@
 #define RTL8225H
 
 #define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
-extern void PHY_SetRF8256Bandwidth(struct net_device *dev , HT_CHANNEL_WIDTH Bandwidth);
+extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
 extern void PHY_RF8256_Config(struct net_device *dev);
 extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
 extern void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8	powerlevel);
-- 
1.9.1


