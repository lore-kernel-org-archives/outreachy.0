X-GM-THRID: 2570422583296
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3ae25544df29569f,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr838234lbb.11.1424631601317;
        Sun, 22 Feb 2015 11:00:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.169 with SMTP id gf9ls420507wib.36.canary; Sun, 22 Feb
 2015 11:00:01 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr826458wjb.1.1424631601041;
        Sun, 22 Feb 2015 11:00:01 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id ew5si539822wid.1.2015.02.22.11.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 11:00:01 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so5862788wiv.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 11:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ySMiHWbIIBfQWTRRFBJhf6qNmuQ7c7PYescGBzVdg7k=;
        b=wsGCkHK57o6anp3oirGeTw13iHLRFfBzUqLiDjpszRy4YpAJZRb9kEdc1jpJ+Q7p/5
         lmSC8wYpXc5WHirrV7LsByf6b0TGPdMgNkDmE8PUdVIBNj293SswMsDFofvlTr0ODPyn
         q+WrC4wOcc22kyvj99gshv66gB0+GhZCDotZ32IKvC3Vhjgym4Z+7R/xeNdKKo784okh
         dichXFHXjRgKNP/Yfdxz6hDsEAI2JRsrCBA3cUHZff3zulGnCoxLmbjpCKLy/WrI3NuJ
         n4lj6GLN38WmYwgtEFgVrr3vqhr19EwCWUc1A6Fn0DikV1dbsyeLe4VsNzmksB5fFrrS
         ZHxA==
X-Received: by 10.180.105.40 with SMTP id gj8mr14230524wib.67.1424631600971;
        Sun, 22 Feb 2015 11:00:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id l6sm52256116wjx.33.2015.02.22.10.59.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 11:00:00 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add space after '&'
Date: Sun, 22 Feb 2015 20:59:51 +0200
Message-Id: <1424631591-16679-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This Error found checkpatch.pl

ERROR: need consistent spacing around '&'

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 0e64d12..94536da 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -387,12 +387,12 @@ efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 	/*  -----------------e-fuse reg ctrl --------------------------------- */
 	/* address */
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr&0xff));
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+2, ((u8)((addr>>8) &0x03)) |
+	rtl8723au_write8(pAdapter, EFUSE_CTRL+2, ((u8)((addr>>8) & 0x03)) |
 	(rtl8723au_read8(pAdapter, EFUSE_CTRL+2)&0xFC));
 
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+3,  0x72);/* read cmd */
 
-	while(!(0x80 &rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx<100))
+	while(!(0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx<100))
 		tmpidx++;
 	if (tmpidx < 100) {
 		*data = rtl8723au_read8(pAdapter, EFUSE_CTRL);
-- 
1.9.1


