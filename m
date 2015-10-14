X-GM-THRID: 6205317079064641536
X-Received: by 10.50.41.7 with SMTP id b7mr19979196igl.12.1444787969680;
        Tue, 13 Oct 2015 18:59:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.198 with SMTP id 64ls3665192qgb.52.gmail; Tue, 13 Oct
 2015 18:59:28 -0700 (PDT)
X-Received: by 10.129.134.129 with SMTP id w123mr468059ywf.17.1444787968975;
        Tue, 13 Oct 2015 18:59:28 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ce6si34754pad.0.2015.10.13.18.59.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 18:59:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so37962014pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 18:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=INlUldhz3Or3acX2tTEbtBrT/fWFoxN1+btCu/67ETM=;
        b=ecHRdxRCkK/pIHOG+PluonL53lAuc797JbqeKVjJ1dKYiuKtpJaiJ5IuHvtj0/jtu9
         iKo/CUtxl9mUWfgiou+B8+FLuuQQqrxN0sIBkJonrDEIRrTGYql4oQJieErQoQJsKUjz
         QYkaVRzuCMGOnTNADyU9//LTiJGR3VMOE+8UaPS2VK2yBJshMKh/1rS4AW9IbpamsCPU
         sYaQkz2YXvEhiW6pUHHq0Opg/JTb8Vgb/KhvadGW3GAQVfAIgljhZOHxGrTij1w0Mr3O
         WmlJD7yZt9wqmfKvqUWUkYRYo3Y9rmOzmjdoAuAf5bAbG89u6CRJ0FaqFjERZ8fbXgmU
         F6Dw==
X-Received: by 10.68.242.41 with SMTP id wn9mr738014pbc.79.1444787968825;
        Tue, 13 Oct 2015 18:59:28 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gw3sm6213550pbc.46.2015.10.13.18.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 18:59:28 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: wilc1000: Remove null check before kfree
Date: Wed, 14 Oct 2015 07:29:19 +0530
Message-Id: <1444787959-3930-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.561DB6FF.0064,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

kfree on NULL pointer is a no-op.
The semantic patch used to find such an instance where NULL check is
present before kfree-

// <smpl>
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;
// </smpl>smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 90 +++++++++++--------------------
 1 file changed, 30 insertions(+), 60 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 04f3bc2..9e7a2b6 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -942,22 +942,15 @@ ERRORHANDLER:
 		Handle_ScanDone(hif_drv, SCAN_EVENT_ABORTED);
 	}
 
-	if (pstrHostIFscanAttr->ch_freq_list != NULL) {
-		kfree(pstrHostIFscanAttr->ch_freq_list);
-		pstrHostIFscanAttr->ch_freq_list = NULL;
-	}
+	kfree(pstrHostIFscanAttr->ch_freq_list);
+	pstrHostIFscanAttr->ch_freq_list = NULL;
 
-	if (pstrHostIFscanAttr->ies != NULL) {
-		kfree(pstrHostIFscanAttr->ies);
-		pstrHostIFscanAttr->ies = NULL;
-	}
-	if (pstrHostIFscanAttr->hidden_network.pstrHiddenNetworkInfo != NULL)	{
-		kfree(pstrHostIFscanAttr->hidden_network.pstrHiddenNetworkInfo);
-		pstrHostIFscanAttr->hidden_network.pstrHiddenNetworkInfo = NULL;
-	}
+	kfree(pstrHostIFscanAttr->ies);
+	pstrHostIFscanAttr->ies = NULL;
+	kfree(pstrHostIFscanAttr->hidden_network.pstrHiddenNetworkInfo);
+	pstrHostIFscanAttr->hidden_network.pstrHiddenNetworkInfo = NULL;
 
-	if (pu8HdnNtwrksWidVal != NULL)
-		kfree(pu8HdnNtwrksWidVal);
+	kfree(pu8HdnNtwrksWidVal);
 
 	return s32Error;
 }
@@ -1275,10 +1268,8 @@ ERRORHANDLER:
 							       NULL,
 							       pstrHostIFconnectAttr->arg);
 			hif_drv->enuHostIFstate = HOST_IF_IDLE;
-			if (strConnectInfo.pu8ReqIEs != NULL) {
-				kfree(strConnectInfo.pu8ReqIEs);
-				strConnectInfo.pu8ReqIEs = NULL;
-			}
+			kfree(strConnectInfo.pu8ReqIEs);
+			strConnectInfo.pu8ReqIEs = NULL;
 
 		} else {
 			PRINT_ER("Connect callback function pointer is NULL\n");
@@ -1286,23 +1277,16 @@ ERRORHANDLER:
 	}
 
 	PRINT_D(HOSTINF_DBG, "Deallocating connection parameters\n");
-	if (pstrHostIFconnectAttr->bssid != NULL) {
-		kfree(pstrHostIFconnectAttr->bssid);
-		pstrHostIFconnectAttr->bssid = NULL;
-	}
+	kfree(pstrHostIFconnectAttr->bssid);
+	pstrHostIFconnectAttr->bssid = NULL;
 
-	if (pstrHostIFconnectAttr->ssid != NULL) {
-		kfree(pstrHostIFconnectAttr->ssid);
-		pstrHostIFconnectAttr->ssid = NULL;
-	}
+	kfree(pstrHostIFconnectAttr->ssid);
+	pstrHostIFconnectAttr->ssid = NULL;
 
-	if (pstrHostIFconnectAttr->ies != NULL) {
-		kfree(pstrHostIFconnectAttr->ies);
-		pstrHostIFconnectAttr->ies = NULL;
-	}
+	kfree(pstrHostIFconnectAttr->ies);
+	pstrHostIFconnectAttr->ies = NULL;
 
-	if (pu8CurrByte != NULL)
-		kfree(pu8CurrByte);
+	kfree(pu8CurrByte);
 	return s32Error;
 }
 
@@ -1393,10 +1377,8 @@ static s32 Handle_ConnectTimeout(struct host_if_drv *hif_drv)
 								   NULL,
 								   hif_drv->strWILC_UsrConnReq.u32UserConnectPvoid);
 
-		if (strConnectInfo.pu8ReqIEs != NULL) {
-			kfree(strConnectInfo.pu8ReqIEs);
-			strConnectInfo.pu8ReqIEs = NULL;
-		}
+		kfree(strConnectInfo.pu8ReqIEs);
+		strConnectInfo.pu8ReqIEs = NULL;
 	} else {
 		PRINT_ER("Connect callback function pointer is NULL\n");
 	}
@@ -1509,10 +1491,8 @@ static s32 Handle_RcvdNtwrkInfo(struct host_if_drv *hif_drv,
 	}
 
 done:
-	if (pstrRcvdNetworkInfo->buffer != NULL) {
-		kfree(pstrRcvdNetworkInfo->buffer);
-		pstrRcvdNetworkInfo->buffer = NULL;
-	}
+	kfree(pstrRcvdNetworkInfo->buffer);
+	pstrRcvdNetworkInfo->buffer = NULL;
 
 	if (pstrNetworkInfo != NULL) {
 		DeallocateNetworkInfo(pstrNetworkInfo);
@@ -1672,15 +1652,11 @@ static s32 Handle_RcvdGnrlAsyncInfo(struct host_if_drv *hif_drv,
 				gbScanWhileConnected = false;
 			}
 
-			if (strConnectInfo.pu8RespIEs != NULL) {
-				kfree(strConnectInfo.pu8RespIEs);
-				strConnectInfo.pu8RespIEs = NULL;
-			}
+			kfree(strConnectInfo.pu8RespIEs);
+			strConnectInfo.pu8RespIEs = NULL;
 
-			if (strConnectInfo.pu8ReqIEs != NULL) {
-				kfree(strConnectInfo.pu8ReqIEs);
-				strConnectInfo.pu8ReqIEs = NULL;
-			}
+			kfree(strConnectInfo.pu8ReqIEs);
+			strConnectInfo.pu8ReqIEs = NULL;
 			hif_drv->strWILC_UsrConnReq.ssidLen = 0;
 			kfree(hif_drv->strWILC_UsrConnReq.pu8ssid);
 			kfree(hif_drv->strWILC_UsrConnReq.pu8bssid);
@@ -1749,10 +1725,8 @@ static s32 Handle_RcvdGnrlAsyncInfo(struct host_if_drv *hif_drv,
 
 	}
 
-	if (pstrRcvdGnrlAsyncInfo->buffer != NULL) {
-		kfree(pstrRcvdGnrlAsyncInfo->buffer);
-		pstrRcvdGnrlAsyncInfo->buffer = NULL;
-	}
+	kfree(pstrRcvdGnrlAsyncInfo->buffer);
+	pstrRcvdGnrlAsyncInfo->buffer = NULL;
 
 	return s32Error;
 }
@@ -2874,8 +2848,7 @@ static s32 Handle_AddBASession(struct host_if_drv *hif_drv,
 	s32Error = send_config_pkt(SET_CFG, &strWID, 1,
 				   get_id_from_handler(hif_drv));
 
-	if (strWID.val != NULL)
-		kfree(strWID.val);
+	kfree(strWID.val);
 
 	return s32Error;
 
@@ -2914,8 +2887,7 @@ static s32 Handle_DelAllRxBASessions(struct host_if_drv *hif_drv,
 		PRINT_D(HOSTINF_DBG, "Couldn't delete BA Session\n");
 
 
-	if (strWID.val != NULL)
-		kfree(strWID.val);
+	kfree(strWID.val);
 
 	up(&hWaitResponse);
 
@@ -4658,11 +4630,9 @@ s32 host_int_add_beacon(struct host_if_drv *hif_drv, u32 u32Interval,
 
 ERRORHANDLER:
 	if (s32Error) {
-		if (pstrSetBeaconParam->head != NULL)
-			kfree(pstrSetBeaconParam->head);
+		kfree(pstrSetBeaconParam->head);
 
-		if (pstrSetBeaconParam->tail != NULL)
-			kfree(pstrSetBeaconParam->tail);
+		kfree(pstrSetBeaconParam->tail);
 	}
 
 	return s32Error;
-- 
2.1.4


