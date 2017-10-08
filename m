X-GM-THRID: 6474399283336445952
X-Received: by 10.101.92.11 with SMTP id u11mr441838pgr.141.1507438556550;
        Sat, 07 Oct 2017 21:55:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.248.133 with SMTP id q5ls232060pll.7.gmail; Sat, 07 Oct
 2017 21:55:55 -0700 (PDT)
X-Received: by 10.101.81.135 with SMTP id h7mr555707pgq.36.1507438555691;
        Sat, 07 Oct 2017 21:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507438555; cv=none;
        d=google.com; s=arc-20160816;
        b=YlUPkJ9RCqDSM8tz4pOqaBhXwdKUe5EjTxHPseZs0I0rYn/2xESq/rhZ3bKSqilBpO
         XMs1JSOZs8+2vT/UbtHAtzfyfpMJX47m/Fx/AsmtjIBvVXZCCgJ3h5JYvngKCxhxvz1o
         wQcw52iNe/xQfL+q8f3QqfIlsoiZtdABF79RMjdS5h8eYVhWaPUqGBEtxHw4eehL0Na3
         Y+NvZeb/Hl8wVHSmLIeYmUOz4nwoBl/jTlAoTqJfXNXtHlaxS7GDV77yXhb5uOhBmb/2
         0UwdxPa/yvMyQbKaVrbIIPx9FGVYypVgNfLNbB31aL1qbCI+ujopbnfoSDzqe/+LopvZ
         4iYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=evU5TbZ57VOrjPgfmDiGxY5F1kdOHHd32QrQp6OWFFE=;
        b=C6+Xz2pqV+2LT7bM/Iy/qmKIwPVItfB305MVZkilDVh/6oIYJYYoPT9rPG1TvIwxYP
         Yjlz7hUSh29LjDF5TTydxKcaV4gKVQfwp/wx2O5BfKXSkTXO2gG9vx8jHxX1B7TPLSFa
         GxD4V1PqWoihjaYdh3Dsjes3YFpwRW1TWTGyQoq8mM8+GscRs0U425zh+VLGhOlm5I8f
         0v7h1FtYc3USbPDSX+1yG2vN0YAoCJC6CJ4pmzxawXPMgxmPU993XhzEguHYB3LYP8y0
         SUm9CG7UDKqrBHxkVU10tFjtRfNEoQB+cRw7VICzDxzkcaV/BSH0H4Etfg3ipO6vHd3q
         UKAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t7pinhcD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a24si172825pfc.5.2017.10.07.21.55.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 21:55:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t7pinhcD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id a7so20711873pfj.5
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 21:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=evU5TbZ57VOrjPgfmDiGxY5F1kdOHHd32QrQp6OWFFE=;
        b=t7pinhcDgrGEOGyFZILTG8SzhrxEpOE2LxqjL0Rvpqx/t0/E8D5kVQACMuj/7jt1w8
         T77aNw3btrhnP522DkqrS9zY74sJPgVuLiZY5c1tDKHIX8CfuiIJylmK0rRnZ2ko5DuO
         NKkhJUozokY393QFm9cjbQ/SW2k16tvYj2sRtWlTam+55LDj0JiIAqPMqfnTvTsGnjMT
         11WCH5AL61tAjPhjQF1LS0oEbuNVIyr90+6FYYloWSmzeuS1HuGZvs+3H7vRRbQevPnC
         oHa7qXRjOx+ipsQhN1ACCXuMB6tDWEt4DhGZTdkx6FNmlAndQD2/RZFEoY37+K0RtKyR
         HT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=evU5TbZ57VOrjPgfmDiGxY5F1kdOHHd32QrQp6OWFFE=;
        b=iWAIL3Zl1V4ot+Kch3eZ9ftCXyW2nzSNHz5lSEY7s1GyZGLmJTYTNu4WejUjP61szX
         5SDXHHkkMKESDVFPmm24n6tT9x2bCazIDpfJ4O+JD0vTv10G/bTJdVLTHuLw58y7Y9jH
         Hg9pkDYYVw8kCYOiXFD8OP0qgO7VI7sEmin08N5u05M0R3Ua800+xvA2svddVXb3v4Gy
         4g9A7Tx/Gfkm6DL0ZzmhYruC7751jvIDYWML3/+57ATWWGTzCtkcUH8gvSf6Y1CdhY5y
         k4ne5T+IqfE6mUvqVC5q+D8ADoCvBaMJ/iTTb+bqBIeVWaSabOperKFaLMacnTtmmCvp
         z33w==
X-Gm-Message-State: AMCzsaWWP44CfHoEahTY6uP1Z+q2BVnA+HPX4uzk0ol3SJbNfcTIBIsN
	bxa9sSYmkX9WXUBk17Qk+C4=
X-Google-Smtp-Source: AOwi7QCZ2wfJUHUj8AwG1Ay2kk2/yJSI2kIGWWI0TZL2+VG/T4d5vynyEbDzUk7ljaqD/d9X7fDAqw==
X-Received: by 10.84.185.106 with SMTP id e39mr5912970plg.333.1507438555345;
        Sat, 07 Oct 2017 21:55:55 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id q13sm852695pfi.166.2017.10.07.21.55.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 21:55:54 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 1/6] staging: rtl8723bs: remove ternary operators in assignmet statments
Date: Sun,  8 Oct 2017 10:24:51 +0530
Message-Id: <65b3ea97b85625ce0268e243bf4eeb80ed13cf3c.1507437264.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1507437263.git.aastha.gupta4104@gmail.com>
References: <cover.1507437263.git.aastha.gupta4104@gmail.com>

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
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c    | 5 +++--
 drivers/staging/rtl8723bs/hal/hal_btcoex.c      | 7 ++-----
 drivers/staging/rtl8723bs/hal/hal_com.c         | 6 +++---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c    | 2 +-
 6 files changed, 11 insertions(+), 13 deletions(-)

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
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 86fee10..d374ce9 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -463,7 +463,7 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 		break;
 
 	case BTC_GET_BL_WIFI_UNDER_5G:
-		*pu8 = (pHalData->CurrentBandType == 1) ? true : false;
+		*pu8 = pHalData->CurrentBandType == 1;
 		break;
 
 	case BTC_GET_BL_WIFI_AP_MODE_ENABLE:
@@ -1416,10 +1416,7 @@ u8 hal_btcoex_Initialize(struct adapter *padapter)
 
 
 	memset(&GLBtCoexist, 0, sizeof(GLBtCoexist));
-	ret1 = EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
-	ret2 = (ret1 == true) ? true : false;
-
-	return ret2;
+	return EXhalbtcoutsrc_InitlizeVariables((void *)padapter);
 }
 
 void hal_btcoex_PowerOnSetting(struct adapter *padapter)
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
index 6dfb06a..63bca67 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1020,7 +1020,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 			rtw_btcoex_IQKNotify(padapter, true);
 
 			restore_iqk_rst = (pwrpriv->bips_processing == true) ? true : false;
-			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2 ? true : false;
+			b2Ant = pHalData->EEPROMBluetoothAntNum == Ant_x2;
 			PHY_IQCalibrate_8723B(padapter, false, restore_iqk_rst, b2Ant, pHalData->ant_path);
 			pHalData->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
 
-- 
2.7.4


