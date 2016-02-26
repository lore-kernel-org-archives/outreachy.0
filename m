X-GM-THRID: 6255472984804294656
X-Received: by 10.140.228.7 with SMTP id y7mr17020906qhb.27.1456466021141;
        Thu, 25 Feb 2016 21:53:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls826840qgf.38.gmail; Thu, 25 Feb
 2016 21:53:40 -0800 (PST)
X-Received: by 10.13.242.134 with SMTP id b128mr42505032ywf.28.1456466020719;
        Thu, 25 Feb 2016 21:53:40 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id r75si191723pfr.0.2016.02.25.21.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:53:40 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so3958874pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=VxZLJ4xqPS8Hdf/WX0ccFJb9xnco2KAd6hOtGreJJOA=;
        b=OSP0U9s7FqB2K0mG18zsGbpmRkZzJMRBku3wywPrBEUK9yK43dgioQ1YZK2eHPW/Rr
         MCKR9+BgEeVDbzhuF1DK9OmSCj86lXeJOvSx8NqW+gKwzp7XqmqmoSyMJmOVfb5TwbQL
         GxW9wcuIx36YZxe2znwsPcLA4K0Ry4usi+eQh8ICaAMT6+FgLl7xQmR1+tVpJpECqe4t
         wXsj7OmQ86kPpgdRwuoZmEHG76jj/65mV6AlILwsMfNTWMV4VOdU/u+8mn34g3itOKFW
         GMQnVPZDMue8DeVGpeM8lj9uUSJlh+6oGQc6rHYDYadaDac0GWTymqzO+Jn304ENTX55
         JyUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=VxZLJ4xqPS8Hdf/WX0ccFJb9xnco2KAd6hOtGreJJOA=;
        b=lO1+wdH2Aldmk/UhxRkroq1vx54H1rvK5LkI5VB+ykYlGHejspu/9kXLXpx98PTinV
         BK91bAIqtX0SJ/iI5veQg6bSlypmygBar9RfeRIrzpl3sBTrEO0YoqIUhld4ou9GZc5+
         ablqa/ZeRb763OlDlKDKJpVw8jpwKpPPZTHY8KMD64nQiIUFtwgzpfPp6IRBWDg801zU
         h6l5n2jv25ByWksSXxQCRQyeqGyahCC0jC2dtsM1HR81+NSWretruITI2Dd4vsQVSHRf
         kgitrk48frmqgXi1oPh2f7sghujkoY0/N9vgl5GT+4X26RbqxXqCDjOzJJ69MkxQogAY
         744Q==
X-Gm-Message-State: AG10YOTs8YiSGx+TUqnYRjY+ghVdDSqX4NwBETmfX7QFmXcBdX7T/ODOY5ZaGO7VmxnPNQ==
X-Received: by 10.66.63.104 with SMTP id f8mr68842511pas.109.1456466020511;
        Thu, 25 Feb 2016 21:53:40 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id w89sm16117834pfi.13.2016.02.25.21.53.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:53:40 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: wilc1000: remove code for HOST_IF_MSG_DEL_ALL_RX_BA_SESSIONS
Date: Thu, 25 Feb 2016 21:53:34 -0800
Message-Id: <3d330e1b0c72e5533066937fe973df40f88d172b.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 36 -------------------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 0c09df4..d004817 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -46,7 +46,6 @@
 #define HOST_IF_MSG_DEL_BA_SESSION              34
 #define HOST_IF_MSG_Q_IDLE                      35
 #define HOST_IF_MSG_DEL_ALL_STA                 36
-#define HOST_IF_MSG_DEL_ALL_RX_BA_SESSIONS      37
 #define HOST_IF_MSG_SET_TX_POWER		38
 #define HOST_IF_MSG_GET_TX_POWER		39
 #define HOST_IF_MSG_EXIT                        100
@@ -2583,37 +2582,6 @@ ERRORHANDLER:
 	kfree(wid.val);
 }
 
-static s32 Handle_DelAllRxBASessions(struct wilc_vif *vif,
-				     struct ba_session_info *strHostIfBASessionInfo)
-{
-	s32 result = 0;
-	struct wid wid;
-	char *ptr = NULL;
-
-	wid.id = (u16)WID_DEL_ALL_RX_BA;
-	wid.type = WID_STR;
-	wid.val = kmalloc(BLOCK_ACK_REQ_SIZE, GFP_KERNEL);
-	wid.size = BLOCK_ACK_REQ_SIZE;
-	ptr = wid.val;
-	*ptr++ = 0x14;
-	*ptr++ = 0x3;
-	*ptr++ = 0x2;
-	memcpy(ptr, strHostIfBASessionInfo->bssid, ETH_ALEN);
-	ptr += ETH_ALEN;
-	*ptr++ = strHostIfBASessionInfo->tid;
-	*ptr++ = 0;
-	*ptr++ = 32;
-
-	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
-
-	kfree(wid.val);
-
-	up(&hif_sema_wait_response);
-
-	return result;
-}
-
 static void handle_set_tx_pwr(struct wilc_vif *vif, u8 tx_pwr)
 {
 	int ret;
@@ -2831,10 +2799,6 @@ static int hostIFthread(void *pvArg)
 			Handle_SetMulticastFilter(msg.vif, &msg.body.multicast_info);
 			break;
 
-		case HOST_IF_MSG_DEL_ALL_RX_BA_SESSIONS:
-			Handle_DelAllRxBASessions(msg.vif, &msg.body.session_info);
-			break;
-
 		case HOST_IF_MSG_DEL_ALL_STA:
 			Handle_DelAllSta(msg.vif, &msg.body.del_all_sta_info);
 			break;
-- 
2.1.4


