X-GM-THRID: 3244157829120
X-Received: by 10.152.28.137 with SMTP id b9mr2320622lah.8.1424798407947;
        Tue, 24 Feb 2015 09:20:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.189.12 with SMTP id ge12ls245505wic.9.gmail; Tue, 24 Feb
 2015 09:20:07 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr2276753wid.1.1424798407342;
        Tue, 24 Feb 2015 09:20:07 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id by11si1177071wib.1.2015.02.24.09.20.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:20:07 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x241.google.com with SMTP id y19so2042581wgg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5Tf4Nn67fYqfOj8LmUh2QgZ/I0yiLJOSe4k2JHDz87c=;
        b=0sWULkV20nTQbHt+mES+TqG/vgbEOMulqLAQBChefbEly5EEgcczPHOcKJY6RQtI3Y
         4c3uTaOZdmuCImrB7eB12laT5n8f4U04tanFilqpzaOv0+0gxpc6XdAA4rCRYk3ul2w+
         r3DVXvtG9PCT5/1W7COKJMl2IrptjnbcS+WA7HcCwBf6v1BErWVJEWRMSCTuNyOby0HG
         4txb7V+hXemrBgYIHfHp7v69OofC/zhEQ1dOS8ash7ukj2W0c9IvGV7cxkfp+IAZXHfP
         lZrD/iLXJTyR0m+GAwVAcGomupADtOsSrOMveDjx0rd1dSsu0P1GXjWjIXZTAncHnrzS
         kvag==
X-Received: by 10.181.5.43 with SMTP id cj11mr20604580wid.61.1424798407123;
        Tue, 24 Feb 2015 09:20:07 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id gi9sm21365043wib.21.2015.02.24.09.20.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:20:06 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: hal: Insert missing space after '>>' to improve readability
Date: Tue, 24 Feb 2015 19:19:59 +0200
Message-Id: <1424798399-811-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space after '>>'.Because need consistent spacing around '>>'.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/hal/odm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/odm.c b/drivers/staging/rtl8723au/hal/odm.c
index 1c0f106d..3e8dec2 100644
--- a/drivers/staging/rtl8723au/hal/odm.c
+++ b/drivers/staging/rtl8723au/hal/odm.c
@@ -993,7 +993,7 @@ void ODM_RF_Saving23a(struct dm_odm_t *pDM_Odm, u8 bForceInNormal)
 
 		pDM_PSTable->Reg874 = (ODM_GetBBReg(pDM_Odm, 0x874, bMaskDWord)&0x1CC000)>>14;
 		pDM_PSTable->RegC70 =
-			(ODM_GetBBReg(pDM_Odm, 0xc70, bMaskDWord) & BIT(3)) >>3;
+			(ODM_GetBBReg(pDM_Odm, 0xc70, bMaskDWord) & BIT(3)) >> 3;
 		pDM_PSTable->Reg85C = (ODM_GetBBReg(pDM_Odm, 0x85c, bMaskDWord)&0xFF000000)>>24;
 		pDM_PSTable->RegA74 = (ODM_GetBBReg(pDM_Odm, 0xa74, bMaskDWord)&0xF000)>>12;
 		/* Reg818 = PHY_QueryBBReg(pAdapter, 0x818, bMaskDWord); */
-- 
1.9.1


