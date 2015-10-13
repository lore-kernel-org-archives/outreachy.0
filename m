X-GM-THRID: 6203640047549284352
X-Received: by 10.107.164.154 with SMTP id d26mr13460198ioj.19.1444738615878;
        Tue, 13 Oct 2015 05:16:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.72 with SMTP id k69ls804068iod.31.gmail; Tue, 13 Oct
 2015 05:16:55 -0700 (PDT)
X-Received: by 10.50.55.71 with SMTP id q7mr16923194igp.7.1444738615422;
        Tue, 13 Oct 2015 05:16:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pe1si238261pac.2.2015.10.13.05.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 05:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so20358998pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 05:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=ivfsLDItgrqqwHO1ruZdjJjki0kJMD/eafblq+9BQ3A=;
        b=p2GkZMDxs8psWUqj2WwgTcieKDklg9+KrjkzVBV2JLuU4TqNUXmEhX2ak8xr1aQBtt
         FlkanvXI3XX8eHfJY1aPOYwVLYV8xuFXaROpSOQIdJ/nUA4E0QgKTv8dYrHAOc+wPcQm
         d7AN4vNHzJ3lfGKVMpUFlqcp++9LuH4FnpMrArBNyv76Fu+h7jqPecfLqfqzYdH+JSi9
         vCqHifoHQBcg4PFHDMzNLHlZZ42gpDVki4lTlNwm8IjiOv/SCCr32DCcm9eMVGJUMov2
         aNHfGHb2m/ZnAdT5pwD4Yvj3z7+036uGe0MLxhTmsfId6GvsrgtWui4cKbvcSc9vtZHK
         3Gpw==
X-Received: by 10.68.135.136 with SMTP id ps8mr40022511pbb.123.1444738615298;
        Tue, 13 Oct 2015 05:16:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ey17sm3674191pac.26.2015.10.13.05.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 05:16:54 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] Staging: wilc1000: Use kzalloc instead of kmalloc and memset
Date: Tue, 13 Oct 2015 17:46:45 +0530
Message-Id: <1444738605-2670-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.561CF635.0230,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Replace kmalloc and memset with a single call to kzalloc.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Based on the current staging-testing branch

 drivers/staging/wilc1000/host_interface.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 9bc221c..c4316fc 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -2445,15 +2445,13 @@ static int Handle_Key(struct host_if_drv *hif_drv,
 
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
@@ -2496,15 +2494,13 @@ static int Handle_Key(struct host_if_drv *hif_drv,
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
@@ -6582,9 +6578,8 @@ static void *host_int_ParseJoinBssParam(tstrNetworkInfo *ptstrNetworkInfo)
 	pu8IEs = ptstrNetworkInfo->pu8IEs;
 	u16IEsLen = ptstrNetworkInfo->u16IEsLen;
 
-	pNewJoinBssParam = kmalloc(sizeof(struct join_bss_param), GFP_KERNEL);
+	pNewJoinBssParam = kzalloc(sizeof(struct join_bss_param), GFP_KERNEL);
 	if (pNewJoinBssParam != NULL) {
-		memset(pNewJoinBssParam, 0, sizeof(struct join_bss_param));
 		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->u8DtimPeriod;
 		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->u16BeaconPeriod;
 		pNewJoinBssParam->cap_info = ptstrNetworkInfo->u16CapInfo;
-- 
2.1.4


