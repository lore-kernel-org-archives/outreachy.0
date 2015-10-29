X-GM-THRID: 6211172623866396672
X-Received: by 10.182.24.42 with SMTP id r10mr3153286obf.42.1446151428420;
        Thu, 29 Oct 2015 13:43:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.163.1 with SMTP id ye1ls216745obb.63.gmail; Thu, 29 Oct
 2015 13:43:48 -0700 (PDT)
X-Received: by 10.182.79.70 with SMTP id h6mr3300525obx.22.1446151428129;
        Thu, 29 Oct 2015 13:43:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si399898pbb.0.2015.10.29.13.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 13:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id z6so50583197pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 13:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HH+oi18Hk+v37+blzxA09PAVDgKVL+eYsWeV6W1XRt8=;
        b=nx6910kxqL1zejf+bSyfianw4YiK0wiqvRXJJjCIX51eaeWBFlWd+sokRQpy0SH1um
         rrx4j51r5PLhfN4XrqlMQauV/yWAbrpD1ehvPwTC6SsK7s5SyXwqXAnMNAV8/WuyqSCk
         xgGiAlIc0ov8C8Jv95v+/28qojmylh0HDkFWTCWJpakfouFucx2U30qBXqh4xuV3zBEj
         FIPJ6bA5aVbghupsgmfsR4HblTezjfolM8NTAXy6eezw518ZxKE//NFCz9kAr9fM0JPI
         zCQHUJHHNHqAmVLr2tmnUIETgiwpuidDwrx8fgt1CdNCUmx09oJnSKQ2sbdn5ujZHzcz
         ykqw==
X-Received: by 10.68.69.79 with SMTP id c15mr4080858pbu.90.1446151428023;
        Thu, 29 Oct 2015 13:43:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id dd2sm3974898pbc.27.2015.10.29.13.43.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 13:43:47 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8723au: Declare function static
Date: Thu, 29 Oct 2015 13:43:41 -0700
Message-Id: <16cb35256bfa5ec61f6efb4c718c66652239d129.1446151073.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1446151073.git.ksenija.stanojevic@gmail.com>
References: <cover.1446151073.git.ksenija.stanojevic@gmail.com>

Declare function Efuse_ReadAllMap as static since it's defined and used
only in this file.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 5e8a1ba..f174b4d 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -459,7 +459,8 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
 }
 
 /* Read All Efuse content */
-void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
+static void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType,
+			     u8 *Efuse)
 {
 	u16	mapLen = 0;
 
-- 
1.9.1


