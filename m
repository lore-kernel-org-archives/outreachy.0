X-GM-THRID: 6255472984804294656
X-Received: by 10.13.216.150 with SMTP id a144mr43354827ywe.52.1456466149873;
        Thu, 25 Feb 2016 21:55:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.101 with SMTP id r5ls423254igh.40.gmail; Thu, 25 Feb
 2016 21:55:49 -0800 (PST)
X-Received: by 10.66.136.71 with SMTP id py7mr44662464pab.7.1456466149560;
        Thu, 25 Feb 2016 21:55:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si1856118pad.2.2016.02.25.21.55.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:55:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so3961913pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jMQAB8guyTzXmpwuyLsS7SJjZUuhSuphCPdkKRgQpgg=;
        b=spABDIxm/hwv5SPd9NC2hGgyORi/WuCmGq8tWhBpZcgIh8FQX/jFqDvAB/5V1rj0Uh
         XCVULG1ILGdejW5LXa7HsOj+7aHP5zq6BWmSajFjYtLVgVtYN9iEgkl6cKlXU/IBKtN4
         mND9yCog8AVBwAD7HIueeIWiwC4NxrgQk/AnovUYkCGK8ZIgW8Dy7O6auZIprESlxnKD
         uah/IbZ8/CkekFreN7CUzfro8DtGQGM2QCQwM5F0cRske5vw7m+bCy3J792m4A8EIR2i
         p82JbmyGVZRwh9CHTzAJpWxKmRzLKgJ/IfbKpOl/POYmCiC2GytccbDPys/5XfuedJ5q
         N+ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=jMQAB8guyTzXmpwuyLsS7SJjZUuhSuphCPdkKRgQpgg=;
        b=XyHIBFbL7g4h25eHElFFGoaNm9x1VEuMdK+vEC3f8Sgt+vn8VhUHuIT2Wq9wfmpzNb
         wAm1U8dZI3ZHXP9v9x8YM7fnE7Vk0NWKoUgmzAtydwIj5DI2Mzmp9+z0h7VcQdCXKZzG
         yp0LjAn0V0rAGNcF2F/pdBERj0DuEXJwTyxMJ7Dcmc0yQxCrgTO9MeuaGGBst36zFt8s
         jWjQGzSv8bmcZQ0oHYnUxYv791rHKxCeU/GLMAaWBLCKsOLl+qGiSWiPyXb4EoVnN7dC
         UOsXp3U1t4rhBCVjXmXsFzNlpyTuqdrXMO7itwxe+IRLyY2TVTaKsMC2uqcKpcG1IusJ
         B6ew==
X-Gm-Message-State: AG10YOR2zHHxGo2NbEsFp255qJiSGDPrFi4g2KDzwLgxg97v7jjQIpk1aWMUnxUo8e3ALg==
X-Received: by 10.66.233.131 with SMTP id tw3mr69910946pac.89.1456466149416;
        Thu, 25 Feb 2016 21:55:49 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id n13sm16140222pfi.3.2016.02.25.21.55.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:55:49 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: wilc1000: remove code for HOST_IF_GET_LINKSPEED
Date: Thu, 25 Feb 2016 21:55:44 -0800
Message-Id: <507f75237e525d52c376cc515f0a57f7d1aa1257.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, the #define, and the link_speed var.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bdb3c7e..a772fde 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -32,7 +32,6 @@
 #define HOST_IF_MSG_REMAIN_ON_CHAN              20
 #define HOST_IF_MSG_REGISTER_FRAME              21
 #define HOST_IF_MSG_LISTEN_TIMER_FIRED          22
-#define HOST_IF_MSG_GET_LINKSPEED               23
 #define HOST_IF_MSG_SET_WFIDRV_HANDLER          24
 #define HOST_IF_MSG_GET_MAC_ADDRESS             26
 #define HOST_IF_MSG_SET_OPERATION_MODE          27
@@ -250,7 +249,6 @@ static u8 rcv_assoc_resp[MAX_ASSOC_RESP_FRAME_SIZE];
 static bool scan_while_connected;
 
 static s8 rssi;
-static s8 link_speed;
 static u8 set_ip[2][4];
 static u8 get_ip[2][4];
 static u32 inactive_time;
@@ -1948,27 +1946,6 @@ static void Handle_GetRssi(struct wilc_vif *vif)
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
@@ -2657,10 +2634,6 @@ static int hostIFthread(void *pvArg)
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


