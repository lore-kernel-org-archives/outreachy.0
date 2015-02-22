X-GM-THRID: 2580051656704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,347731e80f991d7d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr826327lbf.21.1424632629254;
        Sun, 22 Feb 2015 11:17:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls470702lac.92.gmail; Sun, 22 Feb
 2015 11:17:08 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr836104lak.5.1424632628820;
        Sun, 22 Feb 2015 11:17:08 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id by11si758683wib.1.2015.02.22.11.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 11:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x244.google.com with SMTP id em10so5821730wid.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 11:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fdAdxE5o5nnTOQRPRNzhzBnxMa1CL8wuTXNxaSmKonc=;
        b=TuQpEnFwfB80NQPPDA7y8uPXk9D++ZHXkQTFNuIeGhEVXLYsSBuBvvUwgp3V0Siy8C
         lF1UqVINrlx20aeimhHnJUgFSyib5c+cCtorEsI2Swoix3mLop2fvrXJlbE9b0JwB/Xf
         K8OfIlgeC62dtDawXSFvGDdngCKRruR/IpQRiA3AX/SyhYziHpQXh5L0akIFKUMYiLyc
         ZwvWaxJ60S8cg8zeZzFcwucQBzKHKUvO+BzOt91CStXt/mE0oYDDeN2gdOL3ehiVhn53
         EpkyVX1ZTwMsP2ngZA1BaduUpooJWMcCpgtXdNqxzLZa1QCpDhO671fvp4VgdWl7XAC6
         wPUQ==
X-Received: by 10.180.149.242 with SMTP id ud18mr14024214wib.94.1424632628730;
        Sun, 22 Feb 2015 11:17:08 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id d10sm52310218wjn.45.2015.02.22.11.17.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 11:17:08 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add space before '('
Date: Sun, 22 Feb 2015 21:17:00 +0200
Message-Id: <1424632620-17424-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: space required before the open parenthesis '('
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 108e67d..d1940a0 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -392,7 +392,7 @@ efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+3,  0x72);/* read cmd */
 
-	while(!(0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx<100))
+	while (!(0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx<100))
 		tmpidx++;
 	if (tmpidx < 100) {
 		*data = rtl8723au_read8(pAdapter, EFUSE_CTRL);
@@ -424,7 +424,7 @@ efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+3, 0xF2);/* write cmd */
 
-	while((0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) &&
+	while ((0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) &&
 	      (tmpidx<100)) {
 		tmpidx++;
 	}
-- 
1.9.1


