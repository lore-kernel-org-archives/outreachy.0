X-GM-THRID: 6202030500933009408
X-Received: by 10.107.7.87 with SMTP id 84mr27216058ioh.9.1444044648172;
        Mon, 05 Oct 2015 04:30:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.165 with SMTP id v37ls1432395iov.77.gmail; Mon, 05 Oct
 2015 04:30:47 -0700 (PDT)
X-Received: by 10.50.134.132 with SMTP id pk4mr11806291igb.4.1444044647906;
        Mon, 05 Oct 2015 04:30:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id uv4si3864194pac.0.2015.10.05.04.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 04:30:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fv12so178322643pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 04:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Ht51FFPM4HAhuvw2zei6xoyxdauZNJxncbWh3QbMdF4=;
        b=FgMFgBv7TndnUA6ik5y/CDp8eGJVccQisfA6aeme9G7ARBKyttoy72EzRs7QLh2SiN
         QdDHxeoUptMI5lUBDqJSMcuOscNpLHTKj14Cg2Qdo3jw4XMRgploNAnEBF6FB5dFMx67
         TZE07xVhQiNuVbzeABv+d2+wfe5u6hAwyxkQV+knsuRoaXLJyyDeV93CF0tKPNH3IuLl
         ivXmyoxBcHvWjo9Ez/EZ074NGGhDbSctvK/i/QTDKzAc6EdeLfX6YQVrYdvIND/tXTPE
         74aQGJEIoax4uAccn4caj3uRZsZhXtVOuPkTJg2aT+2EBK2ne3E0OJ8aRMTUpvyb3pKH
         aMAQ==
X-Received: by 10.68.90.195 with SMTP id by3mr3028372pbb.148.1444044647787;
        Mon, 05 Oct 2015 04:30:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id te7sm27122767pbc.87.2015.10.05.04.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 04:30:47 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH v3 2/2] Staging: wilc1000: host_interface: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 17:00:33 +0530
Message-Id: <1444044633-6658-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444044633-6658-1-git-send-email-shraddha.6596@gmail.com>
References: <1444044633-6658-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56125F66.0177,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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
 Added appropriate header files.

Changes in v2-
 Had dropped this patch since the change without header file
 broke the build

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


