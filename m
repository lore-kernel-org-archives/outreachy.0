X-GM-THRID: 6207450266150633472
X-Received: by 10.182.213.233 with SMTP id nv9mr4912296obc.8.1445407846844;
        Tue, 20 Oct 2015 23:10:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.134 with SMTP id x6ls373213obk.40.gmail; Tue, 20 Oct
 2015 23:10:46 -0700 (PDT)
X-Received: by 10.182.33.100 with SMTP id q4mr6100891obi.35.1445407846372;
        Tue, 20 Oct 2015 23:10:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si887572pab.1.2015.10.20.23.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 23:10:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so46580288pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 23:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=qLLu8n01A3EVimqXvkViciY6MfxPo5yNgW4G/BHwZtk=;
        b=SEQZaSadJHYVIpBo/64GavxZ5RTZSJt4RqPfN+gPYhxwxCTWSmVT4pzy1ktM8Zo+aP
         CojJe4cbMF9qfDOvAKUmKWdGXq0Bb8aDJFZqKYySTvn5zk/Bt/8Pe66/NC4KP2lXQGJQ
         WLiZzgwLGY9RZAv5eslPJihh4WiUjV9kKiPAcsd3e5nlGGJVFCcBGnfXnmefxl3cYQwr
         haZeT9c2Wi+I7giESsDVkDstXYI+/J8zFnnE9G2YoRhnKga4PfKt1KraUhZ63ewa4CGK
         cKGohVLejQoUqNHg/6amXasIbfUxiZsr5d/19JOdEwEdXs9HsGPBQHgnqXtxQyyvuYGX
         1csQ==
X-Received: by 10.68.219.4 with SMTP id pk4mr8726968pbc.138.1445407846226;
        Tue, 20 Oct 2015 23:10:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id fx4sm7021708pbb.92.2015.10.20.23.10.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 23:10:45 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: r8723au: use kernel preferred style for commenting
Date: Tue, 20 Oct 2015 23:10:41 -0700
Message-Id: <2759bb6566b8295027e88324efb338b1e471a970.1445402009.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445402009.git.amsfield22@gmail.com>
References: <cover.1445402009.git.amsfield22@gmail.com>

Reworked comments per kernel coding style to improve readability.

Addresses checkpatch.pl:
	WARNING: Block comments use * on subsequent lines

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 159 ++++++++++++++++---------------
 1 file changed, 80 insertions(+), 79 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 6330933..4db4dfe 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -102,83 +102,76 @@ static struct cmd_hdl wlancmds[] = {
 			     tdls_hdl23a)
 };
 
-struct _cmd_callback	rtw_cmd_callback[] = {
-	{GEN_CMD_CODE(_Read_MACREG), NULL}, /*0*/
+struct _cmd_callback rtw_cmd_callback[] = {
+	{GEN_CMD_CODE(_Read_MACREG), NULL},				/*0*/
 	{GEN_CMD_CODE(_Write_MACREG), NULL},
 	{GEN_CMD_CODE(_Read_BBREG), &rtw_getbbrfreg_cmdrsp_callback23a},
 	{GEN_CMD_CODE(_Write_BBREG), NULL},
 	{GEN_CMD_CODE(_Read_RFREG), &rtw_getbbrfreg_cmdrsp_callback23a},
-	{GEN_CMD_CODE(_Write_RFREG), NULL}, /*5*/
+	{GEN_CMD_CODE(_Write_RFREG), NULL},
 	{GEN_CMD_CODE(_Read_EEPROM), NULL},
 	{GEN_CMD_CODE(_Write_EEPROM), NULL},
 	{GEN_CMD_CODE(_Read_EFUSE), NULL},
 	{GEN_CMD_CODE(_Write_EFUSE), NULL},
-
-	{GEN_CMD_CODE(_Read_CAM),	NULL},	/*10*/
-	{GEN_CMD_CODE(_Write_CAM),	 NULL},
+	{GEN_CMD_CODE(_Read_CAM), NULL},				/*10*/
+	{GEN_CMD_CODE(_Write_CAM), NULL},
 	{GEN_CMD_CODE(_setBCNITV), NULL},
 	{GEN_CMD_CODE(_setMBIDCFG), NULL},
-	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},  /*14*/
-	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback}, /*15*/
+	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},
+	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback},
 	{GEN_CMD_CODE(_CreateBss), &rtw_createbss_cmd23a_callback},
 	{GEN_CMD_CODE(_SetOpMode), NULL},
-	{GEN_CMD_CODE(_SiteSurvey), &rtw_survey_cmd_callback23a}, /*18*/
+	{GEN_CMD_CODE(_SiteSurvey), &rtw_survey_cmd_callback23a},
 	{GEN_CMD_CODE(_SetAuth), NULL},
-
-	{GEN_CMD_CODE(_SetKey), NULL},	/*20*/
+	{GEN_CMD_CODE(_SetKey), NULL},					/*20*/
 	{GEN_CMD_CODE(_SetStaKey), &rtw_setstaKey_cmdrsp_callback23a},
 	{GEN_CMD_CODE(_SetAssocSta), &rtw_setassocsta_cmdrsp_callback23a},
 	{GEN_CMD_CODE(_DelAssocSta), NULL},
 	{GEN_CMD_CODE(_SetStaPwrState), NULL},
-	{GEN_CMD_CODE(_SetBasicRate), NULL}, /*25*/
+	{GEN_CMD_CODE(_SetBasicRate), NULL},
 	{GEN_CMD_CODE(_GetBasicRate), NULL},
 	{GEN_CMD_CODE(_SetDataRate), NULL},
 	{GEN_CMD_CODE(_GetDataRate), NULL},
 	{GEN_CMD_CODE(_SetPhyInfo), NULL},
-
-	{GEN_CMD_CODE(_GetPhyInfo), NULL}, /*30*/
+	{GEN_CMD_CODE(_GetPhyInfo), NULL},				/*30*/
 	{GEN_CMD_CODE(_SetPhy), NULL},
 	{GEN_CMD_CODE(_GetPhy), NULL},
 	{GEN_CMD_CODE(_readRssi), NULL},
 	{GEN_CMD_CODE(_readGain), NULL},
-	{GEN_CMD_CODE(_SetAtim), NULL}, /*35*/
+	{GEN_CMD_CODE(_SetAtim), NULL},
 	{GEN_CMD_CODE(_SetPwrMode), NULL},
 	{GEN_CMD_CODE(_JoinbssRpt), NULL},
 	{GEN_CMD_CODE(_SetRaTable), NULL},
 	{GEN_CMD_CODE(_GetRaTable), NULL},
-
-	{GEN_CMD_CODE(_GetCCXReport), NULL}, /*40*/
-	{GEN_CMD_CODE(_GetDTMReport),	NULL},
+	{GEN_CMD_CODE(_GetCCXReport), NULL},				/*40*/
+	{GEN_CMD_CODE(_GetDTMReport), NULL},
 	{GEN_CMD_CODE(_GetTXRateStatistics), NULL},
 	{GEN_CMD_CODE(_SetUsbSuspend), NULL},
 	{GEN_CMD_CODE(_SetH2cLbk), NULL},
-	{GEN_CMD_CODE(_AddBAReq), NULL}, /*45*/
-	{GEN_CMD_CODE(_SetChannel), NULL},		/*46*/
+	{GEN_CMD_CODE(_AddBAReq), NULL},
+	{GEN_CMD_CODE(_SetChannel), NULL},
 	{GEN_CMD_CODE(_SetTxPower), NULL},
 	{GEN_CMD_CODE(_SwitchAntenna), NULL},
 	{GEN_CMD_CODE(_SetCrystalCap), NULL},
-	{GEN_CMD_CODE(_SetSingleCarrierTx), NULL},	/*50*/
-
-	{GEN_CMD_CODE(_SetSingleToneTx), NULL}, /*51*/
+	{GEN_CMD_CODE(_SetSingleCarrierTx), NULL},			/*50*/
+	{GEN_CMD_CODE(_SetSingleToneTx), NULL},
 	{GEN_CMD_CODE(_SetCarrierSuppressionTx), NULL},
 	{GEN_CMD_CODE(_SetContinuousTx), NULL},
-	{GEN_CMD_CODE(_SwitchBandwidth), NULL},		/*54*/
-	{GEN_CMD_CODE(_TX_Beacon), NULL},/*55*/
-
-	{GEN_CMD_CODE(_Set_MLME_EVT), NULL},/*56*/
-	{GEN_CMD_CODE(_Set_Drv_Extra), NULL},/*57*/
-	{GEN_CMD_CODE(_Set_H2C_MSG), NULL},/*58*/
-	{GEN_CMD_CODE(_SetChannelPlan), NULL},/*59*/
-	{GEN_CMD_CODE(_LedBlink), NULL},/*60*/
-
-	{GEN_CMD_CODE(_SetChannelSwitch), NULL},/*61*/
-	{GEN_CMD_CODE(_TDLS), NULL},/*62*/
+	{GEN_CMD_CODE(_SwitchBandwidth), NULL},
+	{GEN_CMD_CODE(_TX_Beacon), NULL},
+	{GEN_CMD_CODE(_Set_MLME_EVT), NULL},
+	{GEN_CMD_CODE(_Set_Drv_Extra), NULL},
+	{GEN_CMD_CODE(_Set_H2C_MSG), NULL},
+	{GEN_CMD_CODE(_SetChannelPlan), NULL},
+	{GEN_CMD_CODE(_LedBlink), NULL},				/*60*/
+	{GEN_CMD_CODE(_SetChannelSwitch), NULL},
+	{GEN_CMD_CODE(_TDLS), NULL},
 };
 
 /*
-Caller and the rtw_cmd_thread23a can protect cmd_q by spin_lock.
-No irqsave is necessary.
-*/
+ * Caller and the rtw_cmd_thread23a can protect cmd_q by spin_lock.
+ * No irqsave is necessary.
+ */
 
 int rtw_init_cmd_priv23a(struct cmd_priv *pcmdpriv)
 {
@@ -316,8 +309,10 @@ post_process:
 				 pcmd_callback, pcmd->cmdcode);
 			rtw_free_cmd_obj23a(pcmd);
 		} else {
-			/* need consider that free cmd_obj in
-			   rtw_cmd_callback */
+			/*
+			 * need to consider that free
+			 * cmd_obj in rtw_cmd_callback
+			 */
 			pcmd_callback(pcmd->padapter, pcmd);
 		}
 	} else {
@@ -398,7 +393,7 @@ int rtw_sitesurvey_cmd23a(struct rtw_adapter *padapter,
 		mod_timer(&pmlmepriv->scan_to_timer, jiffies +
 			  msecs_to_jiffies(SCANNING_TIMEOUT));
 
-		pmlmepriv->scan_interval = SCAN_INTERVAL;/*  30*2 sec = 60sec */
+		pmlmepriv->scan_interval = SCAN_INTERVAL; /* 30*2 sec = 60sec */
 	} else
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 
@@ -519,12 +514,12 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
 	       get_wlan_bssid_ex_sz(&pnetwork->network));
 
 	psecnetwork->IELength = 0;
-	/*  Added by Albert 2009/02/18 */
-	/*  If the the driver wants to use the bssid to create the
+	/*
+	 *  If the the driver wants to use the bssid to create the
 	 *  connection. If not,  we have to copy the connecting AP's
 	 *  MAC address to it so that the driver just has the bssid
-	 *  information for PMKIDList searching. */
-
+	 *  information for PMKIDList searching.
+	 */
 	if (pmlmepriv->assoc_by_bssid == false)
 		ether_addr_copy(&pmlmepriv->assoc_bssid[0],
 				&pnetwork->network.MacAddress[0]);
@@ -558,10 +553,11 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
 	phtpriv->ht_option = false;
 	if (pregistrypriv->ht_enable) {
 		u32 algo = padapter->securitypriv.dot11PrivacyAlgrthm;
-		/*	Added by Albert 2010/06/23 */
-		/*	For the WEP mode, we will use the bg mode to do
-			the connection to avoid some IOT issue. */
-		/*	Especially for Realtek 8192u SoftAP. */
+		/*
+		 * For the WEP mode, we will use the bg mode to
+		 * do the connection to avoid some IOT issue.
+		 * Especially for Realtek 8192u SoftAP.
+		 */
 		if (algo != WLAN_CIPHER_SUITE_WEP40 &&
 		    algo != WLAN_CIPHER_SUITE_WEP104 &&
 		    algo != WLAN_CIPHER_SUITE_TKIP) {
@@ -590,7 +586,7 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
 	/* get cmdsz before endian conversion */
 	pcmd->cmdsz = get_wlan_bssid_ex_sz(psecnetwork);
 
-	pcmd->cmdcode = _JoinBss_CMD_;/* GEN_CMD_CODE(_JoinBss) */
+	pcmd->cmdcode = _JoinBss_CMD_; /* GEN_CMD_CODE(_JoinBss) */
 	pcmd->parmbuf = (unsigned char *)psecnetwork;
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
@@ -631,8 +627,10 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
 		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
 		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
 	} else {
-		/* no need to enqueue, do the cmd hdl directly and
-		   free cmd parameter */
+		/*
+		 * no need to enqueue, do the cmd hdl
+		 * directly and free cmd parameter
+		 */
 		if (disconnect_hdl23a(padapter, (u8 *)param) != H2C_SUCCESS)
 			res = _FAIL;
 		kfree(param);
@@ -726,7 +724,7 @@ int rtw_setstakey_cmd23a(struct rtw_adapter *padapter, u8 *psta, u8 unicast_key)
 		       &psecuritypriv->dot118021XGrpKey[idx].skey, 16);
 	}
 
-	/* jeff: set this because at least sw key is ready */
+	/* set this because at least sw key is ready */
 	padapter->securitypriv.busetkipkey = 1;
 
 	res = rtw_enqueue_cmd23a(pcmdpriv, ph2c);
@@ -868,16 +866,16 @@ static void traffic_status_watchdog(struct rtw_adapter *padapter)
 	int BusyThreshold = 100;
 	struct rt_link_detect *ldi = &pmlmepriv->LinkDetectInfo;
 
-	/*  */
-	/*  Determine if our traffic is busy now */
-	/*  */
+	/* Determine if our traffic is busy now */
 	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 		if (rtl8723a_BT_coexist(padapter))
 			BusyThreshold = 50;
 		else if (ldi->bBusyTraffic)
 			BusyThreshold = 75;
-		/*  if we raise bBusyTraffic in last watchdog, using
-		    lower threshold. */
+		/*
+		 * if we raise bBusyTraffic in last
+		 * watchdog, using lower threshold
+		 */
 		if (ldi->NumRxOkInPeriod > BusyThreshold ||
 		    ldi->NumTxOkInPeriod > BusyThreshold) {
 			bBusyTraffic = true;
@@ -888,7 +886,7 @@ static void traffic_status_watchdog(struct rtw_adapter *padapter)
 				bTxBusyTraffic = true;
 		}
 
-		/*  Higher Tx/Rx data. */
+		/* Higher Tx/Rx data */
 		if (ldi->NumRxOkInPeriod > 4000 ||
 		    ldi->NumTxOkInPeriod > 4000) {
 			bHigherBusyTraffic = true;
@@ -901,7 +899,7 @@ static void traffic_status_watchdog(struct rtw_adapter *padapter)
 
 		if (!rtl8723a_BT_coexist(padapter) ||
 		    !rtl8723a_BT_using_antenna_1(padapter)) {
-		/*  check traffic for  powersaving. */
+		/* check traffic for powersaving */
 			if (((ldi->NumRxUnicastOkInPeriod +
 			      ldi->NumTxOkInPeriod) > 8) ||
 			    ldi->NumRxUnicastOkInPeriod > 2)
@@ -909,7 +907,7 @@ static void traffic_status_watchdog(struct rtw_adapter *padapter)
 			else
 				bEnterPS = true;
 
-			/*  LeisurePS only work in infra mode. */
+			/* LeisurePS only work in infra mode */
 			if (bEnterPS)
 				LPS_Enter23a(padapter);
 			else
@@ -948,9 +946,7 @@ static void dynamic_chk_wk_hdl(struct rtw_adapter *padapter, u8 *pbuf, int sz)
 
 	rtl8723a_HalDmWatchDog(padapter);
 
-	/*  */
-	/*  BT-Coexist */
-	/*  */
+	/* BT-Coexist */
 	rtl8723a_BT_do_coexist(padapter);
 }
 
@@ -976,14 +972,14 @@ static void lps_ctrl_wk_hdl(struct rtw_adapter *padapter, u8 lps_ctrl_type)
 		LPS_Leave23a(padapter);
 		break;
 	case LPS_CTRL_CONNECT:
-		mstatus = 1;/* connect */
-		/*  Reset LPS Setting */
+		mstatus = 1; /* connect */
+		/* Reset LPS Setting */
 		padapter->pwrctrlpriv.LpsIdleCount = 0;
 		rtl8723a_set_FwJoinBssReport_cmd(padapter, 1);
 		rtl8723a_BT_mediastatus_notify(padapter, mstatus);
 		break;
 	case LPS_CTRL_DISCONNECT:
-		mstatus = 0;/* disconnect */
+		mstatus = 0; /* disconnect */
 		rtl8723a_BT_mediastatus_notify(padapter, mstatus);
 		if (!rtl8723a_BT_using_antenna_1(padapter))
 			LPS_Leave23a(padapter);
@@ -1190,7 +1186,7 @@ static int c2h_evt_hdl(struct rtw_adapter *adapter, struct c2h_evt_hdr *c2h_evt)
 	u8 buf[16];
 
 	if (!c2h_evt) {
-		/* No c2h event in cmd_obj, read c2h event before handling*/
+		/* No c2h event in cmd_obj, read c2h event before handling */
 		if (c2h_evt_read23a(adapter, buf) == _SUCCESS) {
 			c2h_evt = (struct c2h_evt_hdr *)buf;
 
@@ -1235,8 +1231,8 @@ void rtw_evt_work(struct work_struct *work)
 	} else {
 		/*
 		 * Enqueue into cmd_thread for others.
-		 * ework will be turned into a c2h_evt and freed once it
-		 * has been consumed.
+		 * ework will be turned into a c2h_evt
+		 * and freed once it has been consumed.
 		 */
 		rtw_c2h_wk_cmd23a(adapter, (u8 *)&ework->u.c2h_evt);
 	}
@@ -1323,7 +1319,7 @@ void rtw_disassoc_cmd23a_callback(struct rtw_adapter *padapter,
 		return;
 	}
 
-	/*  free cmd */
+	/* free cmd */
 	rtw_free_cmd_obj23a(pcmd);
 }
 
@@ -1402,23 +1398,28 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 
 		pnetwork->Length = get_wlan_bssid_ex_sz(pnetwork);
 		memcpy(&pwlan->network, pnetwork, pnetwork->Length);
-		/* pwlan->fixed = true; */
-
-		/* list_add_tail(&pwlan->list,
-		   &pmlmepriv->scanned_queue.queue); */
+		/*
+		 * pwlan->fixed = true;
+		 * list_add_tail(&pwlan->list,
+		 *		 &pmlmepriv->scanned_queue.queue);
+		 */
 
-		/*  copy pdev_network information to
-		    pmlmepriv->cur_network */
+		/*
+		 *  copy pdev_network information
+		 *  to pmlmepriv->cur_network
+		 */
 		memcpy(&tgt_network->network, pnetwork,
 		       get_wlan_bssid_ex_sz(pnetwork));
 
-		/*  reset DSConfig */
+		/* reset DSConfig */
 
 		clr_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 
-		/*  we will set _FW_LINKED when there is one more sat to
-		    join us (rtw_stassoc_event_callback23a) */
 		spin_unlock_bh(&scanned_queue->lock);
+		/*
+		 * we will set _FW_LINKED when there is one more
+		 * sat to join us (rtw_stassoc_event_callback23a)
+		 */
 	}
 
 createbss_cmd_fail:
-- 
2.1.4


