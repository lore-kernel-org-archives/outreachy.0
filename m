X-GM-THRID: 6255472984804294656
X-Received: by 10.66.191.230 with SMTP id hb6mr45048087pac.25.1456470047551;
        Thu, 25 Feb 2016 23:00:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.195 with SMTP id l3ls411574igx.6.gmail; Thu, 25 Feb 2016
 23:00:47 -0800 (PST)
X-Received: by 10.66.221.100 with SMTP id qd4mr768pac.0.1456470047077;
        Thu, 25 Feb 2016 23:00:47 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1883096pad.2.2016.02.25.23.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:00:47 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so4217848pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cmucDR5ns1qMgnoIU8R8knWZNRH6cU131D3yohxdLKQ=;
        b=yn2/oZOvUS0pb87QGRZCR6v+JdQ4D8cAVMJD2I2FzpUMC8F+CUY3FL/8yqPCk0x0kk
         ODmuAgNQe+latvtR1VUtBQzIf/QYvG9MJ8l4ylsw72OAmgrpEFhDwkHhevdV3XOeW+dZ
         ahuahVGoS8TJzbBRV45vg7ftGofY1TZSpLy+5Kz3moxE/Hxb0DSVxCRMJKDlFW7IVbN+
         vpixSt7PRXZ1WpOeyvOg3mEHZovPXJwlHgGJpQDhYxHzSaT3z8NJ7SmcNtjAK207j8xv
         5nVZvhTcoSe+CyB4zpQvcpuaF8u8ht0PtJjB0uM8bDPkXyF4Ns6jc+ffARBKfmuPxm9k
         G3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=cmucDR5ns1qMgnoIU8R8knWZNRH6cU131D3yohxdLKQ=;
        b=HshGrgyGrJl3MHHL/Hyh3rGU/Ecxa1jvUS8jzwqfBkd6wjNFw8BEKins0pkaGIMbdu
         ETJa8RUFPkAm4PrweATGnv+aXlkep8/5taITXezOkw9X20CQIJWWRW05CykBgfQQrTfk
         BhgLSlGr3Dlvc9d5vgNOSPvl4DkeNTpN8etzgz2obYdil4viPyI/bsSdb+o2j+8tRmLe
         l4NiDzWRUJ/oA4eSXK1yuOtlE61sLAvMmbOkBG3/FjDajOh/ezINh1+MvWTCQgM7yMTc
         9onelmFRwuAbWuFGzsIarqxPVJFczFFI6M5T43PXSRbfxY6Z7IYE7lzAv6s6WNlqMEx9
         3Igg==
X-Gm-Message-State: AG10YOSNWl006XT7NBMYsfyY1/DAZcruuzaFHgMslruXJfQc6EFbPUqKA1lNvEIUWDLLiQ==
X-Received: by 10.98.80.10 with SMTP id e10mr49493722pfb.141.1456470046906;
        Thu, 25 Feb 2016 23:00:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id x1sm16663045pfi.42.2016.02.25.23.00.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:00:46 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/5] staging: wilc1000: remove code for HOST_IF_MSG_GET_CHNL
Date: Thu, 25 Feb 2016 23:00:42 -0800
Message-Id: <ffbd58042b65a63cfdd143c682f9bde8ac5fe4c0.1456469587.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456469587.git.amsfield22@gmail.com>
References: <cover.1456469587.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, the #define, and the channel var.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index b2fdc93..546161f 100644
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
@@ -249,7 +248,6 @@ static bool scan_while_connected;
 
 static s8 rssi;
 static s8 link_speed;
-static u8 ch_no;
 static u8 set_ip[2][4];
 static u8 get_ip[2][4];
 static u32 inactive_time;
@@ -1952,27 +1950,6 @@ void wilc_resolve_disconnect_aberration(struct wilc_vif *vif)
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
@@ -2711,10 +2688,6 @@ static int hostIFthread(void *pvArg)
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


