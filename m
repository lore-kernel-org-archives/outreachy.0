X-GM-THRID: 6202030500933009408
X-Received: by 10.107.131.194 with SMTP id n63mr24512690ioi.8.1444026649655;
        Sun, 04 Oct 2015 23:30:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.98 with SMTP id a95ls1474087ioj.25.gmail; Sun, 04 Oct
 2015 23:30:49 -0700 (PDT)
X-Received: by 10.67.14.6 with SMTP id fc6mr25478338pad.14.1444026649353;
        Sun, 04 Oct 2015 23:30:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id uv4si3707921pac.0.2015.10.04.23.30.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 23:30:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id lk4so166232896pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 23:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=+HxCKmeYDC6B6v3XXPFX1f2Ri7fLephQ/9eNSnIgbl8=;
        b=SEQsChD9V0tnZEIFThIWMyOHuX0xEOQdCtpfD72Y4Bvu2yrYzX4iXLg4Q0u4lBQrKE
         CiS3HUDB45cZ8hY1M18DaNlMm/3/N11HWz+Pr5qfCGZZS2i9LYOm4e0aDDif4lOLnakO
         UdCD5P/AXaFQek5Ey80mTkyYqOK/3f9hB5P0yW4mtkr48a02KLe2awLy3VZS2kUQblAC
         8065CUy7E/VqPeWR3N47KmAVMKhXVUbikOFfiy3uOVza+Aic+VjI3GONendZ2bHCkgc6
         2adHhrDmMCV1jccO19w9xIfU66l2twZ4wI3BBnhE8IQc4+9ru3oFrrrnyXhxqiMqNWXu
         YEfw==
X-Received: by 10.66.248.10 with SMTP id yi10mr38515728pac.6.1444026649262;
        Sun, 04 Oct 2015 23:30:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fk8sm25537993pab.33.2015.10.04.23.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 23:30:48 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/2] Staging: wilc1000: host_interface: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 12:00:34 +0530
Message-Id: <1444026634-14551-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.56121918.00E6,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use eth_zero_addr to assign the zero address to the given address
array instead of memset when second argument is address of zero.

The Coccinelle patch used -

// <smpl>
@eth_zero_addr@
expression e;
@@

-memset(e,0x00,ETH_ALEN);
+eth_zero_addr(e);
// </smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 Added appropriate header file

Changes in v2-
 Had dropped this patch since the change without header file
 broke the build.

 drivers/staging/wilc1000/host_interface.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 39d72ac..1ad1526 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -6,6 +6,7 @@
 #include "coreconfigurator.h"
 #include "wilc_wlan_if.h"
 #include "wilc_msgqueue.h"
+#include <linux/etherdevice.h>
 
 extern u8 connecting;
 
@@ -1950,7 +1951,7 @@ static s32 Handle_ConnectTimeout(tstrWILC_WFIDrv *drvHandler)
 		pstrWFIDrv->strWILC_UsrConnReq.pu8ConnReqIEs = NULL;
 	}
 
-	memset(u8ConnectedSSID, 0, ETH_ALEN);
+	eth_zero_addr(u8ConnectedSSID);
 	/*Freeing flushed join request params on connect timeout*/
 	if (gu8FlushedJoinReq != NULL && gu8FlushedJoinReqDrvHandler == drvHandler) {
 		kfree(gu8FlushedJoinReq);
@@ -2206,11 +2207,11 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
 			if ((u8MacStatus == MAC_CONNECTED) &&
 			    (strConnectInfo.u16ConnectStatus != SUCCESSFUL_STATUSCODE))	{
 				PRINT_ER("Received MAC status is MAC_CONNECTED while the received status code in Asoc Resp is not SUCCESSFUL_STATUSCODE\n");
-				memset(u8ConnectedSSID, 0, ETH_ALEN);
+				eth_zero_addr(u8ConnectedSSID);
 
 			} else if (u8MacStatus == MAC_DISCONNECTED)    {
 				PRINT_ER("Received MAC status is MAC_DISCONNECTED\n");
-				memset(u8ConnectedSSID, 0, ETH_ALEN);
+				eth_zero_addr(u8ConnectedSSID);
 			}
 
 			/* TODO: mostafa: correct BSSID should be retrieved from actual BSSID received from AP */
@@ -2329,7 +2330,7 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
 				PRINT_ER("Connect result callback function is NULL\n");
 			}
 
-			memset(pstrWFIDrv->au8AssociatedBSSID, 0, ETH_ALEN);
+			eth_zero_addr(pstrWFIDrv->au8AssociatedBSSID);
 
 
 			/* Deallocation */
@@ -2791,7 +2792,7 @@ static void Handle_Disconnect(tstrWILC_WFIDrv *drvHandler)
 	g_obtainingIP = false;
 	host_int_set_power_mgmt(pstrWFIDrv, 0, 0);
 
-	memset(u8ConnectedSSID, 0, ETH_ALEN);
+	eth_zero_addr(u8ConnectedSSID);
 
 	s32Error = send_config_pkt(SET_CFG, &strWID, 1, false,
 				   get_id_from_handler(pstrWFIDrv));
@@ -2833,7 +2834,7 @@ static void Handle_Disconnect(tstrWILC_WFIDrv *drvHandler)
 
 		pstrWFIDrv->enuHostIFstate = HOST_IF_IDLE;
 
-		memset(pstrWFIDrv->au8AssociatedBSSID, 0, ETH_ALEN);
+		eth_zero_addr(pstrWFIDrv->au8AssociatedBSSID);
 
 
 		/* Deallocation */
-- 
2.1.4


