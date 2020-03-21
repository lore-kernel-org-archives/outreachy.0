X-GM-THRID: 6806789560169660416
X-Received: by 2002:a63:e56:: with SMTP id 22mr2742050pgo.173.1584829712161;
        Sat, 21 Mar 2020 15:28:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls5435939pff.5.gmail; Sat, 21 Mar
 2020 15:28:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtMTBVT//MXB0ZVdO0utXUAB31DuFg+eJKS1xVQ1KRrXoQLp8gdP8bRfvIq4jK2vBHqjWG/
X-Received: by 2002:a62:2a8c:: with SMTP id q134mr5212899pfq.35.1584829710299;
        Sat, 21 Mar 2020 15:28:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584829710; cv=none;
        d=google.com; s=arc-20160816;
        b=g/FIU9f1meVJ1+FuxPRWYlgfq603xuitYeICSNBwiXDsv4/vF+3mXep3lUvSrK0JSI
         4aU2pWq3Bndjg0A1d4/Mkq5o0Idnsx6yXDBpjevoxkY7xJSpPkkZY9WmL0+276A2wbLc
         wGM0ysg1v04sLemQUJiyzDc+9Eev3jl3t12/YuVpFPbPFuO3h87q6wcoutmtaNSZZrWb
         9ZMgqIYAd6YJUs96PlGmG83g7mzdT/MfdxqzE/bdgRJP1jaFq9vgNXPTe5MdzzQtfXpw
         GjPxXVbgmru50G/1UprwtVCIKtMB95f2obr1PePEx6jtrxZwcfJICCBPU9B1M6gUoBWp
         WjWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=FJ7czszs6QJI52MOo7v8xxGTQX047zvU5p3YQaPDb+k=;
        b=Pw7x+wxa0yIIbP3jFgcRC8FlxaFjh9nMP92IEcP6wEgGhgyaZzriNtYt3VnyRvpECH
         z5DwX1593Bx0laVk8mIvejApbiS6f60/hOd8reacV+zHI/KISPIMq8ye92kAQOhlfh8+
         nBVh/Xupf2hWoA5WITH6ryRKLqwMFY9N7tBWvzrbu1q6w/HVVbAr/KsJo6zJS8SsDlww
         DbUWV8K3Rk6kKdUV0PUu9QbNHml5aoL4Z973KlO1i7hrMH5UeHC9ftVDyUyLYn/VhChz
         RbeDpjaevQATEcmHvxnRun1XZTd12JY8bvbDv38X+J7RISjZPYvVTDb1RySPnHJEZwAR
         ygCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=de9JvBu2;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c125si53994pga.5.2020.03.21.15.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 15:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=de9JvBu2;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id z25so1039773pfa.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 15:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FJ7czszs6QJI52MOo7v8xxGTQX047zvU5p3YQaPDb+k=;
        b=de9JvBu2UqzMxj3fuRcgHmsF8hzyM0lXaU4CooF6DJPHUeBi3LCTAal4ol13kbVilZ
         86FsZIrgyzdcrcxUhmW/A3Yd8XalKO0AcuwK4C9qjUYIXiyiIU5ggvCpa3/TIo/B+Yfn
         ylFfxDjVCOQmEi49R/+DOBPx1x+oMVYXsviaRfQr33He2KxH0tnzEBVKkcOhc0ZPDT+S
         1bDuMiUlWZT48OpLLJi3A3lwixRXplyef/AeyATPDmhJe9rhckhseiQGH9OspqXTMTY3
         xBq7vZqcBGu8FTyiHzM8g5VRx4BJzlxWs3LBXZ3ssyLYiQUJ3gTr0y1kzbivvUUqWHcO
         avYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FJ7czszs6QJI52MOo7v8xxGTQX047zvU5p3YQaPDb+k=;
        b=mr1bnFiFkt2xisDMul6C8AA+SaGtyk7Ny93t9n4TbdwB2O9NE2FJGMvJTno0Bud2yL
         ThcV1tW6lfp5nj9cJfm+IelQWTKK6k7C6Zt0vp8Jg9Tbzv7f07V0QodDQD4mwtdTUXPz
         l2jm9XmHT3kxQ7ROfPnlyYIpdjO9POCVaXn39rkXiAxTbt0fV6ITcQyXsv3hg0M5j8MI
         wevKkQAiMFGZQOTEs0Uz8muVU+gCpMrKq/9j+LnrLjZ3bxFMDnHws3EGhS26D87Pf3QM
         G7vMkfxj6BifZ7qLF6TaeK7y0LlMw1iH3pG75vszHuoN1QVAARF/qdin+iEVOCG6iU71
         zlMg==
X-Gm-Message-State: ANhLgQ3LzIEiQXjuO9FpN4A3nWh+UwuLQGagAWBveARVdPReonxeMYey
	qQ4/qgk9Jws/QJ0kcd86VxqLd+RDwFE=
X-Received: by 2002:a62:7d4e:: with SMTP id y75mr16802146pfc.32.1584829709861;
        Sat, 21 Mar 2020 15:28:29 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([113.193.33.115])
        by smtp.gmail.com with ESMTPSA id l13sm2476898pjq.42.2020.03.21.15.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 15:28:29 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH 09/11] Staging: rtl8188eu: rtl8188e_hal_init: Add space around operators
Date: Sun, 22 Mar 2020 03:58:23 +0530
Message-Id: <7b214cfa7179468b7cd25759612d0f29c7fc9aed.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rtl8188e_hal_init_old.o rtl8188e_hal_init.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 57ae0e83dd3e..740004d71a15 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -22,7 +22,7 @@ void iol_mode_enable(struct adapter *padapter, u8 enable)
 	if (enable) {
 		/* Enable initial offload */
 		reg_0xf0 = usb_read8(padapter, REG_SYS_CFG);
-		usb_write8(padapter, REG_SYS_CFG, reg_0xf0|SW_OFFLOAD_EN);
+		usb_write8(padapter, REG_SYS_CFG, reg_0xf0 | SW_OFFLOAD_EN);
 
 		if (!padapter->bFWReady) {
 			DBG_88E("bFWReady == false call reset 8051...\n");
@@ -42,9 +42,9 @@ s32 iol_execute(struct adapter *padapter, u8 control)
 	u8 reg_0x88 = 0;
 	unsigned long start = 0;
 
-	control = control&0x0f;
+	control = control & 0x0f;
 	reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0);
-	usb_write8(padapter, REG_HMEBOX_E0,  reg_0x88|control);
+	usb_write8(padapter, REG_HMEBOX_E0,  reg_0x88 | control);
 
 	start = jiffies;
 	while ((reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0)) & control &&
@@ -54,7 +54,7 @@ s32 iol_execute(struct adapter *padapter, u8 control)
 
 	reg_0x88 = usb_read8(padapter, REG_HMEBOX_E0);
 	status = (reg_0x88 & control) ? _FAIL : _SUCCESS;
-	if (reg_0x88 & control<<4)
+	if (reg_0x88 & control << 4)
 		status = _FAIL;
 	return status;
 }
@@ -64,7 +64,7 @@ static s32 iol_InitLLTTable(struct adapter *padapter, u8 txpktbuf_bndy)
 	s32 rst = _SUCCESS;
 
 	iol_mode_enable(padapter, 1);
-	usb_write8(padapter, REG_TDECTRL+1, txpktbuf_bndy);
+	usb_write8(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
 	rst = iol_execute(padapter, CMD_INIT_LLT);
 	iol_mode_enable(padapter, 0);
 	return rst;
@@ -92,9 +92,9 @@ void _8051Reset88E(struct adapter *padapter)
 {
 	u8 u1bTmp;
 
-	u1bTmp = usb_read8(padapter, REG_SYS_FUNC_EN+1);
-	usb_write8(padapter, REG_SYS_FUNC_EN+1, u1bTmp&(~BIT(2)));
-	usb_write8(padapter, REG_SYS_FUNC_EN+1, u1bTmp|(BIT(2)));
+	u1bTmp = usb_read8(padapter, REG_SYS_FUNC_EN + 1);
+	usb_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp & (~BIT(2)));
+	usb_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp | (BIT(2)));
 	DBG_88E("=====> _8051Reset88E(): 8051 reset success .\n");
 }
 
@@ -122,7 +122,7 @@ void rtw_hal_read_chip_version(struct adapter *padapter)
 	value32 = usb_read32(padapter, REG_SYS_CFG);
 	ChipVersion.ChipType = ((value32 & RTL_ID) ? TEST_CHIP : NORMAL_CHIP);
 	ChipVersion.VendorType = ((value32 & VENDOR_ID) ? CHIP_VENDOR_UMC : CHIP_VENDOR_TSMC);
-	ChipVersion.CUTVersion = (value32 & CHIP_VER_RTL_MASK)>>CHIP_VER_RTL_SHIFT; /*  IC version (CUT) */
+	ChipVersion.CUTVersion = (value32 & CHIP_VER_RTL_MASK) >> CHIP_VER_RTL_SHIFT; /*  IC version (CUT) */
 
 	dump_chip_info(ChipVersion);
 
@@ -163,10 +163,10 @@ void rtw_hal_notch_filter(struct adapter *adapter, bool enable)
 {
 	if (enable) {
 		DBG_88E("Enable notch filter\n");
-		usb_write8(adapter, rOFDM0_RxDSP+1, usb_read8(adapter, rOFDM0_RxDSP+1) | BIT(1));
+		usb_write8(adapter, rOFDM0_RxDSP + 1, usb_read8(adapter, rOFDM0_RxDSP + 1) | BIT(1));
 	} else {
 		DBG_88E("Disable notch filter\n");
-		usb_write8(adapter, rOFDM0_RxDSP+1, usb_read8(adapter, rOFDM0_RxDSP+1) & ~BIT(1));
+		usb_write8(adapter, rOFDM0_RxDSP + 1, usb_read8(adapter, rOFDM0_RxDSP + 1) & ~BIT(1));
 	}
 }
 
@@ -308,7 +308,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 			if (pwrInfo24G->IndexCCK_Base[rfPath][group] == 0xFF)
 				pwrInfo24G->IndexCCK_Base[rfPath][group] = EEPROM_DEFAULT_24G_INDEX;
 		}
-		for (group = 0; group < MAX_CHNL_GROUP_24G-1; group++) {
+		for (group = 0; group < MAX_CHNL_GROUP_24G - 1; group++) {
 			pwrInfo24G->IndexBW40_Base[rfPath][group] =	PROMContent[eeAddr++];
 			if (pwrInfo24G->IndexBW40_Base[rfPath][group] == 0xFF)
 				pwrInfo24G->IndexBW40_Base[rfPath][group] =	EEPROM_DEFAULT_24G_INDEX;
@@ -319,7 +319,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->BW20_Diff[rfPath][TxCount] = EEPROM_DEFAULT_24G_HT20_DIFF;
 				} else {
-					pwrInfo24G->BW20_Diff[rfPath][TxCount] = (PROMContent[eeAddr]&0xf0)>>4;
+					pwrInfo24G->BW20_Diff[rfPath][TxCount] = (PROMContent[eeAddr] & 0xf0) >> 4;
 					if (pwrInfo24G->BW20_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->BW20_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -327,7 +327,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_24G_OFDM_DIFF;
 				} else {
-					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0x0f);
+					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0x0f);
 					if (pwrInfo24G->OFDM_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->OFDM_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -337,7 +337,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->BW40_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->BW40_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0xf0)>>4;
+					pwrInfo24G->BW40_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0xf0) >> 4;
 					if (pwrInfo24G->BW40_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->BW40_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -345,7 +345,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->BW20_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->BW20_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0x0f);
+					pwrInfo24G->BW20_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0x0f);
 					if (pwrInfo24G->BW20_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->BW20_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -354,7 +354,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->OFDM_Diff[rfPath][TxCount] = EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0xf0)>>4;
+					pwrInfo24G->OFDM_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0xf0) >> 4;
 					if (pwrInfo24G->OFDM_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->OFDM_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -362,7 +362,7 @@ static void Hal_ReadPowerValueFromPROM_8188E(struct txpowerinfo24g *pwrInfo24G,
 				if (PROMContent[eeAddr] == 0xFF) {
 					pwrInfo24G->CCK_Diff[rfPath][TxCount] =	EEPROM_DEFAULT_DIFF;
 				} else {
-					pwrInfo24G->CCK_Diff[rfPath][TxCount] =	(PROMContent[eeAddr]&0x0f);
+					pwrInfo24G->CCK_Diff[rfPath][TxCount] =	(PROMContent[eeAddr] & 0x0f);
 					if (pwrInfo24G->CCK_Diff[rfPath][TxCount] & BIT(3))		/* 4bit sign number to 8 bit sign number */
 						pwrInfo24G->CCK_Diff[rfPath][TxCount] |= 0xF0;
 				}
@@ -450,9 +450,9 @@ void Hal_ReadTxPowerInfo88E(struct adapter *padapter, u8 *PROMContent, bool Auto
 
 	/*  2010/10/19 MH Add Regulator recognize for CU. */
 	if (!AutoLoadFail) {
-		pHalData->EEPROMRegulatory = (PROMContent[EEPROM_RF_BOARD_OPTION_88E]&0x7);	/* bit0~2 */
+		pHalData->EEPROMRegulatory = (PROMContent[EEPROM_RF_BOARD_OPTION_88E] & 0x7);	/* bit0~2 */
 		if (PROMContent[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
-			pHalData->EEPROMRegulatory = (EEPROM_DEFAULT_BOARD_OPTION&0x7);	/* bit0~2 */
+			pHalData->EEPROMRegulatory = (EEPROM_DEFAULT_BOARD_OPTION & 0x7);	/* bit0~2 */
 	} else {
 		pHalData->EEPROMRegulatory = 0;
 	}
@@ -532,9 +532,9 @@ void Hal_ReadAntennaDiversity88E(struct adapter *pAdapter, u8 *PROMContent, bool
 	if (!AutoLoadFail) {
 		/*  Antenna Diversity setting. */
 		if (registry_par->antdiv_cfg == 2) { /*  2:By EFUSE */
-			pHalData->AntDivCfg = (PROMContent[EEPROM_RF_BOARD_OPTION_88E]&0x18)>>3;
+			pHalData->AntDivCfg = (PROMContent[EEPROM_RF_BOARD_OPTION_88E] & 0x18) >> 3;
 			if (PROMContent[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
-				pHalData->AntDivCfg = (EEPROM_DEFAULT_BOARD_OPTION&0x18)>>3;
+				pHalData->AntDivCfg = (EEPROM_DEFAULT_BOARD_OPTION & 0x18) >> 3;
 		} else {
 			pHalData->AntDivCfg = registry_par->antdiv_cfg;  /*  0:OFF , 1:ON, 2:By EFUSE */
 		}
-- 
2.17.1


