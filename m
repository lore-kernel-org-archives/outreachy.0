X-GM-THRID: 1013903785984
X-Received: by 10.112.119.141 with SMTP id ku13mr880430lbb.7.1424383529018;
        Thu, 19 Feb 2015 14:05:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls217776lab.39.gmail; Thu, 19 Feb
 2015 14:05:28 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr856351lbc.15.1424383528468;
        Thu, 19 Feb 2015 14:05:28 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id el6si962993wib.2.2015.02.19.14.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:05:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id b13so9935097wgh.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eAI/1pYvyPHNeAMrUBbt90FwqQU3qXaTrnYBe/CUC88=;
        b=jUPOJRcy9nMCVcmP1IJpo+BKJDKkvkudWG8SII7IuVKRSX3zfjzF4ReyJP+34fLky0
         gdpoj3VrjRglHLIbGwmcPickeGxzWoAKWX2H3m9mujgltHEycwNlyGzlrw4zAIZuOXAz
         vtdy4PwYtfq5cRc3MwXS/ARFtAjsxx0rZ4D9qx8YVUtAbe1XesgMh5hoFu7sLk4bWjje
         3RwPHQ3Xrpc2HzlOoBY/OefgyQ4PwcMHn2M2eLcmxvw8eWfWReEua3URU5jJ3wPod5nY
         J8lQy/1399ROMD3d9WX7BoEqQI/ttBaXBYIn55JHTrVCyoRk87ukbiaW4YmVYZUdnfM1
         xAww==
X-Received: by 10.180.107.71 with SMTP id ha7mr271226wib.23.1424383528369;
        Thu, 19 Feb 2015 14:05:28 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id et4sm39231452wjd.15.2015.02.19.14.05.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 14:05:27 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove space before tab
Date: Thu, 19 Feb 2015 23:05:20 +0100
Message-Id: <1424383520-21750-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "please, no space before tabs"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 0589602..dbd3321 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -106,10 +106,10 @@ void rtl8192_setBBreg(struct net_device *dev, u32 reg_addr, u32 bitmask,
 /******************************************************************************
  * function:  This function reads specific bits from BB register
  * input:     net_device	*dev
- *            u32	 	reg_addr   //target addr to be readback
- *            u32	 	bitmask    //taget bit pos to be readback
+ *            u32		reg_addr   //target addr to be readback
+ *            u32		bitmask    //taget bit pos to be readback
  * output:    none
- * return:    u32	 	data       //the readback register value
+ * return:    u32		data       //the readback register value
  * notice:
  ******************************************************************************/
 u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32 bitmask)
@@ -478,7 +478,7 @@ static void phy_FwRFSerialWrite(struct net_device *dev,
 /******************************************************************************
  * function:  This function reads BB parameters from header file we generate,
  *            and do register read/write
- * input:     net_device 	*dev
+ * input:     net_device	*dev
  * output:    none
  * return:    none
  * notice:    BB parameters may change all the time, so please make
-- 
1.9.1


