X-GM-THRID: 6204428634570096640
X-Received: by 10.194.109.233 with SMTP id hv9mr4680087wjb.1.1444581114530;
        Sun, 11 Oct 2015 09:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.83 with SMTP id a80ls411242lfe.96.gmail; Sun, 11 Oct
 2015 09:31:52 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr4640477lbc.5.1444581112862;
        Sun, 11 Oct 2015 09:31:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ch7si322641wib.2.2015.10.11.09.31.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:31:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ge5so123505071wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 09:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=RN5A5sYCElecrq8/2LxhuHfgaLCRyVFJk58OEFuMOBA=;
        b=FruBu28VtK63KMXYGavbrAdmBE8nMu06mBMtiOl+gn4daireW7P9KI+5a69dgOsv9i
         b+zgt8ztn2Imwox5EgdQqY9ROZa+09gi8nptA0VzvCrpEbJqlTCYPT5Znnh398KvqiWr
         qEYkGh2ZBs32rbvc2/q0dI1tDlBMacgZ5zDZ7j6/b3zMVcLYFCXRYwwSUe9AUQreQ1cJ
         jrJH2c4fqxCMOGRpwLT075csExao2koEbq4Kt26FLT57VZWvSC4MEB+r4H0oLCRBezc3
         PQAU3ZEZ98f+QtwPNGErQkyv2s9v6sKtnUTbFkP0abKuDYhmUsEvfzQZlH+Zg2APMjeu
         icBQ==
X-Received: by 10.194.172.1 with SMTP id ay1mr2255975wjc.101.1444581112730;
        Sun, 11 Oct 2015 09:31:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id r4sm7358532wia.19.2015.10.11.09.31.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 11 Oct 2015 09:31:52 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: wilc1000: host_interface: Use kmemdup instead of kmalloc and memcpy
Date: Sun, 11 Oct 2015 22:01:36 +0530
Message-Id: <1444581097-19417-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444581097-19417-1-git-send-email-shraddha.6596@gmail.com>
References: <1444581097-19417-1-git-send-email-shraddha.6596@gmail.com>

Replace kmalloc followed by memcpy with kmemdup

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bb833d3..f92ec7d 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2444,7 +2444,9 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
 			strWIDList[2].s32ValueSize = sizeof(char);
 
 
-			pu8keybuf = kmalloc(pstrHostIFkeyAttr->uniHostIFkeyAttr.strHostIFwepAttr.u8WepKeylen, GFP_KERNEL);
+			pu8keybuf = kmemdup(pstrHostIFkeyAttr->uniHostIFkeyAttr.strHostIFwepAttr.pu8WepKey,
+					    pstrHostIFkeyAttr->uniHostIFkeyAttr.strHostIFwepAttr.u8WepKeylen,
+					    GFP_KERNEL);
 
 
 			if (pu8keybuf == NULL) {
@@ -2452,9 +2454,6 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
 				return -1;
 			}
 
-			memcpy(pu8keybuf, pstrHostIFkeyAttr->uniHostIFkeyAttr.strHostIFwepAttr.pu8WepKey,
-				    pstrHostIFkeyAttr->uniHostIFkeyAttr.strHostIFwepAttr.u8WepKeylen);
-
 
 			kfree(pstrHostIFkeyAttr->uniHostIFkeyAttr.strHostIFwepAttr.pu8WepKey);
 
@@ -6389,21 +6388,20 @@ s32 host_int_add_beacon(tstrWILC_WFIDrv *hWFIDrv, u32 u32Interval,
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


