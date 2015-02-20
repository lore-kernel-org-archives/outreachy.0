X-GM-THRID: 1433009127424
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2f516636de888aad,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr1484185lah.8.1424457088160;
        Fri, 20 Feb 2015 10:31:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls338739lad.91.gmail; Fri, 20 Feb
 2015 10:31:27 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr1459474lbb.17.1424457087852;
        Fri, 20 Feb 2015 10:31:27 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id cl5si159620wib.3.2015.02.20.10.31.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:31:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id l2so14657141wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qURbEpuJ7Ttwm7lYqHjC2RdjIHTwj3R3ssP2xC0lnvw=;
        b=Arb0/wJ/06y7KE2NqQlCqw8gN/IlBOTL1dH8fFiXvVdCiTOQFzAl9dJ00Ga7pPf/F0
         7QBmXChTTRpXM4ZPd+xNddTouNpSdAZlA5pk6bKsTVOsB5Z2hcC7zcZ3NUl1U4ga5KKj
         WtPnLPqnjmhqBtHObvXbjOdePJrssGOCuspY9L5B5tZD2nAobfuARX4yqLYdrzyHK+ob
         brEP61UBvSWCoP/6XZlhkIaaI+w+k5geanZoupaEMVVJ2wmzCbC2ql2A2BNzNVESXIS/
         NYsAafdzg7vv3VX5+ffIZ37apdlq6iHXsKhtZbLQAgniaZh0TTItuXni0ldSLfnHf/wf
         IVIA==
X-Received: by 10.194.88.131 with SMTP id bg3mr21785362wjb.119.1424457087732;
        Fri, 20 Feb 2015 10:31:27 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id er13sm43184307wjc.11.2015.02.20.10.31.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 10:31:27 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove else after return
Date: Fri, 20 Feb 2015 19:31:18 +0100
Message-Id: <1424457078-5570-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch simplifies the code by removing else and fixes
the following checkpatch.pl warning: "else is not useful after
break or return".

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index e210664..00be1fd 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1363,11 +1363,11 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
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
+
 		}
 
 		switch (CurrentCmd->CmdID) {
-- 
1.9.1


