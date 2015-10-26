X-GM-THRID: 6209462121071116288
X-Received: by 10.129.146.4 with SMTP id j4mr8045332ywg.45.1445885062826;
        Mon, 26 Oct 2015 11:44:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.73 with SMTP id m67ls2961929qgd.81.gmail; Mon, 26 Oct
 2015 11:44:21 -0700 (PDT)
X-Received: by 10.140.202.202 with SMTP id x193mr31089342qha.12.1445885061427;
        Mon, 26 Oct 2015 11:44:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si3687580pac.2.2015.10.26.11.44.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 11:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fv9so204605573pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 11:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=58DV5mMEponfr3GimdkucraM5pK9lVjwnCFLfl9E/uY=;
        b=L4iuTzY9wLvjFepGTm5MqZgfn6L7h9Pa+bw1jJC4XQF7ER6vrAaxb7JOmZPVNuuJpc
         2DzI+ANGhAYK7ffmF8XH3KSmEkKlg3WdvxWcyDfIkJw4NcLLhYzs+iRsEeT30Kl08uGG
         wPbV0NQ3xxjBiEzhHDTRJRYzecrK1v1JlDknmQ5LrIEX1e/9cQifTaPADkTh3J9zCltc
         pUOWyFZNblsFoJvfMnXhK67gpiEQgUUjyI8FTcxWx5XFoRLWOQ7PbuW39CFONp/WgWh3
         ZVU1r4X8IjbFfafB6WX9tVAJxr9McY6EYvSb3ZAc7KmW230BD8Vz4cCeRxsqj03HyPHU
         I8gA==
X-Received: by 10.66.142.106 with SMTP id rv10mr41707926pab.29.1445885061191;
        Mon, 26 Oct 2015 11:44:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id bz1sm10614508pab.20.2015.10.26.11.44.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 11:44:20 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: r8723au: remove unneeded forward function declarations
Date: Mon, 26 Oct 2015 11:44:16 -0700
Message-Id: <35e3bff56b6f9f3e77f991b91ba28641bce66c75.1445883001.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445883001.git.amsfield22@gmail.com>
References: <cover.1445883001.git.amsfield22@gmail.com>

Remove unneeded forward function declarations.

Addresses checkpatch.pl:
WARNING: externs should be avoided in .c files

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index bf27ea4..906b578 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -274,7 +274,6 @@ u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 }
 
 /* Copy from WMAC fot EFUSE write 1 byte. */
-void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);
 void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
 {
 	u8	Bytetemp = {0x00};
@@ -502,7 +501,6 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
 }
 
 /* Read All Efuse content */
-void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
 void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
 {
 	u16	mapLen = 0;
-- 
2.1.4


