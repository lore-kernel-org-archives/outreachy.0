X-GM-THRID: 6255472984804294656
X-Received: by 10.66.122.101 with SMTP id lr5mr22111125pab.3.1456466111660;
        Thu, 25 Feb 2016 21:55:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.73 with SMTP id o9ls399264igy.5.gmail; Thu, 25 Feb 2016
 21:55:11 -0800 (PST)
X-Received: by 10.107.8.216 with SMTP id h85mr5730901ioi.0.1456466111283;
        Thu, 25 Feb 2016 21:55:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r75si192265pfr.0.2016.02.25.21.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:55:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so4131747pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7sCtHGU7+QbPvNxwRQV24JYT7iGmzkgNEXMQremHAqU=;
        b=W0SQ/tMy/Ys2emhAPGgFUY88LceXv9e4eQbRX3vD5zTrmsLGMiA2rgMvGt/93Jok1U
         js4FE3vSuCtjzEzGQaUSDJRaxBGD0vJwJbUdDEzx+IQqgdwaFZwUkLtKrzDb6ROAetM2
         d2UZEIJ6dswGr0hlBLilzG115ncoEDLich9NhWjhSZ9/RCjgJOxLScndW9yQrV5w1OOv
         8GklKMsS4jjZiM9KHywAO3nw6IcC1XHtOD+jIYMi7lvPrc02M8y2XOiqm0qyZXs85dPf
         2+5x9stEDmCPxg59mi4d3jRGZAZ8Tmw6EkQerJ4NU6mdkV8ut2gSuz+s25lzFfMqt41m
         pmvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=7sCtHGU7+QbPvNxwRQV24JYT7iGmzkgNEXMQremHAqU=;
        b=AMMXiKn8mT58NXRyFLHSqkChpPVOF1EPIxaxCs76d31g8DWiS0jqZsduXKKSIk5esw
         3kXLMu3+vxBLvt/U9Orf951wa3lH1epHIvdLXO+7UZ8s6X17YWa2s3Ul6WNrIvxRjo2+
         pEtIv+pQ4aVftKangQI9sYXWMUMa9hI5VPsnUbEQxXiaVKqYTjaXTpyRjTWzhDwWK0G1
         AyPOkbbwCy7OU3geqgXuP6rl+6a2/Ydm6kAQXLMTX7p63n1kajgTLTyeLypvtQeoMF5F
         EPd9YJA+8TjVtAC3BGxmyZsnD1FW/KwqLYG7zoPtbi/WpNJNATg7SOXO0P3QB/A3+hKu
         cuEw==
X-Gm-Message-State: AG10YOTPjKaueZQ7RJ//5R5Lp2rSi/S90Db28WEcSN2XK5hZt7r7Zr589MHk7X1SdAnQyw==
X-Received: by 10.98.9.27 with SMTP id e27mr69019618pfd.59.1456466111125;
        Thu, 25 Feb 2016 21:55:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id l24sm16092161pfb.73.2016.02.25.21.55.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:55:10 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: wilc1000: remove code for HOST_IF_MSG_GET_CHNL
Date: Thu, 25 Feb 2016 21:55:06 -0800
Message-Id: <d70cbcbcd72862c1c62101649b9456e6ec050a9e.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, the #define, and the channel var.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4099982..bdb3c7e 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -20,7 +20,6 @@
 #define HOST_IF_MSG_SET_CHANNEL                 7
 #define HOST_IF_MSG_DISCONNECT                  8
 #define HOST_IF_MSG_GET_RSSI                    9
-#define HOST_IF_MSG_GET_CHNL                    10
 #define HOST_IF_MSG_ADD_BEACON                  11
 #define HOST_IF_MSG_DEL_BEACON                  12
 #define HOST_IF_MSG_ADD_STATION                 13
@@ -252,7 +251,6 @@ static bool scan_while_connected;
 
 static s8 rssi;
 static s8 link_speed;
-static u8 ch_no;
 static u8 set_ip[2][4];
 static u8 get_ip[2][4];
 static u32 inactive_time;
@@ -1930,27 +1928,6 @@ void wilc_resolve_disconnect_aberration(struct wilc_vif *vif)
 		wilc_disconnect(vif, 1);
 }
 
-static s32 Handle_GetChnl(struct wilc_vif *vif)
-{
-	s32 result = 0;
-	struct wid wid;
-
-	wid.id = (u16)WID_CURRENT_CHANNEL;
-	wid.type = WID_CHAR;
-	wid.val = (s8 *)&ch_no;
-	wid.size = sizeof(char);
-
-	result = wilc_send_config_pkt(vif, GET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
-
-	if (result) {
-		netdev_err(vif->ndev, "Failed to get channel number\n");
-		result = -EFAULT;
-	}
-
-	return result;
-}
-
 static void Handle_GetRssi(struct wilc_vif *vif)
 {
 	s32 result = 0;
@@ -2689,10 +2666,6 @@ static int hostIFthread(void *pvArg)
 					     (struct rf_info *)msg.body.data);
 			break;
 
-		case HOST_IF_MSG_GET_CHNL:
-			Handle_GetChnl(msg.vif);
-			break;
-
 		case HOST_IF_MSG_ADD_BEACON:
 			Handle_AddBeacon(msg.vif, &msg.body.beacon_info);
 			break;
-- 
2.1.4


