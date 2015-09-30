X-GM-THRID: 6200095553040154624
X-Received: by 10.112.138.170 with SMTP id qr10mr93297lbb.4.1443572238424;
        Tue, 29 Sep 2015 17:17:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.229 with SMTP id q5ls8715lae.17.gmail; Tue, 29 Sep 2015
 17:17:15 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr89338lbc.14.1443572235011;
        Tue, 29 Sep 2015 17:17:15 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id bn1si804619wib.0.2015.09.29.17.17.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 17:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id fx3so173328835wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 17:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=wP2NSH4wLmy6t9YGX6yz1k4H/hQsAxBOj22LYFXVmMM=;
        b=Ve9O+qMZTwOBEGAkgO6k79HocAvjRuV52899SfPKCicwfm+PYfD5KSPrMciK9HxmAL
         gPlXpbKK6Vm0Z7+Pe4VgespnrpmPJOFX4cfVE91k4OI09pg695QAFNnvhPADcFaSm+Rj
         Zm+Uhqr4oeeRjOhUh8O2GWC0DY2hi2UKthgUGa5JxscvlgrMwNd1ly68vJnYnbDkXlIO
         eBLwwncqjaL1ZnTDzgJhKKxNkE1NeOVR+PFLQCFeS+SBonn8LGXVERgTPEZCSIGdUwo1
         LAhjJuV1sRMoEkzOM22vhiHVtrf1A3dZrcT+0VXNzHdNnEjPSsUXaMyQnf/3Yg+LXgIt
         359A==
X-Received: by 10.194.249.100 with SMTP id yt4mr936701wjc.74.1443572234851;
        Tue, 29 Sep 2015 17:17:14 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jq10sm26415074wjc.40.2015.09.29.17.17.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 17:17:14 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: wil1000: fix misspelled words
Date: Wed, 30 Sep 2015 03:17:06 +0300
Message-Id: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Fix misspelled words throughout the entire subsystem

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c       |  2 +-
 drivers/staging/wilc1000/host_interface.c         | 26 +++++++++++------------
 drivers/staging/wilc1000/host_interface.h         |  8 +++----
 drivers/staging/wilc1000/linux_mon.c              |  2 +-
 drivers/staging/wilc1000/linux_wlan.c             | 18 ++++++++--------
 drivers/staging/wilc1000/wilc_msgqueue.c          |  2 +-
 drivers/staging/wilc1000/wilc_msgqueue.h          |  8 +++----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 22 +++++++++----------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  4 ++--
 drivers/staging/wilc1000/wilc_wlan.c              |  4 ++--
 10 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 14e8efc..2123426 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -303,7 +303,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
 	return cap_info;
 }
 
-/* This funcion extracts the association status code from the incoming       */
+/* This function extracts the association status code from the incoming       */
 /* association response frame and returns association status code            */
 static inline u16 get_asoc_status(u8 *data)
 {
diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 62f4a8a..e7052869 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1005,7 +1005,7 @@ static s32 Handle_CfgParam(tstrWILC_WFIDrv *drvHandler,
 			strWIDList[u8WidCnt].s32ValueSize = sizeof(char);
 			pstrWFIDrv->strCfgValues.power_mgmt_mode = (u8)strHostIFCfgParamAttr->pstrCfgParamVal.power_mgmt_mode;
 		} else {
-			PRINT_ER("Invalide power mode\n");
+			PRINT_ER("Invalid power mode\n");
 			s32Error = -EINVAL;
 			goto ERRORHANDLER;
 		}
@@ -1107,7 +1107,7 @@ static s32 Handle_CfgParam(tstrWILC_WFIDrv *drvHandler,
 	}
 	if (strHostIFCfgParamAttr->pstrCfgParamVal.u32SetCfgFlag & TXOP_PROT_DISABLE) {
 		/*Description:	used to Disable RTS-CTS protection for TXOP burst*/
-		/*transmission when the acknowledgement policy is No-Ack or Block-Ack	*/
+		/*transmission when the acknowledgment policy is No-Ack or Block-Ack	*/
 		/* this information is useful for external supplicant                                   */
 		/*Input Values: 1 for enable and 0 for disable.							*/
 		if (strHostIFCfgParamAttr->pstrCfgParamVal.txop_prot_disabled < 2) {
@@ -1402,7 +1402,7 @@ static s32 Handle_Scan(tstrWILC_WFIDrv *drvHandler,
 				 get_id_from_handler(pstrWFIDrv));
 
 	if (s32Error)
-		PRINT_ER("Failed to send scan paramters config packet\n");
+		PRINT_ER("Failed to send scan parameters config packet\n");
 	else
 		PRINT_D(HOSTINF_DBG, "Successfully sent SCAN params config packet\n");
 
@@ -2422,13 +2422,13 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
 		u8MacStatus  = pstrRcvdGnrlAsyncInfo->pu8Buffer[7];
 		u8MacStatusReasonCode = pstrRcvdGnrlAsyncInfo->pu8Buffer[8];
 		u8MacStatusAdditionalInfo = pstrRcvdGnrlAsyncInfo->pu8Buffer[9];
-		PRINT_INFO(HOSTINF_DBG, "Recieved MAC status = %d with Reason = %d , Info = %d\n", u8MacStatus, u8MacStatusReasonCode, u8MacStatusAdditionalInfo);
+		PRINT_INFO(HOSTINF_DBG, "Received MAC status = %d with Reason = %d , Info = %d\n", u8MacStatus, u8MacStatusReasonCode, u8MacStatusAdditionalInfo);
 		if (pstrWFIDrv->enuHostIFstate == HOST_IF_WAITING_CONN_RESP) {
 			/* our station had sent Association Request frame, so here it will get the Association Response frame then parse it */
 			u32 u32RcvdAssocRespInfoLen;
 			tstrConnectRespInfo *pstrConnectRespInfo = NULL;
 
-			PRINT_D(HOSTINF_DBG, "Recieved MAC status = %d with Reason = %d , Code = %d\n", u8MacStatus, u8MacStatusReasonCode, u8MacStatusAdditionalInfo);
+			PRINT_D(HOSTINF_DBG, "Received MAC status = %d with Reason = %d , Code = %d\n", u8MacStatus, u8MacStatusReasonCode, u8MacStatusAdditionalInfo);
 
 			memset(&strConnectInfo, 0, sizeof(tstrConnectInfo));
 
@@ -3347,7 +3347,7 @@ s32 Handle_GetStatistics(tstrWILC_WFIDrv *drvHandler, tstrStatistics *pstrStatis
 				 get_id_from_handler(drvHandler));
 
 	if (s32Error)
-		PRINT_ER("Failed to send scan paramters config packet\n");
+		PRINT_ER("Failed to send scan parameters config packet\n");
 
 	up(&hWaitResponse);
 	return 0;
@@ -4546,7 +4546,7 @@ static void TimerCB_Connect(unsigned long arg)
  *  @details    only in BSS STA mode if External Supplicant support is enabled.
  *                              removes all WPA/WPA2 station key entries from MAC hardware.
  *  @param[in,out] handle to the wifi driver
- *  @param[in]  6 bytes of Station Adress in the station entry table
+ *  @param[in]  6 bytes of Station Address in the station entry table
  *  @return             Error code indicating success/failure
  *  @note
  *  @author		zsalah
@@ -4576,7 +4576,7 @@ s32 host_int_remove_key(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8StaAddress)
  *                              The BSS Station automatically finds the index of the entry using its
  *                              BSS ID and removes that entry from the MAC hardware.
  *  @param[in,out] handle to the wifi driver
- *  @param[in]  6 bytes of Station Adress in the station entry table
+ *  @param[in]  6 bytes of Station Address in the station entry table
  *  @return             Error code indicating success/failure
  *  @note               NO need for the STA add since it is not used for processing
  *  @author		zsalah
@@ -5713,7 +5713,7 @@ s32 host_int_wait_msg_queue_idle(void)
 		s32Error = -EINVAL;
 	}
 
-	/* wait untill MSG Q is empty */
+	/* wait until MSG Q is empty */
 	down(&hWaitResponse);
 
 	return s32Error;
@@ -6282,7 +6282,7 @@ s32 hif_get_cfg(tstrWILC_WFIDrv *hWFIDrv, u16 u16WID, u16 *pu16WID_Value)
  *  @details    This function prepares an Information frame having the
  *                              information about a joining/leaving station.
  *  @param[in,out] handle to the wifi driver,
- *  @param[in]	6 byte Sta Adress
+ *  @param[in]	6 byte Sta Address
  *                              Join or leave flag:
  *                              Join = 1,
  *                              Leave =0
@@ -6445,7 +6445,7 @@ s32 host_int_init(tstrWILC_WFIDrv **phWFIDrv)
 	pstrWFIDrv->enuHostIFstate = HOST_IF_IDLE;
 	/* gWFiDrvHandle->bPendingConnRequest = false; */
 
-	/*Initialize CFG WIDS Defualt Values*/
+	/*Initialize CFG WIDS Default Values*/
 
 	pstrWFIDrv->strCfgValues.site_survey_enabled = SITE_SURVEY_OFF;
 	pstrWFIDrv->strCfgValues.scan_source = DEFAULT_SCAN;
@@ -6465,7 +6465,7 @@ s32 host_int_init(tstrWILC_WFIDrv **phWFIDrv)
 	up(&(pstrWFIDrv->gtOsCfgValuesSem));
 
 	/*TODO Code to setup simulation to be removed later*/
-	/*Intialize configurator module*/
+	/*Initialize configurator module*/
 	s32Error = CoreConfiguratorInit();
 	if (s32Error < 0) {
 		PRINT_ER("Failed to initialize core configurator\n");
@@ -6523,7 +6523,7 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
 	PRINT_D(HOSTINF_DBG, "De-initializing host interface for client %d\n", clients_count);
 
 	/*Destroy all timers before acquiring hSemDeinitDrvHandle*/
-	/*to guarantee handling all messages befor proceeding*/
+	/*to guarantee handling all messages before proceeding*/
 	if (del_timer_sync(&pstrWFIDrv->hScanTimer)) {
 		PRINT_D(HOSTINF_DBG, ">> Scan timer is active\n");
 		/* msleep(HOST_IF_SCAN_TIMEOUT+1000); */
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index c96fff9..9431fe9 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -393,7 +393,7 @@ struct add_sta_param {
  *  @details    only in BSS STA mode if External Supplicant support is enabled.
  *                              removes all WPA/WPA2 station key entries from MAC hardware.
  *  @param[in,out] handle to the wifi driver
- *  @param[in]  6 bytes of Station Adress in the station entry table
+ *  @param[in]  6 bytes of Station Address in the station entry table
  *  @return             Error code indicating success/failure
  *  @note
  *  @author		zsalah
@@ -408,7 +408,7 @@ s32 host_int_remove_key(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8StaAddress);
  *                              The BSS Station automatically finds the index of the entry using its
  *                              BSS ID and removes that entry from the MAC hardware.
  *  @param[in,out] handle to the wifi driver
- *  @param[in]  6 bytes of Station Adress in the station entry table
+ *  @param[in]  6 bytes of Station Address in the station entry table
  *  @return             Error code indicating success/failure
  *  @note               NO need for the STA add since it is not used for processing
  *  @author		zsalah
@@ -472,7 +472,7 @@ s32 host_int_add_wep_key_bss_ap(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8WepKey, u
  *  @param[in,out] handle to the wifi driver
  *  @param[in]  message containing PTK Key in the following format
  *|-------------------------------------------------------------------------|
- *|Sta Adress | Key Length |	Temporal Key | Rx Michael Key |Tx Michael Key |
+ *|Sta Address | Key Length |	Temporal Key | Rx Michael Key |Tx Michael Key |
  *|-----------|------------|---------------|----------------|---------------|
  |	6 bytes |	1byte	 |   16 bytes	 |	  8 bytes	  |	   8 bytes	  |
  ||-------------------------------------------------------------------------|
@@ -951,7 +951,7 @@ s32 hif_get_cfg(tstrWILC_WFIDrv *hWFIDrv, u16 u16WID, u16 *pu16WID_Value);
  *  @details    This function prepares an Information frame having the
  *                              information about a joining/leaving station.
  *  @param[in,out] handle to the wifi driver,
- *  @param[in]	6 byte Sta Adress
+ *  @param[in]	6 byte Sta Address
  *                              Join or leave flag:
  *                              Join = 1,
  *                              Leave =0
diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index b1af421..7f4529a 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -71,7 +71,7 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
 
-	/* The packet offset field conain info about what type of managment frame */
+	/* The packet offset field conain info about what type of management frame */
 	/* we are dealing with and ack status */
 	pkt_offset = GET_PKT_OFFSET(header);
 
diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 7857ad2..00dbef6 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -220,7 +220,7 @@ static int dev_state_ev_handler(struct notifier_block *this, unsigned long event
 
 	dev  = (struct net_device *)dev_iface->ifa_dev->dev;
 	if (dev->ieee80211_ptr == NULL || dev->ieee80211_ptr->wiphy == NULL) {
-		PRINT_D(GENERIC_DBG, "No Wireless registerd\n");
+		PRINT_D(GENERIC_DBG, "No Wireless registered\n");
 		return NOTIFY_DONE;
 	}
 	priv = wiphy_priv(dev->ieee80211_ptr->wiphy);
@@ -344,7 +344,7 @@ static int init_irq(linux_wlan_t *p_nic)
 	    (gpio_direction_input(GPIO_NUM) == 0)) {
 #if defined(CUSTOMER_PLATFORM)
 /*
- TODO : save the registerd irq number to the private wilc context in kernel.
+ TODO : save the registered irq number to the private wilc context in kernel.
  *
  * ex) nic->dev_irq_num = gpio_to_irq(GPIO_NUM);
  */
@@ -406,7 +406,7 @@ static int linux_wlan_lock_timeout(void *vp, u32 timeout)
 
 static void linux_wlan_mac_indicate(int flag)
 {
-	/*I have to do it that way becuase there is no mean to encapsulate device pointer
+	/*I have to do it that way because there is no mean to encapsulate device pointer
 	 * as a parameter
 	 */
 	linux_wlan_t *pd = g_linux_wlan;
@@ -445,7 +445,7 @@ struct net_device *GetIfHandler(u8 *pMacHeader)
 			return g_linux_wlan->strInterfaceInfo[i].wilc_netdev;
 		}
 	}
-	PRINT_INFO(INIT_DBG, "Invalide handle\n");
+	PRINT_INFO(INIT_DBG, "Invalid handle\n");
 	for (i = 0; i < 25; i++)
 		PRINT_D(INIT_DBG, "%02x ", pMacHeader[i]);
 	Bssid  = pMacHeader + 18;
@@ -778,7 +778,7 @@ static int linux_wlan_init_test_config(struct net_device *dev, linux_wlan_t *p_n
 	/*  Configuration :   String with length less than 32 bytes              */
 	/*  Values to set :   Any string with length less than 32 bytes          */
 	/*                    ( In BSS Station Set SSID to "" (null string)      */
-	/*                      to enable Broadcast SSID suppport )              */
+	/*                      to enable Broadcast SSID support )              */
 	/*  --------------------------------------------------------------       */
 	c_val[0] = 0;
 	if (!g_linux_wlan->oup.wlan_cfg_set(0, WID_BCAST_SSID, c_val, 1, 0, 0))
@@ -1501,17 +1501,17 @@ static void wilc_set_multicast_list(struct net_device *dev)
 	PRINT_D(INIT_DBG, "Setting Multicast List with count = %d.\n", dev->mc.count);
 
 	if (dev->flags & IFF_PROMISC) {
-		/* Normally, we should configure the chip to retrive all packets
+		/* Normally, we should configure the chip to retrieve all packets
 		 * but we don't wanna support this right now */
 		/* TODO: add promiscuous mode support */
-		PRINT_D(INIT_DBG, "Set promiscuous mode ON, retrive all packets\n");
+		PRINT_D(INIT_DBG, "Set promiscuous mode ON, retrieve all packets\n");
 		return;
 	}
 
 	/* If there's more addresses than we handle, get all multicast
 	 * packets and sort them out in software. */
 	if ((dev->flags & IFF_ALLMULTI) || (dev->mc.count) > WILC_MULTICAST_TABLE_SIZE) {
-		PRINT_D(INIT_DBG, "Disable multicast filter, retrive all multicast packets\n");
+		PRINT_D(INIT_DBG, "Disable multicast filter, retrieve all multicast packets\n");
 		/* get all multicast packets */
 		host_int_setup_multicast_filter(pstrWFIDrv, false, 0);
 		return;
@@ -1519,7 +1519,7 @@ static void wilc_set_multicast_list(struct net_device *dev)
 
 	/* No multicast?  Just get our own stuff */
 	if ((dev->mc.count) == 0) {
-		PRINT_D(INIT_DBG, "Enable multicast filter, retrive directed packets only.\n");
+		PRINT_D(INIT_DBG, "Enable multicast filter, retrieve directed packets only.\n");
 		host_int_setup_multicast_filter(pstrWFIDrv, true, 0);
 		return;
 	}
diff --git a/drivers/staging/wilc1000/wilc_msgqueue.c b/drivers/staging/wilc1000/wilc_msgqueue.c
index 869736a..52d52e3 100644
--- a/drivers/staging/wilc1000/wilc_msgqueue.c
+++ b/drivers/staging/wilc1000/wilc_msgqueue.c
@@ -103,7 +103,7 @@ int wilc_mq_send(WILC_MsgQueueHandle *pHandle,
 	up(&pHandle->hSem);
 
 ERRORHANDLER:
-	/* error occured, free any allocations */
+	/* error occurred, free any allocations */
 	if (pstrMessage) {
 		kfree(pstrMessage->pvBuffer);
 		kfree(pstrMessage);
diff --git a/drivers/staging/wilc1000/wilc_msgqueue.h b/drivers/staging/wilc1000/wilc_msgqueue.h
index a3c0bba..99d11e3 100644
--- a/drivers/staging/wilc1000/wilc_msgqueue.h
+++ b/drivers/staging/wilc1000/wilc_msgqueue.h
@@ -20,7 +20,7 @@
  *                              any other message queue having the same name in the system
  *  @param[in,out]	pHandle handle to the message queue object
  *  @param[in]	pstrAttrs Optional attributes, NULL for default
- *  @return		Error code indicating sucess/failure
+ *  @return		Error code indicating success/failure
  *  @author		syounan
  *  @date		30 Aug 2010
  *  @version		1.0
@@ -37,7 +37,7 @@ int wilc_mq_create(WILC_MsgQueueHandle *pHandle);
  *  @param[in]	pvSendBuffer pointer to the data to send
  *  @param[in]	u32SendBufferSize the size of the data to send
  *  @param[in]	pstrAttrs Optional attributes, NULL for default
- *  @return		Error code indicating sucess/failure
+ *  @return		Error code indicating success/failure
  *  @author		syounan
  *  @date		30 Aug 2010
  *  @version		1.0
@@ -56,7 +56,7 @@ int wilc_mq_send(WILC_MsgQueueHandle *pHandle,
  *  @param[in]	u32RecvBufferSize the size of the receive buffer
  *  @param[out]	pu32ReceivedLength the length of received data
  *  @param[in]	pstrAttrs Optional attributes, NULL for default
- *  @return		Error code indicating sucess/failure
+ *  @return		Error code indicating success/failure
  *  @author		syounan
  *  @date		30 Aug 2010
  *  @version		1.0
@@ -69,7 +69,7 @@ int wilc_mq_recv(WILC_MsgQueueHandle *pHandle,
  *  @brief		Destroys an existing  Message queue
  *  @param[in]	pHandle handle to the message queue object
  *  @param[in]	pstrAttrs Optional attributes, NULL for default
- *  @return		Error code indicating sucess/failure
+ *  @return		Error code indicating success/failure
  *  @author		syounan
  *  @date		30 Aug 2010
  *  @version		1.0
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index de8c83d..b524fd7 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1444,7 +1444,7 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 			g_key_gtk_params.seq = NULL;
 		}
 
-		/*Reset WILC_CHANGING_VIR_IF register to allow adding futrue keys to CE H/W*/
+		/*Reset WILC_CHANGING_VIR_IF register to allow adding future keys to CE H/W*/
 		Set_machw_change_vir_if(false);
 	}
 
@@ -1902,7 +1902,7 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
 				 ETH_ALEN)) {
 			/*If bssid is found, reset the values*/
-			PRINT_D(CFG80211_DBG, "Reseting PMKID values\n");
+			PRINT_D(CFG80211_DBG, "Resetting PMKID values\n");
 			memset(&priv->pmkid_list.pmkidlist[i], 0, sizeof(tstrHostIFpmkid));
 			flag = PMKID_FOUND;
 			break;
@@ -2085,7 +2085,7 @@ void WILC_WFI_p2p_rx (struct net_device *dev, u8 *buff, u32 size)
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
 
-	/* The packet offset field conain info about what type of managment frame */
+	/* The packet offset field conain info about what type of management frame */
 	/* we are dealing with and ack status */
 	pkt_offset = GET_PKT_OFFSET(header);
 
@@ -2123,11 +2123,11 @@ void WILC_WFI_p2p_rx (struct net_device *dev, u8 *buff, u32 size)
 			if (buff[ACTION_CAT_ID] == PUB_ACTION_ATTR_ID) {
 
 				switch (buff[ACTION_SUBTYPE_ID]) {
-				case GAS_INTIAL_REQ:
+				case GAS_INITIAL_REQ:
 					PRINT_D(GENERIC_DBG, "GAS INITIAL REQ %x\n", buff[ACTION_SUBTYPE_ID]);
 					break;
 
-				case GAS_INTIAL_RSP:
+				case GAS_INITIAL_RSP:
 					PRINT_D(GENERIC_DBG, "GAS INITIAL RSP %x\n", buff[ACTION_SUBTYPE_ID]);
 					break;
 
@@ -2430,13 +2430,13 @@ int mgmt_tx(struct wiphy *wiphy,
 					u8CurrChannel = chan->hw_value;
 				}
 				switch (buf[ACTION_SUBTYPE_ID])	{
-				case GAS_INTIAL_REQ:
+				case GAS_INITIAL_REQ:
 				{
 					PRINT_D(GENERIC_DBG, "GAS INITIAL REQ %x\n", buf[ACTION_SUBTYPE_ID]);
 					break;
 				}
 
-				case GAS_INTIAL_RSP:
+				case GAS_INITIAL_RSP:
 				{
 					PRINT_D(GENERIC_DBG, "GAS INITIAL RSP %x\n", buf[ACTION_SUBTYPE_ID]);
 					break;
@@ -2461,7 +2461,7 @@ int mgmt_tx(struct wiphy *wiphy,
 							if (u8P2Plocalrandom > u8P2Precvrandom)	{
 								PRINT_D(GENERIC_DBG, "LOCAL WILL BE GO LocaRand=%02x RecvRand %02x\n", u8P2Plocalrandom, u8P2Precvrandom);
 
-								/*Search for the p2p information information element , after the Public action subtype theres a byte for teh dialog token, skip that*/
+								/*Search for the p2p information information element , after the Public action subtype theres a byte for the dialog token, skip that*/
 								for (i = P2P_PUB_ACTION_SUBTYPE + 2; i < len; i++) {
 									if (buf[i] == P2PELEM_ATTR_ID && !(memcmp(u8P2P_oui, &buf[i + 2], 4))) {
 										if (buf[P2P_PUB_ACTION_SUBTYPE] == P2P_INV_REQ || buf[P2P_PUB_ACTION_SUBTYPE] == P2P_INV_RSP)
@@ -2721,7 +2721,7 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 	del_timer(&hDuringIpTimer);
 	PRINT_D(GENERIC_DBG, "Changing virtual interface, enable scan\n");
 	#endif
-	/*Set WILC_CHANGING_VIR_IF register to disallow adding futrue keys to CE H/W*/
+	/*Set WILC_CHANGING_VIR_IF register to disallow adding future keys to CE H/W*/
 	if (g_ptk_keys_saved && g_gtk_keys_saved) {
 		Set_machw_change_vir_if(true);
 	}
@@ -3269,7 +3269,7 @@ static int change_station(struct wiphy *wiphy, struct net_device *dev,
 	perInterface_wlan_t *nic;
 
 
-	PRINT_D(HOSTAPD_DBG, "Change station paramters\n");
+	PRINT_D(HOSTAPD_DBG, "Change station parameters\n");
 
 	if (!wiphy)
 		return -EFAULT;
@@ -3556,7 +3556,7 @@ struct wireless_dev *wilc_create_wiphy(struct net_device *net)
 	/*Set the availaible cipher suites*/
 	wdev->wiphy->cipher_suites = cipher_suites;
 	wdev->wiphy->n_cipher_suites = ARRAY_SIZE(cipher_suites);
-	/*Setting default managment types: for register action frame:  */
+	/*Setting default management types: for register action frame:  */
 	wdev->wiphy->mgmt_stypes = wilc_wfi_cfg80211_mgmt_types;
 
 	wdev->wiphy->max_remain_on_channel_duration = 500;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
index b240a79..377e499 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
@@ -41,8 +41,8 @@
 #define P2P_INV_REQ			0x03
 #define P2P_INV_RSP			0x04
 #define PUBLIC_ACT_VENDORSPEC		0x09
-#define GAS_INTIAL_REQ			0x0a
-#define GAS_INTIAL_RSP			0x0b
+#define GAS_INITIAL_REQ			0x0a
+#define GAS_INITIAL_RSP			0x0b
 
 #define INVALID_CHANNEL			0
 
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 0a930ec..c08d6a7 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1189,7 +1189,7 @@ static void wilc_wlan_handle_rxq(void)
 
 
 			if (pkt_offset & IS_MANAGMEMENT) {
-				/* reset mgmt indicator bit, to use pkt_offeset in furthur calculations */
+				/* reset mgmt indicator bit, to use pkt_offeset in future calculations */
 				pkt_offset &= ~(IS_MANAGMEMENT | IS_MANAGMEMENT_CALLBACK | IS_MGMT_STATUS_SUCCES);
 
 				WILC_WFI_mgmt_rx(&buffer[offset + HOST_HDR_OFFSET], pkt_len);
@@ -2123,7 +2123,7 @@ u16 Set_machw_change_vir_if(bool bValue)
 	u16 ret;
 	u32 reg;
 
-	/*Reset WILC_CHANGING_VIR_IF register to allow adding futrue keys to CE H/W*/
+	/*Reset WILC_CHANGING_VIR_IF register to allow adding future keys to CE H/W*/
 	mutex_lock((&g_wlan)->hif_lock);
 	ret = (&g_wlan)->hif_func.hif_read_reg(WILC_CHANGING_VIR_IF, &reg);
 	if (!ret) {
-- 
2.1.4


