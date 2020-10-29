X-GM-THRID: 6889129421220872192
X-Received: by 2002:a05:6102:2c1:: with SMTP id h1mr5101601vsh.44.1604000447756;
        Thu, 29 Oct 2020 12:40:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fe4a:: with SMTP id m10ls585672vsr.8.gmail; Thu, 29 Oct
 2020 12:40:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyFp2BcDuwQMw7ssXIs4B8dgGHQ6MtL5VrIaBDKuvJEux7SacFLQsi1A5sotwWgnuWjJ5r0
X-Received: by 2002:a67:f954:: with SMTP id u20mr5037220vsq.5.1604000446333;
        Thu, 29 Oct 2020 12:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000446; cv=none;
        d=google.com; s=arc-20160816;
        b=S2w5srLkfTor8a/o+IyWlFSFDrtXPiBFOMEfwOIDtTrv6s0SbTpeLtd0hZ7OF0mLdF
         W0LFqS5PrbEmNku90qAigUWpJyAfWCAm1VSRhDQAhdsUymfPk+RNNET2yQ5ymjeq0UyR
         QWVdC9Qrc7/2C2OTZdQ236n1pK357RaauHRpp2tKwYJpoAs/Qovx2qR4lXB2u90P7mjP
         hm+mDzsfnq3/EI7uE8j0We0ewoYVDkEM+xAaJm1XPDymfA9ChU8wkBe/YQlabEAl5wAR
         Adczd95amLUeg8aF+sK4NBce5NBom9aeE40GGCzjd9ocf8dXvkZKDP2kzJTf/FGMwFNl
         nyNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qoDKRdttPs7fWyGEAlJY/ByVxsG7tpV/Xa/FpGZcIsk=;
        b=mZm5Guyk0hbjY+t6CWruIR8yw1QAzthBpLcdj+7FkQbghvi6QO3sgizljEddnDb6i8
         /O4yMkpMoarhJsXpDuxnxkX1Q1pulg2GOywM0l2iakUS3rh6cnF7iay8f9q3ZAOZRqwW
         wbu6/SYznQa6vr2rqcoI7c7Hjagt7hMIONmvuMPsIYggvS966bC93aOv0eFso5ILhOju
         NumrGPg+FTXIeS4mDS6JerzmYyIhVCJNmwHj/l9844klXIcJDFItgVJhRMQMd17tf/vc
         0O1Yfewyy7Faak7EGjqgKlJn3mJC5+GrjH112uniGOo15PQT0iovafs/i/zhKGJ4B9c7
         gkBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTZ5C0XN;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id e7si307767vsr.2.2020.10.29.12.40.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTZ5C0XN;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id r10so3188909pgb.10
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qoDKRdttPs7fWyGEAlJY/ByVxsG7tpV/Xa/FpGZcIsk=;
        b=BTZ5C0XNnyKk5/jlyjNA9y8QI5karO8oSLn6fktiz7HRj0C+y5N0ppBnjuUhatNJ/9
         tU00/UfaNllyrdMRbLAugAkWsx2OMxlJsih9vAQiuVLacUkts6T4I5z1jZYXrvkkQTCt
         GMaCmvcucnzO+ivF/zFRMpHTZtbtzhkB4rGIscO7mZPzzgWlmvoNQe3MWBQdKikuiR6T
         PeugMivRvHMjrMqrEsjciCkw67LDogP049F/GnW32SFkCITlvzZIIpWkSTl8ciXsCNdK
         LIXruCOvawNa9AsNQzMgSZBXd42LIVypvMfkT9/pdbg7L+Fvx2/S8mTF+P+fPx/Jgj3s
         1cxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qoDKRdttPs7fWyGEAlJY/ByVxsG7tpV/Xa/FpGZcIsk=;
        b=mViylCicQRnqRm6yGN3aMc/0hxdhNdw9B2Ah2+2p1h9DXuUed4DLWiZwILFeS3auxq
         kc5MlzQd7Dh8lkmq5Bd7hLZ4Jmm8AzR9OLJHWoyU+TiR652JLmDLOGJmjkImwGFhVRIG
         G2IIKT0cBQZBfD2oXBYIPKKpJ2tQjNNUd2saNzWsaJVWTN3xzTL+xLJEGXh57mKA6Xgo
         8k3cYXcisTY/0JMoRj89PZOhpGcZJBHYw0GymzgSX7ycKLJtXUnIJ7W845pkh9TPrqo1
         9HwvgiPJ4te75zVE76qoTwlS9OJ9KfOKhOTBZM427H4olyxjmvr+C54ku7jJUdfoV53r
         a0mQ==
X-Gm-Message-State: AOAM5314eU02mEf0+kxBeDhPT8+YyFUV/O/+xSRNJl0TzFyfLYXGUX9Q
	cdQ83ajgEyfuQk+pxosmFEc=
X-Received: by 2002:aa7:8154:0:b029:156:4b89:8072 with SMTP id d20-20020aa781540000b02901564b898072mr5916330pfn.51.1604000445367;
        Thu, 29 Oct 2020 12:40:45 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.185.125])
        by smtp.googlemail.com with ESMTPSA id 9sm6397715pjs.1.2020.10.29.12.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:40:44 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 3/4] staging: rtl8723bs: hal: fix unnecessary braces
Date: Fri, 30 Oct 2020 03:40:28 +0800
Message-Id: <20201029194029.141165-4-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029194029.141165-1-amarjargal16@gmail.com>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix following checkpatch warnings:
WARNING: braces {} are not necessary for single statement blocks
WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   | 26 +++----
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 30 ++++----
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    |  9 ++-
 .../rtl8723bs/hal/odm_RegConfig8723B.c        |  7 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 12 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |  7 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 68 +++++++------------
 .../staging/rtl8723bs/hal/rtl8723bs_recv.c    |  6 +-
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    | 12 ++--
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |  6 +-
 10 files changed, 68 insertions(+), 115 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 1f5df0c7131a..6701e07bcd1b 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -2034,9 +2034,8 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 
 		if (!bScan && !bLink && !bRoam)
 			halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, pCoexDm->psTdmaDuAdjType);
-		else {
+		else
 			BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\n"));
-		}
 	}
 }
 
@@ -3289,20 +3288,18 @@ void EXhalbtc8723b2ant_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 
 void EXhalbtc8723b2ant_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (type == BTC_SCAN_START) {
+	if (type == BTC_SCAN_START)
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n"));
-	} else if (type == BTC_SCAN_FINISH) {
+	else if (type == BTC_SCAN_FINISH)
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n"));
-	}
 }
 
 void EXhalbtc8723b2ant_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (type == BTC_ASSOCIATE_START) {
+	if (type == BTC_ASSOCIATE_START)
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
-	} else if (type == BTC_ASSOCIATE_FINISH) {
+	else if (type == BTC_ASSOCIATE_FINISH)
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT FINISH notify\n"));
-	}
 }
 
 void EXhalbtc8723b2ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
@@ -3312,11 +3309,10 @@ void EXhalbtc8723b2ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	u8 wifiCentralChnl;
 	u8 apNum = 0;
 
-	if (type == BTC_MEDIA_CONNECT) {
+	if (type == BTC_MEDIA_CONNECT)
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA connect notify\n"));
-	} else {
+	else
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA disconnect notify\n"));
-	}
 
 	/*  only 2.4G we need to inform bt the chnl mask */
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_CENTRAL_CHNL, &wifiCentralChnl);
@@ -3353,9 +3349,8 @@ void EXhalbtc8723b2ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
 
 void EXhalbtc8723b2ant_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 type)
 {
-	if (type == BTC_PACKET_DHCP) {
+	if (type == BTC_PACKET_DHCP)
 		BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], DHCP Packet notify\n"));
-	}
 }
 
 void EXhalbtc8723b2ant_BtInfoNotify(
@@ -3381,11 +3376,10 @@ void EXhalbtc8723b2ant_BtInfoNotify(
 		if (i == 1)
 			btInfo = tmpBuf[i];
 
-		if (i == length-1) {
+		if (i == length-1)
 			BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("0x%02x]\n", tmpBuf[i]));
-		} else {
+		else
 			BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("0x%02x, ", tmpBuf[i]));
-		}
 	}
 
 	if (pBtCoexist->bManualControl) {
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 8aa888740929..4a2de254a519 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -1298,9 +1298,8 @@ static void _PHY_SaveADDARegisters8723B(
 		return;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save ADDA parameters.\n"));
-	for (i = 0 ; i < RegisterNum ; i++) {
+	for (i = 0 ; i < RegisterNum ; i++)
 		ADDABackup[i] = PHY_QueryBBReg(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord);
-	}
 }
 
 
@@ -1313,9 +1312,9 @@ static void _PHY_SaveMACRegisters8723B(
 	PDM_ODM_T		pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Save MAC parameters.\n"));
-	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
+	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++)
 		MACBackup[i] = rtw_read8(pDM_Odm->Adapter, MACReg[i]);
-	}
+
 	MACBackup[i] = rtw_read32(pDM_Odm->Adapter, MACReg[i]);
 
 }
@@ -1333,9 +1332,8 @@ static void _PHY_ReloadADDARegisters8723B(
 	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Reload ADDA power saving parameters !\n"));
-	for (i = 0 ; i < RegiesterNum; i++) {
+	for (i = 0 ; i < RegiesterNum; i++)
 		PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord, ADDABackup[i]);
-	}
 }
 
 static void _PHY_ReloadMACRegisters8723B(
@@ -1344,9 +1342,9 @@ static void _PHY_ReloadMACRegisters8723B(
 {
 	u32 i;
 
-	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
+	for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++)
 		rtw_write8(padapter, MACReg[i], (u8)MACBackup[i]);
-	}
+
 	rtw_write32(padapter, MACReg[i], MACBackup[i]);
 }
 
@@ -1372,9 +1370,8 @@ static void _PHY_PathADDAOn8723B(
 		PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[0], bMaskDWord, pathOn);
 	}
 
-	for (i = 1 ; i < IQK_ADDA_REG_NUM ; i++) {
+	for (i = 1 ; i < IQK_ADDA_REG_NUM ; i++)
 		PHY_SetBBReg(pDM_Odm->Adapter, ADDAReg[i], bMaskDWord, pathOn);
-	}
 
 }
 
@@ -1390,9 +1387,9 @@ static void _PHY_MACSettingCalibration8723B(
 
 	rtw_write8(pDM_Odm->Adapter, MACReg[i], 0x3F);
 
-	for (i = 1 ; i < (IQK_MAC_REG_NUM - 1); i++) {
+	for (i = 1 ; i < (IQK_MAC_REG_NUM - 1); i++)
 		rtw_write8(pDM_Odm->Adapter, MACReg[i], (u8)(MACBackup[i]&(~BIT3)));
-	}
+
 	rtw_write8(pDM_Odm->Adapter, MACReg[i], (u8)(MACBackup[i]&(~BIT5)));
 
 }
@@ -1623,9 +1620,8 @@ static void phy_IQCalibrate_8723B(
 		}
 	}
 
-	if (PathAOK == 0x00) {
+	if (PathAOK == 0x00)
 		ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A IQK failed!!\n"));
-	}
 
 /* path B IQK */
 	if (is2T) {
@@ -1661,9 +1657,8 @@ static void phy_IQCalibrate_8723B(
 		}
 
 /* Allen end */
-		if (PathBOK == 0x00) {
+		if (PathBOK == 0x00)
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B IQK failed!!\n"));
-		}
 	}
 
 	/* Back to BB mode, load original value */
@@ -1746,9 +1741,8 @@ static void phy_LCCalibrate_8723B(PDM_ODM_T pDM_Odm, bool is2T)
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFFE0); /*  LDO OFF */
 
 	/*  Channel 10 LC calibration issue for 8723bs with 26M xtal */
-	if (pDM_Odm->SupportInterface == ODM_ITRF_SDIO && pDM_Odm->PackageType >= 0x2) {
+	if (pDM_Odm->SupportInterface == ODM_ITRF_SDIO && pDM_Odm->PackageType >= 0x2)
 		PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits, LC_Cal);
-	}
 
 	/* Restore original situation */
 	if ((tmpReg&0x70) != 0) { /* Deal with contisuous TX case */
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 63421ffe9f40..a9b83118ec42 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1142,15 +1142,14 @@ void EXhalbtcoutsrc_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 pktType)
 	if (pBtCoexist->bManualControl)
 		return;
 
-	if (pktType == PACKET_DHCP) {
+	if (pktType == PACKET_DHCP)
 		packetType = BTC_PACKET_DHCP;
-	} else if (pktType == PACKET_EAPOL) {
+	else if (pktType == PACKET_EAPOL)
 		packetType = BTC_PACKET_EAPOL;
-	} else if (pktType == PACKET_ARP) {
+	else if (pktType == PACKET_ARP)
 		packetType = BTC_PACKET_ARP;
-	} else {
+	else
 		return;
-	}
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
 /*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
diff --git a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
index 39f989bf3410..fd0952615f8a 100644
--- a/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
+++ b/drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.c
@@ -181,9 +181,9 @@ void odm_ConfigBB_PHY_REG_PG_8723B(
 {
 	if (Addr == 0xfe || Addr == 0xffe)
 		msleep(50);
-	else {
+	else
 		PHY_StoreTxPowerByRate(pDM_Odm->Adapter, Band, RfPath, TxNum, Addr, Bitmask, Data);
-	}
+
 	ODM_RT_TRACE(
 		pDM_Odm,
 		ODM_COMP_INIT,
@@ -216,9 +216,8 @@ void odm_ConfigBB_PHY_8723B(
 		udelay(5);
 	else if (Addr == 0xf9)
 		udelay(1);
-	else {
+	else
 		PHY_SetBBReg(pDM_Odm->Adapter, Addr, Bitmask, Data);
-	}
 
 	/*  Add 1us delay between BB/RF register setting. */
 	udelay(1);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 20b4173bd0fc..4ad1fb9aecf9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -28,9 +28,8 @@ static u8 _is_fw_read_cmd_down(struct adapter *padapter, u8 msgbox_num)
 
 	do {
 		valid = rtw_read8(padapter, REG_HMETFR) & BIT(msgbox_num);
-		if (valid == 0) {
+		if (valid == 0)
 			read_down = true;
-		}
 #ifdef CONFIG_WOWLAN
 		else
 			msleep(1);
@@ -65,13 +64,11 @@ s32 FillH2CCmd8723B(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmd
 	if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->h2c_fwcmd_mutex)))
 		return ret;
 
-	if (!pCmdBuffer) {
+	if (!pCmdBuffer)
 		goto exit;
-	}
 
-	if (CmdLen > RTL8723B_MAX_CMD_LEN) {
+	if (CmdLen > RTL8723B_MAX_CMD_LEN)
 		goto exit;
-	}
 
 	if (padapter->bSurpriseRemoved)
 		goto exit;
@@ -437,9 +434,8 @@ static void ConstructARPResponse(
 
 		psta = rtw_get_stainfo(&padapter->stapriv, get_my_bssid(&(pmlmeinfo->network)));
 		if (psta) {
-			if (!memcmp(&psta->dot11tkiptxmickey.skey[0], null_key, 16)) {
+			if (!memcmp(&psta->dot11tkiptxmickey.skey[0], null_key, 16))
 				DBG_871X("%s(): STA dot11tkiptxmickey == 0\n", __func__);
-			}
 			/* start to calculate the mic code */
 			rtw_secmicsetkey(&micdata, &psta->dot11tkiptxmickey.skey[0]);
 		}
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index cb55b60dec53..2ecb201bb459 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -54,13 +54,12 @@ static void Init_ODM_ComInfo_8723b(struct adapter *Adapter)
 	ODM_CmnInfoInit(pDM_Odm, ODM_CMNINFO_BWIFI_TEST, Adapter->registrypriv.wifi_spec);
 
 
-	if (pHalData->rf_type == RF_1T1R) {
+	if (pHalData->rf_type == RF_1T1R)
 		ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_RF_TYPE, ODM_1T1R);
-	} else if (pHalData->rf_type == RF_2T2R) {
+	else if (pHalData->rf_type == RF_2T2R)
 		ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_RF_TYPE, ODM_2T2R);
-	} else if (pHalData->rf_type == RF_1T2R) {
+	else if (pHalData->rf_type == RF_1T2R)
 		ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_RF_TYPE, ODM_1T2R);
-	}
 
 	pdmpriv->InitODMFlag = ODM_RF_CALIBRATION|ODM_RF_TX_PWR_TRACK;
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index a0b871834254..1effbc6aa008 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -237,9 +237,8 @@ static s32 polling_fwdl_chksum(
 		yield();
 	} while (jiffies_to_msecs(jiffies-start) < timeout_ms || cnt < min_cnt);
 
-	if (!(value32 & FWDL_ChkSum_rpt)) {
+	if (!(value32 & FWDL_ChkSum_rpt))
 		goto exit;
-	}
 
 	if (g_fwdl_chksum_fail) {
 		DBG_871X("%s: fwdl test case: fwdl_chksum_fail\n", __func__);
@@ -287,9 +286,8 @@ static s32 _FWFreeToGo(struct adapter *adapter, u32 min_cnt, u32 timeout_ms)
 		yield();
 	} while (jiffies_to_msecs(jiffies - start) < timeout_ms || cnt < min_cnt);
 
-	if (!(value32 & WINTINI_RDY)) {
+	if (!(value32 & WINTINI_RDY))
 		goto exit;
-	}
 
 	if (g_fwdl_wintint_rdy_fail) {
 		DBG_871X("%s: fwdl test case: wintint_rdy_fail\n", __func__);
@@ -1405,9 +1403,8 @@ static u8 Hal_EfuseWordEnableDataWrite(
 
 		efuse_OneByteRead(padapter, tmpaddr, &tmpdata[0], bPseudoTest);
 		efuse_OneByteRead(padapter, tmpaddr+1, &tmpdata[1], bPseudoTest);
-		if ((data[0] != tmpdata[0]) || (data[1] != tmpdata[1])) {
+		if ((data[0] != tmpdata[0]) || (data[1] != tmpdata[1]))
 			badworden &= (~BIT(0));
-		}
 	}
 	if (!(word_en & BIT(1))) {
 		tmpaddr = start_addr;
@@ -1416,9 +1413,8 @@ static u8 Hal_EfuseWordEnableDataWrite(
 
 		efuse_OneByteRead(padapter, tmpaddr, &tmpdata[2], bPseudoTest);
 		efuse_OneByteRead(padapter, tmpaddr+1, &tmpdata[3], bPseudoTest);
-		if ((data[2] != tmpdata[2]) || (data[3] != tmpdata[3])) {
+		if ((data[2] != tmpdata[2]) || (data[3] != tmpdata[3]))
 			badworden &= (~BIT(1));
-		}
 	}
 
 	if (!(word_en & BIT(2))) {
@@ -1428,9 +1424,8 @@ static u8 Hal_EfuseWordEnableDataWrite(
 
 		efuse_OneByteRead(padapter, tmpaddr, &tmpdata[4], bPseudoTest);
 		efuse_OneByteRead(padapter, tmpaddr+1, &tmpdata[5], bPseudoTest);
-		if ((data[4] != tmpdata[4]) || (data[5] != tmpdata[5])) {
+		if ((data[4] != tmpdata[4]) || (data[5] != tmpdata[5]))
 			badworden &= (~BIT(2));
-		}
 	}
 
 	if (!(word_en & BIT(3))) {
@@ -1440,9 +1435,8 @@ static u8 Hal_EfuseWordEnableDataWrite(
 
 		efuse_OneByteRead(padapter, tmpaddr, &tmpdata[6], bPseudoTest);
 		efuse_OneByteRead(padapter, tmpaddr+1, &tmpdata[7], bPseudoTest);
-		if ((data[6] != tmpdata[6]) || (data[7] != tmpdata[7])) {
+		if ((data[6] != tmpdata[6]) || (data[7] != tmpdata[7]))
 			badworden &= (~BIT(3));
-		}
 	}
 
 	return badworden;
@@ -2166,9 +2160,8 @@ static void UpdateHalRAMask8723B(struct adapter *padapter, u32 mac_id, u8 rssi_l
 	}
 #endif
 
-	if (pHalData->fw_ractrl) {
+	if (pHalData->fw_ractrl)
 		rtl8723b_set_FwMacIdConfig_cmd(padapter, mac_id, psta->raid, psta->bw_mode, shortGIrate, mask);
-	}
 
 	/* set correct initial date rate for each mac_id */
 	pdmpriv->INIDATA_RATE[mac_id] = psta->init_rate;
@@ -2368,9 +2361,8 @@ static bool Hal_GetChnlGroup8723B(u8 Channel, u8 *pGroup)
 			*pGroup = 3;
 		else if (Channel >= 12 && Channel <= 14)
 			*pGroup = 4;
-		else {
+		else
 			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>Hal_GetChnlGroup8723B in 2.4 G, but Channel %d in Group not found\n", Channel));
-		}
 	} else {
 		bIn24G = false;
 
@@ -2402,9 +2394,8 @@ static bool Hal_GetChnlGroup8723B(u8 Channel, u8 *pGroup)
 			*pGroup = 12;
 		else if (Channel >= 173 && Channel <= 177)
 			*pGroup = 13;
-		else {
+		else
 			RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("==>Hal_GetChnlGroup8723B in 5G, but Channel %d in Group not found\n", Channel));
-		}
 
 	}
 	RT_TRACE(
@@ -2936,13 +2927,12 @@ u8 SCMapping_8723B(struct adapter *Adapter, struct pkt_attrib *pattrib)
 		if (pattrib->bwmode == CHANNEL_WIDTH_40) {
 			SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
 		} else if (pattrib->bwmode == CHANNEL_WIDTH_20) {
-			if (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER) {
+			if (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_UPPER)
 				SCSettingOfDesc = VHT_DATA_SC_20_UPPER_OF_80MHZ;
-			} else if (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) {
+			else if (pHalData->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER)
 				SCSettingOfDesc = VHT_DATA_SC_20_LOWER_OF_80MHZ;
-			} else {
+			else
 				SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
-			}
 		}
 	} else {
 		SCSettingOfDesc = VHT_DATA_SC_DONOT_CARE;
@@ -2967,9 +2957,8 @@ static void rtl8723b_cal_txdesc_chksum(struct tx_desc *ptxdesc)
 	/*  Thomas, Lucas@SD4, 20130515 */
 	count = 16;
 
-	for (index = 0; index < count; index++) {
+	for (index = 0; index < count; index++)
 		checksum |= le16_to_cpu(*(__le16 *)(usPtr + index));
-	}
 
 	ptxdesc->txdw7 |= cpu_to_le32(checksum & 0x0000ffff);
 }
@@ -3156,11 +3145,10 @@ static void rtl8723b_fill_default_txdesc(
 		ptxdesc->mbssid = pattrib->mbssid & 0xF;
 
 		ptxdesc->rty_lmt_en = 1; /*  retry limit enable */
-		if (pattrib->retry_ctrl) {
+		if (pattrib->retry_ctrl)
 			ptxdesc->data_rt_lmt = 6;
-		} else {
+		else
 			ptxdesc->data_rt_lmt = 12;
-		}
 
 		ptxdesc->datarate = MRateToHwRate(pmlmeext->tx_rate);
 
@@ -3270,9 +3258,8 @@ void rtl8723b_fill_fake_txdesc(
 		SET_TX_DESC_HWSEQ_SEL_8723B(pDesc, 0);
 	}
 
-	if (IsBTQosNull) {
+	if (IsBTQosNull)
 		SET_TX_DESC_BT_INT_8723B(pDesc, 1);
-	}
 
 	SET_TX_DESC_USE_RATE_8723B(pDesc, 1); /*  use data rate which is set by Sw */
 	SET_TX_DESC_OWN_8723B((u8 *)pDesc, 1);
@@ -3630,9 +3617,8 @@ void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len)
 
 	seq_no = *(pdata+6);
 
-	if (GET_8723B_C2H_TX_RPT_RETRY_OVER(pdata) | GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(pdata)) {
+	if (GET_8723B_C2H_TX_RPT_RETRY_OVER(pdata) | GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(pdata))
 		rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_CCX_PKT_FAIL);
-	}
 /*
 	else if (seq_no != padapter->xmitpriv.seq_no) {
 		DBG_871X("tx_seq_no =%d, rpt_seq_no =%d\n", padapter->xmitpriv.seq_no, seq_no);
@@ -3685,9 +3671,8 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 
 	case C2H_HW_INFO_EXCH:
 		RT_TRACE(_module_hal_init_c_, _drv_info_, ("[BT], C2H_HW_INFO_EXCH\n"));
-		for (index = 0; index < pC2hEvent->plen; index++) {
+		for (index = 0; index < pC2hEvent->plen; index++)
 			RT_TRACE(_module_hal_init_c_, _drv_info_, ("[BT], tmpBuf[%d]= 0x%x\n", index, pC2hEvent->payload[index]));
-		}
 		break;
 
 	case C2H_8723B_BT_INFO:
@@ -3734,9 +3719,8 @@ static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent,
 
 	case C2H_HW_INFO_EXCH:
 		RT_TRACE(_module_hal_init_c_, _drv_info_, ("[BT], C2H_HW_INFO_EXCH\n"));
-		for (index = 0; index < pC2hEvent->CmdLen; index++) {
+		for (index = 0; index < pC2hEvent->CmdLen; index++)
 			RT_TRACE(_module_hal_init_c_, _drv_info_, ("[BT], tmpBuf[%d]= 0x%x\n", index, c2hBuf[index]));
-		}
 		break;
 
 	case C2H_8723B_BT_INFO:
@@ -4044,9 +4028,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 
 			/*  Forece leave RF low power mode for 1T1R to prevent conficting setting in Fw power */
 			/*  saving sequence. 2010.06.07. Added by tynli. Suggested by SD3 yschang. */
-			if (psmode != PS_MODE_ACTIVE) {
+			if (psmode != PS_MODE_ACTIVE)
 				ODM_RF_Saving(&pHalData->odmpriv, true);
-			}
 
 			/* if (psmode != PS_MODE_ACTIVE)	{ */
 			/*		rtl8723b_set_lowpwr_lps_cmd(padapter, true); */
@@ -4128,9 +4111,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 					DBG_871X("%s: [HW_VAR_FIFO_CLEARN_UP] val =%x times:%d\n", __func__, val32, trycnt);
 				} while (--trycnt);
 
-				if (trycnt == 0) {
+				if (trycnt == 0)
 					DBG_8192C("[HW_VAR_FIFO_CLEARN_UP] Stop RX DMA failed......\n");
-				}
 
 				/*  RQPN Load 0 */
 				rtw_write16(padapter, REG_RQPN_NPQ, 0);
@@ -4442,11 +4424,10 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
 		break;
 
 	case HAL_DEF_TX_PAGE_BOUNDARY:
-		if (!padapter->registrypriv.wifi_spec) {
+		if (!padapter->registrypriv.wifi_spec)
 			*(u8 *)pval = TX_PAGE_BOUNDARY_8723B;
-		} else {
+		else
 			*(u8 *)pval = WMM_NORMAL_TX_PAGE_BOUNDARY_8723B;
-		}
 		break;
 
 	case HAL_DEF_MACID_SLEEP:
@@ -4475,9 +4456,8 @@ void rtl8723b_start_thread(struct adapter *padapter)
 	struct xmit_priv *xmitpriv = &padapter->xmitpriv;
 
 	xmitpriv->SdioXmitThread = kthread_run(rtl8723bs_xmit_thread, padapter, "RTWHALXT");
-	if (IS_ERR(xmitpriv->SdioXmitThread)) {
+	if (IS_ERR(xmitpriv->SdioXmitThread))
 		RT_TRACE(_module_hal_xmit_c_, _drv_err_, ("%s: start rtl8723bs_xmit_thread FAIL!!\n", __func__));
-	}
 #endif
 }
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 841ba12921f3..4ec80626ca82 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -345,9 +345,8 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 					if (pattrib->physt)
 						update_recvframe_phyinfo(precvframe, (struct phy_stat *)ptr);
 
-					if (rtw_recv_entry(precvframe) != _SUCCESS) {
+					if (rtw_recv_entry(precvframe) != _SUCCESS)
 						RT_TRACE(_module_rtl871x_recv_c_, _drv_dump_, ("%s: rtw_recv_entry(precvframe) != _SUCCESS\n", __func__));
-					}
 				} else if (pattrib->pkt_rpt_type == C2H_PACKET) {
 					C2H_EVT_HDR	C2hEvent;
 
@@ -429,9 +428,8 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 				skb_reserve(precvbuf->pskb, (RECVBUFF_ALIGN_SZ - alignment));
 			}
 
-			if (!precvbuf->pskb) {
+			if (!precvbuf->pskb)
 				DBG_871X("%s: alloc_skb fail!\n", __func__);
-			}
 		}
 
 		list_add_tail(&precvbuf->list, &precvpriv->free_recv_buf_queue.queue);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index fbfafe86e8b2..36a80533444e 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -174,9 +174,8 @@ s32 rtl8723bs_xmit_buf_handler(struct adapter *padapter)
 		return _SUCCESS;
 
 	ret = rtw_register_tx_alive(padapter);
-	if (ret != _SUCCESS) {
+	if (ret != _SUCCESS)
 		return _SUCCESS;
-	}
 
 	do {
 		queue_empty = rtl8723_dequeue_writeport(padapter);
@@ -444,9 +443,8 @@ static s32 rtl8723bs_xmit_handler(struct adapter *padapter)
 	spin_lock_bh(&pxmitpriv->lock);
 	ret = rtw_txframes_pending(padapter);
 	spin_unlock_bh(&pxmitpriv->lock);
-	if (ret == 0) {
+	if (ret == 0)
 		return _SUCCESS;
-	}
 
 	/*  dequeue frame and write to hardware */
 
@@ -464,9 +462,8 @@ static s32 rtl8723bs_xmit_handler(struct adapter *padapter)
 	spin_lock_bh(&pxmitpriv->lock);
 	ret = rtw_txframes_pending(padapter);
 	spin_unlock_bh(&pxmitpriv->lock);
-	if (ret == 1) {
+	if (ret == 1)
 		goto next;
-	}
 
 	return _SUCCESS;
 }
@@ -489,9 +486,8 @@ int rtl8723bs_xmit_thread(void *context)
 
 	do {
 		ret = rtl8723bs_xmit_handler(padapter);
-		if (signal_pending(current)) {
+		if (signal_pending(current))
 			flush_signals(current);
-		}
 	} while (ret == _SUCCESS);
 
 	complete(&pxmitpriv->SdioXmitTerminate);
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 0cc2e06636b1..4a7a0ade29d2 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1011,9 +1011,8 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
 
 	/*  Run LPS WL RFOFF flow */
 	ret = HalPwrSeqCmdParsing(padapter, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_SDIO_MSK, rtl8723B_enter_lps_flow);
-	if (ret == _FAIL) {
+	if (ret == _FAIL)
 		DBG_8192C(KERN_ERR "%s: run RF OFF flow fail!\n", __func__);
-	}
 
 	/*	==== Reset digital sequence   ====== */
 
@@ -1044,9 +1043,8 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
 	ret = false;
 	rtw_hal_set_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn);
 	ret = HalPwrSeqCmdParsing(padapter, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_SDIO_MSK, rtl8723B_card_disable_flow);
-	if (!ret) {
+	if (!ret)
 		DBG_8192C(KERN_ERR "%s: run CARD DISABLE flow fail!\n", __func__);
-	}
 }
 
 static u32 rtl8723bs_hal_deinit(struct adapter *padapter)
-- 
2.25.1


