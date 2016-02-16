X-GM-THRID: 6251802816159940608
X-Received: by 10.66.141.102 with SMTP id rn6mr20757755pab.26.1455611506522;
        Tue, 16 Feb 2016 00:31:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.200 with SMTP id j66ls3486253qgd.92.gmail; Tue, 16 Feb
 2016 00:31:45 -0800 (PST)
X-Received: by 10.129.125.215 with SMTP id y206mr19784620ywc.54.1455611505563;
        Tue, 16 Feb 2016 00:31:45 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id 12si2996639pfb.1.2016.02.16.00.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:31:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id e127so101414231pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9I4BtQwPl4srfePZYlnqLgb2kdmF1J2DWdl1FftYqGY=;
        b=bp2SWA0DbuE+JCqkoYLQnWRAKxKSbiyb94c9SJoILrNKRkwd/gTd78yhEReztT4s9o
         Y7BUFQRyRjvS0+ZgV4lpbGYHCpspbn852Z98DHSuOqu5HVtqMhDymM1xTpd7E9KHrFR1
         HH7xsIYdXdEjCGo911fBOzgnIYFW1Mp/IULYueRNnSqlgHHy8oFE+HVTp5VlUK5ZbFE3
         RNzaRjBj6Be5Fr/Cdp+l2cnzSxlC8GDv8uLtq/eOQghRrmxw0uxsLWFzOufkUcnw/pfC
         MR8nynLR+e6UAzO2Da64qtuWmTZqoqDr6T6GmHTz1vZT2jV+hqwvjR2YBRHRj8SrkB+6
         Vugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=9I4BtQwPl4srfePZYlnqLgb2kdmF1J2DWdl1FftYqGY=;
        b=H9ZKIXKYzdWdgV21gKrO46S7pKPOL5LQWgelFSiI5X1+3oKtnMs5blZ2VuVCp6N1u1
         j1/s7ayzSEjK5zLzv9g2Uc1moy8XNYTz6G1zH8UlUaV0F7U75ob4Hz051pwcNVeM/IKI
         /xdknJe5mCJy/RlfvxGJ7Zodf9o4TmiSqMjVVuc3+/FLQTrjJ4E/Wb1v7820H65g8kOG
         P4gjdbBchAY1VowIk8FsSZHSsMdvlS5gRdET8MB+oTWWm+1KwuH0cX4Ok2wumpApK68a
         nDzhDD59z661q7UTzpHt/7p/HjOyIVYYMN2/tP8dywsSwDoN86DBDxZJzinIKCtQKlSL
         FNSQ==
X-Gm-Message-State: AG10YOTwVLSEZnXCCaDqKlNnOS8UlGMEzkloZTKXUTJjL0TiF3St8CdU+L3damgexDtU0A==
X-Received: by 10.98.15.19 with SMTP id x19mr29537514pfi.60.1455611505087;
        Tue, 16 Feb 2016 00:31:45 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id 27sm43735966pfh.48.2016.02.16.00.31.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:31:44 -0800 (PST)
Date: Tue, 16 Feb 2016 00:31:42 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: wilc1000: host_interface: replace semaphores
 with mutexes
Message-ID: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
References: <cover.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455609607.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace semaphores with mutexes in the host_interface driver.

This is a safe performance improvement because the usage model
meets the principle of ownership for mutexes: the thread that
locks is the same thread that unlocks.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 114 +++++++++++++++---------------
 drivers/staging/wilc1000/host_interface.h |  10 +--
 2 files changed, 63 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 66a0ac9..45e6ed3 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -240,10 +240,12 @@ bool wilc_optaining_ip;
 static u8 P2P_LISTEN_STATE;
 static struct task_struct *hif_thread_handler;
 static struct message_queue hif_msg_q;
-static struct semaphore hif_sema_thread;
-static struct semaphore hif_sema_driver;
-static struct semaphore hif_sema_wait_response;
-static struct semaphore hif_sema_deinit;
+
+static struct mutex hif_mutex_thread;	/* protect host interface thread    */
+static struct mutex hif_mutex_driver;	/* protect deinit of driver handler */
+static struct mutex hif_mutex_deinit;	/* protect host interface deinit    */
+static struct mutex hif_mutex_wait_response;	/* protect MSGs:	    */
+						/* macaddr,power,statistics */
 static struct timer_list periodic_rssi;
 
 u8 wilc_multicast_mac_addr_list[WILC_MULTICAST_TABLE_SIZE][ETH_ALEN];
@@ -332,7 +334,7 @@ static s32 handle_set_wfi_drv_handler(struct wilc_vif *vif,
 				      hif_drv_handler->handler);
 
 	if (!hif_drv_handler->handler)
-		up(&hif_sema_driver);
+		mutex_unlock(&hif_mutex_driver);
 
 	if (result) {
 		PRINT_ER("Failed to set driver handler\n");
@@ -357,7 +359,7 @@ static s32 handle_set_operation_mode(struct wilc_vif *vif,
 				      wilc_get_vif_idx(vif));
 
 	if ((hif_op_mode->mode) == IDLE_MODE)
-		up(&hif_sema_driver);
+		mutex_unlock(&hif_mutex_driver);
 
 	if (result) {
 		PRINT_ER("Failed to set driver handler\n");
@@ -471,7 +473,7 @@ static s32 handle_get_mac_address(struct wilc_vif *vif,
 		PRINT_ER("Failed to get mac address\n");
 		result = -EFAULT;
 	}
-	up(&hif_sema_wait_response);
+	mutex_unlock(&hif_mutex_wait_response);
 
 	return result;
 }
@@ -484,7 +486,7 @@ static s32 handle_cfg_param(struct wilc_vif *vif,
 	struct host_if_drv *hif_drv = vif->hif_drv;
 	u8 wid_cnt = 0;
 
-	down(&hif_drv->sem_cfg_values);
+	mutex_lock(&hif_drv->mutex_cfg_values);
 
 	if (cfg_param_attr->cfg_attr_info.flag & BSS_TYPE) {
 		if (cfg_param_attr->cfg_attr_info.bss_type < 6) {
@@ -765,14 +767,14 @@ static s32 handle_cfg_param(struct wilc_vif *vif,
 		PRINT_ER("Error in setting CFG params\n");
 
 ERRORHANDLER:
-	up(&hif_drv->sem_cfg_values);
+	mutex_unlock(&hif_drv->mutex_cfg_values);
 	return result;
 }
 
 static void Handle_wait_msg_q_empty(void)
 {
 	wilc_initialized = 0;
-	up(&hif_sema_wait_response);
+	mutex_unlock(&hif_mutex_wait_response);
 }
 
 static s32 Handle_ScanDone(struct wilc_vif *vif,
@@ -1708,7 +1710,7 @@ static int Handle_Key(struct wilc_vif *vif,
 						      &wid, 1,
 						      wilc_get_vif_idx(vif));
 		}
-		up(&hif_drv->sem_test_key_block);
+		mutex_unlock(&hif_drv->mutex_wep_key);
 		break;
 
 	case WPA_RX_GTK:
@@ -1743,7 +1745,7 @@ static int Handle_Key(struct wilc_vif *vif,
 						      wilc_get_vif_idx(vif));
 
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			mutex_unlock(&hif_drv->mutex_wep_key);
 		} else if (pstrHostIFkeyAttr->action & ADDKEY) {
 			pu8keybuf = kzalloc(RX_MIC_KEY_MSG_LEN, GFP_KERNEL);
 			if (pu8keybuf == NULL) {
@@ -1773,7 +1775,7 @@ static int Handle_Key(struct wilc_vif *vif,
 						      wilc_get_vif_idx(vif));
 
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			mutex_unlock(&hif_drv->mutex_wep_key);
 		}
 _WPARxGtk_end_case_:
 		kfree(pstrHostIFkeyAttr->attr.wpa.key);
@@ -1812,7 +1814,7 @@ _WPARxGtk_end_case_:
 						      strWIDList, 2,
 						      wilc_get_vif_idx(vif));
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			mutex_unlock(&hif_drv->mutex_wep_key);
 		} else if (pstrHostIFkeyAttr->action & ADDKEY) {
 			pu8keybuf = kmalloc(PTK_KEY_MSG_LEN, GFP_KERNEL);
 			if (!pu8keybuf) {
@@ -1835,7 +1837,7 @@ _WPARxGtk_end_case_:
 						      &wid, 1,
 						      wilc_get_vif_idx(vif));
 			kfree(pu8keybuf);
-			up(&hif_drv->sem_test_key_block);
+			mutex_unlock(&hif_drv->mutex_wep_key);
 		}
 
 _WPAPtk_end_case_:
@@ -1957,7 +1959,7 @@ static void Handle_Disconnect(struct wilc_vif *vif)
 		}
 	}
 
-	up(&hif_drv->sem_test_disconn_block);
+	mutex_unlock(&hif_drv->mutex_disconnect);
 }
 
 void wilc_resolve_disconnect_aberration(struct wilc_vif *vif)
@@ -2007,7 +2009,7 @@ static void Handle_GetRssi(struct wilc_vif *vif)
 		result = -EFAULT;
 	}
 
-	up(&vif->hif_drv->sem_get_rssi);
+	mutex_unlock(&vif->hif_drv->mutex_get_rssi);
 }
 
 static void Handle_GetLinkspeed(struct wilc_vif *vif)
@@ -2081,7 +2083,7 @@ static s32 Handle_GetStatistics(struct wilc_vif *vif,
 		wilc_enable_tcp_ack_filter(false);
 
 	if (pstrStatistics != &vif->wilc->dummy_statistics)
-		up(&hif_sema_wait_response);
+		mutex_unlock(&hif_mutex_wait_response);
 	return 0;
 }
 
@@ -2126,7 +2128,7 @@ static s32 Handle_Get_InActiveTime(struct wilc_vif *vif,
 
 	PRINT_D(CFG80211_DBG, "Getting inactive time : %d\n", inactive_time);
 
-	up(&hif_drv->sem_inactive_time);
+	mutex_unlock(&hif_drv->mutex_inactive_time);
 
 	return result;
 }
@@ -2319,7 +2321,7 @@ static void Handle_DelAllSta(struct wilc_vif *vif,
 ERRORHANDLER:
 	kfree(wid.val);
 
-	up(&hif_sema_wait_response);
+	mutex_unlock(&hif_mutex_wait_response);
 }
 
 static void Handle_DelStation(struct wilc_vif *vif,
@@ -2627,7 +2629,7 @@ static s32 Handle_DelAllRxBASessions(struct wilc_vif *vif,
 
 	kfree(wid.val);
 
-	up(&hif_sema_wait_response);
+	mutex_unlock(&hif_mutex_wait_response);
 
 	return result;
 }
@@ -2663,7 +2665,7 @@ static void handle_get_tx_pwr(struct wilc_vif *vif, u8 *tx_pwr)
 	if (ret)
 		netdev_err(vif->ndev, "Failed to get TX PWR\n");
 
-	up(&hif_sema_wait_response);
+	mutex_unlock(&hif_mutex_wait_response);
 }
 
 static int hostIFthread(void *pvArg)
@@ -2870,7 +2872,7 @@ static int hostIFthread(void *pvArg)
 		}
 	}
 
-	up(&hif_sema_thread);
+	mutex_unlock(&hif_mutex_thread);
 	return 0;
 }
 
@@ -2933,7 +2935,7 @@ int wilc_remove_wep_key(struct wilc_vif *vif, u8 index)
 	result = wilc_mq_send(&hif_msg_q, &msg, sizeof(struct host_if_msg));
 	if (result)
 		PRINT_ER("Error in sending message queue : Request to remove WEP key\n");
-	down(&hif_drv->sem_test_key_block);
+	mutex_lock(&hif_drv->mutex_wep_key);
 
 	return result;
 }
@@ -2961,7 +2963,7 @@ int wilc_set_wep_default_keyid(struct wilc_vif *vif, u8 index)
 	result = wilc_mq_send(&hif_msg_q, &msg, sizeof(struct host_if_msg));
 	if (result)
 		PRINT_ER("Error in sending message queue : Default key index\n");
-	down(&hif_drv->sem_test_key_block);
+	mutex_lock(&hif_drv->mutex_wep_key);
 
 	return result;
 }
@@ -2994,7 +2996,7 @@ int wilc_add_wep_key_bss_sta(struct wilc_vif *vif, const u8 *key, u8 len,
 	result = wilc_mq_send(&hif_msg_q, &msg, sizeof(struct host_if_msg));
 	if (result)
 		PRINT_ER("Error in sending message queue :WEP Key\n");
-	down(&hif_drv->sem_test_key_block);
+	mutex_lock(&hif_drv->mutex_wep_key);
 
 	return result;
 }
@@ -3035,7 +3037,7 @@ int wilc_add_wep_key_bss_ap(struct wilc_vif *vif, const u8 *key, u8 len,
 
 	if (result)
 		PRINT_ER("Error in sending message queue :WEP Key\n");
-	down(&hif_drv->sem_test_key_block);
+	mutex_lock(&hif_drv->mutex_wep_key);
 
 	return result;
 }
@@ -3101,7 +3103,7 @@ int wilc_add_ptk(struct wilc_vif *vif, const u8 *ptk, u8 ptk_key_len,
 	if (result)
 		PRINT_ER("Error in sending message queue:  PTK Key\n");
 
-	down(&hif_drv->sem_test_key_block);
+	mutex_lock(&hif_drv->mutex_wep_key);
 
 	return result;
 }
@@ -3169,7 +3171,7 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 	if (result)
 		PRINT_ER("Error in sending message queue:  RX GTK\n");
 
-	down(&hif_drv->sem_test_key_block);
+	mutex_lock(&hif_drv->mutex_wep_key);
 
 	return result;
 }
@@ -3225,7 +3227,7 @@ int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
 		return -EFAULT;
 	}
 
-	down(&hif_sema_wait_response);
+	mutex_lock(&hif_mutex_wait_response);
 	return result;
 }
 
@@ -3316,7 +3318,7 @@ int wilc_disconnect(struct wilc_vif *vif, u16 reason_code)
 	if (result)
 		PRINT_ER("Failed to send message queue: disconnect\n");
 
-	down(&hif_drv->sem_test_disconn_block);
+	mutex_lock(&hif_drv->mutex_disconnect);
 
 	return result;
 }
@@ -3438,7 +3440,7 @@ s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac,
 	if (result)
 		PRINT_ER("Failed to send get host channel param's message queue ");
 
-	down(&hif_drv->sem_inactive_time);
+	mutex_lock(&hif_drv->mutex_inactive_time);
 
 	*pu32InactiveTime = inactive_time;
 
@@ -3461,7 +3463,7 @@ int wilc_get_rssi(struct wilc_vif *vif, s8 *rssi_level)
 		return -EFAULT;
 	}
 
-	down(&hif_drv->sem_get_rssi);
+	mutex_lock(&hif_drv->mutex_get_rssi);
 
 	if (!rssi_level) {
 		PRINT_ER("RSS pointer value is null");
@@ -3490,7 +3492,7 @@ int wilc_get_statistics(struct wilc_vif *vif, struct rf_info *stats)
 	}
 
 	if (stats != &vif->wilc->dummy_statistics)
-		down(&hif_sema_wait_response);
+		mutex_lock(&hif_mutex_wait_response);
 	return result;
 }
 
@@ -3600,7 +3602,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 
 	scan_while_connected = false;
 
-	sema_init(&hif_sema_wait_response, 0);
+	mutex_init(&hif_mutex_wait_response);
 
 	hif_drv  = kzalloc(sizeof(struct host_if_drv), GFP_KERNEL);
 	if (!hif_drv) {
@@ -3617,15 +3619,15 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	wilc_optaining_ip = false;
 
 	if (clients_count == 0)	{
-		sema_init(&hif_sema_thread, 0);
-		sema_init(&hif_sema_driver, 0);
-		sema_init(&hif_sema_deinit, 1);
+		mutex_init(&hif_mutex_thread);
+		mutex_init(&hif_mutex_driver);
+		mutex_init(&hif_mutex_deinit);
 	}
 
-	sema_init(&hif_drv->sem_test_key_block, 0);
-	sema_init(&hif_drv->sem_test_disconn_block, 0);
-	sema_init(&hif_drv->sem_get_rssi, 0);
-	sema_init(&hif_drv->sem_inactive_time, 0);
+	mutex_init(&hif_drv->mutex_wep_key);
+	mutex_init(&hif_drv->mutex_disconnect);
+	mutex_init(&hif_drv->mutex_get_rssi);
+	mutex_init(&hif_drv->mutex_inactive_time);
 
 	if (clients_count == 0)	{
 		result = wilc_mq_create(&hif_msg_q);
@@ -3652,8 +3654,8 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	setup_timer(&hif_drv->connect_timer, TimerCB_Connect, 0);
 	setup_timer(&hif_drv->remain_on_ch_timer, ListenTimerCB, 0);
 
-	sema_init(&hif_drv->sem_cfg_values, 1);
-	down(&hif_drv->sem_cfg_values);
+	mutex_init(&hif_drv->mutex_cfg_values);
+	mutex_lock(&hif_drv->mutex_cfg_values);
 
 	hif_drv->hif_state = HOST_IF_IDLE;
 	hif_drv->cfg_values.site_survey_enabled = SITE_SURVEY_OFF;
@@ -3664,7 +3666,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 
 	hif_drv->p2p_timeout = 0;
 
-	up(&hif_drv->sem_cfg_values);
+	mutex_unlock(&hif_drv->mutex_cfg_values);
 
 	clients_count++;
 
@@ -3687,7 +3689,7 @@ int wilc_deinit(struct wilc_vif *vif)
 		return -EFAULT;
 	}
 
-	down(&hif_sema_deinit);
+	mutex_lock(&hif_mutex_deinit);
 
 	terminated_handle = hif_drv;
 
@@ -3697,7 +3699,7 @@ int wilc_deinit(struct wilc_vif *vif)
 	del_timer_sync(&hif_drv->remain_on_ch_timer);
 
 	wilc_set_wfi_drv_handler(vif, 0, 0);
-	down(&hif_sema_driver);
+	mutex_lock(&hif_mutex_driver);
 
 	if (hif_drv->usr_scan_req.scan_result) {
 		hif_drv->usr_scan_req.scan_result(SCAN_EVENT_ABORTED, NULL,
@@ -3720,7 +3722,7 @@ int wilc_deinit(struct wilc_vif *vif)
 		if (result != 0)
 			PRINT_ER("Error in sending deinit's message queue message function: Error(%d)\n", result);
 
-		down(&hif_sema_thread);
+		mutex_lock(&hif_mutex_thread);
 
 		wilc_mq_destroy(&hif_msg_q);
 	}
@@ -3729,7 +3731,7 @@ int wilc_deinit(struct wilc_vif *vif)
 
 	clients_count--;
 	terminated_handle = NULL;
-	up(&hif_sema_deinit);
+	mutex_unlock(&hif_mutex_deinit);
 	return result;
 }
 
@@ -3776,25 +3778,25 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	struct host_if_drv *hif_drv = NULL;
 	struct wilc_vif *vif;
 
-	down(&hif_sema_deinit);
+	mutex_lock(&hif_mutex_deinit);
 
 	id = ((pu8Buffer[u32Length - 4]) | (pu8Buffer[u32Length - 3] << 8) | (pu8Buffer[u32Length - 2] << 16) | (pu8Buffer[u32Length - 1] << 24));
 	vif = wilc_get_vif_from_idx(wilc, id);
 	if (!vif) {
-		up(&hif_sema_deinit);
+		mutex_unlock(&hif_mutex_deinit);
 		return;
 	}
 
 	hif_drv = vif->hif_drv;
 
 	if (!hif_drv || hif_drv == terminated_handle) {
-		up(&hif_sema_deinit);
+		mutex_unlock(&hif_mutex_deinit);
 		return;
 	}
 
 	if (!hif_drv->usr_conn_req.conn_result) {
 		PRINT_ER("Received mac status is not needed when there is no current Connect Reques\n");
-		up(&hif_sema_deinit);
+		mutex_unlock(&hif_mutex_deinit);
 		return;
 	}
 
@@ -3811,7 +3813,7 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
 	if (result)
 		PRINT_ER("Error in sending message queue asynchronous message info: Error(%d)\n", result);
 
-	up(&hif_sema_deinit);
+	mutex_unlock(&hif_mutex_deinit);
 }
 
 void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
@@ -4115,7 +4117,7 @@ int wilc_del_allstation(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN])
 	if (result)
 		PRINT_ER("wilc_mq_send fail\n");
 
-	down(&hif_sema_wait_response);
+	mutex_lock(&hif_mutex_wait_response);
 
 	return result;
 }
@@ -4448,7 +4450,7 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 	if (ret)
 		netdev_err(vif->ndev, "Failed to get TX PWR\n");
 
-	down(&hif_sema_wait_response);
+	mutex_lock(&hif_mutex_wait_response);
 	*tx_power = msg.body.tx_power.tx_pwr;
 
 	return ret;
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 6135024..a438603 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -274,11 +274,11 @@ struct host_if_drv {
 	u8 assoc_bssid[ETH_ALEN];
 	struct cfg_param_val cfg_values;
 
-	struct semaphore sem_cfg_values;
-	struct semaphore sem_test_key_block;
-	struct semaphore sem_test_disconn_block;
-	struct semaphore sem_get_rssi;
-	struct semaphore sem_inactive_time;
+	struct mutex mutex_cfg_values;	   /* protect setting of config     */
+	struct mutex mutex_wep_key;	   /* protect WEP key actions       */
+	struct mutex mutex_disconnect;	   /* protect MSG Disconnect        */
+	struct mutex mutex_get_rssi;	   /* protect MSG Get RSSI          */
+	struct mutex mutex_inactive_time;  /* protect MSG Get Inactive Time */
 
 	struct timer_list scan_timer;
 	struct timer_list connect_timer;
-- 
2.1.4


