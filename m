X-GM-THRID: 6255472984804294656
X-Received: by 10.31.154.65 with SMTP id c62mr44243354vke.8.1456466219714;
        Thu, 25 Feb 2016 21:56:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls972587qge.15.gmail; Thu, 25 Feb
 2016 21:56:59 -0800 (PST)
X-Received: by 10.129.101.66 with SMTP id z63mr43782177ywb.14.1456466219235;
        Thu, 25 Feb 2016 21:56:59 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id yd9si1697269pab.1.2016.02.25.21.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:56:59 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so3962843pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Lpg6gEiTksM+A+MY2NRltopGzZZfYehJvWptPHkRKNg=;
        b=C1vc151U5LMdfzwwUfYCzQSaOvFxTAmJS6WXxue5VecXI2Tpsh1xjPaixYKzt96mWR
         4O0I0tDsrE108VhKPKjTMvd6LPRsIgtaBTyK1lUqpb7Hl1zFCLNpl3yZ9UkBYo64cymL
         Sye7BbUL929Lh0AFgmQuMlKTQ95UwDV3xoh3o6SMNQ9PVXx+i4Vep9SPK2pbPevKWNdP
         6ZlppOOaKBw1elvgAUGyKvVFtfkqei9IFznlIfAzxvLCiidrXlL67JHhjABjxDmkn0OC
         6II9YJOMAStcZ5pz4zfQHP2HQnA2ADjBJ8d60ENnkmExDFrLMIlt+VMSkNRX4Z3og0AQ
         WXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=Lpg6gEiTksM+A+MY2NRltopGzZZfYehJvWptPHkRKNg=;
        b=GuFSdRxELam17wXGXHT67PZl1Rnq3ycxl1Z9yZ8hwNiZhoG5OvfdcfObZ7Z6uugqeE
         z9SiDtMgn49beC+OgnLkwWAJEY/+SnVvRQ9iJdyaju7RLCAsYUTZC47MDkHbQhW5El8m
         rEWWU4wy8L1tfwg2Nt0ATw0F58X8bHjtawAOSm8hjzGLgzHerk/9MJ7Vlt251BEdlWLu
         UxgTykcMSHCpy/drMG0Q5FaiUVrwtscazuI1OCTBvHpZ5hGCUNS1dmJv2SAJWjR+hRAQ
         XznOxlI8GVAP7V0YMZBLCR/GLuR2v+/JB2k9TmY9Rck5DAJKeQme0/4Rd2rSEJUAX5aQ
         20qA==
X-Gm-Message-State: AG10YOR7YECLiFXKxFZWVLhUXzfkRVIwRek3yVstxmL7nADRWXSiyB3qqn2C4OkzWuD1vw==
X-Received: by 10.66.185.227 with SMTP id ff3mr64995741pac.117.1456466219058;
        Thu, 25 Feb 2016 21:56:59 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id s23sm16148158pfi.12.2016.02.25.21.56.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:56:58 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: wilc1000: remove code for HOST_IF_MSG_FLUSH_CONNECT
Date: Thu, 25 Feb 2016 21:56:52 -0800
Message-Id: <fa22463175306ee19132ee6383b894802c68b6d5.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 52 -------------------------------
 1 file changed, 52 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index a772fde..6c0e7e1 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -37,7 +37,6 @@
 #define HOST_IF_MSG_SET_OPERATION_MODE          27
 #define HOST_IF_MSG_SET_IPADDRESS               28
 #define HOST_IF_MSG_GET_IPADDRESS               29
-#define HOST_IF_MSG_FLUSH_CONNECT               30
 #define HOST_IF_MSG_GET_STATISTICS              31
 #define HOST_IF_MSG_SET_MULTICAST_FILTER        32
 #define HOST_IF_MSG_DEL_BA_SESSION              34
@@ -1165,53 +1164,6 @@ ERRORHANDLER:
 	return result;
 }
 
-static s32 Handle_FlushConnect(struct wilc_vif *vif)
-{
-	s32 result = 0;
-	struct wid strWIDList[5];
-	u32 u32WidsCount = 0;
-	u8 *pu8CurrByte = NULL;
-
-	strWIDList[u32WidsCount].id = WID_INFO_ELEMENT_ASSOCIATE;
-	strWIDList[u32WidsCount].type = WID_BIN_DATA;
-	strWIDList[u32WidsCount].val = info_element;
-	strWIDList[u32WidsCount].size = info_element_size;
-	u32WidsCount++;
-
-	strWIDList[u32WidsCount].id = (u16)WID_11I_MODE;
-	strWIDList[u32WidsCount].type = WID_CHAR;
-	strWIDList[u32WidsCount].size = sizeof(char);
-	strWIDList[u32WidsCount].val = (s8 *)(&(mode_11i));
-	u32WidsCount++;
-
-	strWIDList[u32WidsCount].id = (u16)WID_AUTH_TYPE;
-	strWIDList[u32WidsCount].type = WID_CHAR;
-	strWIDList[u32WidsCount].size = sizeof(char);
-	strWIDList[u32WidsCount].val = (s8 *)(&auth_type);
-	u32WidsCount++;
-
-	strWIDList[u32WidsCount].id = (u16)WID_JOIN_REQ_EXTENDED;
-	strWIDList[u32WidsCount].type = WID_STR;
-	strWIDList[u32WidsCount].size = join_req_size;
-	strWIDList[u32WidsCount].val = (s8 *)join_req;
-	pu8CurrByte = strWIDList[u32WidsCount].val;
-
-	pu8CurrByte += FLUSHED_BYTE_POS;
-	*(pu8CurrByte) = FLUSHED_JOIN_REQ;
-
-	u32WidsCount++;
-
-	result = wilc_send_config_pkt(vif, SET_CFG, strWIDList,
-				      u32WidsCount,
-				      wilc_get_vif_idx(join_req_vif));
-	if (result) {
-		netdev_err(vif->ndev, "failed to send config packet\n");
-		result = -EINVAL;
-	}
-
-	return result;
-}
-
 static s32 Handle_ConnectTimeout(struct wilc_vif *vif)
 {
 	s32 result = 0;
@@ -2587,10 +2539,6 @@ static int hostIFthread(void *pvArg)
 			Handle_Connect(msg.vif, &msg.body.con_info);
 			break;
 
-		case HOST_IF_MSG_FLUSH_CONNECT:
-			Handle_FlushConnect(msg.vif);
-			break;
-
 		case HOST_IF_MSG_RCVD_NTWRK_INFO:
 			Handle_RcvdNtwrkInfo(msg.vif, &msg.body.net_info);
 			break;
-- 
2.1.4


