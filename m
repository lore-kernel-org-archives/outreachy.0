X-GM-THRID: 6474175078570393600
X-Received: by 10.84.247.16 with SMTP id n16mr126942pll.3.1507386350907;
        Sat, 07 Oct 2017 07:25:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.195.228 with SMTP id j91ls397128pld.4.gmail; Sat, 07 Oct
 2017 07:25:49 -0700 (PDT)
X-Received: by 10.99.124.68 with SMTP id l4mr486192pgn.39.1507386349836;
        Sat, 07 Oct 2017 07:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507386349; cv=none;
        d=google.com; s=arc-20160816;
        b=GjV0QJKsTwsqPz76EHCoNg8d3o8ca1+jS/SHa07C5O/5Mv5fhyj2iqlnwYpuSAyS53
         UXUNOgxUfGyP6HixFHzyNsujfhkOhnWPXDWcqcJGYq0OUFdEbuODmmA+fwkx1t8e0cM4
         bx3aPFUSBVc72d8ci9w3vRHCz6VtRm7Ik67klyA+csPxGIRc6kISUQgHZwDaNKUO2frd
         GwORYan6zJCs3xi6XSVqUSfl8NPgN4f8nxvZe15JnyZ/PofdbirbT5qY4KuOa72ICAHg
         GUuBCOjkje74mrIax4Zq0b5hQ2hpV8QlZs1lCGRciX+l+WBO1ap/oYz712iFzBtwO7eM
         Pegw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=RgYWkSx9+2oLRT2iGNyNi/X9+K2n0vTXtM8PQ5IWYw4=;
        b=QeZRd2Q0HUKw5hUzYsbmBaG1xU+FZWfWbV+rNy782TFB4muNsoHMz/uVsvGIuUAM/m
         9aia2z5t+XRKAtKWVc37tJCyuuU3/G+5XSN8IgINYaW+qhPP2OGuGcV09xmQjqV6z2RS
         GWZgdiRddA+krrc7ViXzzsBGp3HpM+sbM+Yx2C4mRq9T0Brn0lwvzYbEiWFJXda7OIlf
         yHWI6it/+Wh93F4ZXlKnqKzLUISEkMzchapuTUR241Bdd2f1ekCgwBPt5aNYV8d6dy+x
         4QmRpCD8hzdN/yxJe/aunA0B/WOeWKzCu01uJSOZdybaeBq2/ktXmdpmTHo4UjCvpJKN
         SqTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EqkKG19X;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a17si484350pfk.15.2017.10.07.07.25.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 07:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EqkKG19X;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z11so1909374pfk.3
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 07:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=RgYWkSx9+2oLRT2iGNyNi/X9+K2n0vTXtM8PQ5IWYw4=;
        b=EqkKG19XCQU6D95VozPdldrpasPUGvjkk53xSMlxatraBvb+D0Hd96qT9W+tKPpOwU
         iIIocbH6a8WEcKRNHk8FeuK8XMxIw8ZIsPISyd3+CbAmtxvGJgYgBxxhCxv4PxDAFhTr
         E7wnOAstbJthUKrjYXQW4z1h/eZwggzSFvFSdG//+gurnRXMIem5AiT/62Cvw0aspG42
         gKBnM96/i+lTeRpPdZ85wr9VzyR3bMFOoLvjjkf661bKPL9bzWP2nAKEFJ9ZGjVOlLRY
         y5ckq57q0cMDW51Pk4J9qum9pT44IYUyZBuwhdiJds1ve2V/2CJLTLtX84+/oISjq9VX
         9iJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RgYWkSx9+2oLRT2iGNyNi/X9+K2n0vTXtM8PQ5IWYw4=;
        b=sjpooEoCrXC+bh0b4fybDBDcVv09m6jSkQK9DqE65mduw5fB5PVkCRa9unCRbGjG2y
         mnrx0urIPPxxEMS1TyshjkG3MyjzRzMaOJEwaX0w0aBGekE+acKqJTl0w3Ty3mUsiPE3
         h8LJP3NBNZTVQ6XCobJWQyd3qoXOzae7HDStGW3A1rOECNGuVXW/eVWBFcHVN2KQlajz
         i7pRuT3Kfah0mMo36rcBjKj3lB2IAdsnzuhNor2r9qMGIP+heNj1QcUVCM40WkNWIJ0q
         plC6LqAipf1PN/BOUmIWR8STv/sATkkTxC2ROx/foTFED35+Gpg3tOtWQbyYT5eP8AtD
         ZQBg==
X-Gm-Message-State: AMCzsaV1x6iBkWHKDmG5UPAIew4py3eWgiPguOJ9yphCL1p9eJ/3VwA7
	DjbEnhP6vs6qOlQPTzVRlNA=
X-Google-Smtp-Source: AOwi7QBDNNKlnRighoRr85vNGNlgQF7qDCrt+dezIiBY94MKOIpU/mGgpgRqUg8x9KN+L0nCuBdQxw==
X-Received: by 10.99.163.97 with SMTP id v33mr4813289pgn.206.1507386349162;
        Sat, 07 Oct 2017 07:25:49 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id f12sm9513486pga.7.2017.10.07.07.25.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 07:25:48 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] taging: rtl8723bs: remove ternary operators in assignmet statments
Date: Sat,  7 Oct 2017 19:55:42 +0530
Message-Id: <1507386342-16293-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unnecessary ternary operators in assignments statments.
Patch by Coccinelle:

@@
expression a, b, c;
binary operator op = {==, !=, <=, >=, <, >, &&, ||};
@@

c =
(
- (a op b) ? true : false
+ a op b
|
- (a op b) ? false : true
+ a op b
)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c  | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c    | 4 ++--
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c  | 2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c      | 6 +++---
 drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 4 ++--
 9 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index d815a69..be6f4d9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -596,8 +596,8 @@ u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 	struct security_priv *psecuritypriv = &(padapter->securitypriv);
 	u8 ret = _SUCCESS;
 
-	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0 ? false : true;   /* for ??? */
-	btransmitkey = (wep->KeyIndex & 0x80000000) > 0 ? true  : false;	/* for ??? */
+	bdefaultkey = (wep->KeyIndex & 0x40000000) > 0;   /* for ??? */
+	btransmitkey = (wep->KeyIndex & 0x80000000) > 0;	/* for ??? */
 	keyid = wep->KeyIndex & 0x3fffffff;
 
 	if (keyid >= 4) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 820a061..7fc9f79 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1154,7 +1154,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 
 	pwrctrlpriv->LpsIdleCount = 0;
 	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
-	pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
+	pwrctrlpriv->bLeisurePs = PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt;
 
 	pwrctrlpriv->bFwCurrentInPSMode = false;
 
@@ -1325,7 +1325,7 @@ int rtw_pm_set_lps(struct adapter *padapter, u8 mode)
 				pwrctrlpriv->LpsIdleCount = 2;
 
 			pwrctrlpriv->power_mgnt = mode;
-			pwrctrlpriv->bLeisurePs = (PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt)?true:false;
+			pwrctrlpriv->bLeisurePs = PS_MODE_ACTIVE != pwrctrlpriv->power_mgnt;
 		}
 	} else
 		ret = -EINVAL;
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index c6ebb9d..8387ebb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -630,10 +630,10 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 
 
 	if (pacl_list->mode == 1) /* accept unless in deny list */
-		res = (match == true) ?  false:true;
+		res = match == true;
 
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
index 86fee10..b556deb 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -463,7 +463,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 		break;
 
 	case BTC_GET_BL_WIFI_UNDER_5G:
-		*pu8 = (pHalData->CurrentBandType == 1) ? true : false;
+		*pu8 = pHalData->CurrentBandType == 1;
 		break;
 
 	case BTC_GET_BL_WIFI_AP_MODE_ENABLE:
@@ -471,7 +471,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 		break;
 
 	case BTC_GET_BL_WIFI_ENABLE_ENCRYPTION:
-		*pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0 ? false : true;
+		*pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0;
 		break;
 
 	case BTC_GET_BL_WIFI_UNDER_B_MODE:
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


