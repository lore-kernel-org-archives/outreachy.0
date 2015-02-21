X-GM-THRID: 1810928500736
X-Received: by 10.180.8.67 with SMTP id p3mr265798wia.7.1424527203639;
        Sat, 21 Feb 2015 06:00:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.170 with SMTP id q10ls275316wiz.25.canary; Sat, 21 Feb
 2015 06:00:03 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr305820wjc.3.1424527203362;
        Sat, 21 Feb 2015 06:00:03 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id ew5si316147wid.1.2015.02.21.06.00.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:00:03 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so5610996wgg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=C8Ia/wTkCmf57DCqX8XapS2lM5IHfkNKywynaW1WpaA=;
        b=iX9CAkMtznxUuPjSSv2zfWVTGKSP08NFVYbBWWLDVAUshWFD1yoMojByqdyLRYAT7g
         V9Un0VGqryLY9Q9qlH93x65nq/GBZ5+wJ2gu7/8vYgS3mJgJ/3a+6r8fDpk3n90rD++F
         egZ/+r34e1qHms4WOP2hf49r3a+ttObPC2ys6Icl5x2WV5TqYVUmtOT0Ez7qyxzYvZZu
         f9a6xx0MS2ESuwlxlEyWN/W+iQeuLT4kDwAMSSltXaKBQnFpJG3DaKCjwgLDD6NS3Nn1
         hJIO10F0JwaP2y2cnzZzd5GIIFX4uMYhWytoCrnZM2LvbDH7LcK1MWiLgrLoqKcDPp9t
         Kjtg==
X-Received: by 10.180.7.131 with SMTP id j3mr4260975wia.55.1424527203277;
        Sat, 21 Feb 2015 06:00:03 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id eb10sm7074693wib.13.2015.02.21.06.00.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:00:02 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: deleted space
Date: Sat, 21 Feb 2015 15:59:55 +0200
Message-Id: <1424527195-15790-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding
style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index d61842e..da19145 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -509,7 +509,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		tx_ra_bitmap |= ((raid<<28)&0xf0000000);
 
 		DBG_88E("%s => mac_id:%d , raid:%d , bitmap = 0x%x, arg = 0x%x\n",
-			__func__ , psta->mac_id, raid , tx_ra_bitmap, arg);
+			__func__, psta->mac_id, raid, tx_ra_bitmap, arg);
 
 		/* bitmap[0:27] = tx_rate_bitmap */
 		/* bitmap[28:31]= Rate Adaptive id */
-- 
1.9.1


