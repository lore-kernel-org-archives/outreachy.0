X-GM-THRID: 6203640047549284352
X-Received: by 10.13.225.21 with SMTP id k21mr11070663ywe.43.1444397505973;
        Fri, 09 Oct 2015 06:31:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.5 with SMTP id xs5ls645894obc.9.gmail; Fri, 09 Oct
 2015 06:31:45 -0700 (PDT)
X-Received: by 10.182.91.14 with SMTP id ca14mr64965obb.17.1444397505418;
        Fri, 09 Oct 2015 06:31:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si125779pac.2.2015.10.09.06.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 06:31:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy16so87148926pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 06:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=0G1jMWUoViVYQPeWu3q/aLwFqDTJy9wU5fL4bx5UDWE=;
        b=pTHy5fEskFsVEsmqupVuesu7P3TZi0UZomYG9YsN26ypfHgLGhRJWD6VV+cTJQEPeE
         89RXPyLk/O/zQ/AQgLaSwD2GZCimmGqqOtLkXxyliGHIRfFn4q05QEHeT3Y7DJhz2jQh
         cyYLc0ONqaQWtgp2WkoctzVGgOm7LNXRnGoOHrEJRSfQGXRQ0cTkzyKGD2flcxlL3wKS
         yuGP8RKOAeHY+FX8fX+1ccibwd6qJTOye4k9tAAX2Sr7XAlXoPgl6pxvrd7ZM+skTWBj
         A6UaqJ3GQwZvku9bkF+Li8MQxIG+9nl4ROXZA1jZ76RB80wQ1oU9nmJqWbMxph9MuxKh
         /dkg==
X-Received: by 10.66.190.135 with SMTP id gq7mr15368338pac.65.1444397505291;
        Fri, 09 Oct 2015 06:31:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xa4sm2548273pac.28.2015.10.09.06.31.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 06:31:44 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: wilc1000: Use kzalloc instead of kmalloc and memset
Date: Fri,  9 Oct 2015 19:01:32 +0530
Message-Id: <1444397492-6487-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.5617C1C0.000C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Replace kmalloc and memset with a single call to kzalloc.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bb833d3..c6816a1 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2523,15 +2523,13 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
 
 	case WPARxGtk:
 		if (pstrHostIFkeyAttr->u8KeyAction & ADDKEY_AP)	{
-			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
+			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
 				PRINT_ER("No buffer to send RxGTK Key\n");
 				ret = -1;
 				goto _WPARxGtk_end_case_;
 			}
 
-			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
-
 
 			/*|----------------------------------------------------------------------------|
 			 * |Sta Address | Key RSC | KeyID | Key Length | Temporal Key	| Rx Michael Key |
@@ -2574,15 +2572,13 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
 		if (pstrHostIFkeyAttr->u8KeyAction & ADDKEY) {
 			PRINT_D(HOSTINF_DBG, "Handling group key(Rx) function\n");
 
-			pu8keybuf = kmalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
+			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
 				PRINT_ER("No buffer to send RxGTK Key\n");
 				ret = -1;
 				goto _WPARxGtk_end_case_;
 			}
 
-			memset(pu8keybuf, 0, RX_MIC_KEY_MSG_LEN);
-
 
 			/*|----------------------------------------------------------------------------|
 			 * |Sta Address | Key RSC | KeyID | Key Length | Temporal Key	| Rx Michael Key |
@@ -6750,9 +6746,8 @@ static void *host_int_ParseJoinBssParam(tstrNetworkInfo *ptstrNetworkInfo)
 	pu8IEs = ptstrNetworkInfo->pu8IEs;
 	u16IEsLen = ptstrNetworkInfo->u16IEsLen;
 
-	pNewJoinBssParam = kmalloc(sizeof(tstrJoinBssParam), GFP_KERNEL);
+	pNewJoinBssParam = kzalloc(sizeof(tstrJoinBssParam), GFP_KERNEL);
 	if (pNewJoinBssParam != NULL) {
-		memset(pNewJoinBssParam, 0, sizeof(tstrJoinBssParam));
 		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->u8DtimPeriod;
 		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->u16BeaconPeriod;
 		pNewJoinBssParam->cap_info = ptstrNetworkInfo->u16CapInfo;
-- 
2.1.4


