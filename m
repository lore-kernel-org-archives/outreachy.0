X-GM-THRID: 9182014078976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,305b0a1e52ea2b35,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.13.228 with SMTP id k4mr12191853lbc.8.1426797157431;
        Thu, 19 Mar 2015 13:32:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.180.138 with SMTP id do10ls251425lac.29.gmail; Thu, 19 Mar
 2015 13:32:36 -0700 (PDT)
X-Received: by 10.112.41.131 with SMTP id f3mr12632368lbl.20.1426797156956;
        Thu, 19 Mar 2015 13:32:36 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id i8si223191wif.1.2015.03.19.13.32.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 13:32:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id w10so15897097wix.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 13:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MT4A6j0As2szWjOV2pE9uhCxjAcjlFsIAIDxVn9x2XQ=;
        b=mYAs06BkQQW2DKGAzHZHBG+KA5ENzC1CbV+a5aVaBoGMxGkOwm7KuMm2V4IEBxkjYu
         Bv9FWyeQ5uA/lfj3ZOsdGwkGMW9YNM3K1m6BkwCqSIWWjk+s9DPMyajlrkVNQhTist7w
         gCT6OxHD4PZSJRe4tsJQ1r6TwDx82o+vsxlNAbNr6EUWf/ptCtxO7I9xs0GmRSPo6lDi
         eTU7FqBxsl++ApoaXjDQCgnbB+P3cJk9709O3dF6l/JV8Xrgxc59I70n1TeZ6mrnvZOH
         cUiKD4Hgd/Nsx6Q/G3NnIu1towrTFlJIPUO/ZXGIe+lrn001NSjjY5+oaca3vchIH08i
         307w==
X-Received: by 10.180.14.196 with SMTP id r4mr19053066wic.77.1426797156742;
        Thu, 19 Mar 2015 13:32:36 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id 14sm3412366wjv.29.2015.03.19.13.32.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2015 13:32:36 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove unnecessary spaces
Date: Thu, 19 Mar 2015 22:32:30 +0200
Message-Id: <1426797150-23541-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "unnecessary whitespace before a quoted
newline" in r819xU_phy.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 3d4f57d..94fa9b8 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -898,7 +898,7 @@ void rtl8192_phy_getTxPower(struct net_device *dev)
 	read_nic_byte(dev, rOFDM0_RxDetector3, &priv->framesync);
 	read_nic_byte(dev, rOFDM0_RxDetector2, &tmp);
 	priv->framesyncC34 = tmp;
-	RT_TRACE(COMP_INIT, "Default framesync (0x%x) = 0x%x \n",
+	RT_TRACE(COMP_INIT, "Default framesync (0x%x) = 0x%x\n",
 		rOFDM0_RxDetector3, priv->framesync);
 
 	/* Read SIFS (save the value read fome MACPHY_REG.txt) */
@@ -1742,13 +1742,13 @@ void InitialGainOperateWorkItemCallBack(struct work_struct *work)
 		RT_TRACE(COMP_SCAN, "Scan InitialGainBackup 0xa0a is %x\n",
 			 priv->initgain_backup.cca);
 
-		RT_TRACE(COMP_SCAN, "Write scan initial gain = 0x%x \n",
+		RT_TRACE(COMP_SCAN, "Write scan initial gain = 0x%x\n",
 			 initial_gain);
 		write_nic_byte(dev, rOFDM0_XAAGCCore1, initial_gain);
 		write_nic_byte(dev, rOFDM0_XBAGCCore1, initial_gain);
 		write_nic_byte(dev, rOFDM0_XCAGCCore1, initial_gain);
 		write_nic_byte(dev, rOFDM0_XDAGCCore1, initial_gain);
-		RT_TRACE(COMP_SCAN, "Write scan 0xa0a = 0x%x \n",
+		RT_TRACE(COMP_SCAN, "Write scan 0xa0a = 0x%x\n",
 			 POWER_DETECTION_TH);
 		write_nic_byte(dev, 0xa0a, POWER_DETECTION_TH);
 		break;
@@ -1789,7 +1789,7 @@ void InitialGainOperateWorkItemCallBack(struct work_struct *work)
 			rtl8192_setBBreg(dev, UFWP, bMaskByte1, 0x1);
 		break;
 	default:
-		RT_TRACE(COMP_SCAN, "Unknown IG Operation. \n");
+		RT_TRACE(COMP_SCAN, "Unknown IG Operation.\n");
 		break;
 	}
 }
-- 
1.9.1


