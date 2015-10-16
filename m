X-GM-THRID: 6205159491489497088
X-Received: by 10.50.114.2 with SMTP id jc2mr2501369igb.5.1444972640031;
        Thu, 15 Oct 2015 22:17:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.59.211 with SMTP id b19ls99981igr.37.canary; Thu, 15 Oct
 2015 22:17:19 -0700 (PDT)
X-Received: by 10.68.176.132 with SMTP id ci4mr10964842pbc.13.1444972639623;
        Thu, 15 Oct 2015 22:17:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si1895128pbb.2.2015.10.15.22.17.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 22:17:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so10994343pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 22:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ylTzvv4GsGQFP0S9mt44EIcOBDo5FIYo2KU58xft41M=;
        b=sVT92HzY72wiRl1nldLgp4WTekZfYky1YPwN6xSB+9yE2JWqCde9XqaABK45PjEtgB
         PeUaidTXs3WP2l/REqkjO+n6fI9eYt+f0v46n3oQDJFfFcGhPWF1r42wxRT64BXB6Evk
         PXNvjx8xPyx9No4nQVBqdchBq3v/d+yOReqfGvpTmtANv9AjMTfzYLQTga0jWTkzp0nY
         9W6KryyLXPuE6zashaRNpgXEp05QrJbtMn/QQUWNrnvM2lCXHam+8F0lEjEQkIi1uDHK
         r2KadyXDtq8OvEc6lxwsutg7rX+5+ec8cGT7LcWcoWzsE5XSHUgXqawxlt8DsNe8H9eD
         zhRw==
X-Received: by 10.66.252.2 with SMTP id zo2mr14294529pac.89.1444972639484;
        Thu, 15 Oct 2015 22:17:19 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fe8sm18699248pab.40.2015.10.15.22.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Oct 2015 22:17:18 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: wilc1000: Use kmemdup instead of kmalloc and memcpy
Date: Fri, 16 Oct 2015 10:47:11 +0530
Message-Id: <1444972631-3655-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Replace kmalloc followed by memcpy with kmemdup
Problem found using coccicheck

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 04f3bc2..e58b0a7 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1793,16 +1793,15 @@ static int Handle_Key(struct host_if_drv *hif_drv,
 			strWIDList[2].val = (s8 *)(&(pstrHostIFkeyAttr->attr.wep.index));
 			strWIDList[2].size = sizeof(char);
 
-			pu8keybuf = kmalloc(pstrHostIFkeyAttr->attr.wep.key_len, GFP_KERNEL);
+			pu8keybuf = kmemdup(pstrHostIFkeyAttr->attr.wep.key,
+					    pstrHostIFkeyAttr->attr.wep.key_len,
+					    GFP_KERNEL);
 
 			if (pu8keybuf == NULL) {
 				PRINT_ER("No buffer to send Key\n");
 				return -1;
 			}
 
-			memcpy(pu8keybuf, pstrHostIFkeyAttr->attr.wep.key,
-				    pstrHostIFkeyAttr->attr.wep.key_len);
-
 			kfree(pstrHostIFkeyAttr->attr.wep.key);
 
 			strWIDList[3].id = (u16)WID_WEP_KEY_VALUE;
@@ -4633,21 +4632,20 @@ s32 host_int_add_beacon(struct host_if_drv *hif_drv, u32 u32Interval,
 	pstrSetBeaconParam->interval = u32Interval;
 	pstrSetBeaconParam->dtim_period = u32DTIMPeriod;
 	pstrSetBeaconParam->head_len = u32HeadLen;
-	pstrSetBeaconParam->head = kmalloc(u32HeadLen, GFP_KERNEL);
+	pstrSetBeaconParam->head = kmemdup(pu8Head, u32HeadLen, GFP_KERNEL);
 	if (pstrSetBeaconParam->head == NULL) {
 		s32Error = -ENOMEM;
 		goto ERRORHANDLER;
 	}
-	memcpy(pstrSetBeaconParam->head, pu8Head, u32HeadLen);
 	pstrSetBeaconParam->tail_len = u32TailLen;
 
 	if (u32TailLen > 0) {
-		pstrSetBeaconParam->tail = kmalloc(u32TailLen, GFP_KERNEL);
+		pstrSetBeaconParam->tail = kmemdup(pu8Tail, u32TailLen,
+						   GFP_KERNEL);
 		if (pstrSetBeaconParam->tail == NULL) {
 			s32Error = -ENOMEM;
 			goto ERRORHANDLER;
 		}
-		memcpy(pstrSetBeaconParam->tail, pu8Tail, u32TailLen);
 	} else {
 		pstrSetBeaconParam->tail = NULL;
 	}
-- 
2.1.4


