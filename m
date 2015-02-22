X-GM-THRID: 2575238692864
X-Received: by 10.112.50.106 with SMTP id b10mr827200lbo.8.1424632188122;
        Sun, 22 Feb 2015 11:09:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.74 with SMTP id q10ls472312laq.43.gmail; Sun, 22 Feb
 2015 11:09:47 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr830776lam.9.1424632187640;
        Sun, 22 Feb 2015 11:09:47 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id ev8si526139wib.3.2015.02.22.11.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 11:09:47 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f65.google.com with SMTP id k14so7360801wgh.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 11:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=zc1ETuzNj0AJ0IXBSs0yQD7uzWj6zj04AW5mk/K26Gk=;
        b=vmQcTVww7bAl0LWCzMGG15ogV9Sz+BrnsTBQ3qiWHOTDWAQq3RGTSWKzneIJ5EHO9I
         3ItV832JuAjmZm0g/MeUJViHMkQNRzhtZFHih9dbFmKHl0xTy0A6TaFWQnadNN5yLNh+
         sWpbvXHCyX/O+WSwSOXsizO4J832kcAwbjUTtNVNffsL4xfyv1/QY+vKjk1LxCdh4fug
         tlGiFbod0FR6IKkxmkO5dsHmxKvehf6m0r1YWkx/7px9bC8Ed08Tc7m/XFb070MhemK8
         ULrFxw2FgbW/j2hzlIQxuryIc2QkKWzx515XGCNzuCv57/GTOn5fDS/9GZl9PIUxzBwv
         T/fQ==
X-Received: by 10.180.87.103 with SMTP id w7mr13770496wiz.48.1424632187380;
        Sun, 22 Feb 2015 11:09:47 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id hm6sm52290878wjb.32.2015.02.22.11.09.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 11:09:46 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add space after '}'
Date: Sun, 22 Feb 2015 21:09:39 +0200
Message-Id: <1424632179-17056-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: space required after that close brace '}'
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 94536da..108e67d 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -307,7 +307,7 @@ EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 	}
 	else
 		return 0xFF;
-}/* EFUSE_Read1Byte23a */
+} /* EFUSE_Read1Byte23a */
 
 /*-----------------------------------------------------------------------------
  * Function:	EFUSE_Write1Byte
@@ -375,7 +375,7 @@ EFUSE_Write1Byte(
 			}
 		}
 	}
-}/* EFUSE_Write1Byte */
+} /* EFUSE_Write1Byte */
 
 /*  11/16/2008 MH Read one byte from real Efuse. */
 int
@@ -703,7 +703,7 @@ void EFUSE_ShadowMapUpdate23a(struct rtw_adapter *pAdapter, u8 efuseType)
 		Efuse_ReadAllMap(pAdapter, efuseType,
 				 pEEPROM->efuse_eeprom_data);
 
-}/*  EFUSE_ShadowMapUpdate23a */
+} /*  EFUSE_ShadowMapUpdate23a */
 
 /*-----------------------------------------------------------------------------
  * Function:	EFUSE_ShadowRead23a
-- 
1.9.1


