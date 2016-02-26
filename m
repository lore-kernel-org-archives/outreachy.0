X-GM-THRID: 6255472984804294656
X-Received: by 10.31.160.209 with SMTP id j200mr44439907vke.6.1456470142763;
        Thu, 25 Feb 2016 23:02:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.226 with SMTP id z2ls443875igl.9.canary; Thu, 25 Feb
 2016 23:02:22 -0800 (PST)
X-Received: by 10.66.142.230 with SMTP id rz6mr25655745pab.31.1456470142315;
        Thu, 25 Feb 2016 23:02:22 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si1741901pfb.1.2016.02.25.23.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:02:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so2722009pax.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=x6FMnivvQ5PzIKRCNU5sV65WA+TK5sLY5zu5LGOHaHM=;
        b=cp6h/FRMMCmNvSJk8+we1awvpvlMogA0G7TOPYuVpPpdtCYpHwHq/lZl5uW43J+DDn
         L/vOAZYkOdsb4R4h3gIjlk0T6jCS1FawE3p/f2gGYymE10UHMdzZOmR5dsW7YVcnOkjf
         JoI+KmALwXTBiZKUFdQFSXrPGdPULjdbjnbhkywCvTaq1CKGt3Nsu8Z9Ic7l4gt/k9no
         yXrjMDrbAnGSm/QmfKYeTpMKNbX2wFOXYKL/69ax2GoVOdwza3Z6zALCfr0A+SXycMo8
         FnN91dZJbuB43bej/pDD01ztbh+WgKE93epH+tpUzpc4+l/8DUjciS+r9RJczEA8me4w
         TlPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=x6FMnivvQ5PzIKRCNU5sV65WA+TK5sLY5zu5LGOHaHM=;
        b=aCrS40+o3b5P5aFbX5GZyRK0y9qkbUJFN+ek7F+gYiKEtexRxRzd+vbkJmG5EC3jGZ
         dJDy6XkxDrrhrS6ty0CscVCmp8+O0PuTnJFE3Pucg3uxUkmTO+zw57amc7vczqxrByby
         BulRkBfmYCzCDays1VpYqrC8j34ql/sdbIOFFsfUGuqkjvRQXIZGx807Kx2eNMyZxIAU
         pSAufZ8EM7O8X/OP47WCp4UfBuHmOWijSUwoU8kemd5VrMX3yEBfq0TJW8k7Pr7Fc4CC
         1w5rRfOTywvOpXMlTIl87obWq32f/s2hlgUIEEF6H4EJxtxLr3fVAdPfZ20dActh6oCu
         w68w==
X-Gm-Message-State: AG10YOTj/hbpuousRFc0l06pWpNscrZ8E58YwvHeQWkAin+XlCsq8+j8lwLadsCADZk8Mw==
X-Received: by 10.66.121.97 with SMTP id lj1mr47164734pab.51.1456470142121;
        Thu, 25 Feb 2016 23:02:22 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id xm10sm16710671pab.12.2016.02.25.23.02.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:02:21 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] staging: wilc1000: remove code for HOST_IF_MSG_FLUSH_CONNECT
Date: Thu, 25 Feb 2016 23:02:17 -0800
Message-Id: <bc9abd16f2372c1cfa58ba0c856fa0b26d0f80a4.1456469587.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456469587.git.amsfield22@gmail.com>
References: <cover.1456469587.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 52 -------------------------------
 1 file changed, 52 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 6331453..6efee28 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -38,7 +38,6 @@
 #define HOST_IF_MSG_SET_OPERATION_MODE          27
 #define HOST_IF_MSG_SET_IPADDRESS               28
 #define HOST_IF_MSG_GET_IPADDRESS               29
-#define HOST_IF_MSG_FLUSH_CONNECT               30
 #define HOST_IF_MSG_GET_STATISTICS              31
 #define HOST_IF_MSG_SET_MULTICAST_FILTER        32
 #define HOST_IF_MSG_DEL_BA_SESSION              34
@@ -1187,53 +1186,6 @@ ERRORHANDLER:
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
@@ -2609,10 +2561,6 @@ static int hostIFthread(void *pvArg)
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


