X-GM-THRID: 6341204639744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1814f20a837d25e5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.53.225 with SMTP id e1mr138873wjp.4.1425417254857;
        Tue, 03 Mar 2015 13:14:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.98 with SMTP id l2ls84041lam.28.gmail; Tue, 03 Mar 2015
 13:14:14 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr125012lbb.17.1425417254402;
        Tue, 03 Mar 2015 13:14:14 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ta1si971716wic.1.2015.03.03.13.14.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 13:14:14 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id h11so26102941wiw.3
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 13:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ek+oa3Sbhm1rUPei/nUmktWmiIUlcjDM3/C+vdS6OqY=;
        b=aW6HzeCnSu5/Qc6PVkLCJGiz8w3s3pcUWQvcDiDEqZEfIu6yYCipIYmJl/QPAm8kuv
         Id0fDsoHo227Yn8+WS9Ht5OTeVZk2iPJTJdx3D6oYynBuHLXSTMb3iJ0cylFrofJ7TXK
         QIe7HoIfkXDw7NAS4M7dJVcHgrLt+H5IECXHQj+qaHZY+1QR8xzn2/zlbELGW8m5ZCss
         lNGTbx5rciGDaDPWhoen0EucagTOm5USkv3BqyNX4VKFVdCoDxsebPU7ajuNXZS6LyEM
         TGxu3auUn0uBfbaCVHnMbihXQ4D+94UGWt29gWEXzbXUMwBpR2Qyn7U3unISDYRAN85g
         YZzw==
X-Received: by 10.194.110.38 with SMTP id hx6mr1513121wjb.128.1425417253895;
        Tue, 03 Mar 2015 13:14:13 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id bx3sm2980219wjc.21.2015.03.03.13.14.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 03 Mar 2015 13:14:13 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fix space required after that ','
Date: Tue,  3 Mar 2015 23:14:07 +0200
Message-Id: <1425417247-8510-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl error:
Space required after that ','

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_firmware.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index b1f11bd..d3486ae 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -67,7 +67,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 		skb  = dev_alloc_skb(USB_HWDESC_HEADER_LEN + frag_length + 4);
 		if (!skb)
 			return false;
-		memcpy((unsigned char *)(skb->cb),&dev,sizeof(dev));
+		memcpy((unsigned char *)(skb->cb), &dev, sizeof(dev));
 		tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 		tcb_desc->queue_index = TXCMD_QUEUE;
 		tcb_desc->bCmdOrInit = DESC_PACKET_TYPE_INIT;
@@ -92,7 +92,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
 		if (!priv->ieee80211->check_nic_enough_desc(dev, index) ||
 		       (!skb_queue_empty(&priv->ieee80211->skb_waitQ[index])) ||
 		       (priv->ieee80211->queue_stop)) {
-			RT_TRACE(COMP_FIRMWARE,"=====================================================> tx full!\n");
+			RT_TRACE(COMP_FIRMWARE, "=====================================================> tx full!\n");
 			skb_queue_tail(&priv->ieee80211->skb_waitQ[tcb_desc->queue_index], skb);
 		} else {
 			priv->ieee80211->softmac_hard_start_xmit(skb, dev);
@@ -242,7 +242,7 @@ bool init_firmware(struct net_device *dev)
 		 * or read image file from array. Default load from IMG file
 		 */
 		if (rst_opt == OPT_SYSTEM_RESET) {
-			rc = request_firmware(&fw_entry, fw_name[init_step],&priv->udev->dev);
+			rc = request_firmware(&fw_entry, fw_name[init_step], &priv->udev->dev);
 			if (rc < 0) {
 				RT_TRACE(COMP_ERR, "request firmware fail!\n");
 				goto download_firmware_fail;
@@ -254,12 +254,12 @@ bool init_firmware(struct net_device *dev)
 			}
 
 			if (init_step != FW_INIT_STEP1_MAIN) {
-				memcpy(pfirmware->firmware_buf,fw_entry->data,fw_entry->size);
+				memcpy(pfirmware->firmware_buf, fw_entry->data, fw_entry->size);
 				mapped_file = pfirmware->firmware_buf;
 				file_length = fw_entry->size;
 			} else {
 				memset(pfirmware->firmware_buf, 0, 128);
-				memcpy(&pfirmware->firmware_buf[128],fw_entry->data,fw_entry->size);
+				memcpy(&pfirmware->firmware_buf[128], fw_entry->data, fw_entry->size);
 				mapped_file = pfirmware->firmware_buf;
 				file_length = fw_entry->size + 128;
 			}
@@ -319,7 +319,7 @@ bool init_firmware(struct net_device *dev)
 
 			rt_status = CPUcheck_firmware_ready(dev);
 			if (rt_status != TRUE) {
-				RT_TRACE(COMP_ERR, "CPUcheck_firmware_ready fail(%d)!\n",rt_status);
+				RT_TRACE(COMP_ERR, "CPUcheck_firmware_ready fail(%d)!\n", rt_status);
 				goto download_firmware_fail;
 			}
 
-- 
1.9.1


