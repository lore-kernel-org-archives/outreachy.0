X-GM-THRID: 1433009127424
X-Received: by 10.112.50.106 with SMTP id b10mr1562408lbo.8.1424469277114;
        Fri, 20 Feb 2015 13:54:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.106 with SMTP id fr10ls183605wic.8.canary; Fri, 20 Feb
 2015 13:54:36 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr1566981wjb.4.1424469276880;
        Fri, 20 Feb 2015 13:54:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id by11si407882wib.1.2015.02.20.13.54.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:54:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id z12so15650885wgg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2n6uqHXKy3PFM7nTnZgLef1DjN+UZimeCDcC/AOFjcM=;
        b=NCEgxovXOIFPVmil10sjBh5j3sDTzj1h1Lirz/y02w0rmR6KyIkqVYKx7SfL/47Dpc
         SkfFMtvr1M75EhcHsLib8Mx8bCG5iML9tgh9dzyaaLM6a3r/58EQILECNXkyrsnXLaAj
         P0JQ9ROjq58Y6emzjoHl38ZteXGvdk6O8nxD+lvd7P0ndDk2sPco5QycaLe+6e2JwV4r
         zBioWbOcYKFkTLRgUI5osfzUh16KbcruRxv4gOR9ckeYC5bRAJM1YFktDDan3FlsCRPe
         NBXmcV/BN0If6s16tgIJYGRYiXrAhkVFVf5fbvmonnqh6wYME74F0epuS2Rgume+G/Yx
         fNrQ==
X-Received: by 10.194.240.97 with SMTP id vz1mr22976361wjc.155.1424469276800;
        Fri, 20 Feb 2015 13:54:36 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id r3sm39584820wjw.7.2015.02.20.13.54.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 13:54:36 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Remove else after return
Date: Fri, 20 Feb 2015 22:54:27 +0100
Message-Id: <1424469267-23102-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch simplifies the code by removing else and fixes
the following checkpatch.pl warning: "else is not useful after
break or return".

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: Remove blank line after continue.

 drivers/staging/rtl8192u/r819xU_phy.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index e210664..4618bc0 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1363,11 +1363,10 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
 			if ((*stage) == 2) {
 				(*delay) = CurrentCmd->msDelay;
 				return true;
-			} else {
-				(*stage)++;
-				(*step) = 0;
-				continue;
 			}
+			(*stage)++;
+			(*step) = 0;
+			continue;
 		}
 
 		switch (CurrentCmd->CmdID) {
-- 
1.9.1


