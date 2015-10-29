X-GM-THRID: 6211172623866396672
X-Received: by 10.13.232.148 with SMTP id r142mr3282752ywe.51.1446151364963;
        Thu, 29 Oct 2015 13:42:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.134 with SMTP id o6ls204436obl.39.gmail; Thu, 29 Oct
 2015 13:42:44 -0700 (PDT)
X-Received: by 10.182.107.130 with SMTP id hc2mr3027671obb.39.1446151364597;
        Thu, 29 Oct 2015 13:42:44 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si386606pbc.1.2015.10.29.13.42.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 13:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hk11so50632744pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 13:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Tbd4Fo+y0xYqRKP9aWAtAwF9Fr8EZAcDp+07fZY/y9c=;
        b=vv0I/jWg9e4eMb5dcT3iNLwNMx5YFngV9P7WVTd6if4I+AN5GDu4BcCx+jqMk+5Rv6
         2YFp4sDOGgC1YcHkfuXK9lB5zHJ+0rO1wD/z0kHkxjcO60rTa389xCvCOqaDfh8a6z5Y
         /yHZ0NkYB5TCZLGS63XqGtNn6dgjzZdF+AWx23O5H3qzuriEachA4zmI+UO8UZ8v/jgR
         Mj8YSO1Pvbfto/jR4sNNIHjbew0sBzQWMkW7Ql0/WaSwio6u5NV75adcPu2jRIlOsNAG
         PW3OwKsUFHEtgzD6oPnBBr3Nz1pVHCZpkqIwQRL0MWq6SSsb377Kj9Ms/JQCuMpJU+J8
         /D2g==
X-Received: by 10.66.224.201 with SMTP id re9mr4031853pac.98.1446151364414;
        Thu, 29 Oct 2015 13:42:44 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id nu5sm3927245pbb.65.2015.10.29.13.42.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 13:42:43 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8723au: Remove unused EFUSE_Write1Byte function
Date: Thu, 29 Oct 2015 13:42:38 -0700
Message-Id: <768ac766af8f9ccea550756cc750f63394cd0599.1446151073.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446151073.git.ksenija.stanojevic@gmail.com>
References: <cover.1446151073.git.ksenija.stanojevic@gmail.com>

Function is defined but not used, so remove it.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 42 ------------------------------
 1 file changed, 42 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 906b578..5e8a1ba 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -273,48 +273,6 @@ u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 		return 0xFF;
 }
 
-/* Copy from WMAC fot EFUSE write 1 byte. */
-void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
-{
-	u8	Bytetemp = {0x00};
-	u8	temp = {0x00};
-	u32	k = 0;
-	u16	contentLen = 0;
-
-	EFUSE_GetEfuseDefinition23a(Adapter, EFUSE_WIFI,
-				 TYPE_EFUSE_REAL_CONTENT_LEN,
-				 (void *)&contentLen);
-
-	if (Address < contentLen) { /* E-fuse 512Byte */
-		rtl8723au_write8(Adapter, EFUSE_CTRL, Value);
-
-		/* Write E-fuse Register address bit0~7 */
-		temp = Address & 0xFF;
-		rtl8723au_write8(Adapter, EFUSE_CTRL+1, temp);
-		Bytetemp = rtl8723au_read8(Adapter, EFUSE_CTRL+2);
-
-		/* Write E-fuse Register address bit8~9 */
-		temp = ((Address >> 8) & 0x03) | (Bytetemp & 0xFC);
-		rtl8723au_write8(Adapter, EFUSE_CTRL+2, temp);
-
-		/* Write 0x30[31]= 1 */
-		Bytetemp = rtl8723au_read8(Adapter, EFUSE_CTRL+3);
-		temp = Bytetemp | 0x80;
-		rtl8723au_write8(Adapter, EFUSE_CTRL+3, temp);
-
-		/* Wait Write-ready (0x30[31]= 0) */
-		Bytetemp = rtl8723au_read8(Adapter, EFUSE_CTRL+3);
-		while (Bytetemp & 0x80) {
-			Bytetemp = rtl8723au_read8(Adapter, EFUSE_CTRL+3);
-			k++;
-			if (k == 100) {
-				k = 0;
-				break;
-			}
-		}
-	}
-}
-
 /* Read one byte from real Efuse. */
 int efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 {
-- 
1.9.1


