X-GM-THRID: 6474243708283781120
X-Received: by 10.101.82.195 with SMTP id z3mr507850pgp.134.1507402329598;
        Sat, 07 Oct 2017 11:52:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.24.87 with SMTP id 84ls443059pfy.5.gmail; Sat, 07 Oct 2017
 11:52:08 -0700 (PDT)
X-Received: by 10.99.62.7 with SMTP id l7mr498395pga.108.1507402328623;
        Sat, 07 Oct 2017 11:52:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507402328; cv=none;
        d=google.com; s=arc-20160816;
        b=IhTBWFThgZR5PaAaosRLe2bVv4M2igqty98VDAS0/RYJKYaiTmsVCOAKQdO1Wo+fNH
         Kvh9JHPeDN2HbAuaDG/5x1MdExqVXIWhXHgdTgj9A7S2PNLqPNkoWqtSks6UhSd5mNtG
         8zc9xMpYM+zSOs3k5Or6K2DpPqrDl+u2VvXfDJprQ2zuIsfbU1QBEcd5enooQnZINFku
         AlTQGh8+lFsOv138OBlDXLKlmM2DMFkNFDTIwRF64HTgw0jgSaHDo0BYAwQXmHDafZQj
         PMlSEncvo9hOZ2AtgbR5hTAQREaCiK1XJyUzxoij/KNgCpiXddzVgvn4EKMQ19G2bclx
         ku5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=oVtDzpy4VUtJ6M+wzo5izgfOd6nU1/Lm8ableGn1wEI=;
        b=qjrx0Lyjc4dEORBmrquy9k3eKQtSMM7ma5c5I/7Mzvr2qN4HlvrznTPMLtjiKof0yJ
         2Te1TeFg2732ifI4Hoj1BtdeRyVZMXHb5P4/3ICdsbEJ+djNOfWwh8ghtBNneL4AmVmg
         gpKcUra4Zj3RbG+tz4d95sAaVSDJH9zm0P9KyzKwvemx6GVtI+T68laYe7Ix8jXi3061
         KJk4MP6J/AxtYBSHdfQCs+7Ln8Xv2y3VE60Wb2+/QJhhy+OLUOPIfTWWL6UN1aaiIycK
         KWAODMediL8veUQZX4B6xCPQCtue8F3ifLpP1nPugIRcTb1IGkyuMYmImyujdq5KqCw3
         b2ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0USc05Q;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id w5si530614pfw.3.2017.10.07.11.52.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:52:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0USc05Q;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so19816805pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 11:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oVtDzpy4VUtJ6M+wzo5izgfOd6nU1/Lm8ableGn1wEI=;
        b=W0USc05QmEG/tbv382N20jZz+G8F9KqTtNZrnliS+oRtznDlAI8mQdayqZfkzUPxYp
         eHprEqy8uDVoR28IK8pdkjDlu9OGCm+j0oE9qjKN4MCLM2thqjB+M8adthWLIWKwinBS
         vbtP3lpoZ7yVLkOcqdR9nQ34xFVLn9Tke8gqHLy/ttePKObC/1DJwMMGWuldEY6q6Rrs
         vM+dItTrrLjmhCl06ME+E8V1l+5FlNuPyEqRWRkBZNZJao8Cp1wdln4n6ejmMAeqiWHI
         Rb0gWzWRJWosZM9tveIjk/9QFt9cPpw7cJn0QMwLkVdJUV71TJGll6aUon9sP/TxDnnX
         IdLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oVtDzpy4VUtJ6M+wzo5izgfOd6nU1/Lm8ableGn1wEI=;
        b=qQc/HMieDGB7alhJ7WOUqfH+lYm7BpRnB9XXGax7THSCskB0pyevZfbwgv52jRbupe
         8JWwecnnrhY5bMSJvgrPtb61cf1JKYjkjbyuRtGiFIxlciqIZs1TzNUAWZWtrpIMrg0J
         8UNCWcJdzwQpeUSOYEFSxR1RuOLzprc9BqF/c0jQBJHQU1G7Z47BZJWHWQ/8o/YhU245
         PpHvWdrFlUd7ipbLS5u6nwXM2yiBIcPQAMght1MoUzHKoj0nWa09h4rlOuzSaBZ2q7VU
         s9NA2/EFoqfatqc3xyWRYiHqDp/SCGVoiOhfVOw8CeJDpLRTcrZE9CDHwMAQmvVeaThq
         xGKQ==
X-Gm-Message-State: AMCzsaXkyffaTQiZ8KiBkh+sNV6tQymF3RCvfcD5QJsDWLc1CqFe1IDn
	2lnXX21nrWvpGaB0yR8aG3k=
X-Google-Smtp-Source: AOwi7QBzhgAjj1JXqCc7Uc/jdTkQRSOPFPxJZ9/3QZma9Idd5BnBTOOHBL2bzeLMf+rJJcZe7Hftng==
X-Received: by 10.98.217.78 with SMTP id s75mr4268396pfg.40.1507402328139;
        Sat, 07 Oct 2017 11:52:08 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id d13sm7769804pgn.53.2017.10.07.11.52.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 11:52:07 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: rtl8723bs: remove ternary operators in assignmet statments
Date: Sun,  8 Oct 2017 00:22:02 +0530
Message-Id: <1507402322-28082-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unnecessary ternary operators in assignments statments.

This patch is with the help of following Coccinelle script:

@@
expression a, b, c;
binary operator op = {==, !=, <=, >=, <, >, &&, ||};
@@

c =
- (a op b) ? true : false
+ a op b

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
Changes in v2:
	- removed error in Coccinelle script
	- corrected checkpatch.pl warnings for the patch

 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c  | 2 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 5 +++--
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c    | 2 +-
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c      | 4 ++--
 drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 4 ++--
 9 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index d815a69..1dd0b51 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -597,7 +597,7 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 	u8 ret = _SUCCESS;
 
 	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0 ? false : true;   /* for ??? */
-	btransmitkey = (wep->KeyIndex & 0x80000000) > 0 ? true  : false;	/* for ??? */
+	btransmitkey = (wep->KeyIndex & 0x80000000) > 0;	/* for ??? */
 	keyid = wep->KeyIndex & 0x3fffffff;
 
 	if (keyid >= 4) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 820a061..4cd9798e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1154,7 +1154,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 
 	pwrctrlpriv->LpsIdleCount = 0;
 	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
-	pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
+	pwrctrlpriv->bLeisurePs = pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;
 
 	pwrctrlpriv->bFwCurrentInPSMode = false;
 
@@ -1325,7 +1325,8 @@ int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
 				pwrctrlpriv->LpsIdleCount = 2;
 
 			pwrctrlpriv->power_mgnt = mode;
-			pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
+			pwrctrlpriv->bLeisurePs =
+				pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;
 		}
 	} else
 		ret = -EINVAL;
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index c6ebb9d..958edfb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -633,7 +633,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 		res = (match == true) ?  false:true;
 
 	else if (pacl_list->mode == 2)/* deny unless in accept list */
-		res = (match == true) ?  true:false;
+		res = match == true;
 	else
 		 res = true;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a169534..d8bfc1a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1946,7 +1946,7 @@ void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr)
 		preorder_ctrl->indicate_seq = 0xffff;
 		#endif
 
-		preorder_ctrl->enable = (pmlmeinfo->bAcceptAddbaReq == true) ? true : false;
+		preorder_ctrl->enable = pmlmeinfo->bAcceptAddbaReq == true;
 	}
 
 }
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 86fee10..25bdbf1 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -463,7 +463,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 		break;
 
 	case BTC_GET_BL_WIFI_UNDER_5G:
-		*pu8 = (pHalData->CurrentBandType == 1) ? true : false;
+		*pu8 = pHalData->CurrentBandType == 1;
 		break;
 
 	case BTC_GET_BL_WIFI_AP_MODE_ENABLE:
@@ -1417,7 +1417,7 @@ u8 hal_btcoex_Initialize(struct adapter *padapter)
 
 	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
 	ret1 = EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
-	ret2 = (ret1 == true) ? true : false;
+	ret2 = ret1 == true;
 
 	return ret2;
 }
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 03554a4..dec887a 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1623,7 +1623,7 @@ void rtw_get_raw_rssi_info(void *sel, struct adapter *padapter)
 		psample_pkt_rssi->pwdball, psample_pkt_rssi->pwr_all
 	);
 
-	isCCKrate = (psample_pkt_rssi->data_rate <= DESC_RATE11M) ? true : false;
+	isCCKrate = psample_pkt_rssi->data_rate <= DESC_RATE11M;
 
 	if (isCCKrate)
 		psample_pkt_rssi->mimo_singal_strength[0] = psample_pkt_rssi->pwdball;
@@ -1656,7 +1656,7 @@ void rtw_dump_raw_rssi_info(struct adapter *padapter)
 	DBG_871X("RxRate = %s, PWDBALL = %d(%%), rx_pwr_all = %d(dBm)\n",
 			HDATA_RATE(psample_pkt_rssi->data_rate), psample_pkt_rssi->pwdball, psample_pkt_rssi->pwr_all);
 
-	isCCKrate = (psample_pkt_rssi->data_rate <= DESC_RATE11M) ? true : false;
+	isCCKrate = psample_pkt_rssi->data_rate <= DESC_RATE11M;
 
 	if (isCCKrate)
 		psample_pkt_rssi->mimo_singal_strength[0] = psample_pkt_rssi->pwdball;
@@ -1684,7 +1684,7 @@ void rtw_store_phy_info(struct adapter *padapter, union recv_frame *prframe)
 	struct rx_raw_rssi *psample_pkt_rssi = &padapter->recvpriv.raw_rssi_info;
 
 	psample_pkt_rssi->data_rate = pattrib->data_rate;
-	isCCKrate = (pattrib->data_rate <= DESC_RATE11M) ? true : false;
+	isCCKrate = pattrib->data_rate <= DESC_RATE11M;
 
 	psample_pkt_rssi->pwdball = pPhyInfo->RxPWDBAll;
 	psample_pkt_rssi->pwr_all = pPhyInfo->RecvSignalPower;
diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index 9cde6c6..71853e6 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -23,7 +23,7 @@ static void odm_SetCrystalCap(void *pDM_VOID, u8 CrystalCap)
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 
-	bEEPROMCheck = (pHalData->EEPROMVersion >= 0x01) ? true : false;
+	bEEPROMCheck = pHalData->EEPROMVersion >= 0x01;
 
 	if (pCfoTrack->CrystalCap == CrystalCap)
 		return;
diff --git a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
index ba27001..8dd6da8 100644
--- a/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723bs/hal/odm_HWConfig.c
@@ -106,7 +106,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(
 	u8 LNA_idx, VGA_idx;
 	PPHY_STATUS_RPT_8192CD_T pPhyStaRpt = (PPHY_STATUS_RPT_8192CD_T)pPhyStatus;
 
-	isCCKrate = (pPktinfo->DataRate <= DESC_RATE11M) ? true : false;
+	isCCKrate = pPktinfo->DataRate <= DESC_RATE11M;
 	pPhyInfo->RxMIMOSignalQuality[ODM_RF_PATH_A] = -1;
 	pPhyInfo->RxMIMOSignalQuality[ODM_RF_PATH_B] = -1;
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 6dfb06a..d4d922c 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1019,8 +1019,8 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 			rtw_btcoex_IQKNotify(padapter, true);
 
-			restore_iqk_rst = (pwrpriv->bips_processing == true) ? true : false;
-			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2 ? true : false;
+			restore_iqk_rst = pwrpriv->bips_processing == true;
+			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2;
 			PHY_IQCalibrate_8723B(padapter, false, restore_iqk_rst, b2Ant, pHalData->ant_path);
 			pHalData->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
 
-- 
2.7.4


