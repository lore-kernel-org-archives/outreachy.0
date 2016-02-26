X-GM-THRID: 6255472984804294656
X-Received: by 10.129.41.70 with SMTP id p67mr44113297ywp.33.1456470227491;
        Thu, 25 Feb 2016 23:03:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.103.102 with SMTP id fv6ls449617igb.43.gmail; Thu, 25 Feb
 2016 23:03:47 -0800 (PST)
X-Received: by 10.107.16.87 with SMTP id y84mr5783337ioi.2.1456470227074;
        Thu, 25 Feb 2016 23:03:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id r75si217015pfr.0.2016.02.25.23.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:03:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id a7so2723645pax.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=GfknVlEvmICZEoRNHp/5CnxTwbEgFQNrebr1ExaupDI=;
        b=Z9HZNveLswQgKOkLz1GuoAPOQgbM0+6DkqhSXrvAZVq29CnA5S5i3DAcV9+/bYfZAZ
         GLvH5ibtznblv81nkC93qV8lrVh+STx8tIE3FpJsSIa4UlIHSKjMa4g3nrwidV95LpEt
         KTn7E36TeZVAxj3lp4pnRa558KOeVrPTDHHxyKZ8l3NwSHimnpIIqC+u92Cp/uD494G9
         VQs+Hf2JPclq1qBwdve8UngQuBCwtGVsxUZCeWqLDkomD6dBAbl1be7XOiwrjlBsCeaX
         j2duceb+ZZYWfjlXGqP+o5u4nUuxviOGCsGHYfSMzzE1yfzpxwsoagIXqB25oXHIWbO1
         ne5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=GfknVlEvmICZEoRNHp/5CnxTwbEgFQNrebr1ExaupDI=;
        b=VstE/PFEWF9mNFAxEvML+63crj1e37xvmGVjp6wYa7eCn3XO45uAu8gK4MDi81UqCr
         rAmnEXAs7YkEAxsG1aO2X6jDFLFejDIkM5frqI+qSYnIL3FJGeYHzxyiHHj/MrTrA44r
         yX4D6BhNB0IDMaCN7JAXKiADoEhgzAK/AwSGjaq4tTeQSmVTIhVSG19LXXMCQIu/ZZcQ
         ca9NC+zzVH+yr1a5SfNDLdCKPgnGfKGA46B7kNCBu6WvrydBCzGhV/S+SVRWM7fX1qzW
         tNwBYJ3hKYABk6ABJHhibG/ky04sSSpTqBoF/+Y6X/07jXtq38PgthgroLlt3yKFmTI1
         XzKw==
X-Gm-Message-State: AG10YORHp6wfVaxj/Cal19cYJkWCQ1FO5gF/83mRtHD1nF9GYi4+IV2hnlZOWiGoYLMbAQ==
X-Received: by 10.66.62.229 with SMTP id b5mr70267307pas.114.1456470226909;
        Thu, 25 Feb 2016 23:03:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id i13sm16661760pfi.95.2016.02.25.23.03.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:03:46 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: wilc1000: remove code for HOST_IF_MSG_SET_MAC_ADDRESS
Date: Thu, 25 Feb 2016 23:03:42 -0800
Message-Id: <59d8d6a321fe509212417627e280492f6309be61.1456469587.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456469587.git.amsfield22@gmail.com>
References: <cover.1456469587.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 30 ------------------------------
 1 file changed, 30 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 741a6c7..854b674 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -33,7 +33,6 @@
 #define HOST_IF_MSG_REGISTER_FRAME              21
 #define HOST_IF_MSG_LISTEN_TIMER_FIRED          22
 #define HOST_IF_MSG_SET_WFIDRV_HANDLER          24
-#define HOST_IF_MSG_SET_MAC_ADDRESS             25
 #define HOST_IF_MSG_GET_MAC_ADDRESS             26
 #define HOST_IF_MSG_SET_OPERATION_MODE          27
 #define HOST_IF_MSG_SET_IPADDRESS               28
@@ -413,30 +412,6 @@ static s32 handle_get_ip_address(struct wilc_vif *vif, u8 idx)
 	return result;
 }
 
-static void handle_set_mac_address(struct wilc_vif *vif,
-				   struct set_mac_addr *set_mac_addr)
-{
-	int ret = 0;
-	struct wid wid;
-	u8 *mac_buf;
-
-	mac_buf = kmemdup(set_mac_addr->mac_addr, ETH_ALEN, GFP_KERNEL);
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
@@ -2654,11 +2629,6 @@ static int hostIFthread(void *pvArg)
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


