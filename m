X-GM-THRID: 6255472984804294656
X-Received: by 10.140.153.23 with SMTP id 23mr17358356qhz.18.1456466065981;
        Thu, 25 Feb 2016 21:54:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.53.162 with SMTP id c2ls434787obp.92.gmail; Thu, 25 Feb
 2016 21:54:25 -0800 (PST)
X-Received: by 10.182.250.201 with SMTP id ze9mr45735769obc.0.1456466065714;
        Thu, 25 Feb 2016 21:54:25 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si1755101pab.0.2016.02.25.21.54.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:54:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q63so813792pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=tBRwMUii69FAmJHtwTw08auVyPClAJEdxd1ZIA2bmyo=;
        b=rITnXidx7H+bMf93F6hNpUUKKk79NMULROJ1s7UAGoqQY54glbN4qcS8tnCXofqnTw
         uW1kf2zmlc3LdJ+byAsB2UPkCdUKUQk5dCGZ9WDgzHnaxO0zZdudBnXD2F3OB3Xi3qKP
         PPxR/3iFHcCu308KeJaQisupr4jcYEnJzyL3/PkrJT3GDcJAzWLceWRRl3sNDFKp+XaD
         O5mf/4GCIN0TTFH3/13/5bjxv7ruBoXsxM7hRe8bh1h2Oh0xuzQeqQkmRywxaCuT5i96
         0HmrNjlwEvGFjwlar50MbIPDJTjh7854sZQRhoSmzmonGMS8hL/1v4lgAfmte2OK7lWR
         b5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=tBRwMUii69FAmJHtwTw08auVyPClAJEdxd1ZIA2bmyo=;
        b=Z61+y6XqTqL7c7luS3cgwGwe+wdX23fy0zZKEgYuqT7arnygQ8Vn2dYf5ICy/mFVg6
         EI/0ABrLidR/Wak8Z5eios9jxlZw969Wp/3KfBb/VXQU4SaDHvr2eXgYoCIgZpn4jy5m
         uhHWn5SOG+WalELmMaqLnAtE3hQu8zdF3yFhE3whZWWRhVkucKJwOwixdHm6GyBYMNZw
         3Yesd3/NA6wlX8oBP8eZd8UPWQsFC6XyLx5jpiIW0neo4B0nJr6vwSFopg0nyiW/TSzI
         WhbF/GIbMaO9DRnmJkoICH1k5AfFUUnCS0Z35zmDZdHVgULyLd6FWQNeUA5nwMh8eHa9
         NjOA==
X-Gm-Message-State: AG10YOTydCH+HUXg1GJnRIECNh87M1GP3dqzS8Pcul/7dc8+Bno8KaK2NNxLzgTYoyr+5g==
X-Received: by 10.98.10.86 with SMTP id s83mr68833919pfi.85.1456466065547;
        Thu, 25 Feb 2016 21:54:25 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id y27sm16087758pfi.82.2016.02.25.21.54.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:54:25 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: wilc1000: remove code for HOST_IF_MSG_SET_MAC_ADDRESS
Date: Thu, 25 Feb 2016 21:54:19 -0800
Message-Id: <ca453054ce041b9f1827f7d2e210780be7fd98b1.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d004817..4099982 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -35,7 +35,6 @@
 #define HOST_IF_MSG_LISTEN_TIMER_FIRED          22
 #define HOST_IF_MSG_GET_LINKSPEED               23
 #define HOST_IF_MSG_SET_WFIDRV_HANDLER          24
-#define HOST_IF_MSG_SET_MAC_ADDRESS             25
 #define HOST_IF_MSG_GET_MAC_ADDRESS             26
 #define HOST_IF_MSG_SET_OPERATION_MODE          27
 #define HOST_IF_MSG_SET_IPADDRESS               28
@@ -423,29 +422,6 @@ static s32 handle_get_ip_address(struct wilc_vif *vif, u8 idx)
 	return result;
 }
 
-static void handle_set_mac_address(struct wilc_vif *vif,
-				   struct set_mac_addr *set_mac_addr)
-{
-	int ret = 0;
-	struct wid wid;
-
-	u8 *mac_buf = kmemdup(set_mac_addr->mac_addr, ETH_ALEN, GFP_KERNEL);
-	if (!mac_buf)
-		return;
-
-	wid.id = (u16)WID_MAC_ADDR;
-	wid.type = WID_STR;
-	wid.val = mac_buf;
-	wid.size = ETH_ALEN;
-
-	ret = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
-	if (ret)
-		netdev_err(vif->ndev, "Failed to set mac address\n");
-
-	kfree(mac_buf);
-}
-
 static s32 handle_get_mac_address(struct wilc_vif *vif,
 				  struct get_mac_addr *get_mac_addr)
 {
@@ -2773,11 +2749,6 @@ static int hostIFthread(void *pvArg)
 			handle_get_ip_address(vif, msg.body.ip_info.idx);
 			break;
 
-		case HOST_IF_MSG_SET_MAC_ADDRESS:
-			handle_set_mac_address(msg.vif,
-					       &msg.body.set_mac_info);
-			break;
-
 		case HOST_IF_MSG_GET_MAC_ADDRESS:
 			handle_get_mac_address(msg.vif,
 					       &msg.body.get_mac_info);
-- 
2.1.4


