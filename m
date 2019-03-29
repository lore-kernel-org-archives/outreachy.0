X-GM-THRID: 6673867872334249984
X-Received: by 2002:a24:6fcb:: with SMTP id x194mr1982583itb.8.1553880952802;
        Fri, 29 Mar 2019 10:35:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:456a:: with SMTP id y103ls904389ita.2.gmail; Fri, 29 Mar
 2019 10:35:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwoU7bG/OaeW80pKJE8DQeVG1zd2Ql83FWr15Jt+hGgA6RkMDvgPrtgEmyuFDesJtqafAfs
X-Received: by 2002:a24:455b:: with SMTP id y88mr1958858ita.14.1553880951520;
        Fri, 29 Mar 2019 10:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553880951; cv=none;
        d=google.com; s=arc-20160816;
        b=jteLYRfkX761JBRlPgoH6Y5AnWcFQgpZcmkw7d+VU9uTIav9a9UHk6Am5gtKOTQwRT
         FZyDM+4s1fD4TyQ4//r1Mh9p2/j61tjWYtKGDTr1gS1RIqKw0MfLNne1WfAj2g71n01S
         pakPQ9KW0gntcVl3y25y+rIWSCkRn3HCwN+PCCcrGvHYxHI6tjve+cLIBfMbfLw8kz2K
         X4xYaKvcQaule/jc5NORmhFLSVm+UWxwVoCEs4mfao4COA93TCWGVVysd9HUVvxT92cJ
         lbmz/qubhaAowqgxbS1BAvJzD3WTg8BrTvmx7kmG7lUxx6ZTWPoHTFqNgJraOwr2lC8v
         3QEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Rvx2OhT2R5SGvASvvcju84/jj7NwnC8K6Ons7UN/8OA=;
        b=03MaTumNPvzRrnNEtrCE0dYg4x0h66UZqghjwVtZ9+EVhzkKrXq84CsjfKJmHgvexJ
         89KiyhOqSBKDjEdPa4uPDptBg4I4ma59by7cq/2L1Y3REqdqzSbeWehSrYaNDqR0z0iD
         qF+H2yAxMN86XbJNmXQGgTGKBfTOsDj7tkHyv6Y2nFbypCaFhsZVZdbMoLg1N+QCNqsO
         mg+EQTAIbTbt/XKQztEvB4O4km5TvE1SOLWWMvxUNVMgqXBQMzekpx8ba5NFs0AQN4E2
         TM/EGC+W5QhgUNjmSL6eFJiaAp8rn2gvMCHeMVBYC7zq1ZLOyj3EpoHr6F9QwF7wooRx
         VeOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TcX8QOKD;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r17si751561itb.4.2019.03.29.10.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 10:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TcX8QOKD;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i17so1379701pfo.6
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 10:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Rvx2OhT2R5SGvASvvcju84/jj7NwnC8K6Ons7UN/8OA=;
        b=TcX8QOKDVZrHW0U6K4uLs+fbEhu0/Q6e7n2IEdv5P0U1+2HGtECoc+IbKdff3FCfVK
         QMHMIUTDLhtBnK3Y5bujd/aCMh5G93HpdLGSOjT49+VJxRFOJyu4dBXamhBefwHL+6s7
         +yO+YFmUv8jh1Q8XfCEwKpaQ1Q7KkqOOVOM0nJVjXXgiGvCEI5Uq0h3jASl82bbnzWHH
         a95sQBX2krA5WK4TLR4vxAcr+VYyxDtzJc7XIzUibWzsq1OqXmAUpZYOZz2YYx2ZpsL9
         3sSFSpWA3/JMFfiwqSporPaU/4CYgX4MkmlKlto98GOmMGk/vjtGvEQqL08ppqlOqrtr
         beaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Rvx2OhT2R5SGvASvvcju84/jj7NwnC8K6Ons7UN/8OA=;
        b=h2oMOuIlkwJK4zWaLK/LAJUjGzGA5ujmW8z8pbj10budalQlJreTum92aBEqjWShZm
         dC9c0iw3wcsYrlXdD7lHBpqTjFD2fGhvqIU/WsONMLKqRjl9tTrW9q5d03Zbx1dwUnTT
         s4Oa2ShFbQAxuReFn9s0u8NmN/r4KyxItQ8BaP2UXRgk8H491n5zA7c5fM5OLRNlrqRJ
         YSIj7uG6BdKAhw1JJcl7Yjkhk3B9gDlfMQ7Lb1SOkIxENF0UT4H2GFk6v7Kvowilwy4P
         vkriCmqZQo5hHhSc011TymlYvYDrEfxwChnQRa/NzH7IGCo1Mzqa17KARN663DAIfHr4
         vmHA==
X-Gm-Message-State: APjAAAUN46bsvxbvLWCgpCKAlsoRT7E5ucl+LLPYkAjuSog8P32VJqUp
	XSdun9p4t8pcRqBmZiEShJG+oDp4
X-Received: by 2002:a63:5b4d:: with SMTP id l13mr2058296pgm.160.1553880950636;
        Fri, 29 Mar 2019 10:35:50 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.161.165])
        by smtp.gmail.com with ESMTPSA id 10sm4080641pfh.14.2019.03.29.10.35.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 10:35:49 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: Compress two lines into one line
Date: Fri, 29 Mar 2019 23:05:17 +0530
Message-Id: <1553880917-2839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.

This patch compress two lines into one line using following semantic patch:

@@
local idexpression ret;
expression e;
@@

-ret = e;
+return e;
-return ret;

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
diff -u -p a/hal/rtl8723b_rf6052.c b/hal/rtl8723b_rf6052.c
--- a/hal/rtl8723b_rf6052.c
+++ b/hal/rtl8723b_rf6052.c
@@ -208,8 +208,7 @@ int PHY_RF6052_Config8723B(struct adapte
 	/*  */
 	/*  Config BB and RF */
 	/*  */
-	rtStatus = phy_RF6052_Config_ParaFile(Adapter);
-	return rtStatus;
+	return phy_RF6052_Config_ParaFile(Adapter);
 
 }
 
diff -u -p a/hal/hal_btcoex.c b/hal/hal_btcoex.c
--- a/hal/hal_btcoex.c
+++ b/hal/hal_btcoex.c
@@ -351,9 +351,7 @@ static u32 halbtcoutsrc_GetWifiLinkStatu
 		numOfConnectedPort++;
 	}
 
-	retVal = (numOfConnectedPort << 16) | portConnectedStatus;
-
-	return retVal;
+	return (numOfConnectedPort << 16) | portConnectedStatus;
 }
 
 static u32 halbtcoutsrc_GetBtPatchVer(PBTC_COEXIST pBtCoexist)
@@ -369,9 +367,7 @@ static s32 halbtcoutsrc_GetWifiRssi(stru
 
 	pHalData = GET_HAL_DATA(padapter);
 
-	UndecoratedSmoothedPWDB = pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
-
-	return UndecoratedSmoothedPWDB;
+	return pHalData->dmpriv.EntryMinUndecoratedSmoothedPWDB;
 }
 
 static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
@@ -1698,8 +1694,5 @@ u32 hal_btcoex_GetDBG(struct adapter *pa
 	leftSize -= count;
 
 exit:
-	count = pstr - pStrBuf;
-/* 	DBG_871X(FUNC_ADPT_FMT ": usedsize =%d\n", FUNC_ADPT_ARG(padapter), count); */
-
-	return count;
+	return pstr - pStrBuf;
 }
diff -u -p a/hal/rtl8723b_phycfg.c b/hal/rtl8723b_phycfg.c
--- a/hal/rtl8723b_phycfg.c
+++ b/hal/rtl8723b_phycfg.c
@@ -68,9 +68,7 @@ u32 PHY_QueryBBReg_8723B(struct adapter
 
 	OriginalValue = rtw_read32(Adapter, RegAddr);
 	BitShift = phy_CalculateBitShift(BitMask);
-	ReturnValue = (OriginalValue & BitMask) >> BitShift;
-
-	return ReturnValue;
+	return (OriginalValue & BitMask) >> BitShift;
 
 }
 
@@ -293,9 +291,7 @@ u32 PHY_QueryRFReg_8723B(
 	Original_Value = phy_RFSerialRead_8723B(Adapter, eRFPath, RegAddr);
 
 	BitShift =  phy_CalculateBitShift(BitMask);
-	Readback_Value = (Original_Value & BitMask) >> BitShift;
-
-	return Readback_Value;
+	return (Original_Value & BitMask) >> BitShift;
 }
 
 /**
diff -u -p a/hal/odm_CfoTracking.c b/hal/odm_CfoTracking.c
--- a/hal/odm_CfoTracking.c
+++ b/hal/odm_CfoTracking.c
@@ -52,9 +52,7 @@ static u8 odm_GetDefaultCrytaltalCap(voi
 
 	CrystalCap = pHalData->CrystalCap;
 
-	CrystalCap = CrystalCap & 0x3f;
-
-	return CrystalCap;
+	return CrystalCap & 0x3f;
 }
 
 static void odm_SetATCStatus(void *pDM_VOID, bool ATCStatus)
@@ -79,12 +77,9 @@ static bool odm_GetATCStatus(void *pDM_V
 	bool ATCStatus;
 	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 
-	ATCStatus = (bool)PHY_QueryBBReg(
-		pDM_Odm->Adapter,
-		ODM_REG(BB_ATC, pDM_Odm),
-		ODM_BIT(BB_ATC, pDM_Odm)
-	);
-	return ATCStatus;
+	return (bool)PHY_QueryBBReg(pDM_Odm->Adapter,
+				    ODM_REG(BB_ATC, pDM_Odm),
+				    ODM_BIT(BB_ATC, pDM_Odm));
 }
 
 void ODM_CfoTrackingReset(void *pDM_VOID)
diff -u -p a/hal/hal_com.c b/hal/hal_com.c
--- a/hal/hal_com.c
+++ b/hal/hal_com.c
@@ -973,8 +973,7 @@ u8 rtw_get_mgntframe_raid(struct adapter
 {
 
 	u8 raid;
-	raid = (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
-	return raid;
+	return (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
 }
 
 void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta)
diff -u -p a/hal/hal_com_phycfg.c b/hal/hal_com_phycfg.c
--- a/hal/hal_com_phycfg.c
+++ b/hal/hal_com_phycfg.c
@@ -1498,9 +1498,7 @@ s8 PHY_GetTxPowerByRate(
 		return value;
 	}
 
-	value = pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
-
-	return value;
+	return pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
 
 }
 
diff -u -p a/core/rtw_efuse.c b/core/rtw_efuse.c
--- a/core/rtw_efuse.c
+++ b/core/rtw_efuse.c
@@ -127,9 +127,8 @@ Efuse_GetCurrentSize(
 {
 	u16 ret = 0;
 
-	ret = padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType,
+						     bPseudoTest);
 }
 
 /*  11/16/2008 MH Add description. Get current efuse area enabled word!!. */
@@ -253,8 +252,7 @@ u16 	Address)
 				break;
 			}
 		}
-		data = rtw_read8(Adapter, EFUSE_CTRL);
-		return data;
+		return rtw_read8(Adapter, EFUSE_CTRL);
 	} else
 		return 0xFF;
 
@@ -276,8 +274,7 @@ bool		bPseudoTest)
 	/* DBG_871X("===> EFUSE_OneByteRead() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
 
 	if (bPseudoTest) {
-		bResult = Efuse_Read1ByteFromFakeContent(padapter, addr, data);
-		return bResult;
+		return Efuse_Read1ByteFromFakeContent(padapter, addr, data);
 	}
 
 	/*  <20130121, Kordan> For SMIC EFUSE specificatoin. */
@@ -329,8 +326,7 @@ bool		bPseudoTest)
 	/* DBG_871X("===> EFUSE_OneByteWrite() start, 0x34 = 0x%X\n", rtw_read32(padapter, EFUSE_TEST)); */
 
 	if (bPseudoTest) {
-		bResult = Efuse_Write1ByteToFakeContent(padapter, addr, data);
-		return bResult;
+		return Efuse_Write1ByteToFakeContent(padapter, addr, data);
 	}
 
 
@@ -380,9 +376,8 @@ Efuse_PgPacketRead(struct adapter *padap
 {
 	int	ret = 0;
 
-	ret =  padapter->HalFunc.Efuse_PgPacketRead(padapter, offset, data, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.Efuse_PgPacketRead(padapter, offset, data,
+						    bPseudoTest);
 }
 
 int
@@ -394,9 +389,9 @@ Efuse_PgPacketWrite(struct adapter *pada
 {
 	int ret;
 
-	ret =  padapter->HalFunc.Efuse_PgPacketWrite(padapter, offset, word_en, data, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.Efuse_PgPacketWrite(padapter, offset,
+						     word_en, data,
+						     bPseudoTest);
 }
 
 /*-----------------------------------------------------------------------------
@@ -449,9 +444,10 @@ Efuse_WordEnableDataWrite(struct adapter
 {
 	u8 ret = 0;
 
-	ret =  padapter->HalFunc.Efuse_WordEnableDataWrite(padapter, efuse_addr, word_en, data, bPseudoTest);
-
-	return ret;
+	return padapter->HalFunc.Efuse_WordEnableDataWrite(padapter,
+							   efuse_addr,
+							   word_en, data,
+							   bPseudoTest);
 }
 
 /*-----------------------------------------------------------------------------
diff -u -p a/core/rtw_pwrctrl.c b/core/rtw_pwrctrl.c
--- a/core/rtw_pwrctrl.c
+++ b/core/rtw_pwrctrl.c
@@ -1403,7 +1403,5 @@ u32 rtw_ps_deny_get(struct adapter *pada
 	u32 deny;
 
 
-	deny = adapter_to_pwrctl(padapter)->ps_deny;
-
-	return deny;
+	return adapter_to_pwrctl(padapter)->ps_deny;
 }
diff -u -p a/core/rtw_io.c b/core/rtw_io.c
--- a/core/rtw_io.c
+++ b/core/rtw_io.c
@@ -45,8 +45,7 @@ u8 _rtw_read8(struct adapter *adapter, u
 
 	_read8 = pintfhdl->io_ops._read8;
 
-	r_val = _read8(pintfhdl, addr);
-	return r_val;
+	return _read8(pintfhdl, addr);
 }
 
 u16 _rtw_read16(struct adapter *adapter, u32 addr)
@@ -146,9 +145,7 @@ u32 _rtw_write_port(struct adapter *adap
 
 	_write_port = pintfhdl->io_ops._write_port;
 
-	ret = _write_port(pintfhdl, addr, cnt, pmem);
-
-	return ret;
+	return _write_port(pintfhdl, addr, cnt, pmem);
 }
 
 int rtw_init_io_priv(struct adapter *padapter, void (*set_intf_ops)(struct adapter *padapter, struct _io_ops *pops))
diff -u -p a/core/rtw_mlme.c b/core/rtw_mlme.c
--- a/core/rtw_mlme.c
+++ b/core/rtw_mlme.c
@@ -355,8 +355,7 @@ int	rtw_init_mlme_priv(struct adapter *p
 {
 	int	res;
 
-	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
-	return res;
+	return _rtw_init_mlme_priv(padapter);
 }
 
 void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
@@ -380,8 +379,7 @@ struct	wlan_network *rtw_alloc_network(s
 {
 	struct	wlan_network	*pnetwork;
 
-	pnetwork = _rtw_alloc_network(pmlmepriv);
-	return pnetwork;
+	return _rtw_alloc_network(pmlmepriv);
 }
 
 void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork);
diff -u -p a/core/rtw_btcoex.c b/core/rtw_btcoex.c
--- a/core/rtw_btcoex.c
+++ b/core/rtw_btcoex.c
@@ -108,9 +108,7 @@ s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(str
 {
 	s32 coexctrl;
 
-	coexctrl = hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter);
-
-	return coexctrl;
+	return hal_btcoex_IsBTCoexCtrlAMPDUSize(padapter);
 }
 
 void rtw_btcoex_SetManualControl(struct adapter *padapter, u8 manual)
diff -u -p a/core/rtw_recv.c b/core/rtw_recv.c
--- a/core/rtw_recv.c
+++ b/core/rtw_recv.c
@@ -2390,8 +2390,7 @@ int process_recv_indicatepkts(struct ada
 
 			if ((padapter->bDriverStopped == false) &&
 			    (padapter->bSurpriseRemoved == false)) {
-				retval = _FAIL;
-				return retval;
+				return _FAIL;
 			}
 		}
 	} else { /* B/G mode */
@@ -2414,8 +2413,7 @@ int process_recv_indicatepkts(struct ada
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ process_recv_indicatepkts- recv_func free_indicatepkt\n"));
 
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
-			retval = _FAIL;
-			return retval;
+			return _FAIL;
 		}
 
 	}
diff -u -p a/core/rtw_mlme_ext.c b/core/rtw_mlme_ext.c
--- a/core/rtw_mlme_ext.c
+++ b/core/rtw_mlme_ext.c
@@ -3581,9 +3581,7 @@ s32 issue_nulldata_in_interrupt(struct a
 	if (da == NULL)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
-	ret = _issue_nulldata(padapter, da, 0, false);
-
-	return ret;
+	return _issue_nulldata(padapter, da, 0, false);
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
diff -u -p a/core/rtw_cmd.c b/core/rtw_cmd.c
--- a/core/rtw_cmd.c
+++ b/core/rtw_cmd.c
@@ -299,16 +299,14 @@ u32 rtw_init_cmd_priv(struct cmd_priv *p
 {
 	u32 res;
 
-	res = _rtw_init_cmd_priv(pcmdpriv);
-	return res;
+	return _rtw_init_cmd_priv(pcmdpriv);
 }
 
 u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
 {
 	int	res;
 
-	res = _rtw_init_evt_priv(pevtpriv);
-	return res;
+	return _rtw_init_evt_priv(pevtpriv);
 }
 
 void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
@@ -377,9 +375,7 @@ struct	cmd_obj	*rtw_dequeue_cmd(struct c
 {
 	struct cmd_obj *cmd_obj;
 
-	cmd_obj = _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
-
-	return cmd_obj;
+	return _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
 }
 
 void rtw_free_cmd_obj(struct cmd_obj *pcmd)
diff -u -p a/core/rtw_sta_mgt.c b/core/rtw_sta_mgt.c
--- a/core/rtw_sta_mgt.c
+++ b/core/rtw_sta_mgt.c
@@ -204,8 +204,7 @@ struct	sta_info *rtw_alloc_stainfo(struc
 	if (list_empty(&pfree_sta_queue->queue)) {
 		/* spin_unlock_bh(&(pfree_sta_queue->lock)); */
 		spin_unlock_bh(&(pstapriv->sta_hash_lock));
-		psta = NULL;
-		return psta;
+		return NULL;
 	} else {
 		psta = LIST_CONTAINOR(get_next(&pfree_sta_queue->queue), struct sta_info, list);
 
@@ -590,8 +589,7 @@ struct sta_info *rtw_get_bcmc_stainfo(st
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 
-	psta = rtw_get_stainfo(pstapriv, bc_addr);
-	return psta;
+	return rtw_get_stainfo(pstapriv, bc_addr);
 }
 
 u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
diff -u -p a/os_dep/ioctl_cfg80211.c b/os_dep/ioctl_cfg80211.c
--- a/os_dep/ioctl_cfg80211.c
+++ b/os_dep/ioctl_cfg80211.c
@@ -2525,9 +2525,7 @@ static netdev_tx_t rtw_cfg80211_monitor_
 		DBG_8192C("should be eapol packet\n");
 
 		/* Use the real net device to transmit the packet */
-		ret = _rtw_xmit_entry(skb, padapter->pnetdev);
-
-		return ret;
+		return _rtw_xmit_entry(skb, padapter->pnetdev);
 
 	}
 	else if ((frame_control & (IEEE80211_FCTL_FTYPE|IEEE80211_FCTL_STYPE))
@@ -2849,9 +2847,8 @@ static int cfg80211_rtw_change_beacon(st
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	ret = rtw_add_beacon(adapter, info->head, info->head_len, info->tail, info->tail_len);
-
-	return ret;
+	return rtw_add_beacon(adapter, info->head, info->head_len, info->tail,
+			      info->tail_len);
 }
 
 static int cfg80211_rtw_stop_ap(struct wiphy *wiphy, struct net_device *ndev)
@@ -2896,9 +2893,7 @@ static int cfg80211_rtw_del_station(stru
 
 		flush_all_cam_entry(padapter);	/* clear CAM */
 
-		ret = rtw_sta_flush(padapter);
-
-		return ret;
+		return rtw_sta_flush(padapter);
 	}
 
 
diff -u -p a/os_dep/rtw_proc.c b/os_dep/rtw_proc.c
--- a/os_dep/rtw_proc.c
+++ b/os_dep/rtw_proc.c
@@ -21,9 +21,7 @@ inline struct proc_dir_entry *rtw_proc_c
 {
 	struct proc_dir_entry *entry;
 
-	entry = proc_mkdir_data(name, S_IRUGO|S_IXUGO, parent, data);
-
-	return entry;
+	return proc_mkdir_data(name, S_IRUGO | S_IXUGO, parent, data);
 }
 
 inline struct proc_dir_entry *rtw_proc_create_entry(const char *name, struct proc_dir_entry *parent,
@@ -31,9 +29,7 @@ inline struct proc_dir_entry *rtw_proc_c
 {
 	struct proc_dir_entry *entry;
 
-	entry = proc_create_data(name,  S_IFREG|S_IRUGO, parent, fops, data);
-
-	return entry;
+	return proc_create_data(name, S_IFREG | S_IRUGO, parent, fops, data);
 }
 
 static int proc_get_dummy(struct seq_file *m, void *v)

