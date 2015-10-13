X-GM-THRID: 6205159491489497088
X-Received: by 10.66.147.165 with SMTP id tl5mr29763925pab.21.1444751278487;
        Tue, 13 Oct 2015 08:47:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.228 with SMTP id v91ls3310849qgd.33.gmail; Tue, 13 Oct
 2015 08:47:57 -0700 (PDT)
X-Received: by 10.129.123.85 with SMTP id w82mr29353292ywc.39.1444751277857;
        Tue, 13 Oct 2015 08:47:57 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si395828pbb.0.2015.10.13.08.47.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id rc13so24900676pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=xYPTjJ97Qyz42M3cbstXYL3p4Bf9wBy1ImeUD0Q7xCE=;
        b=atFKsTIAWbM8R2YKnFR8rPAEhy3zGyPL7zD0Dec4ZXpi2A1hcWHRlzcY3cLZJ7safV
         aWXm7axOt/w7PvnQ5thVzMBQzfNPDvlYbti+janzbCCwSEr/iG18bYv0j6gNDc4p0PEz
         rds92d+rU+tkFR229REUuomLwZd7BOC08k7+5RWdLMDSopLFTc6rSjR+nD8yeL0wec43
         fTQV4B3artfdU25zZ9SLWEGhMHSnhTGibT3QWG+y/P1ftThTzpo3e/lyNW2QpJ72HX68
         7G6gtktHPJlnjpGmPeIsql4MrgoNaHa8UZ11aV67XjYn7obN/rbpfcCW0Cu+Kd97dHn2
         vD4w==
X-Received: by 10.68.168.97 with SMTP id zv1mr41451536pbb.86.1444751277702;
        Tue, 13 Oct 2015 08:47:57 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yh3sm4578677pbb.82.2015.10.13.08.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 08:47:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: wilc1000: Use kmemdup instead of kmalloc and memcpy
Date: Tue, 13 Oct 2015 21:17:48 +0530
Message-Id: <1444751268-15614-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.561D27AC.0037,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Replace kmalloc and memcpy with kmemdup.
Problem found using coccicheck

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index ec04aec..9bc221c 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2367,7 +2367,9 @@ static int Handle_Key(struct host_if_drv *hif_drv,
 			strWIDList[2].size = sizeof(char);
 
 
-			pu8keybuf = kmalloc(pstrHostIFkeyAttr->uniHostIFkeyAttr.wep.key_len, GFP_KERNEL);
+			pu8keybuf = kmemdup(pstrHostIFkeyAttr->uniHostIFkeyAttr.wep.key,
+					    pstrHostIFkeyAttr->uniHostIFkeyAttr.wep.key_len,
+					    GFP_KERNEL);
 
 
 			if (pu8keybuf == NULL) {
@@ -2375,9 +2377,6 @@ static int Handle_Key(struct host_if_drv *hif_drv,
 				return -1;
 			}
 
-			memcpy(pu8keybuf, pstrHostIFkeyAttr->uniHostIFkeyAttr.wep.key,
-				    pstrHostIFkeyAttr->uniHostIFkeyAttr.wep.key_len);
-
 
 			kfree(pstrHostIFkeyAttr->uniHostIFkeyAttr.wep.key);
 
@@ -6226,21 +6225,20 @@ s32 host_int_add_beacon(struct host_if_drv *hif_drv, u32 u32Interval,
 	pstrSetBeaconParam->u32Interval = u32Interval;
 	pstrSetBeaconParam->u32DTIMPeriod = u32DTIMPeriod;
 	pstrSetBeaconParam->u32HeadLen = u32HeadLen;
-	pstrSetBeaconParam->pu8Head = kmalloc(u32HeadLen, GFP_KERNEL);
+	pstrSetBeaconParam->pu8Head = kmemdup(pu8Head, u32HeadLen, GFP_KERNEL);
 	if (pstrSetBeaconParam->pu8Head == NULL) {
 		s32Error = -ENOMEM;
 		goto ERRORHANDLER;
 	}
-	memcpy(pstrSetBeaconParam->pu8Head, pu8Head, u32HeadLen);
 	pstrSetBeaconParam->u32TailLen = u32TailLen;
 
 	if (u32TailLen > 0) {
-		pstrSetBeaconParam->pu8Tail = kmalloc(u32TailLen, GFP_KERNEL);
+		pstrSetBeaconParam->pu8Tail = kmemdup(pu8Tail, u32TailLen,
+						      GFP_KERNEL);
 		if (pstrSetBeaconParam->pu8Tail == NULL) {
 			s32Error = -ENOMEM;
 			goto ERRORHANDLER;
 		}
-		memcpy(pstrSetBeaconParam->pu8Tail, pu8Tail, u32TailLen);
 	} else {
 		pstrSetBeaconParam->pu8Tail = NULL;
 	}
-- 
2.1.4


