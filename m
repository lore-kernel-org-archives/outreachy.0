X-GM-THRID: 6889129421220872192
X-Received: by 2002:a17:90b:3d6:: with SMTP id go22mr1382965pjb.214.1604000445499;
        Thu, 29 Oct 2020 12:40:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7b05:: with SMTP id w5ls1410306pfc.11.gmail; Thu, 29 Oct
 2020 12:40:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwsbinND7XjiQxlAkvA4j8VITa4bEerSW2jlWA7b8P0fif2Qh5ShyMR643NRwQlKBj4Xlfg
X-Received: by 2002:aa7:9682:0:b029:160:b81d:d715 with SMTP id f2-20020aa796820000b0290160b81dd715mr5906139pfk.69.1604000443300;
        Thu, 29 Oct 2020 12:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000443; cv=none;
        d=google.com; s=arc-20160816;
        b=HAnzeH483HFxBQ+WKdcqHIsLCXK1v9+NcnQbWB4r0L1cu14+JPyJ7PaFd4/FN8JsuT
         /pBMkB8YYC7YkhJWmjbBNK9gCz5jzRfpPD2WwPq0Bwd5T7s54HB17hGuQZz6K07YDhS9
         rJn5IBiVOPBAxetFwYiTA3FVOoxnQqaNoaW+gaxFug9QFzZCTfi380L/ANs66MT2rolF
         UMTTVdj5JeiAJR3qKMLPT9Dp4cm98vdFVnH9vDZLm8T5tW85MAhA5VaxaduExxZXfLkP
         /UjNh+2lUn0aghK2dRmuzOhsOyTLqqkWgJngCUiw1WMSRwmBIHFNJOK9l2wJr1CdfEPO
         Kpbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Cbnk2QhE2z76OV8EqXEWXGBRVRkAbQVJ6FD8AF4HHTY=;
        b=bz4wq9birEQfJPSZqtaQP/8viEECsnwFpttw/MelwxugnLWVMxVGSstfBVl64Ux9Pk
         aNczxtvdDKi0+W+VMRhykTBu9NwOPuNX3YoorfwfQe5L0CSX/fQ7zx/1DGPHSpr2r7oc
         PWO7pMFPuAGqD2JIUH2KB2dXKyRPZO8BcCW6vkCguoNClx3qH66txAmAyoDk/I2BJNuQ
         K9uS/NxDX46xVegHabav+wwH940yzrXf0Ptw8u9Y1Qb0i7KDN/2tsvQY6poZNQsZuWvF
         uInnygtPxoVtTTFRZQCJn9THGIKMEvWxC2FwvaOp0jA+6WWntmlYnmM5rKNbN7VALSum
         fRog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7zVEMTD;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 191si304362pfu.3.2020.10.29.12.40.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7zVEMTD;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id k9so1503923pgt.9
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 12:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cbnk2QhE2z76OV8EqXEWXGBRVRkAbQVJ6FD8AF4HHTY=;
        b=I7zVEMTDHRAmYVOyGd5t5SwzfkU/G2ewcDgEoCzWZbQgv7/YJ8qdP8il0lqYPSWIS4
         CKTZzOYHzWCZ/W83s78+fHGDXx4tDpzSaQNYQbSOFhdoglx+Zdn0bEH0rcwNNmu8wfAE
         hVUsR723byHwoqMgfVxLabE4UvNP41xJbhkdRupDMKAB2qQMB7mZnfTpjj1Cdmaey9yX
         pWO7DL/ppSSfHqDzjxyu1Iopt5nNXwdpUwwfPPa8DWmrAB32TPiiMUyO+ODurorTroek
         D/8seUAtr3WKHVyIOifCeZ3oQjxkZuhz8IVeWZ1CMXsS2Xqmr1MNDbn3BxyJAey/b4M3
         OtVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cbnk2QhE2z76OV8EqXEWXGBRVRkAbQVJ6FD8AF4HHTY=;
        b=nRkhpQm17a205SSFNIZxV2qDpIXsL/KgmvuqBTApnEwz7xxDkxxb6yn34V5hs4ZN9j
         xxNJQA8MWAj1ARWGPg3a6qFH4JcxJVBz9iKISo6hevRXurUVX4/N8A7gUmj+dmOdOn1K
         mTuyE0f29tXDyGkWXO/dyCv3dEer8CceejJzovllBo4QsjG/fZbn+zhy4UHGK3cvntUc
         4Uujt/574tsc3sSgZEqDD9b0wTTUqdxXEMSbXDqn0LA/cEfN0DeIUR4oqDoGNv+9fHMf
         VuwAyf5AO47IQFL6vJ0EYA0QkyeHTKGUn/mBIFOt1CkXaln0JzrAM2PRmLm3RuwWlwfl
         9GGQ==
X-Gm-Message-State: AOAM531GrAl4OxWOlpTYGChZDZ6h/hUwAOFPisX9i4LnXUaK6XivuQxB
	OMWzNaTc9oqUHjV3DciXso0=
X-Received: by 2002:a63:b03:: with SMTP id 3mr5586499pgl.416.1604000442021;
        Thu, 29 Oct 2020 12:40:42 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.185.125])
        by smtp.googlemail.com with ESMTPSA id 9sm6397715pjs.1.2020.10.29.12.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:40:41 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 2/4] staging: rtl8723bs: hal: fix space before tabs and at the start of line
Date: Fri, 30 Oct 2020 03:40:27 +0800
Message-Id: <20201029194029.141165-3-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029194029.141165-1-amarjargal16@gmail.com>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix following checkpatch warnings:
WARNING: please, no spaces at the start of a line
WARNING: please, no space before tabs

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h   |  30 +--
 .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   |  22 +--
 .../staging/rtl8723bs/hal/HalBtc8723b2Ant.c   |  26 +--
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  |   2 +-
 .../staging/rtl8723bs/hal/HalPhyRf_8723B.c    | 182 +++++++++---------
 drivers/staging/rtl8723bs/hal/hal_btcoex.c    |  70 +++----
 drivers/staging/rtl8723bs/hal/hal_com.c       |  24 +--
 drivers/staging/rtl8723bs/hal/odm.h           |  22 +--
 drivers/staging/rtl8723bs/hal/odm_debug.c     |  46 ++---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  38 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |   4 +-
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  86 ++++-----
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   |  36 ++--
 .../staging/rtl8723bs/hal/rtl8723bs_recv.c    |  14 +-
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |   6 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |  72 +++----
 16 files changed, 340 insertions(+), 340 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index b9aca99478db..d0f4cbab86ca 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -27,7 +27,7 @@
 
 /*  */
 /*  */
-/* 	0x0000h ~ 0x00FFh	System Configuration */
+/*	0x0000h ~ 0x00FFh	System Configuration */
 /*  */
 /*  */
 #define REG_SYS_ISO_CTRL_8723B			0x0000	/*  2 Byte */
@@ -84,7 +84,7 @@
 
 /*  */
 /*  */
-/* 	0x0100h ~ 0x01FFh	MACTOP General Configuration */
+/*	0x0100h ~ 0x01FFh	MACTOP General Configuration */
 /*  */
 /*  */
 #define REG_CR_8723B						0x0100
@@ -131,7 +131,7 @@
 
 /*  */
 /*  */
-/* 	0x0200h ~ 0x027Fh	TXDMA Configuration */
+/*	0x0200h ~ 0x027Fh	TXDMA Configuration */
 /*  */
 /*  */
 #define REG_RQPN_8723B					0x0200
@@ -145,7 +145,7 @@
 
 /*  */
 /*  */
-/* 	0x0280h ~ 0x02FFh	RXDMA Configuration */
+/*	0x0280h ~ 0x02FFh	RXDMA Configuration */
 /*  */
 /*  */
 #define REG_RXDMA_AGG_PG_TH_8723B		0x0280
@@ -161,7 +161,7 @@
 
 /*  */
 /*  */
-/* 	0x0300h ~ 0x03FFh	PCIe */
+/*	0x0300h ~ 0x03FFh	PCIe */
 /*  */
 /*  */
 #define	REG_PCIE_CTRL_REG_8723B		0x0300
@@ -189,7 +189,7 @@
 /*  spec version 11 */
 /*  */
 /*  */
-/* 	0x0400h ~ 0x047Fh	Protocol Configuration */
+/*	0x0400h ~ 0x047Fh	Protocol Configuration */
 /*  */
 /*  */
 #define REG_VOQ_INFORMATION_8723B		0x0400
@@ -243,7 +243,7 @@
 
 /*  */
 /*  */
-/* 	0x0500h ~ 0x05FFh	EDCA Configuration */
+/*	0x0500h ~ 0x05FFh	EDCA Configuration */
 /*  */
 /*  */
 #define REG_EDCA_VO_PARAM_8723B		0x0500
@@ -263,14 +263,14 @@
 #define REG_RD_CTRL_8723B				0x0524
 /*  */
 /*  Format for offset 540h-542h: */
-/* 	[3:0]:   TBTT prohibit setup in unit of 32us. The time for HW getting beacon content before TBTT. */
-/* 	[7:4]:   Reserved. */
-/* 	[19:8]:  TBTT prohibit hold in unit of 32us. The time for HW holding to send the beacon packet. */
-/* 	[23:20]: Reserved */
+/*	[3:0]:   TBTT prohibit setup in unit of 32us. The time for HW getting beacon content before TBTT. */
+/*	[7:4]:   Reserved. */
+/*	[19:8]:  TBTT prohibit hold in unit of 32us. The time for HW holding to send the beacon packet. */
+/*	[23:20]: Reserved */
 /*  Description: */
-/* 	              | */
+/*	              | */
 /*      |<--Setup--|--Hold------------>| */
-/* 	--------------|---------------------- */
+/*	--------------|---------------------- */
 /*                 | */
 /*                TBTT */
 /*  Note: We cannot update beacon content to HW or send any AC packets during the time between Setup and Hold. */
@@ -300,7 +300,7 @@
 #define REG_ACMHWCTRL_8723B		0x05C0
 #define REG_SCH_TXCMD_8723B		0x05F8
 
-/* 	0x0600h ~ 0x07FFh	WMAC Configuration */
+/*	0x0600h ~ 0x07FFh	WMAC Configuration */
 #define REG_MAC_CR_8723B		0x0600
 #define REG_TCR_8723B			0x0604
 #define REG_RCR_8723B			0x0608
@@ -356,7 +356,7 @@
 #define REG_SND_PTCL_CTRL_8723B		0x0718
 
 
-/* 	Redifine 8192C register definition for compatibility */
+/*	Redifine 8192C register definition for compatibility */
 
 /*  TODO: use these definition when using REG_xxx naming rule. */
 /*  NOTE: DO NOT Remove these definition. Use later. */
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index 82ace6ceca15..33ef0d852115 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -297,7 +297,7 @@ static void halbtc8723b1ant_LimitedRx(
 	u8 rxAggSize = aggBufSize;
 
 	/*  */
-	/* 	Rx Aggregation related setting */
+	/*	Rx Aggregation related setting */
 	/*  */
 	pBtCoexist->fBtcSet(
 		pBtCoexist, BTC_SET_BL_TO_REJ_AP_AGG_PKT, &bRejectRxAgg
@@ -316,7 +316,7 @@ static void halbtc8723b1ant_LimitedRx(
 
 static void halbtc8723b1ant_QueryBtInfo(PBTC_COEXIST pBtCoexist)
 {
-	u8 	H2C_Parameter[1] = {0};
+	u8	H2C_Parameter[1] = {0};
 
 	pCoexSta->bC2hBtInfoReqSent = true;
 
@@ -808,7 +808,7 @@ static void halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
 	PBTC_COEXIST pBtCoexist, bool bLowPenaltyRa
 )
 {
-	u8 	H2C_Parameter[6] = {0};
+	u8	H2C_Parameter[6] = {0};
 
 	H2C_Parameter[0] = 0x6;	/*  opCode, 0x6 = Retry_Penalty */
 
@@ -1369,10 +1369,10 @@ static void halbtc8723b1ant_PsTdma(
 	u8 rssiAdjustVal = 0;
 	u8 psTdmaByte4Val = 0x50, psTdmaByte0Val = 0x51, psTdmaByte3Val =  0x10;
 	s8 nWiFiDurationAdjust = 0x0;
-	/* u32 		fwVer = 0; */
+	/* u32		fwVer = 0; */
 
 	/* BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW, ("[BTCoex], %s turn %s PS TDMA, type =%d\n", */
-	/* 	(bForceExec? "force to":""), (bTurnOn? "ON":"OFF"), type)); */
+	/*	(bForceExec? "force to":""), (bTurnOn? "ON":"OFF"), type)); */
 	pCoexDm->bCurPsTdmaOn = bTurnOn;
 	pCoexDm->curPsTdma = type;
 
@@ -1812,7 +1812,7 @@ static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 		btInfoExt = pCoexSta->btInfoExt;
 		/* BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], retryCount = %d\n", retryCount)); */
 		/* BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], up =%d, dn =%d, m =%d, n =%d, WaitCount =%d\n", */
-		/* 	up, dn, m, n, WaitCount)); */
+		/*	up, dn, m, n, WaitCount)); */
 
 		if (pCoexSta->lowPriorityTx > 1050 || pCoexSta->lowPriorityRx > 1250)
 			retryCount++;
@@ -2002,13 +2002,13 @@ static void halbtc8723b1ant_PowerSaveState(
 
 /*  */
 /*  */
-/* 	Software Coex Mechanism start */
+/*	Software Coex Mechanism start */
 /*  */
 /*  */
 
 /*  */
 /*  */
-/* 	Non-Software Coex Mechanism start */
+/*	Non-Software Coex Mechanism start */
 /*  */
 /*  */
 static void halbtc8723b1ant_ActionWifiMultiPort(PBTC_COEXIST pBtCoexist)
@@ -2668,9 +2668,9 @@ void EXhalbtc8723b1ant_PowerOnSetting(PBTC_COEXIST pBtCoexist)
 	/*  */
 	/*  S0 or S1 setting and Local register setting(By the setting fw can get ant number, S0/S1, ... info) */
 	/*  Local setting bit define */
-	/* 	BIT0: "0" for no antenna inverse; "1" for antenna inverse */
-	/* 	BIT1: "0" for internal switch; "1" for external switch */
-	/* 	BIT2: "0" for one antenna; "1" for two antenna */
+	/*	BIT0: "0" for no antenna inverse; "1" for antenna inverse */
+	/*	BIT1: "0" for internal switch; "1" for external switch */
+	/*	BIT2: "0" for one antenna; "1" for two antenna */
 	/*  NOTE: here default all internal switch and 1-antenna ==> BIT1 = 0 and BIT2 = 0 */
 	if (pBtCoexist->chipInterface == BTC_INTF_USB) {
 		/*  fixed at S0 for USB interface */
diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 1107cc97494d..1f5df0c7131a 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -201,7 +201,7 @@ static void halbtc8723b2ant_LimitedRx(
 	u8 rxAggSize = aggBufSize;
 
 	/*  */
-	/* 	Rx Aggregation related setting */
+	/*	Rx Aggregation related setting */
 	/*  */
 	pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_TO_REJ_AP_AGG_PKT, &bRejectRxAgg);
 	/*  decide BT control aggregation buf size or not */
@@ -264,7 +264,7 @@ static void halbtc8723b2ant_MonitorBtCtr(PBTC_COEXIST pBtCoexist)
 
 static void halbtc8723b2ant_QueryBtInfo(PBTC_COEXIST pBtCoexist)
 {
-	u8 	H2C_Parameter[1] = {0};
+	u8 H2C_Parameter[1] = {0};
 
 	pCoexSta->bC2hBtInfoReqSent = true;
 
@@ -552,7 +552,7 @@ static void halbtc8723b2ant_SetFwDacSwingLevel(
 	PBTC_COEXIST pBtCoexist, u8 dacSwingLvl
 )
 {
-	u8 	H2C_Parameter[1] = {0};
+	u8 H2C_Parameter[1] = {0};
 
 	/*  There are several type of dacswing */
 	/*  0x18/ 0x10/ 0xc/ 0x8/ 0x4/ 0x6 */
@@ -576,7 +576,7 @@ static void halbtc8723b2ant_SetFwDecBtPwr(
 	PBTC_COEXIST pBtCoexist, u8 decBtPwrLvl
 )
 {
-	u8 	H2C_Parameter[1] = {0};
+	u8 H2C_Parameter[1] = {0};
 
 	H2C_Parameter[0] = decBtPwrLvl;
 
@@ -723,7 +723,7 @@ static void halbtc8723b2ant_SetSwPenaltyTxRateAdaptive(
 	PBTC_COEXIST pBtCoexist, bool bLowPenaltyRa
 )
 {
-	u8 	H2C_Parameter[6] = {0};
+	u8 H2C_Parameter[6] = {0};
 
 	H2C_Parameter[0] = 0x6;	/*  opCode, 0x6 = Retry_Penalty */
 
@@ -1099,7 +1099,7 @@ static void halbtc8723b2ant_SetFwIgnoreWlanAct(
 	PBTC_COEXIST pBtCoexist, bool bEnable
 )
 {
-	u8 	H2C_Parameter[1] = {0};
+	u8 H2C_Parameter[1] = {0};
 
 	if (bEnable)
 		H2C_Parameter[0] |= BIT0;		/*  function enable */
@@ -1153,7 +1153,7 @@ static void halbtc8723b2ant_SetFwPstdma(
 	u8 byte5
 )
 {
-	u8 	H2C_Parameter[5] = {0};
+	u8 H2C_Parameter[5] = {0};
 
 	H2C_Parameter[0] = byte1;
 	H2C_Parameter[1] = byte2;
@@ -1215,7 +1215,7 @@ static void halbtc8723b2ant_SetAntPath(
 	u32 fwVer = 0, u4Tmp = 0;
 	bool bPgExtSwitch = false;
 	bool bUseExtSwitch = false;
-	u8 	H2C_Parameter[2] = {0};
+	u8 H2C_Parameter[2] = {0};
 
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_EXT_SWITCH, &bPgExtSwitch);
 	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);	/*  [31:16]=fw ver, [15:0]=fw sub ver */
@@ -2834,9 +2834,9 @@ void EXhalbtc8723b2ant_PowerOnSetting(PBTC_COEXIST pBtCoexist)
 	/*  */
 	/*  S0 or S1 setting and Local register setting(By the setting fw can get ant number, S0/S1, ... info) */
 	/*  Local setting bit define */
-	/* 	BIT0: "0" for no antenna inverse; "1" for antenna inverse */
-	/* 	BIT1: "0" for internal switch; "1" for external switch */
-	/* 	BIT2: "0" for one antenna; "1" for two antenna */
+	/*	BIT0: "0" for no antenna inverse; "1" for antenna inverse */
+	/*	BIT1: "0" for internal switch; "1" for external switch */
+	/*	BIT2: "0" for one antenna; "1" for two antenna */
 	/*  NOTE: here default all internal switch and 1-antenna ==> BIT1 = 0 and BIT2 = 0 */
 	if (pBtCoexist->chipInterface == BTC_INTF_USB) {
 		/*  fixed at S0 for USB interface */
@@ -3362,8 +3362,8 @@ void EXhalbtc8723b2ant_BtInfoNotify(
 	PBTC_COEXIST pBtCoexist, u8 *tmpBuf, u8 length
 )
 {
-	u8 	btInfo = 0;
-	u8 	i, rspSource = 0;
+	u8 btInfo = 0;
+	u8 i, rspSource = 0;
 	bool bBtBusy = false, bLimitedDig = false;
 	bool bWifiConnected = false;
 
diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index c758d143c57f..aa840613acab 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -83,7 +83,7 @@ typedef enum _BTC_MSG_TYPE {
 	BTC_MSG_ALGORITHM	= 0x1,
 	BTC_MSG_MAX
 } BTC_MSG_TYPE;
-extern u32 		GLBtcDbgType[];
+extern u32		GLBtcDbgType[];
 
 /*  following is for BTC_MSG_INTERFACE */
 #define INTF_INIT	BIT0
diff --git a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
index 549af7817b02..8aa888740929 100644
--- a/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
+++ b/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c
@@ -447,33 +447,33 @@ static u8 phy_PathA_IQK_8723B(
 	/* leave IQK mode */
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);
 
-	/* 	enable path A PA in TXIQK mode */
+	/*	enable path A PA in TXIQK mode */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x18000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0003f);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xc7f87);
-	/* 	disable path B PA in TXIQK mode */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xed, bRFRegOffsetMask, 0x00020); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x43, bRFRegOffsetMask, 0x40ec1); */
+	/*	disable path B PA in TXIQK mode */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xed, bRFRegOffsetMask, 0x00020); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x43, bRFRegOffsetMask, 0x40ec1); */
 
 	/* 1 Tx IQK */
 	/* IQK setting */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK, bMaskDWord, 0x01007c00);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK, bMaskDWord, 0x01004800);
 	/* path-A IQK setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A IQK setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A IQK setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_A, bMaskDWord, 0x18008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_A, bMaskDWord, 0x38008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x8214010a); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x8214010a); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x821303ea);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x28110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);
 
 	/* LO calibration setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x00462911);
 
 	/* enter IQK mode */
@@ -491,12 +491,12 @@ static u8 phy_PathA_IQK_8723B(
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);
 
 	/* One shot, path A LOK & IQK */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path A LOK & IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path A LOK & IQK!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);
 
 	/*  delay x ms */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_8723B)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_8723B)); */
 	/* PlatformStallExecution(IQK_DELAY_TIME_8723B*1000); */
 	mdelay(IQK_DELAY_TIME_8723B);
 
@@ -550,7 +550,7 @@ static u8 phy_PathA_RxIQK8723B(
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A Rx IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A Rx IQK!\n")); */
 
 	/*  Save RF Path */
 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord);
@@ -561,13 +561,13 @@ static u8 phy_PathA_RxIQK8723B(
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A RX IQK:Get TXIMR setting\n"));
 	/* 1 Get TXIMR setting */
 	/* modify RXIQK mode table */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A Rx IQK modify RXIQK mode table!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A Rx IQK modify RXIQK mode table!\n")); */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x18000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0001f);
 	/* LNA2 off, PA on for Dcut */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xf7fb7);
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x0); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x0); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x808000);
 
 	/* IQK setting */
@@ -580,14 +580,14 @@ static u8 phy_PathA_RxIQK8723B(
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82160c1f); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82160c1f); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82130ff0);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x28110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);
 
 	/* LO calibration setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x0046a911);
 
 	/* enter IQK mode */
@@ -605,12 +605,12 @@ static u8 phy_PathA_RxIQK8723B(
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);
 
 	/* One shot, path A LOK & IQK */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path A LOK & IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path A LOK & IQK!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);
 
 	/*  delay x ms */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_8723B)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_8723B)); */
 	/* PlatformStallExecution(IQK_DELAY_TIME_8723B*1000); */
 	mdelay(IQK_DELAY_TIME_8723B);
 
@@ -658,14 +658,14 @@ static u8 phy_PathA_RxIQK8723B(
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A RX IQK\n"));
 
 	/* modify RXIQK mode table */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A Rx IQK modify RXIQK mode table 2!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A Rx IQK modify RXIQK mode table 2!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x18000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0001f);
 	/* LAN2 on, PA off for Dcut */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xf7d77);
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x0); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x0); */
 
 	/* PA, PAD setting */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xdf, bRFRegOffsetMask, 0xf80);
@@ -682,13 +682,13 @@ static u8 phy_PathA_RxIQK8723B(
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82110000);
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x281604c2); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x281604c2); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x2813001f);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);
 
 	/* LO calibration setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x0046a8d1);
 
 	/* enter IQK mode */
@@ -706,12 +706,12 @@ static u8 phy_PathA_RxIQK8723B(
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);
 
 	/* One shot, path A LOK & IQK */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path A LOK & IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path A LOK & IQK!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);
 
 	/*  delay x ms */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
 	/* PlatformStallExecution(IQK_DELAY_TIME_8723B*1000); */
 	mdelay(IQK_DELAY_TIME_8723B);
 
@@ -732,7 +732,7 @@ static u8 phy_PathA_RxIQK8723B(
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0xea0(before IQK) = 0x%x, 0xea8(afer IQK) = 0x%x\n",
 	PHY_QueryBBReg(pDM_Odm->Adapter, 0xea0, bMaskDWord), PHY_QueryBBReg(pDM_Odm->Adapter, 0xea8, bMaskDWord)));
 
-	/* 	PA/PAD controlled by 0x0 */
+	/*	PA/PAD controlled by 0x0 */
 	/* leave IQK mode */
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xdf, bRFRegOffsetMask, 0x780);
@@ -772,12 +772,12 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
     /* leave IQK mode */
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);
 
-	/* 	in TXIQK mode */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x20000); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0003f); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xc7f87); */
-	/* 	enable path B PA in TXIQK mode */
+	/*	in TXIQK mode */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x20000); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0003f); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xc7f87); */
+	/*	enable path B PA in TXIQK mode */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xed, 0x20, 0x1);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x43, bRFRegOffsetMask, 0x30fc1);
 
@@ -788,20 +788,20 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK, bMaskDWord, 0x01007c00);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK, bMaskDWord, 0x01004800);
 	/* path-A IQK setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-B IQK setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-B IQK setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_A, bMaskDWord, 0x18008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_A, bMaskDWord, 0x38008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82140114); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82140114); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x821303ea);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x28110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);
 
 	/* LO calibration setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x00462911);
 
 	/* enter IQK mode */
@@ -809,18 +809,18 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
 
 	/* switch to path B */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000280);
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, bRFRegOffsetMask, 0xeffe0); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, bRFRegOffsetMask, 0xeffe0); */
 
 	/* GNT_BT = 0 */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);
 
 	/* One shot, path B LOK & IQK */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path B LOK & IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path B LOK & IQK!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);
 
 	/*  delay x ms */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path B LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path B LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
 	/* PlatformStallExecution(IQK_DELAY_TIME_88E*1000); */
 	mdelay(IQK_DELAY_TIME_8723B);
 
@@ -832,7 +832,7 @@ static u8 phy_PathB_IQK_8723B(struct adapter *padapter)
     /* leave IQK mode */
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);
 
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0x948 = 0x%x\n", PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord))); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0x948 = 0x%x\n", PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord))); */
 
 
 	/*  Check failed */
@@ -871,7 +871,7 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B Rx IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B Rx IQK!\n")); */
 
 	/*  Save RF Path */
 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord);
@@ -884,7 +884,7 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	/* 1 Get TXIMR setting */
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path B RX IQK:Get TXIMR setting!\n"));
 	/* modify RXIQK mode table */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A Rx IQK modify RXIQK mode table!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path-A Rx IQK modify RXIQK mode table!\n")); */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x18000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0001f);
@@ -905,14 +905,14 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82160c1f); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82160c1f); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82130ff0);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x28110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);
 
 	/* LO calibration setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x0046a911);
 
     /* enter IQK mode */
@@ -920,19 +920,19 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 
 	/* switch to path B */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000280);
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, bRFRegOffsetMask, 0xeffe0); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, bRFRegOffsetMask, 0xeffe0); */
 
 	/* GNT_BT = 0 */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);
 
 	/* One shot, path B TXIQK @ RXIQK */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path B LOK & IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path B LOK & IQK!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);
 
 
 	/*  delay x ms */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
 	/* PlatformStallExecution(IQK_DELAY_TIME_88E*1000); */
 	mdelay(IQK_DELAY_TIME_8723B);
 
@@ -956,10 +956,10 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 
 	/* Allen 20131125 */
 	tmp = (regE9C & 0x03FF0000)>>16;
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("tmp1 = 0x%x\n", tmp)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("tmp1 = 0x%x\n", tmp)); */
 	if ((tmp & 0x200) > 0)
 		tmp = 0x400 - tmp;
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("tmp2 = 0x%x\n", tmp)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("tmp2 = 0x%x\n", tmp)); */
 
 	if (
 		!(regEAC & BIT28) &&
@@ -987,15 +987,15 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x18000);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0001f);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xf7d77);
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x0); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x0); */
 
 	/* open PA S1 & close SMIXER */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xed, 0x20, 0x1);
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x43, bRFRegOffsetMask, 0x30ebd);
 
 	/* PA, PAD setting */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xdf, bRFRegOffsetMask, 0xf80); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x56, bRFRegOffsetMask, 0x51000); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xdf, bRFRegOffsetMask, 0xf80); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x56, bRFRegOffsetMask, 0x51000); */
 
 	/* IQK setting */
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK, bMaskDWord, 0x01004800);
@@ -1007,13 +1007,13 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x82110000);
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x281604c2); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x281604c2); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x2813001f);
 	PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);
 
 	/* LO calibration setting */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("LO calibration setting!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x0046a8d1);
 
     /* enter IQK mode */
@@ -1021,18 +1021,18 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 
 	/* switch to path B */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000280);
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, bRFRegOffsetMask, 0xeffe0); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, bRFRegOffsetMask, 0xeffe0); */
 
 	/* GNT_BT = 0 */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);
 
 	/* One shot, path B LOK & IQK */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path B LOK & IQK!\n")); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("One shot, path B LOK & IQK!\n")); */
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 	PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);
 
 	/*  delay x ms */
-/* 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
+/*	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Delay %d ms for One shot, path A LOK & IQK.\n", IQK_DELAY_TIME_88E)); */
 	/* PlatformStallExecution(IQK_DELAY_TIME_88E*1000); */
 	mdelay(IQK_DELAY_TIME_8723B);
 
@@ -1054,10 +1054,10 @@ static u8 phy_PathB_RxIQK8723B(struct adapter *padapter, bool configPathB)
 	ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0xea0(before IQK) = 0x%x, 0xea8(afer IQK) = 0x%x\n",
 		PHY_QueryBBReg(pDM_Odm->Adapter, 0xea0, bMaskDWord), PHY_QueryBBReg(pDM_Odm->Adapter, 0xea8, bMaskDWord)));
 
-	/* 	PA/PAD controlled by 0x0 */
+	/*	PA/PAD controlled by 0x0 */
 	/* leave IQK mode */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, 0xffffff00, 0x00000000); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_B, 0xdf, bRFRegOffsetMask, 0x180); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, 0xffffff00, 0x00000000); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_B, 0xdf, bRFRegOffsetMask, 0x180); */
 
 
 
@@ -1139,7 +1139,7 @@ static void _PHY_PathAFillIQKMatrix8723B(
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][KEY] = rOFDM0_RxIQExtAnta;
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][VAL] = 0xfffffff & PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_RxIQExtAnta, bMaskDWord);
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][KEY] = rOFDM0_XARxIQImbalance;
-/* 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord); */
+/*			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord); */
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][VAL] = 0x40000100;
 			return;
 		}
@@ -1203,8 +1203,8 @@ static void _PHY_PathBFillIQKMatrix8723B(
 
 		/* 2 Tx IQC */
 		PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_XDTxAFE, 0xF0000000, ((TX1_C&0x3C0)>>6));
-/* 		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC9C][KEY] = rOFDM0_XDTxAFE; */
-/* 		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC9C][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XDTxAFE, bMaskDWord); */
+/*		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC9C][KEY] = rOFDM0_XDTxAFE; */
+/*		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC9C][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XDTxAFE, bMaskDWord); */
 		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC94][KEY] = rOFDM0_XCTxAFE;
 		pRFCalibrateInfo->TxIQC_8723B[PATH_S0][IDX_0xC94][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XDTxAFE, bMaskDWord);
 
@@ -1220,7 +1220,7 @@ static void _PHY_PathBFillIQKMatrix8723B(
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("_PHY_PathBFillIQKMatrix8723B only Tx OK\n"));
 
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][KEY] = rOFDM0_XARxIQImbalance;
-/* 			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord); */
+/*			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord); */
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][VAL] = 0x40000100;
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xCA0][KEY] = rOFDM0_RxIQExtAnta;
 			pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xCA0][VAL] = 0x0fffffff & PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_RxIQExtAnta, bMaskDWord);
@@ -1236,7 +1236,7 @@ static void _PHY_PathBFillIQKMatrix8723B(
 		pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XBRxIQImbalance, bMaskDWord);
 
 		reg = (result[final_candidate][7] >> 6) & 0xF;
-/* 		PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_AGCRSSITable, 0x0000F000, reg); */
+/*		PHY_SetBBReg(pDM_Odm->Adapter, rOFDM0_AGCRSSITable, 0x0000F000, reg); */
 		pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xCA0][KEY] = rOFDM0_RxIQExtAnta;
 		pRFCalibrateInfo->RxIQC_8723B[PATH_S0][IDX_0xCA0][VAL] = (reg << 28)|(PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_RxIQExtAnta, bMaskDWord)&0x0fffffff);
 	}
@@ -1540,13 +1540,13 @@ static void phy_IQCalibrate_8723B(
 	const u32 retryCount = 2;
 
 	/*  Note: IQ calibration must be performed after loading */
-	/* 		PHY_REG.txt , and radio_a, radio_b.txt */
+	/*		PHY_REG.txt , and radio_a, radio_b.txt */
 
 	/* u32 bbvalue; */
 
 	if (t == 0) {
-/* 		 bbvalue = PHY_QueryBBReg(pDM_Odm->Adapter, rFPGA0_RFMOD, bMaskDWord); */
-/* 			RT_DISP(FINIT, INIT_IQK, ("phy_IQCalibrate_8188E() ==>0x%08x\n", bbvalue)); */
+/*		 bbvalue = PHY_QueryBBReg(pDM_Odm->Adapter, rFPGA0_RFMOD, bMaskDWord); */
+/*			RT_DISP(FINIT, INIT_IQK, ("phy_IQCalibrate_8188E() ==>0x%08x\n", bbvalue)); */
 
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("IQ Calibration for %s for %d times\n", (is2T ? "2T2R" : "1T1R"), t));
 
@@ -1562,8 +1562,8 @@ static void phy_IQCalibrate_8723B(
 /* no serial mode */
 
 	/* save RF path for 8723B */
-/* 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord); */
-/* 	Path_SEL_RF = PHY_QueryRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff); */
+/*	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord); */
+/*	Path_SEL_RF = PHY_QueryRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff); */
 
 	/* MAC settings */
 	_PHY_MACSettingCalibration8723B(padapter, IQK_MAC_REG, pDM_Odm->RFCalibrateInfo.IQK_MAC_backup);
@@ -1576,10 +1576,10 @@ static void phy_IQCalibrate_8723B(
 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XCD_RFInterfaceSW, bMaskDWord, 0x22204000);
 
 
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XAB_RFInterfaceSW, BIT10, 0x01); */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XAB_RFInterfaceSW, BIT26, 0x01); */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XA_RFInterfaceOE, BIT10, 0x00); */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XB_RFInterfaceOE, BIT10, 0x00); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XAB_RFInterfaceSW, BIT10, 0x01); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XAB_RFInterfaceSW, BIT26, 0x01); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XA_RFInterfaceOE, BIT10, 0x00); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_XB_RFInterfaceOE, BIT10, 0x00); */
 
 
 /* RX IQ calibration setting for 8723B D cut large current issue when leaving IPS */
@@ -1595,7 +1595,7 @@ static void phy_IQCalibrate_8723B(
 /* path A TX IQK */
 	for (i = 0 ; i < retryCount ; i++) {
 		PathAOK = phy_PathA_IQK_8723B(padapter, is2T, RF_Path);
-/* 		if (PathAOK == 0x03) { */
+/*		if (PathAOK == 0x03) { */
 		if (PathAOK == 0x01) {
 			/*  Path A Tx IQK Success */
 			PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);
@@ -1613,8 +1613,8 @@ static void phy_IQCalibrate_8723B(
 		PathAOK = phy_PathA_RxIQK8723B(padapter, is2T, RF_Path);
 		if (PathAOK == 0x03) {
 			ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path A Rx IQK Success!!\n"));
-/* 				result[t][0] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_Before_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
-/* 				result[t][1] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_After_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
+/*				result[t][0] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_Before_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
+/*				result[t][1] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_After_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
 				result[t][2] = (PHY_QueryBBReg(pDM_Odm->Adapter, rRx_Power_Before_IQK_A_2, bMaskDWord)&0x3FF0000)>>16;
 				result[t][3] = (PHY_QueryBBReg(pDM_Odm->Adapter, rRx_Power_After_IQK_A_2, bMaskDWord)&0x3FF0000)>>16;
 			break;
@@ -1650,8 +1650,8 @@ static void phy_IQCalibrate_8723B(
 			PathBOK = phy_PathB_RxIQK8723B(padapter, is2T);
 			if (PathBOK == 0x03) {
 				ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path B Rx IQK Success!!\n"));
-/* 				result[t][0] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_Before_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
-/* 				result[t][1] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_After_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
+/*				result[t][0] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_Before_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
+/*				result[t][1] = (PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_After_IQK_A, bMaskDWord)&0x3FF0000)>>16; */
 				result[t][6] = (PHY_QueryBBReg(pDM_Odm->Adapter, rRx_Power_Before_IQK_A_2, bMaskDWord)&0x3FF0000)>>16;
 				result[t][7] = (PHY_QueryBBReg(pDM_Odm->Adapter, rRx_Power_After_IQK_A_2, bMaskDWord)&0x3FF0000)>>16;
 				break;
@@ -1680,8 +1680,8 @@ static void phy_IQCalibrate_8723B(
 		_PHY_ReloadADDARegisters8723B(padapter, IQK_BB_REG_92C, pDM_Odm->RFCalibrateInfo.IQK_BB_backup, IQK_BB_REG_NUM);
 
 		/* Reload RF path */
-/* 		PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, Path_SEL_BB); */
-/* 		PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff, Path_SEL_RF); */
+/*		PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, Path_SEL_BB); */
+/*		PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff, Path_SEL_RF); */
 
 		/* Allen initial gain 0xc50 */
 		/*  Restore RX initial gain */
@@ -1808,9 +1808,9 @@ void PHY_IQCalibrate_8723B(
 		rOFDM0_XDTxAFE,
 		rOFDM0_RxIQExtAnta
 	};
-/* 	u32 		Path_SEL_BB = 0; */
-	u32 		GNT_BT_default;
-	u32 		StartTime;
+/*	u32			Path_SEL_BB = 0; */
+	u32			GNT_BT_default;
+	u32			StartTime;
 	s32			ProgressingTime;
 
 	if (!ODM_CheckPowerStatus(padapter))
@@ -1896,12 +1896,12 @@ void PHY_IQCalibrate_8723B(
 	/* save default GNT_BT */
 	GNT_BT_default = PHY_QueryBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord);
 	/*  Save RF Path */
-/* 	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord); */
-/* 	Path_SEL_RF = PHY_QueryRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff); */
+/*	Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord); */
+/*	Path_SEL_RF = PHY_QueryRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff); */
 
     /* set GNT_BT = 0, pause BT traffic */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT12, 0x0); */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT11, 0x1); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT12, 0x0); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT11, 0x1); */
 
 
 	for (i = 0; i < 8; i++) {
@@ -1955,7 +1955,7 @@ void PHY_IQCalibrate_8723B(
 			}
 		}
 	}
-/* 	RT_TRACE(COMP_INIT, DBG_LOUD, ("Release Mutex in IQCalibrate\n")); */
+/*	RT_TRACE(COMP_INIT, DBG_LOUD, ("Release Mutex in IQCalibrate\n")); */
 
 	for (i = 0; i < 4; i++) {
 		RegE94 = result[i][0];
@@ -2011,8 +2011,8 @@ void PHY_IQCalibrate_8723B(
 	/* restore GNT_BT */
 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, GNT_BT_default);
 	/*  Restore RF Path */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, Path_SEL_BB); */
-/* 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff, Path_SEL_RF); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, Path_SEL_BB); */
+/*	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xb0, 0xfffff, Path_SEL_RF); */
 
 	/* Resotr RX mode table parameter */
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1);
@@ -2023,8 +2023,8 @@ void PHY_IQCalibrate_8723B(
 	PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, 0x43, bRFRegOffsetMask, 0x300bd);
 
 	/* set GNT_BT = HW control */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT12, 0x0); */
-/* 	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT11, 0x0); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT12, 0x0); */
+/*	PHY_SetBBReg(pDM_Odm->Adapter, 0x764, BIT11, 0x0); */
 
 	if (Is2ant) {
 		if (RF_Path == 0x0)	/* S1 */
@@ -2046,8 +2046,8 @@ void PHY_IQCalibrate_8723B(
 void PHY_LCCalibrate_8723B(PDM_ODM_T pDM_Odm)
 {
 	bool		bSingleTone = false, bCarrierSuppression = false;
-	u32 		timeout = 2000, timecount = 0;
-	u32 		StartTime;
+	u32			timeout = 2000, timecount = 0;
+	u32			StartTime;
 	s32			ProgressingTime;
 
 #if DISABLE_BB_RF
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index c65672b98168..63421ffe9f40 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -11,7 +11,7 @@
 #include <hal_btcoex.h>
 #include <Mp_Precomp.h>
 
-/* 		Global variables */
+/*		Global variables */
 
 BTC_COEXIST GLBtCoexist;
 static u8 GLBtcWiFiInScanState;
@@ -65,7 +65,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
 }
 
 /*  */
-/* 		Debug related function */
+/*		Debug related function */
 /*  */
 static u8 halbtcoutsrc_IsBtCoexistAvailable(PBTC_COEXIST pBtCoexist)
 {
@@ -83,21 +83,21 @@ static void halbtcoutsrc_DbgInit(void)
 		GLBtcDbgType[i] = 0;
 
 	GLBtcDbgType[BTC_MSG_INTERFACE]			=	\
-/* 			INTF_INIT								| */
-/* 			INTF_NOTIFY							| */
+/*			INTF_INIT								| */
+/*			INTF_NOTIFY							| */
 			0;
 
 	GLBtcDbgType[BTC_MSG_ALGORITHM]			=	\
-/* 			ALGO_BT_RSSI_STATE					| */
-/* 			ALGO_WIFI_RSSI_STATE					| */
-/* 			ALGO_BT_MONITOR						| */
-/* 			ALGO_TRACE							| */
-/* 			ALGO_TRACE_FW						| */
-/* 			ALGO_TRACE_FW_DETAIL				| */
-/* 			ALGO_TRACE_FW_EXEC					| */
-/* 			ALGO_TRACE_SW						| */
-/* 			ALGO_TRACE_SW_DETAIL				| */
-/* 			ALGO_TRACE_SW_EXEC					| */
+/*			ALGO_BT_RSSI_STATE					| */
+/*			ALGO_WIFI_RSSI_STATE					| */
+/*			ALGO_BT_MONITOR						| */
+/*			ALGO_TRACE							| */
+/*			ALGO_TRACE_FW						| */
+/*			ALGO_TRACE_FW_DETAIL				| */
+/*			ALGO_TRACE_FW_EXEC					| */
+/*			ALGO_TRACE_SW						| */
+/*			ALGO_TRACE_SW_DETAIL				| */
+/*			ALGO_TRACE_SW_EXEC					| */
 			0;
 }
 
@@ -483,9 +483,9 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
 
 	case BTC_GET_U1_MAC_PHY_MODE:
 		*pu8 = BTC_SMSP;
-/* 			*pU1Tmp = BTC_DMSP; */
-/* 			*pU1Tmp = BTC_DMDP; */
-/* 			*pU1Tmp = BTC_MP_UNKNOWN; */
+/*			*pU1Tmp = BTC_DMSP; */
+/*			*pU1Tmp = BTC_DMDP; */
+/*			*pU1Tmp = BTC_MP_UNKNOWN; */
 		break;
 
 	case BTC_GET_U1_AP_NUM:
@@ -654,7 +654,7 @@ static void halbtcoutsrc_DisplayFwPwrModeCmd(PBTC_COEXIST pBtCoexist)
 }
 
 /*  */
-/* 		IO related function */
+/*		IO related function */
 /*  */
 static u8 halbtcoutsrc_Read1Byte(void *pBtcContext, u32 RegAddr)
 {
@@ -884,7 +884,7 @@ static void halbtcoutsrc_DisplayDbgMsg(void *pBtcContext, u8 dispType)
 }
 
 /*  */
-/* 		Extern functions called by other module */
+/*		Extern functions called by other module */
 /*  */
 static u8 EXhalbtcoutsrc_BindBtCoexWithAdapter(void *padapter)
 {
@@ -1017,14 +1017,14 @@ void EXhalbtcoutsrc_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
 		ipsType = BTC_IPS_ENTER;
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_IpsNotify(pBtCoexist, ipsType);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_IpsNotify(pBtCoexist, ipsType);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
@@ -1069,14 +1069,14 @@ void EXhalbtcoutsrc_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
 	}
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_ScanNotify(pBtCoexist, scanType);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_ScanNotify(pBtCoexist, scanType);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 action)
@@ -1095,14 +1095,14 @@ void EXhalbtcoutsrc_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 action)
 		assoType = BTC_ASSOCIATE_FINISH;
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_ConnectNotify(pBtCoexist, assoType);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_ConnectNotify(pBtCoexist, assoType);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_MediaStatusNotify(PBTC_COEXIST pBtCoexist, RT_MEDIA_STATUS mediaStatus)
@@ -1122,14 +1122,14 @@ void EXhalbtcoutsrc_MediaStatusNotify(PBTC_COEXIST pBtCoexist, RT_MEDIA_STATUS m
 		mStatus = BTC_MEDIA_DISCONNECT;
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, mStatus);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_MediaStatusNotify(pBtCoexist, mStatus);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 pktType)
@@ -1153,14 +1153,14 @@ void EXhalbtcoutsrc_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 pktType)
 	}
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_SpecialPacketNotify(pBtCoexist, packetType);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_SpecialPacketNotify(pBtCoexist, packetType);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_BtInfoNotify(PBTC_COEXIST pBtCoexist, u8 *tmpBuf, u8 length)
@@ -1171,14 +1171,14 @@ void EXhalbtcoutsrc_BtInfoNotify(PBTC_COEXIST pBtCoexist, u8 *tmpBuf, u8 length)
 	pBtCoexist->statistics.cntBtInfoNotify++;
 
 	/*  All notify is called in cmd thread, don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_BtInfoNotify(pBtCoexist, tmpBuf, length);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_BtInfoNotify(pBtCoexist, tmpBuf, length);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_HaltNotify(PBTC_COEXIST pBtCoexist)
@@ -1218,14 +1218,14 @@ void EXhalbtcoutsrc_Periodical(PBTC_COEXIST pBtCoexist)
 
 	/*  Periodical should be called in cmd thread, */
 	/*  don't need to leave low power again */
-/* 	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
+/*	halbtcoutsrc_LeaveLowPower(pBtCoexist); */
 
 	if (pBtCoexist->boardInfo.btdmAntNum == 2)
 		EXhalbtc8723b2ant_Periodical(pBtCoexist);
 	else if (pBtCoexist->boardInfo.btdmAntNum == 1)
 		EXhalbtc8723b1ant_Periodical(pBtCoexist);
 
-/* 	halbtcoutsrc_NormalLowPower(pBtCoexist); */
+/*	halbtcoutsrc_NormalLowPower(pBtCoexist); */
 }
 
 void EXhalbtcoutsrc_SetChipType(u8 chipType)
@@ -1522,7 +1522,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 
 	pstr = pStrBuf;
 	leftSize = bufSize;
-/* 	DBG_871X(FUNC_ADPT_FMT ": bufsize =%d\n", FUNC_ADPT_ARG(padapter), bufSize); */
+/*	DBG_871X(FUNC_ADPT_FMT ": bufsize =%d\n", FUNC_ADPT_ARG(padapter), bufSize); */
 
 	count = rtw_sprintf(pstr, leftSize, "#define DBG\t%d\n", DBG);
 	if ((count < 0) || (count >= leftSize))
@@ -1631,7 +1631,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 
 exit:
 	count = pstr - pStrBuf;
-/* 	DBG_871X(FUNC_ADPT_FMT ": usedsize =%d\n", FUNC_ADPT_ARG(padapter), count); */
+/*	DBG_871X(FUNC_ADPT_FMT ": usedsize =%d\n", FUNC_ADPT_ARG(padapter), count); */
 
 	return count;
 }
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index a5ce5fdd2480..bda4ca01e374 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -767,7 +767,7 @@ static void _TwoOutPipeMapping(struct adapter *padapter, bool bWIFICfg)
 
 	if (bWIFICfg) { /* WMM */
 
-		/* 	BK,	BE,	VI,	VO,	BCN,	CMD, MGT, HIGH, HCCA */
+		/*	BK,	BE,	VI,	VO,	BCN,	CMD, MGT, HIGH, HCCA */
 		/*   0,		1,	0,	1,	0,	0,	0,	0,		0	}; */
 		/* 0:ep_0 num, 1:ep_1 num */
 
@@ -808,7 +808,7 @@ static void _ThreeOutPipeMapping(struct adapter *padapter, bool bWIFICfg)
 
 	if (bWIFICfg) { /* for WMM */
 
-		/* 	BK,	BE,	VI,	VO,	BCN,	CMD, MGT, HIGH, HCCA */
+		/*	BK,	BE,	VI,	VO,	BCN,	CMD, MGT, HIGH, HCCA */
 		/*   1,		2,	1,	0,	0,	0,	0,	0,		0	}; */
 		/* 0:H, 1:N, 2:L */
 
@@ -825,7 +825,7 @@ static void _ThreeOutPipeMapping(struct adapter *padapter, bool bWIFICfg)
 	} else { /* typical setting */
 
 
-		/* 	BK,	BE,	VI,	VO,	BCN,	CMD, MGT, HIGH, HCCA */
+		/*	BK,	BE,	VI,	VO,	BCN,	CMD, MGT, HIGH, HCCA */
 		/*   2,		2,	1,	0,	0,	0,	0,	0,		0	}; */
 		/* 0:H, 1:N, 2:L */
 
@@ -1351,9 +1351,9 @@ bool eqNByte(u8 *str1, u8 *str2, u32 num)
 }
 
 /*  */
-/* 	Description: */
-/* 		Return true if chTmp is represent for hex digit and */
-/* 		false otherwise. */
+/*	Description: */
+/*		Return true if chTmp is represent for hex digit and */
+/*		false otherwise. */
 /*  */
 /*  */
 bool IsHexDigit(char chTmp)
@@ -1370,8 +1370,8 @@ bool IsHexDigit(char chTmp)
 
 
 /*  */
-/* 	Description: */
-/* 		Translate a character to hex digit. */
+/*	Description: */
+/*		Translate a character to hex digit. */
 /*  */
 u32 MapCharToHexDigit(char chTmp)
 {
@@ -1387,8 +1387,8 @@ u32 MapCharToHexDigit(char chTmp)
 
 
 
-/* 	Description: */
-/* 		Parse hex number from the string pucStr. */
+/*	Description: */
+/*		Parse hex number from the string pucStr. */
 bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
 {
 	char *szScan = szStr;
@@ -1477,8 +1477,8 @@ bool GetFractionValueFromString(
 }
 
 /*  */
-/* 	Description: */
-/* 		Return true if szStr is comment out with leading "//". */
+/*	Description: */
+/*		Return true if szStr is comment out with leading "//". */
 /*  */
 bool IsCommentString(char *szStr)
 {
diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 16e8f66a3171..cf3059213545 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -315,8 +315,8 @@ typedef struct _ODM_STA_INFO {
 	/* TX_INFO_T		pTxInfo;		Define in IC folder. Move lower layer. */
 
 	/*  */
-	/* 	Please use compile flag to disabe the strcutrue for other IC except 88E. */
-	/* 	Move To lower layer. */
+	/*	Please use compile flag to disabe the strcutrue for other IC except 88E. */
+	/*	Move To lower layer. */
 	/*  */
 	/*  ODM Write Wilson will handle this part(said by Luke.Lee) */
 	/* TX_RPT_T		pTxRpt;			Define in IC folder. Move lower layer. */
@@ -445,7 +445,7 @@ typedef enum _ODM_Support_Ability_Definition {
 	ODM_RF_CALIBRATION		= BIT26,
 } ODM_ABILITY_E;
 
-/* 	ODM_CMNINFO_INTERFACE */
+/*	ODM_CMNINFO_INTERFACE */
 typedef enum tag_ODM_Support_Interface_Definition {
 	ODM_ITRF_SDIO	=	0x4,
 	ODM_ITRF_ALL	=	0x7,
@@ -508,9 +508,9 @@ typedef enum tag_ODM_RF_Type_Definition {
 /*  */
 
 /* typedef enum _MACPHY_MODE_8192D{ */
-/* 	SINGLEMAC_SINGLEPHY, */
-/* 	DUALMAC_DUALPHY, */
-/* 	DUALMAC_SINGLEPHY, */
+/*	SINGLEMAC_SINGLEPHY, */
+/*	DUALMAC_DUALPHY, */
+/*	DUALMAC_SINGLEPHY, */
 /* MACPHY_MODE_8192D,*PMACPHY_MODE_8192D; */
 /*  Above is the original define in MP driver. Please use the same define. THX. */
 typedef enum tag_ODM_MAC_PHY_Mode_Definition {
@@ -870,7 +870,7 @@ typedef struct _ANT_DETECTED_INFO {
 typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	/* RT_TIMER	FastAntTrainingTimer; */
 	/*  */
-	/* 	Add for different team use temporarily */
+	/*	Add for different team use temporarily */
 	/*  */
 	struct adapter *Adapter;		/*  For CE/NIC team */
 	/*  WHen you use Adapter or priv pointer, you must make sure the pointer is ready. */
@@ -895,10 +895,10 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 /*  ODM HANDLE, DRIVER NEEDS NOT TO HOOK------ */
 
 /* REMOVED COMMON INFO---------- */
-	/* u8 		PseudoMacPhyMode; */
+	/* u8			PseudoMacPhyMode; */
 	/* bool			*BTCoexist; */
 	/* bool			PseudoBtCoexist; */
-	/* u8 		OPMode; */
+	/* u8			OPMode; */
 	/* bool			bAPMode; */
 	/* bool			bClientMode; */
 	/* bool			bAdHocMode; */
@@ -992,7 +992,7 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	u8 *pAntennaTest;
 	bool *pbNet_closed;
 	u8 *mp_mode;
-	/* u8 	*pAidMap; */
+	/* u8 *pAidMap; */
 	u8 *pu1ForcedIgiLb;
 /*  For 8723B IQK----------- */
 	bool *pIs1Antenna;
@@ -1226,7 +1226,7 @@ typedef enum _ODM_RF_RADIO_PATH {
 	/*   ODM_RF_PATH_MAX,    Max RF number 90 support */
 } ODM_RF_RADIO_PATH_E, *PODM_RF_RADIO_PATH_E;
 
- typedef enum _ODM_RF_CONTENT {
+typedef enum _ODM_RF_CONTENT {
 	odm_radioa_txt = 0x1000,
 	odm_radiob_txt = 0x1001,
 	odm_radioc_txt = 0x1002,
diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.c b/drivers/staging/rtl8723bs/hal/odm_debug.c
index b92422c8fb8e..e3f9467767f1 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.c
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.c
@@ -13,32 +13,32 @@ void ODM_InitDebugSetting(PDM_ODM_T pDM_Odm)
 
 	pDM_Odm->DebugComponents =
 /* BB Functions */
-/* 		ODM_COMP_DIG					| */
-/* 		ODM_COMP_RA_MASK				| */
-/* 		ODM_COMP_DYNAMIC_TXPWR		| */
-/* 		ODM_COMP_FA_CNT				| */
-/* 		ODM_COMP_RSSI_MONITOR			| */
-/* 		ODM_COMP_CCK_PD				| */
-/* 		ODM_COMP_ANT_DIV				| */
-/* 		ODM_COMP_PWR_SAVE				| */
-/* 		ODM_COMP_PWR_TRAIN			| */
-/* 		ODM_COMP_RATE_ADAPTIVE		| */
-/* 		ODM_COMP_PATH_DIV				| */
-/* 		ODM_COMP_DYNAMIC_PRICCA		| */
-/* 		ODM_COMP_RXHP					| */
-/* 		ODM_COMP_MP					| */
-/* 		ODM_COMP_CFO_TRACKING		| */
+/*		ODM_COMP_DIG					| */
+/*		ODM_COMP_RA_MASK				| */
+/*		ODM_COMP_DYNAMIC_TXPWR		| */
+/*		ODM_COMP_FA_CNT				| */
+/*		ODM_COMP_RSSI_MONITOR			| */
+/*		ODM_COMP_CCK_PD				| */
+/*		ODM_COMP_ANT_DIV				| */
+/*		ODM_COMP_PWR_SAVE				| */
+/*		ODM_COMP_PWR_TRAIN			| */
+/*		ODM_COMP_RATE_ADAPTIVE		| */
+/*		ODM_COMP_PATH_DIV				| */
+/*		ODM_COMP_DYNAMIC_PRICCA		| */
+/*		ODM_COMP_RXHP					| */
+/*		ODM_COMP_MP					| */
+/*		ODM_COMP_CFO_TRACKING		| */
 
 /* MAC Functions */
-/* 		ODM_COMP_EDCA_TURBO			| */
-/* 		ODM_COMP_EARLY_MODE			| */
+/*		ODM_COMP_EDCA_TURBO			| */
+/*		ODM_COMP_EARLY_MODE			| */
 /* RF Functions */
-/* 		ODM_COMP_TX_PWR_TRACK		| */
-/* 		ODM_COMP_RX_GAIN_TRACK		| */
-/* 		ODM_COMP_CALIBRATION			| */
+/*		ODM_COMP_TX_PWR_TRACK		| */
+/*		ODM_COMP_RX_GAIN_TRACK		| */
+/*		ODM_COMP_CALIBRATION			| */
 /* Common */
-/* 		ODM_COMP_COMMON				| */
-/* 		ODM_COMP_INIT					| */
-/* 		ODM_COMP_PSD					| */
+/*		ODM_COMP_COMMON				| */
+/*		ODM_COMP_INIT					| */
+/*		ODM_COMP_PSD					| */
 0;
 }
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 1a1404061068..20b4173bd0fc 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -92,7 +92,7 @@ s32 FillH2CCmd8723B(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmd
 		else {
 			memcpy((u8 *)(&h2c_cmd)+1, pCmdBuffer, 3);
 			memcpy((u8 *)(&h2c_cmd_ex), pCmdBuffer+3, CmdLen-3);
-/* 			*(u8 *)(&h2c_cmd) |= BIT(7); */
+/*			*(u8 *)(&h2c_cmd) |= BIT(7); */
 		}
 
 		*(u8 *)(&h2c_cmd) |= ElementID;
@@ -105,7 +105,7 @@ s32 FillH2CCmd8723B(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmd
 		rtw_write32(padapter, msgbox_addr, h2c_cmd);
 
 		/* DBG_8192C("MSG_BOX:%d, CmdLen(%d), CmdID(0x%x), reg:0x%x =>h2c_cmd:0x%.8x, reg:0x%x =>h2c_cmd_ex:0x%.8x\n" */
-		/* 	, pHalData->LastHMEBoxNum , CmdLen, ElementID, msgbox_addr, h2c_cmd, msgbox_ex_addr, h2c_cmd_ex); */
+		/*	, pHalData->LastHMEBoxNum , CmdLen, ElementID, msgbox_addr, h2c_cmd, msgbox_ex_addr, h2c_cmd_ex); */
 
 		pHalData->LastHMEBoxNum = (h2c_box_num+1) % MAX_H2C_BOX_NUMS;
 
@@ -320,7 +320,7 @@ static void ConstructNullFunctionData(
 #ifdef CONFIG_WOWLAN
 /*  */
 /*  Description: */
-/* 	Construct the ARP response packet to support ARP offload. */
+/*	Construct the ARP response packet to support ARP offload. */
 /*  */
 static void ConstructARPResponse(
 	struct adapter *padapter,
@@ -334,11 +334,11 @@ static void ConstructARPResponse(
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	static u8 	ARPLLCHeader[8] = {0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x06};
-	u8 		*pARPRspPkt = pframe;
+	static u8 ARPLLCHeader[8] = {0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x06};
+	u8 *pARPRspPkt = pframe;
 	/* for TKIP Cal MIC */
-	u8 		*payload = pframe;
-	u8 	EncryptionHeadOverhead = 0;
+	u8 *payload = pframe;
+	u8 EncryptionHeadOverhead = 0;
 	/* DBG_871X("%s:%d\n", __func__, bForcePowerSave); */
 
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
@@ -1497,7 +1497,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], PSPollLength, true, false, false);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: PS-POLL %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (PSPollLength+TxDescLen)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (PSPollLength+TxDescLen)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + PSPollLength);
 
@@ -1517,7 +1517,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], NullDataLength, false, false, false);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: NULL DATA %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (NullDataLength+TxDescLen)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (NullDataLength+TxDescLen)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + NullDataLength);
 
@@ -1537,7 +1537,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], QosNullLength, false, false, false);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: QOS NULL DATA %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (QosNullLength+TxDescLen)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (QosNullLength+TxDescLen)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + QosNullLength);
 
@@ -1557,7 +1557,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], BTQosNullLength, false, true, false);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: BT QOS NULL DATA %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (BTQosNullLength+TxDescLen)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (BTQosNullLength+TxDescLen)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + BTQosNullLength);
 
@@ -1583,7 +1583,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], ARPLegnth, false, false, true);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: ARP RSP %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (ARPLegnth+TxDescLen)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (ARPLegnth+TxDescLen)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + ARPLegnth);
 	}
@@ -1597,7 +1597,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	memcpy(ReservedPagePacket+BufIndex-TxDescLen, cur_dot11txpn, _AES_IV_LEN_);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: SEC IV %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], _AES_IV_LEN_); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], _AES_IV_LEN_); */
 
 	CurtPktPageNum = (u8)PageNum_128(_AES_IV_LEN_);
 
@@ -1623,7 +1623,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	memcpy(ReservedPagePacket+BufIndex-TxDescLen+RTW_KCK_LEN, kek, RTW_KEK_LEN);
 
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: KEK KCK %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (TxDescLen + RTW_KCK_LEN + RTW_KEK_LEN)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (TxDescLen + RTW_KCK_LEN + RTW_KEK_LEN)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + RTW_KCK_LEN + RTW_KEK_LEN);
 
@@ -1641,7 +1641,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], GTKLegnth, false, false, true);
 	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: GTK RSP %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (TxDescLen + GTKLegnth)); */
+	/*	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (TxDescLen + GTKLegnth)); */
 
 	CurtPktPageNum = (u8)PageNum_128(TxDescLen + GTKLegnth);
 
@@ -2139,7 +2139,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	RSVDPAGE_LOC RsvdPageLoc;
 
 
-/* 	DBG_8192C("+" FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(padapter)); */
+/*	DBG_8192C("+" FUNC_ADPT_FMT "\n", FUNC_ADPT_ARG(padapter)); */
 
 	pxmitpriv = &padapter->xmitpriv;
 	TxDescLen = TXDESC_SIZE;
@@ -2207,8 +2207,8 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	pattrib->pktlen = pattrib->last_txcmdsz = TotalPacketLen - TxDescOffset;
 	dump_mgntframe_and_wait(padapter, pcmdframe, 100);
 
-/* 	DBG_8192C(FUNC_ADPT_FMT ": Set RSVD page location to Fw, TotalPacketLen(%d), TotalPageNum(%d)\n", */
-/* 		FUNC_ADPT_ARG(padapter), TotalPacketLen, TotalPageNum); */
+/*	DBG_8192C(FUNC_ADPT_FMT ": Set RSVD page location to Fw, TotalPacketLen(%d), TotalPageNum(%d)\n", */
+/*		FUNC_ADPT_ARG(padapter), TotalPacketLen, TotalPageNum); */
 	rtl8723b_set_FwRsvdPage_cmd(padapter, &RsvdPageLoc);
 	rtl8723b_set_FwAoacRsvdPage_cmd(padapter, &RsvdPageLoc);
 
@@ -2280,7 +2280,7 @@ void rtl8723b_download_BTCoex_AP_mode_rsvd_page(struct adapter *padapter)
 		DLBcnCount++;
 		do {
 			yield();
-/* 			mdelay(10); */
+/*			mdelay(10); */
 			/*  check rsvd page download OK. */
 			rtw_hal_get_hwreg(padapter, HW_VAR_BCN_VALID, &bcn_valid);
 			poll++;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 650fbedd34e8..cb55b60dec53 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -50,7 +50,7 @@ static void Init_ODM_ComInfo_8723b(struct adapter *Adapter)
 	ODM_CmnInfoInit(pDM_Odm, ODM_CMNINFO_MP_TEST_CHIP, IS_NORMAL_CHIP(pHalData->VersionID));
 
 	ODM_CmnInfoInit(pDM_Odm, ODM_CMNINFO_PATCH_ID, pHalData->CustomerID);
-	/* 	ODM_CMNINFO_BINHCT_TEST only for MP Team */
+	/*	ODM_CMNINFO_BINHCT_TEST only for MP Team */
 	ODM_CmnInfoInit(pDM_Odm, ODM_CMNINFO_BWIFI_TEST, Adapter->registrypriv.wifi_spec);
 
 
@@ -100,7 +100,7 @@ static void Update_ODM_ComInfo_8723b(struct adapter *Adapter)
 	/*  Pointer reference */
 	/*  */
 	/* ODM_CMNINFO_MAC_PHY_MODE pHalData->MacPhyMode92D */
-	/* 	ODM_CmnInfoHook(pDM_Odm, ODM_CMNINFO_MAC_PHY_MODE,&(pDM_Odm->u8_temp)); */
+	/*	ODM_CmnInfoHook(pDM_Odm, ODM_CMNINFO_MAC_PHY_MODE,&(pDM_Odm->u8_temp)); */
 
 	ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_ABILITY, pdmpriv->InitODMFlag);
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index fcf3c5b66140..a0b871834254 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -58,7 +58,7 @@ static int _BlockWrite(struct adapter *padapter, void *buffer, u32 buffSize)
 	u8 *bufferPtr = buffer;
 	u32 i = 0, offset = 0;
 
-/* 	printk("====>%s %d\n", __func__, __LINE__); */
+/*	printk("====>%s %d\n", __func__, __LINE__); */
 
 	/* 3 Phase #1 */
 	blockCount_p1 = buffSize / blockSize_p1;
@@ -346,8 +346,8 @@ void rtl8723b_FirmwareSelfReset(struct adapter *padapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Download 8192C firmware code. */
+/*	Description: */
+/*		Download 8192C firmware code. */
 /*  */
 /*  */
 s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
@@ -573,7 +573,7 @@ static void rtl8723b_free_hal_data(struct adapter *padapter)
 }
 
 /*  */
-/* 				Efuse related code */
+/*				Efuse related code */
 /*  */
 static u8 hal_EfuseSwitchToBank(
 	struct adapter *padapter, u8 bank, bool bPseudoTest
@@ -729,8 +729,8 @@ static void Hal_GetEfuseDefinition(
 #define LDOE25_SHIFT	28
 
 /*  */
-/* 	The following is for compile ok */
-/* 	That should be merged with the original in the future */
+/*	The following is for compile ok */
+/*	That should be merged with the original in the future */
 /*  */
 #define EFUSE_ACCESS_ON_8723			0x69	/*  For RTL8723 only. */
 #define EFUSE_ACCESS_OFF_8723			0x00	/*  For RTL8723 only. */
@@ -938,18 +938,18 @@ if (0) {
 		if (offset < EFUSE_MAX_SECTION_8723B) {
 			u16 addr;
 			/*  Get word enable value from PG header */
-/* 			DBG_8192C("%s: Offset =%d Worden = 0x%X\n", __func__, offset, wden); */
+/*			DBG_8192C("%s: Offset =%d Worden = 0x%X\n", __func__, offset, wden); */
 
 			addr = offset * PGPKT_DATA_SIZE;
 			for (i = 0; i < EFUSE_MAX_WORD_UNIT; i++) {
 				/*  Check word enable condition in the section */
 				if (!(wden & (0x01<<i))) {
 					efuse_OneByteRead(padapter, eFuse_Addr++, &efuseData, bPseudoTest);
-/* 					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, eFuse_Addr-1, efuseData); */
+/*					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, eFuse_Addr-1, efuseData); */
 					efuseTbl[addr] = efuseData;
 
 					efuse_OneByteRead(padapter, eFuse_Addr++, &efuseData, bPseudoTest);
-/* 					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, eFuse_Addr-1, efuseData); */
+/*					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, eFuse_Addr-1, efuseData); */
 					efuseTbl[addr+1] = efuseData;
 				}
 				addr += 2;
@@ -1303,7 +1303,7 @@ static u16 hal_EfuseGetCurrentSize_BT(struct adapter *padapter, u8 bPseudoTest)
 					continue;
 				}
 
-/* 				hoffset = ((hoffset & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1); */
+/*				hoffset = ((hoffset & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1); */
 				hoffset |= ((efuse_data & 0xF0) >> 1);
 				hworden = efuse_data & 0x0F;
 			} else {
@@ -1395,7 +1395,7 @@ static u8 Hal_EfuseWordEnableDataWrite(
 	u8 tmpdata[PGPKT_DATA_SIZE];
 
 
-/* 	DBG_8192C("%s: efuse_addr =%#x word_en =%#x\n", __func__, efuse_addr, word_en); */
+/*	DBG_8192C("%s: efuse_addr =%#x word_en =%#x\n", __func__, efuse_addr, word_en); */
 	memset(tmpdata, 0xFF, PGPKT_DATA_SIZE);
 
 	if (!(word_en & BIT(0))) {
@@ -1509,11 +1509,11 @@ static s32 Hal_EfusePgPacketRead(
 				/*  Check word enable condition in the section */
 				if (!(hworden & (0x01<<i))) {
 					efuse_OneByteRead(padapter, efuse_addr++, &efuse_data, bPseudoTest);
-/* 					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, efuse_addr+tmpidx, efuse_data); */
+/*					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, efuse_addr+tmpidx, efuse_data); */
 					data[i*2] = efuse_data;
 
 					efuse_OneByteRead(padapter, efuse_addr++, &efuse_data, bPseudoTest);
-/* 					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, efuse_addr+tmpidx, efuse_data); */
+/*					DBG_8192C("%s: efuse[%#X]= 0x%02X\n", __func__, efuse_addr+tmpidx, efuse_data); */
 					data[(i*2)+1] = efuse_data;
 				}
 			}
@@ -1535,7 +1535,7 @@ static u8 hal_EfusePgCheckAvailableAddr(
 
 
 	EFUSE_GetEfuseDefinition(padapter, efuseType, TYPE_AVAILABLE_EFUSE_BYTES_TOTAL, &max_available, bPseudoTest);
-/* 	DBG_8192C("%s: max_available =%d\n", __func__, max_available); */
+/*	DBG_8192C("%s: max_available =%d\n", __func__, max_available); */
 
 	current_size = Efuse_GetCurrentSize(padapter, efuseType, bPseudoTest);
 	if (current_size >= max_available) {
@@ -1668,7 +1668,7 @@ static u8 hal_EfusePartialWriteCheck(
 		} else {
 			/*  not used header, 0xff */
 			*pAddr = startAddr;
-/* 			DBG_8192C("%s: Started from unused header offset =%d\n", __func__, startAddr)); */
+/*			DBG_8192C("%s: Started from unused header offset =%d\n", __func__, startAddr)); */
 			bRet = true;
 			break;
 		}
@@ -1690,7 +1690,7 @@ static u8 hal_EfusePgPacketWrite1ByteHeader(
 	u8 repeatcnt = 0;
 
 
-/* 	DBG_8192C("%s\n", __func__); */
+/*	DBG_8192C("%s\n", __func__); */
 	pg_header = ((pTargetPkt->offset << 4) & 0xf0) | pTargetPkt->word_en;
 
 	do {
@@ -1727,7 +1727,7 @@ static u8 hal_EfusePgPacketWrite2ByteHeader(
 	u8 repeatcnt = 0;
 
 
-/* 	DBG_8192C("%s\n", __func__); */
+/*	DBG_8192C("%s\n", __func__); */
 	EFUSE_GetEfuseDefinition(padapter, efuseType, TYPE_AVAILABLE_EFUSE_BYTES_BANK, &efuse_max_available_len, bPseudoTest);
 
 	efuse_addr = *pAddr;
@@ -1738,7 +1738,7 @@ static u8 hal_EfusePgPacketWrite2ByteHeader(
 	}
 
 	pg_header = ((pTargetPkt->offset & 0x07) << 5) | 0x0F;
-/* 	DBG_8192C("%s: pg_header = 0x%x\n", __func__, pg_header); */
+/*	DBG_8192C("%s: pg_header = 0x%x\n", __func__, pg_header); */
 
 	do {
 		efuse_OneByteWrite(padapter, efuse_addr, pg_header, bPseudoTest);
@@ -1818,7 +1818,7 @@ static u8 hal_EfusePgPacketWriteData(
 		return false;
 	}
 
-/* 	DBG_8192C("%s: ok\n", __func__); */
+/*	DBG_8192C("%s: ok\n", __func__); */
 	return true;
 }
 
@@ -2264,9 +2264,9 @@ void rtl8723b_init_default_value(struct adapter *padapter)
 
 	/*  init dm default value */
 	pdmpriv->TM_Trigger = 0;/* for IQK */
-/* 	pdmpriv->binitialized = false; */
-/* 	pdmpriv->prv_traffic_idx = 3; */
-/* 	pdmpriv->initialize = 0; */
+/*	pdmpriv->binitialized = false; */
+/*	pdmpriv->prv_traffic_idx = 3; */
+/*	pdmpriv->initialize = 0; */
 
 	pdmpriv->ThermalValue_HP_index = 0;
 	for (i = 0; i < HP_THERMAL_NUM; i++)
@@ -2441,7 +2441,7 @@ void Hal_InitPGData(struct adapter *padapter, u8 *PROMContent)
 void Hal_EfuseParseIDCode(struct adapter *padapter, u8 *hwinfo)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
-/* 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter); */
+/*	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter); */
 	u16 EEPROMId;
 
 
@@ -2578,7 +2578,7 @@ void Hal_EfuseParseTxPowerInfo_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 	struct TxPowerInfo24G	pwrInfo24G;
-	u8 	rfPath, ch, TxCount = 1;
+	u8 rfPath, ch, TxCount = 1;
 
 	Hal_ReadPowerValueFromPROM_8723B(padapter, &pwrInfo24G, PROMContent, AutoLoadFail);
 	for (rfPath = 0 ; rfPath < MAX_RF_PATH ; rfPath++) {
@@ -2710,7 +2710,7 @@ void Hal_EfuseParseEEPROMVer_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
-/* 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
+/*	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
 	if (!AutoLoadFail)
 		pHalData->EEPROMVersion = hwinfo[EEPROM_VERSION_8723B];
 	else
@@ -2793,7 +2793,7 @@ void Hal_EfuseParseCustomerID_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
-/* 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
+/*	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
 	if (!AutoLoadFail)
 		pHalData->EEPROMCustomerID = hwinfo[EEPROM_CustomID_8723B];
 	else
@@ -2816,7 +2816,7 @@ void Hal_EfuseParseXtal_8723B(
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
-/* 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
+/*	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
 	if (!AutoLoadFail) {
 		pHalData->CrystalCap = hwinfo[EEPROM_XTAL_8723B];
 		if (pHalData->CrystalCap == 0xFF)
@@ -2834,7 +2834,7 @@ void Hal_EfuseParseThermalMeter_8723B(
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 
-/* 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
+/*	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
 	/*  */
 	/*  ThermalMeter from EEPROM */
 	/*  */
@@ -2896,7 +2896,7 @@ u8 BWMapping_8723B(struct adapter *Adapter, struct pkt_attrib *pattrib)
 		BWSettingOfDesc = 0;
 
 	/* if (pTcb->bBTTxPacket) */
-	/* 	BWSettingOfDesc = 0; */
+	/*	BWSettingOfDesc = 0; */
 
 	return BWSettingOfDesc;
 }
@@ -3145,7 +3145,7 @@ static void rtl8723b_fill_default_txdesc(
 
 		ptxdesc->usb_txagg_num = pxmitframe->agg_num;
 	} else if (pxmitframe->frame_tag == MGNT_FRAMETAG) {
-/* 		RT_TRACE(_module_hal_xmit_c_, _drv_notice_, ("%s: MGNT_FRAMETAG\n", __func__)); */
+/*		RT_TRACE(_module_hal_xmit_c_, _drv_notice_, ("%s: MGNT_FRAMETAG\n", __func__)); */
 
 		ptxdesc->macid = pattrib->mac_id; /*  CAM_ID(MAC_ID) */
 		ptxdesc->qsel = pattrib->qsel;
@@ -3237,8 +3237,8 @@ void rtl8723b_update_txdesc(struct xmit_frame *pxmitframe, u8 *pbuf)
 
 /*  */
 /*  Description: In normal chip, we should send some packet to Hw which will be used by Fw */
-/* 			in FW LPS mode. The function is to fill the Tx descriptor of this packets, then */
-/* 			Fw can tell Hw to send these packet derectly. */
+/*			in FW LPS mode. The function is to fill the Tx descriptor of this packets, then */
+/*			Fw can tell Hw to send these packet derectly. */
 /*  Added by tynli. 2009.10.15. */
 /*  */
 /* type1:pspoll, type2:null */
@@ -3626,7 +3626,7 @@ void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len)
 #define	GET_8723B_C2H_TX_RPT_RETRY_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 7, 1)
 
 	/* DBG_871X("%s, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x\n", __func__, */
-	/* 		*pdata, *(pdata+1), *(pdata+2), *(pdata+3), *(pdata+4), *(pdata+5), *(pdata+6), *(pdata+7)); */
+	/*		*pdata, *(pdata+1), *(pdata+2), *(pdata+3), *(pdata+4), *(pdata+5), *(pdata+6), *(pdata+7)); */
 
 	seq_no = *(pdata+6);
 
@@ -3676,11 +3676,11 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 		break;
 
 	case C2H_CCX_TX_RPT:
-/* 			CCX_FwC2HTxRpt(padapter, QueueID, pC2hEvent->payload); */
+/*			CCX_FwC2HTxRpt(padapter, QueueID, pC2hEvent->payload); */
 		break;
 
 	case C2H_EXT_RA_RPT:
-/* 			C2HExtRaRptHandler(padapter, pC2hEvent->payload, C2hEvent.CmdLen); */
+/*			C2HExtRaRptHandler(padapter, pC2hEvent->payload, C2hEvent.CmdLen); */
 		break;
 
 	case C2H_HW_INFO_EXCH:
@@ -3700,8 +3700,8 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 
 	/*  Clear event to notify FW we have read the command. */
 	/*  Note: */
-	/* 	If this field isn't clear, the FW won't update the next command message. */
-/* 	rtw_write8(padapter, REG_C2HEVT_CLEAR, C2H_EVT_HOST_CLOSE); */
+	/*	If this field isn't clear, the FW won't update the next command message. */
+/*	rtw_write8(padapter, REG_C2HEVT_CLEAR, C2H_EVT_HOST_CLOSE); */
 exit:
 	return ret;
 }
@@ -3725,11 +3725,11 @@ static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent,
 		break;
 
 	case C2H_CCX_TX_RPT:
-/* 			CCX_FwC2HTxRpt(padapter, QueueID, tmpBuf); */
+/*			CCX_FwC2HTxRpt(padapter, QueueID, tmpBuf); */
 		break;
 
 	case C2H_EXT_RA_RPT:
-/* 			C2HExtRaRptHandler(padapter, tmpBuf, C2hEvent.CmdLen); */
+/*			C2HExtRaRptHandler(padapter, tmpBuf, C2hEvent.CmdLen); */
 		break;
 
 	case C2H_HW_INFO_EXCH:
@@ -3766,7 +3766,7 @@ void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 	tmpBuf = pbuffer+2;
 
 	/* DBG_871X("%s C2hEvent.CmdID:%x C2hEvent.CmdLen:%x C2hEvent.CmdSeq:%x\n", */
-	/* 		__func__, C2hEvent.CmdID, C2hEvent.CmdLen, C2hEvent.CmdSeq); */
+	/*		__func__, C2hEvent.CmdID, C2hEvent.CmdLen, C2hEvent.CmdSeq); */
 	RT_PRINT_DATA(_module_hal_init_c_, _drv_notice_, "C2HPacketHandler_8723B(): Command Content:\n", tmpBuf, C2hEvent.CmdLen);
 
 	process_c2h_event(padapter, &C2hEvent, tmpBuf);
@@ -3890,7 +3890,7 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 			break;
 		case 2:
 			/*  sta add event callback */
-/* 				rtw_btcoex_MediaStatusNotify(padapter, RT_MEDIA_CONNECT); */
+/*				rtw_btcoex_MediaStatusNotify(padapter, RT_MEDIA_CONNECT); */
 			break;
 		}
 		break;
@@ -4049,9 +4049,9 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 			}
 
 			/* if (psmode != PS_MODE_ACTIVE)	{ */
-			/* 	rtl8723b_set_lowpwr_lps_cmd(padapter, true); */
+			/*		rtl8723b_set_lowpwr_lps_cmd(padapter, true); */
 			/*  else { */
-			/* 	rtl8723b_set_lowpwr_lps_cmd(padapter, false); */
+			/*		rtl8723b_set_lowpwr_lps_cmd(padapter, false); */
 			/*  */
 			rtl8723b_set_FwPwrMode_cmd(padapter, psmode);
 		}
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index cf23414d7224..a72ed64e5d99 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -25,10 +25,10 @@
 * OverView:	Get shifted position of the BitMask
 *
 * Input:
-*		u32 	BitMask,
+*		u32		BitMask,
 *
 * Output:	none
-* Return:		u32 	Return the shift bit bit position of the mask
+* Return:		u32		Return the shift bit bit position of the mask
 */
 static	u32 phy_CalculateBitShift(u32 BitMask)
 {
@@ -49,11 +49,11 @@ static	u32 phy_CalculateBitShift(u32 BitMask)
 *
 * Input:
 *		struct adapter *	Adapter,
-*		u32 		RegAddr,	The target address to be readback
-*		u32 		BitMask		The target bit position in the target address
+*		u32			RegAddr,	The target address to be readback
+*		u32			BitMask		The target bit position in the target address
 *							to be readback
 * Output:	None
-* Return:		u32 		Data		The readback register value
+* Return:		u32			Data		The readback register value
 * Note:		This function is equal to "GetRegSetting" in PHY programming guide
 */
 u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
@@ -81,10 +81,10 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 *
 * Input:
 *		struct adapter *	Adapter,
-*		u32 		RegAddr,	The target address to be modified
-*		u32 		BitMask		The target bit position in the target address
+*		u32			RegAddr,	The target address to be modified
+*		u32			BitMask		The target bit position in the target address
 *								to be modified
-*		u32 		Data		The new register value in the target bit position
+*		u32			Data		The new register value in the target bit position
 *								of the target address
 *
 * Output:	None
@@ -191,8 +191,8 @@ static u32 phy_RFSerialRead_8723B(
 * Input:
 *		struct adapter *	Adapter,
 *		RF_PATH			eRFPath,	Radio path of A/B/C/D
-*		u32 		Offset,		The target address to be read
-*		u32 		Data		The new register Data in the target bit position
+*		u32			Offset,		The target address to be read
+*		u32			Data		The new register Data in the target bit position
 *								of the target to be read
 *
 * Output:	None
@@ -268,12 +268,12 @@ static void phy_RFSerialWrite_8723B(
 * Input:
 *		struct adapter *	Adapter,
 *		RF_PATH			eRFPath,	Radio path of A/B/C/D
-*		u32 		RegAddr,	The target address to be read
-*		u32 		BitMask		The target bit position in the target address
+*		u32				RegAddr,	The target address to be read
+*		u32				BitMask		The target bit position in the target address
 *								to be read
 *
 * Output:	None
-* Return:		u32 		Readback value
+* Return:		u32		Readback value
 * Note:		This function is equal to "GetRFRegSetting" in PHY programming guide
 */
 u32 PHY_QueryRFReg_8723B(
@@ -302,11 +302,11 @@ u32 PHY_QueryRFReg_8723B(
 *
 * Input:
 *		struct adapter *	Adapter,
-*		RF_PATH			eRFPath,	Radio path of A/B/C/D
-*		u32 		RegAddr,	The target address to be modified
-*		u32 		BitMask		The target bit position in the target address
+*		RF_PATH		eRFPath,	Radio path of A/B/C/D
+*		u32			RegAddr,	The target address to be modified
+*		u32			BitMask		The target bit position in the target address
 *								to be modified
-*		u32 		Data		The new register Data in the target bit position
+*		u32			Data		The new register Data in the target bit position
 *								of the target address
 *
 * Output:	None
@@ -789,7 +789,7 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
 
-/* 			PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
+/*			PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
 
 		PHY_SetBBReg(Adapter, rOFDM0_TxPseudoNoiseWgt, (BIT31|BIT30), 0x0);
 		break;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 1fbf89cb72d0..841ba12921f3 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -38,7 +38,7 @@ static void update_recvframe_attrib(struct adapter *padapter,
 
 	/*  update rx report to recv_frame attribute */
 	pattrib->pkt_rpt_type = prxreport->c2h_ind ? C2H_PACKET : NORMAL_RX;
-/* 	DBG_871X("%s: pkt_rpt_type =%d\n", __func__, pattrib->pkt_rpt_type); */
+/*	DBG_871X("%s: pkt_rpt_type =%d\n", __func__, pattrib->pkt_rpt_type); */
 
 	if (pattrib->pkt_rpt_type == NORMAL_RX) {
 		/*  Normal rx packet */
@@ -127,7 +127,7 @@ static void update_recvframe_phyinfo(union recv_frame *precvframe,
 	if (psta) {
 		pkt_info.station_id = psta->mac_id;
 		/* DBG_8192C("%s ==> StationID(%d)\n",
-		 * 	  __func__, pkt_info.station_id); */
+		 *	  __func__, pkt_info.station_id); */
 	}
 	pkt_info.data_rate = pattrib->data_rate;
 
@@ -287,9 +287,9 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 				rtw_free_recvframe(precvframe,
 						   &precvpriv->free_recv_queue);
 			} else {
-				/* 	Modified by Albert 20101213 */
-				/* 	For 8 bytes IP header alignment. */
-				if (pattrib->qos)	/* 	Qos data, wireless lan header length is 26 */
+				/*	Modified by Albert 20101213 */
+				/*	For 8 bytes IP header alignment. */
+				if (pattrib->qos)	/*	Qos data, wireless lan header length is 26 */
 					shift_sz = 6;
 				else
 					shift_sz = 0;
@@ -305,8 +305,8 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 						alloc_sz = skb_len + 14;
 				} else {
 					alloc_sz = skb_len;
-					/* 	6 is for IP header 8 bytes alignment in QoS packet case. */
-					/* 	8 is for skb->data 4 bytes alignment. */
+					/*	6 is for IP header 8 bytes alignment in QoS packet case. */
+					/*	8 is for skb->data 4 bytes alignment. */
 					alloc_sz += 14;
 				}
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 28a4b5baed2e..fbfafe86e8b2 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -39,7 +39,7 @@ static u8 rtw_sdio_wait_enough_TxOQT_space(struct adapter *padapter, u8 agg_num)
 	pHalData->SdioTxOQTFreeSpace -= agg_num;
 
 	/* if (n > 1) */
-	/* 	++priv->pshare->nr_out_of_txoqt_space; */
+	/*	++priv->pshare->nr_out_of_txoqt_space; */
 
 	return true;
 }
@@ -180,7 +180,7 @@ s32 rtl8723bs_xmit_buf_handler(struct adapter *padapter)
 
 	do {
 		queue_empty = rtl8723_dequeue_writeport(padapter);
-/* 	dump secondary adapter xmitbuf */
+/*	dump secondary adapter xmitbuf */
 	} while (!queue_empty);
 
 	rtw_unregister_tx_alive(padapter);
@@ -358,7 +358,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 					pxmitframe->pg_num = (txlen + 127) / 128;
 					pxmitbuf->pg_num += (txlen + 127) / 128;
 				    /* if (k != 1) */
-					/* 	((struct xmit_frame*)pxmitbuf->priv_data)->pg_num += pxmitframe->pg_num; */
+					/*	((struct xmit_frame*)pxmitbuf->priv_data)->pg_num += pxmitframe->pg_num; */
 					pxmitbuf->ptail += _RND(txlen, 8); /*  round to 8 bytes alignment */
 					pxmitbuf->len = _RND(pxmitbuf->len, 8) + txlen;
 				}
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 57f248f432f2..0cc2e06636b1 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -106,7 +106,7 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	u16 value16;
 	u32 value32;
 	u8 ret;
-/* 	u8 bMacPwrCtrlOn; */
+/*	u8 bMacPwrCtrlOn; */
 
 
 	/*  all of these MUST be configured before power on */
@@ -150,8 +150,8 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	rtw_write16(padapter, REG_APS_FSMCO, value16);
 
 	/*  Enable CMD53 R/W Operation */
-/* 	bMacPwrCtrlOn = true; */
-/* 	rtw_hal_set_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn); */
+/*	bMacPwrCtrlOn = true; */
+/*	rtw_hal_set_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn); */
 
 	rtw_write8(padapter, REG_CR, 0x00);
 	/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block */
@@ -178,17 +178,17 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	/*  Switch the control of EESK, EECS to RFC for DPDT or Antenna switch */
 	value16 |= BIT(11); /*  BIT_EEPRPAD_RFE_CTRL_EN */
 	rtw_write16(padapter, REG_PWR_DATA, value16);
-/* 	DBG_8192C("%s: REG_PWR_DATA(0x%x) = 0x%04X\n", __func__, REG_PWR_DATA, rtw_read16(padapter, REG_PWR_DATA)); */
+/*	DBG_8192C("%s: REG_PWR_DATA(0x%x) = 0x%04X\n", __func__, REG_PWR_DATA, rtw_read16(padapter, REG_PWR_DATA)); */
 
 	value32 = rtw_read32(padapter, REG_LEDCFG0);
 	value32 |= BIT(23); /*  DPDT_SEL_EN, 1 for SW control */
 	rtw_write32(padapter, REG_LEDCFG0, value32);
-/* 	DBG_8192C("%s: REG_LEDCFG0(0x%x) = 0x%08X\n", __func__, REG_LEDCFG0, rtw_read32(padapter, REG_LEDCFG0)); */
+/*	DBG_8192C("%s: REG_LEDCFG0(0x%x) = 0x%08X\n", __func__, REG_LEDCFG0, rtw_read32(padapter, REG_LEDCFG0)); */
 
 	value8 = rtw_read8(padapter, REG_PAD_CTRL1_8723B);
 	value8 &= ~BIT(0); /*  BIT_SW_DPDT_SEL_DATA, DPDT_SEL default configuration */
 	rtw_write8(padapter, REG_PAD_CTRL1_8723B, value8);
-/* 	DBG_8192C("%s: REG_PAD_CTRL1(0x%x) = 0x%02X\n", __func__, REG_PAD_CTRL1_8723B, rtw_read8(padapter, REG_PAD_CTRL1_8723B)); */
+/*	DBG_8192C("%s: REG_PAD_CTRL1(0x%x) = 0x%02X\n", __func__, REG_PAD_CTRL1_8723B, rtw_read8(padapter, REG_PAD_CTRL1_8723B)); */
 
 #ifdef CONFIG_GPIO_WAKEUP
 	HostWakeUpGpioClear(padapter);
@@ -448,7 +448,7 @@ static void _InitNetworkType(struct adapter *padapter)
 	value32 = rtw_read32(padapter, REG_CR);
 
 	/*  TODO: use the other function to set network type */
-/* 	value32 = (value32 & ~MASK_NETTYPE) | _NETTYPE(NT_LINK_AD_HOC); */
+/*	value32 = (value32 & ~MASK_NETTYPE) | _NETTYPE(NT_LINK_AD_HOC); */
 	value32 = (value32 & ~MASK_NETTYPE) | _NETTYPE(NT_LINK_AP);
 
 	rtw_write32(padapter, REG_CR, value32);
@@ -576,7 +576,7 @@ static void _initSdioAggregationSetting(struct adapter *padapter)
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
 
 	/*  Tx aggregation setting */
-/* 	sdio_AggSettingTxUpdate(padapter); */
+/*	sdio_AggSettingTxUpdate(padapter); */
 
 	/*  Rx aggregation setting */
 	HalRxAggr8723BSdio(padapter);
@@ -603,7 +603,7 @@ static void _InitOperationMode(struct adapter *padapter)
 		regBwOpMode = BW_OPMODE_20MHZ;
 		break;
 	case WIRELESS_MODE_A:
-/* 			RT_ASSERT(false, ("Error wireless a mode\n")); */
+/*			RT_ASSERT(false, ("Error wireless a mode\n")); */
 		break;
 	case WIRELESS_MODE_G:
 		regBwOpMode = BW_OPMODE_20MHZ;
@@ -617,7 +617,7 @@ static void _InitOperationMode(struct adapter *padapter)
 		regBwOpMode = BW_OPMODE_20MHZ;
 		break;
 	case WIRELESS_MODE_N_5G:
-/* 			RT_ASSERT(false, ("Error wireless mode")); */
+/*			RT_ASSERT(false, ("Error wireless mode")); */
 		regBwOpMode = BW_OPMODE_5G;
 		break;
 
@@ -775,7 +775,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	}
 #endif /* CONFIG_WOWLAN */
 	/*  Disable Interrupt first. */
-/* 	rtw_hal_disable_interrupt(padapter); */
+/*	rtw_hal_disable_interrupt(padapter); */
 
 	ret = _InitPowerOn_8723BS(padapter);
 	if (ret == _FAIL) {
@@ -799,7 +799,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 	rtl8723b_InitializeFirmwareVars(padapter);
 
-/* 	SIC_Init(padapter); */
+/*	SIC_Init(padapter); */
 
 	if (pwrctrlpriv->reg_rfoff)
 		pwrctrlpriv->rf_pwrstate = rf_off;
@@ -898,8 +898,8 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 	/*  Record original value for template. This is arough data, we can only use the data */
 	/*  for power adjust. The value can not be adjustde according to different power!!! */
-/* 	pHalData->OriginalCckTxPwrIdx = pHalData->CurrentCckTxPwrIdx; */
-/* 	pHalData->OriginalOfdm24GTxPwrIdx = pHalData->CurrentOfdm24GTxPwrIdx; */
+/*	pHalData->OriginalCckTxPwrIdx = pHalData->CurrentCckTxPwrIdx; */
+/*	pHalData->OriginalOfdm24GTxPwrIdx = pHalData->CurrentOfdm24GTxPwrIdx; */
 
 	rtl8723b_InitAntenna_Selection(padapter);
 
@@ -944,7 +944,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	/* ack for xmit mgmt frames. */
 	rtw_write32(padapter, REG_FWHW_TXQ_CTRL, rtw_read32(padapter, REG_FWHW_TXQ_CTRL) | BIT(12));
 
-/* 	pHalData->PreRpwmVal = SdioLocalCmd52Read1Byte(padapter, SDIO_REG_HRPWM1) & 0x80; */
+/*	pHalData->PreRpwmVal = SdioLocalCmd52Read1Byte(padapter, SDIO_REG_HRPWM1) & 0x80; */
 
 	{
 		pwrctrlpriv->rf_pwrstate = rf_on;
@@ -999,7 +999,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 /*  */
 /*  Description: */
-/* 	RTL8723e card disable power sequence v003 which suggested by Scott. */
+/*	RTL8723e card disable power sequence v003 which suggested by Scott. */
 /*  */
 /*  First created by tynli. 2011.01.28. */
 /*  */
@@ -1015,7 +1015,7 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
 		DBG_8192C(KERN_ERR "%s: run RF OFF flow fail!\n", __func__);
 	}
 
-	/* 	==== Reset digital sequence   ====== */
+	/*	==== Reset digital sequence   ====== */
 
 	u1bTmp = rtw_read8(padapter, REG_MCUFWDL);
 	if ((u1bTmp & RAM_DL_SEL) && padapter->bFWReady) /* 8051 RAM code */
@@ -1038,7 +1038,7 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
 	u1bTmp |= BIT(0);
 	rtw_write8(padapter, REG_RSV_CTRL+1, u1bTmp);
 
-	/* 	==== Reset digital sequence end ====== */
+	/*	==== Reset digital sequence end ====== */
 
 	bMacPwrCtrlOn = false;	/*  Disable CMD53 R/W */
 	ret = false;
@@ -1184,13 +1184,13 @@ static void rtl8723bs_interface_configure(struct adapter *padapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		We should set Efuse cell selection to WiFi cell in default. */
+/*	Description: */
+/*		We should set Efuse cell selection to WiFi cell in default. */
 /*  */
-/* 	Assumption: */
-/* 		PASSIVE_LEVEL */
+/*	Assumption: */
+/*		PASSIVE_LEVEL */
 /*  */
-/* 	Added by Roger, 2010.11.23. */
+/*	Added by Roger, 2010.11.23. */
 /*  */
 static void _EfuseCellSel(struct adapter *padapter)
 {
@@ -1222,14 +1222,14 @@ static void Hal_EfuseParseMACAddr_8723BS(
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 
 	if (AutoLoadFail) {
-/* 		sMacAddr[5] = (u8)GetRandomNumber(1, 254); */
+/*		sMacAddr[5] = (u8)GetRandomNumber(1, 254); */
 		for (i = 0; i < 6; i++)
 			pEEPROM->mac_addr[i] = sMacAddr[i];
 	} else {
 		/* Read Permanent MAC address */
 		memcpy(pEEPROM->mac_addr, &hwinfo[EEPROM_MAC_ADDR_8723BS], ETH_ALEN);
 	}
-/* 	NicIFSetMacAddress(padapter, padapter->PermanentAddress); */
+/*	NicIFSetMacAddress(padapter, padapter->PermanentAddress); */
 
 	RT_TRACE(
 		_module_hci_hal_init_c_,
@@ -1312,7 +1312,7 @@ static void _ReadEfuseInfo8723BS(struct adapter *padapter)
 static void _ReadPROMContent(struct adapter *padapter)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
-	u8 	eeValue;
+	u8 eeValue;
 
 	eeValue = rtw_read8(padapter, REG_9346CR);
 	/*  To check system boot selection. */
@@ -1325,7 +1325,7 @@ static void _ReadPROMContent(struct adapter *padapter)
 		  (pEEPROM->EepromOrEfuse ? "EEPROM" : "EFUSE"),
 		  (pEEPROM->bautoload_fail_flag ? "Fail" : "OK")));
 
-/* 	pHalData->EEType = IS_BOOT_FROM_EEPROM(Adapter) ? EEPROM_93C46 : EEPROM_BOOT_EFUSE; */
+/*	pHalData->EEType = IS_BOOT_FROM_EEPROM(Adapter) ? EEPROM_93C46 : EEPROM_BOOT_EFUSE; */
 
 	_ReadEfuseInfo8723BS(padapter);
 }
@@ -1335,11 +1335,11 @@ static void _InitOtherVariable(struct adapter *Adapter)
 }
 
 /*  */
-/* 	Description: */
-/* 		Read HW adapter information by E-Fuse or EEPROM according CR9346 reported. */
+/*	Description: */
+/*		Read HW adapter information by E-Fuse or EEPROM according CR9346 reported. */
 /*  */
-/* 	Assumption: */
-/* 		PASSIVE_LEVEL (SDIO interface) */
+/*	Assumption: */
+/*		PASSIVE_LEVEL (SDIO interface) */
 /*  */
 /*  */
 static s32 _ReadAdapterInfo8723BS(struct adapter *padapter)
@@ -1796,14 +1796,14 @@ static void SetHwRegWithBuf8723B(struct adapter *padapter, u8 variable, u8 *pbuf
 }
 
 /*  */
-/* 	Description: */
-/* 		Query setting of specified variable. */
+/*	Description: */
+/*		Query setting of specified variable. */
 /*  */
 static u8 GetHalDefVar8723BSDIO(
 	struct adapter *Adapter, enum HAL_DEF_VARIABLE eVariable, void *pValue
 )
 {
-	u8 	bResult = _SUCCESS;
+	u8 bResult = _SUCCESS;
 
 	switch (eVariable) {
 	case HAL_DEF_IS_SUPPORT_ANT_DIV:
@@ -1824,8 +1824,8 @@ static u8 GetHalDefVar8723BSDIO(
 }
 
 /*  */
-/* 	Description: */
-/* 		Change default setting of specified variable. */
+/*	Description: */
+/*		Change default setting of specified variable. */
 /*  */
 static u8 SetHalDefVar8723BSDIO(struct adapter *Adapter,
 				enum HAL_DEF_VARIABLE eVariable, void *pValue)
-- 
2.25.1


