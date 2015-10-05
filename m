X-GM-THRID: 6202030500933009408
X-Received: by 10.66.252.6 with SMTP id zo6mr24187978pac.29.1444022759836;
        Sun, 04 Oct 2015 22:25:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.1.113 with SMTP id 17ls1092670igl.15.canary; Sun, 04 Oct
 2015 22:25:59 -0700 (PDT)
X-Received: by 10.107.25.201 with SMTP id 192mr26113555ioz.21.1444022759612;
        Sun, 04 Oct 2015 22:25:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id w5si3194686pbt.1.2015.10.04.22.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ex6so165575749pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ZLyENn9HsKLxD4uEHTcurTB40J5/d1S/hy8dPSXdlRo=;
        b=ALbR12X1JX1+lGn5sq9IQd+SxTC1UauvGn60GcsRUmAv80Q0u3odcSaMgaAaCssH+B
         i4GP6AFNuWnLxkBtBQanXSs6Zz8VBrZ5PcEeH6mlW6lSDq5ETZJrnbvJ2WBOR49U9xnQ
         QLMs5HEorKPdzE8+XxR64n2IW1C5ImtH184dMiT6xDxmh/+Ttvat7H8ni3VewSHpw2/Y
         1sC1VjjEzvWvEglyeCwkCymdPfipPenpZQ1dhRVKwWSZSPPTUm236DgejPA5T9MbljN/
         JyYhiGfJsF6Bo124jq1VKxrXPsKKHBI+CM2VbJpLp1135n45VwtmUp/6QA/vQa9+eWTA
         D5yg==
X-Received: by 10.68.237.161 with SMTP id vd1mr36799699pbc.168.1444022759493;
        Sun, 04 Oct 2015 22:25:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id so4sm24951456pbc.72.2015.10.04.22.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 22:25:58 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: wilc1000: host_interface: Replace memset with eth_zero_addr
Date: Mon,  5 Oct 2015 10:55:41 +0530
Message-Id: <1444022741-4230-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444022741-4230-1-git-send-email-shraddha.6596@gmail.com>
References: <1444022741-4230-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150208.561209E5.025F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
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
 drivers/staging/wilc1000/host_interface.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 39d72ac..3a1718d 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1950,7 +1950,7 @@ static s32 Handle_ConnectTimeout(tstrWILC_WFIDrv *drvHandler)
 		pstrWFIDrv->strWILC_UsrConnReq.pu8ConnReqIEs = NULL;
 	}
 
-	memset(u8ConnectedSSID, 0, ETH_ALEN);
+	eth_zero_addr(u8ConnectedSSID);
 	/*Freeing flushed join request params on connect timeout*/
 	if (gu8FlushedJoinReq != NULL && gu8FlushedJoinReqDrvHandler == drvHandler) {
 		kfree(gu8FlushedJoinReq);
@@ -2206,11 +2206,11 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
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
@@ -2329,7 +2329,7 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
 				PRINT_ER("Connect result callback function is NULL\n");
 			}
 
-			memset(pstrWFIDrv->au8AssociatedBSSID, 0, ETH_ALEN);
+			eth_zero_addr(pstrWFIDrv->au8AssociatedBSSID);
 
 
 			/* Deallocation */
@@ -2791,7 +2791,7 @@ static void Handle_Disconnect(tstrWILC_WFIDrv *drvHandler)
 	g_obtainingIP = false;
 	host_int_set_power_mgmt(pstrWFIDrv, 0, 0);
 
-	memset(u8ConnectedSSID, 0, ETH_ALEN);
+	eth_zero_addr(u8ConnectedSSID);
 
 	s32Error = send_config_pkt(SET_CFG, &strWID, 1, false,
 				   get_id_from_handler(pstrWFIDrv));
@@ -2833,7 +2833,7 @@ static void Handle_Disconnect(tstrWILC_WFIDrv *drvHandler)
 
 		pstrWFIDrv->enuHostIFstate = HOST_IF_IDLE;
 
-		memset(pstrWFIDrv->au8AssociatedBSSID, 0, ETH_ALEN);
+		eth_zero_addr(pstrWFIDrv->au8AssociatedBSSID);
 
 
 		/* Deallocation */
-- 
2.1.4


