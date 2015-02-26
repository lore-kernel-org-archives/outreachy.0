X-GM-THRID: 4158614667264
X-Received: by 10.180.39.164 with SMTP id q4mr23318wik.5.1424988292503;
        Thu, 26 Feb 2015 14:04:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.181.137 with SMTP id dw9ls87850lac.85.gmail; Thu, 26 Feb
 2015 14:04:52 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr1634883lbb.11.1424988292040;
        Thu, 26 Feb 2015 14:04:52 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ta1si5616wic.1.2015.02.26.14.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 14:04:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id x12so15203838wgg.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 14:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oWshgaDU+Q6ZP7U2v9G6SqalVvYK+OVpseQ8Sqq2EV4=;
        b=jU71q/Mfw+v4GZ3LlmwhXwrIgMU717ZzRpHUA2sYtK07mNOZSiifjhyP7Ya33JjEuw
         kvh6jVW7sILizHLAsfru56/nv9TA6RI9Rjud1N1Sh2PRNMaBhUO3eQH9MZmLwbjOrKQi
         jTumozEOYWs6T+fVHMty4/ZkjSsLiy18PJlhC+gH342I07575CPkyXkFxEqUOlBlYQ6Y
         GoTxUZAWo0tR9UrRECXgJPAT+8SRUlt6LlaiH+Cy/eThhsplyoe4yWB0iGhs1CcugBu4
         LXgKVp4mfwp1sCvofKtYiC+SpPhj65vP6idtXocnXEj+4lluW0J8ODWrz1qj2PnvWuPF
         CArw==
X-Received: by 10.180.102.73 with SMTP id fm9mr432075wib.12.1424988291915;
        Thu, 26 Feb 2015 14:04:51 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id gi3sm98861wic.15.2015.02.26.14.04.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 14:04:51 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Remove break statement
Date: Thu, 26 Feb 2015 23:04:42 +0100
Message-Id: <1424988282-9928-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "break is not useful after a goto or return"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: fix spelling mistake in subject line (break instead of brake).

 drivers/staging/rtl8192u/r819xU_phy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 0589602..63c9e18 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1344,7 +1344,6 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
 	default:
 		RT_TRACE(COMP_ERR, "Unknown RFChipID: %d\n", priv->rf_chip);
 		return true;
-		break;
 	}
 
 
-- 
1.9.1


