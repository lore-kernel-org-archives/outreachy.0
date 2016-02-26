X-GM-THRID: 6255472984804294656
X-Received: by 10.140.95.38 with SMTP id h35mr16806928qge.3.1456470078556;
        Thu, 25 Feb 2016 23:01:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.233 with SMTP id t96ls88593qgd.49.gmail; Thu, 25 Feb
 2016 23:01:17 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr45551923ywd.48.1456470077828;
        Thu, 25 Feb 2016 23:01:17 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si1780872pab.0.2016.02.25.23.01.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:01:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so4216612pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cHzBqJgUt9i3V6kGoRiGbeMKB4w9/mj9Jsq6IsG3rlY=;
        b=s+VlGXKdVinkNZUwmWKL6c4h1kK/vwjsOIMotdSKeUWg+XgmM4cGklfy796mAr2WNL
         lQ1BoXfDMffrALTRKgJsFX9dHpT0KI9ushigFnoFYhs6aUPQrZHUsoQm9F6K6Hq6Ke9D
         2S6mUtkM/q+4OvWHGQ6nznfDAWZxdDxa3rOPXb1hl41tFzb6sje53Jxrg1ICssjrYbAX
         K8T4/uQS2tp2SpeTiRM14ijZlqTTnjpu1HL7wZVZjhs4PMXds7rj3ovm/0wTq0OLhD95
         B6hiLZCcwGPKhjg/151A9xdD2aSDWRsBiyXjFlV074IyuD38XSQoVce0ODVFDCNk/R2l
         rflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=cHzBqJgUt9i3V6kGoRiGbeMKB4w9/mj9Jsq6IsG3rlY=;
        b=KJVS0sjZkYpoyQ7yaxzy9BI195d1inlcnzWI2JFXIVV6X5dwyvTrMlEPFye9WtE5CY
         p9zXL4CWX3v6DfZwWncNCCLjYR4gQSQCFL/0K/NyhexsbFwjJq7aZjT9w/7Z3dbilrkO
         59C2ZyzyMwVAZPpykEsxSrcQOTEJGL1MV52Im3RnQLFrmwkWBEJ3Zbtied3wSnCwSBkI
         EfLTJ/ltcp+HTYsCLrZS5qeii4Dg+DnTKnDNEE9NFgd7sfMclRwm0ySz9UVVYWtl1Quv
         Kexk+iCTM7Bg2EP+WHi4R4gFEglZOv/MPMAf/JLRUcIrIl7QaBb4WVv9HFIfMO4gj0BC
         NKLw==
X-Gm-Message-State: AG10YOQNczy1Q+djyfTkLr/1P8hL4OSKZvfglttSEhdFwrzqtbYGtoo/Mo70wpJVQqFDHA==
X-Received: by 10.98.86.139 with SMTP id h11mr69017849pfj.105.1456470077624;
        Thu, 25 Feb 2016 23:01:17 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id e20sm16674759pfd.4.2016.02.25.23.01.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:01:17 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/5] staging: wilc1000: remove code for HOST_IF_GET_LINKSPEED
Date: Thu, 25 Feb 2016 23:01:13 -0800
Message-Id: <1ced0548d76b00ecd66d849c8d80d9ff60f0b67d.1456469587.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456469587.git.amsfield22@gmail.com>
References: <cover.1456469587.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, the #define, and the link_speed var.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 546161f..6331453 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -32,7 +32,6 @@
 #define HOST_IF_MSG_REMAIN_ON_CHAN              20
 #define HOST_IF_MSG_REGISTER_FRAME              21
 #define HOST_IF_MSG_LISTEN_TIMER_FIRED          22
-#define HOST_IF_MSG_GET_LINKSPEED               23
 #define HOST_IF_MSG_SET_WFIDRV_HANDLER          24
 #define HOST_IF_MSG_SET_MAC_ADDRESS             25
 #define HOST_IF_MSG_GET_MAC_ADDRESS             26
@@ -247,7 +246,6 @@ static u8 rcv_assoc_resp[MAX_ASSOC_RESP_FRAME_SIZE];
 static bool scan_while_connected;
 
 static s8 rssi;
-static s8 link_speed;
 static u8 set_ip[2][4];
 static u8 get_ip[2][4];
 static u32 inactive_time;
@@ -1970,27 +1968,6 @@ static void Handle_GetRssi(struct wilc_vif *vif)
 	up(&vif->hif_drv->sem_get_rssi);
 }
 
-static void Handle_GetLinkspeed(struct wilc_vif *vif)
-{
-	s32 result = 0;
-	struct wid wid;
-
-	link_speed = 0;
-
-	wid.id = (u16)WID_LINKSPEED;
-	wid.type = WID_CHAR;
-	wid.val = &link_speed;
-	wid.size = sizeof(char);
-
-	result = wilc_send_config_pkt(vif, GET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
-	if (result) {
-		netdev_err(vif->ndev, "Failed to get LINKSPEED value\n");
-		result = -EFAULT;
-	}
-
-}
-
 static s32 Handle_GetStatistics(struct wilc_vif *vif,
 				struct rf_info *pstrStatistics)
 {
@@ -2679,10 +2656,6 @@ static int hostIFthread(void *pvArg)
 			Handle_GetRssi(msg.vif);
 			break;
 
-		case HOST_IF_MSG_GET_LINKSPEED:
-			Handle_GetLinkspeed(msg.vif);
-			break;
-
 		case HOST_IF_MSG_GET_STATISTICS:
 			Handle_GetStatistics(msg.vif,
 					     (struct rf_info *)msg.body.data);
-- 
2.1.4


