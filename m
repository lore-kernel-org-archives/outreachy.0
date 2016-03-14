X-GM-THRID: 6261962794533388288
X-Received: by 10.140.89.10 with SMTP id u10mr19101561qgd.24.1457976947710;
        Mon, 14 Mar 2016 10:35:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.69 with SMTP id l66ls2199064ioa.54.gmail; Mon, 14 Mar
 2016 10:35:47 -0700 (PDT)
X-Received: by 10.66.236.199 with SMTP id uw7mr19072811pac.47.1457976947232;
        Mon, 14 Mar 2016 10:35:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si2093812pfj.0.2016.03.14.10.35.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 10:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so5346587pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 10:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=hWKU01KXk79Rl4Yhr+ZmuK6IqBQkQWkq2942FeFtQus=;
        b=LSiKG1/LNGhSmglaFudpX41Qf2v6o2/zYejqYIxrmwboP3va9Tca6Z2Z2jODg1ZDI6
         w0rgdreXCdyG0ScsuXXes8g814rHSRkLX/EJOJNcNdsU+nkxL4tnTRsl9geJHY9HCdNN
         tm3H23NtZv8fBGFmclpu3ZN6rTCgIdcgTDRAFjOQYG7mEIyP3xUZH7R0ua0/BAW0e8og
         BsAdmNBfY2Y3DWeLFtMNANWsIXr9Lt9/VXuky/g623j2qeN0G8MQmknyb93VNgenGVdd
         h66ZA9ZoAwXopG60Sfta3S8IlZAZ6gtmGOMI5uJ2aXHJx5/nxTJdaYu1paE3xZnWFeJV
         x+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=hWKU01KXk79Rl4Yhr+ZmuK6IqBQkQWkq2942FeFtQus=;
        b=WHWeVyXN/ugKGufoA2fP63nqXMehhCR+7sVKjsxC+9XJGi3D3Yt34EevdHGYXz/8UL
         iLtJ8GTODvAjVs6OVOlpEGtv6ejmNSJ9fwGOwH6SKsyfWucpM75pISJd1mxv67rdvpS3
         l+/n5QEQrZaNZ10bvubX60U/ZuBk6OLjm/hqFH6HmJLpppP/YIyD0OP0TPAlgqjlnVCe
         uYAfV37iHno1izBLalxG5aSqFql540mdwoh8BNU+gzHrdIWKCnRhgTx2b7bjgDGFAlPV
         Mk9QsdOJ+xexyiX9fdgqmkdPuS0Kz90udy7jcsmodXLYvgLW5O8Ke0f4rI/S7RejsmqV
         oXjA==
X-Gm-Message-State: AD7BkJKsaCtGJcmGwiu+PdYw+aZskmU16kuruYGr4ONF3wZdmbuOSril48AGhkuwWTGpCg==
X-Received: by 10.98.34.205 with SMTP id p74mr31850436pfj.93.1457976947066;
        Mon, 14 Mar 2016 10:35:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id p79sm33602798pfi.61.2016.03.14.10.35.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 10:35:46 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] staging: wilc1000: replace sem_test_key_block with a completion
Date: Mon, 14 Mar 2016 10:35:41 -0700
Message-Id: <386bf28044e0b94ceb136f0ea33e74f4237c98dd.1457974909.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1457974909.git.amsfield22@gmail.com>
References: <cover.1457974909.git.amsfield22@gmail.com>

    Semaphore sem_test_key_block is used to signal completion of its
    host interface message. Since the thread locking this semaphore will
    have to wait, completions are the preferred mechanism and will offer
    a performance improvement.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Leo Kim <leo.kim@atmel.com>
---
 drivers/staging/wilc1000/host_interface.c | 24 ++++++++++++------------
 drivers/staging/wilc1000/host_interface.h |  2 +-
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 054f330..d0a34b5 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1611,7 +1611,7 @@ static int Handle_Key(struct wilc_vif *vif,
 						      &wid, 1,
 						      wilc_get_vif_idx(vif));
 		}
-		up(&hif_drv->sem_test_key_block);
+		complete(&hif_drv->comp_test_key_block);
 		break;
 
 	case WPA_RX_GTK:
@@ -1645,7 +1645,7 @@ static int Handle_Key(struct wilc_vif *vif,
 						      wilc_get_vif_idx(vif));
 
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			complete(&hif_drv->comp_test_key_block);
 		} else if (pstrHostIFkeyAttr->action & ADDKEY) {
 			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
@@ -1674,7 +1674,7 @@ static int Handle_Key(struct wilc_vif *vif,
 						      wilc_get_vif_idx(vif));
 
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			complete(&hif_drv->comp_test_key_block);
 		}
 _WPARxGtk_end_case_:
 		kfree(pstrHostIFkeyAttr->attr.wpa.key);
@@ -1712,7 +1712,7 @@ _WPARxGtk_end_case_:
 						      strWIDList, 2,
 						      wilc_get_vif_idx(vif));
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			complete(&hif_drv->comp_test_key_block);
 		} else if (pstrHostIFkeyAttr->action & ADDKEY) {
 			pu8keybuf = kmalloc(PTK_KEY_MSG_LEN, GFP_KERNEL);
 			if (!pu8keybuf) {
@@ -1735,7 +1735,7 @@ _WPARxGtk_end_case_:
 						      &wid, 1,
 						      wilc_get_vif_idx(vif));
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			complete(&hif_drv->comp_test_key_block);
 		}
 
 _WPAPtk_end_case_:
@@ -2731,7 +2731,7 @@ int wilc_remove_wep_key(struct wilc_vif *vif, u8 index)
 	result = wilc_mq_send(&hif_msg_q, &msg, sizeof(struct host_if_msg));
 	if (result)
 		netdev_err(vif->ndev, "Request to remove WEP key\n");
-	down(&hif_drv->sem_test_key_block);
+	wait_for_completion(&hif_drv->comp_test_key_block);
 
 	return result;
 }
@@ -2759,7 +2759,7 @@ int wilc_set_wep_default_keyid(struct wilc_vif *vif, u8 index)
 	result = wilc_mq_send(&hif_msg_q, &msg, sizeof(struct host_if_msg));
 	if (result)
 		netdev_err(vif->ndev, "Default key index\n");
-	down(&hif_drv->sem_test_key_block);
+	wait_for_completion(&hif_drv->comp_test_key_block);
 
 	return result;
 }
@@ -2792,7 +2792,7 @@ int wilc_add_wep_key_bss_sta(struct wilc_vif *vif, const u8 *key, u8 len,
 	result = wilc_mq_send(&hif_msg_q, &msg, sizeof(struct host_if_msg));
 	if (result)
 		netdev_err(vif->ndev, "STA - WEP Key\n");
-	down(&hif_drv->sem_test_key_block);
+	wait_for_completion(&hif_drv->comp_test_key_block);
 
 	return result;
 }
@@ -2828,7 +2828,7 @@ int wilc_add_wep_key_bss_ap(struct wilc_vif *vif, const u8 *key, u8 len,
 
 	if (result)
 		netdev_err(vif->ndev, "AP - WEP Key\n");
-	down(&hif_drv->sem_test_key_block);
+	wait_for_completion(&hif_drv->comp_test_key_block);
 
 	return result;
 }
@@ -2884,7 +2884,7 @@ int wilc_add_ptk(struct wilc_vif *vif, const u8 *ptk, u8 ptk_key_len,
 	if (result)
 		netdev_err(vif->ndev, "PTK Key\n");
 
-	down(&hif_drv->sem_test_key_block);
+	wait_for_completion(&hif_drv->comp_test_key_block);
 
 	return result;
 }
@@ -2952,7 +2952,7 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 	if (result)
 		netdev_err(vif->ndev, "RX GTK\n");
 
-	down(&hif_drv->sem_test_key_block);
+	wait_for_completion(&hif_drv->comp_test_key_block);
 
 	return result;
 }
@@ -3405,7 +3405,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 		sema_init(&hif_sema_deinit, 1);
 	}
 
-	sema_init(&hif_drv->sem_test_key_block, 0);
+	init_completion(&hif_drv->comp_test_key_block);
 	init_completion(&hif_drv->comp_test_disconn_block);
 	init_completion(&hif_drv->comp_get_rssi);
 	init_completion(&hif_drv->comp_inactive_time);
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 3ab94a7..8d2dd0d 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -275,7 +275,7 @@ struct host_if_drv {
 	struct cfg_param_attr cfg_values;
 
 	struct mutex cfg_values_lock;
-	struct semaphore sem_test_key_block;
+	struct completion comp_test_key_block;
 	struct completion comp_test_disconn_block;
 	struct completion comp_get_rssi;
 	struct completion comp_inactive_time;
-- 
2.1.4


