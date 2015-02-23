X-GM-THRID: 2829093699584
X-Received: by 10.180.80.35 with SMTP id o3mr1400993wix.0.1424704572247;
        Mon, 23 Feb 2015 07:16:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.105 with SMTP id 9ls385lal.59.gmail; Mon, 23 Feb 2015
 07:16:11 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr1387737lbc.15.1424704571721;
        Mon, 23 Feb 2015 07:16:11 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id i7si711174wif.0.2015.02.23.07.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 07:16:11 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so17886083wiw.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 07:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=giWpmjHuwjE0z1SXJH0UBQ/BDvwCL51NzmvbSmQzPY0=;
        b=uVDXzX/j+KSUSWd8tJhGjGHfTRC492Z012VxvHbSHuqt48L1bHAHJNjXngglc2cAk1
         1Cyc4tB2Ew0890vpAnnw5QuTgSgcoohizMWb467kQ13s57dtoRKLBNHEFOmmRStW6ivd
         CWj3R0Ob00KgaLQSf2XK1nbTHQc9tqqrCpBAYdCiLwHbqwvXIZLjudLqY7TK9z/EWvsd
         zgsAPOyYaTFOK71RnW4gkeAj7cygW22NsQcz4zXP852S0q8MoVQgeF8p2fHxUke5iPpe
         jzniiM75vWaxAUsYNL8XENMoZkaBNTkPBEDtUDsq5+9QZOj1LpJgztD33Z69DIUGHOvR
         AQfw==
X-Received: by 10.194.5.37 with SMTP id p5mr23516396wjp.20.1424704570683;
        Mon, 23 Feb 2015 07:16:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id j7sm5671114wix.4.2015.02.23.07.16.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 07:16:10 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: Add blank line after declarations
Date: Mon, 23 Feb 2015 17:16:00 +0200
Message-Id: <1424704560-7115-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes these warning messages found by checkpatch.pl:
WARNING: Missing a blank line after declarations.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 14650e9..62e1be3 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -104,6 +104,7 @@ static u32 rtl8188eu_InitPowerOn(struct adapter *adapt)
 	u16 value16;
 	/*  HW Power on sequence */
 	struct hal_data_8188e	*haldata	= GET_HAL_DATA(adapt);
+
 	if (haldata->bMacPwrCtrlOn)
 		return _SUCCESS;
 
@@ -234,6 +235,7 @@ static void _InitNormalChipOneOutEpPriority(struct adapter *Adapter)
 	struct hal_data_8188e	*haldata	= GET_HAL_DATA(Adapter);
 
 	u16 value = 0;
+
 	switch (haldata->OutEpQueueSel) {
 	case TX_SELE_HQ:
 		value = QUEUE_HIGH;
@@ -352,6 +354,7 @@ static void _InitTransferPageSize(struct adapter *Adapter)
 	/*  Tx page size is always 128. */
 
 	u8 value8;
+
 	value8 = _PSRX(PBP_128) | _PSTX(PBP_128);
 	usb_write8(Adapter, REG_PBP, value8);
 }
@@ -1417,6 +1420,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		if (*((u8 *)val)) { /* under sitesurvey */
 			/* config RCR to receive different BSSID & not to receive data frame */
 			u32 v = usb_read32(Adapter, REG_RCR);
+
 			v &= ~(RCR_CBSSID_BCN);
 			usb_write32(Adapter, REG_RCR, v);
 			/* reject all data frame */
@@ -1445,6 +1449,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			} else {
 				if (Adapter->in_cta_test) {
 					u32 v = usb_read32(Adapter, REG_RCR);
+
 					v &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);/*  RCR_ADF */
 					usb_write32(Adapter, REG_RCR, v);
 				} else {
@@ -1589,6 +1594,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		{
 			u32 cmd;
 			u32 *cam_val = (u32 *)val;
+
 			usb_write32(Adapter, WCAMI, cam_val[0]);
 
 			cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
@@ -1692,6 +1698,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_RXDMA_AGG_PG_TH:
 		{
 			u8 threshold = *((u8 *)val);
+
 			if (threshold == 0)
 				threshold = haldata->UsbRxAggPageCount;
 			usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, threshold);
@@ -1713,6 +1720,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_H2C_FW_JOINBSSRPT:
 		{
 			u8 mstatus = (*(u8 *)val);
+
 			rtl8188e_set_FwJoinBssReport_cmd(Adapter, mstatus);
 		}
 		break;
@@ -1735,6 +1743,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_RPT_TIMER_SETTING:
 		{
 			u16 min_rpt_time = (*(u16 *)val);
+
 			ODM_RA_Set_TxRPT_Time(podmpriv, min_rpt_time);
 		}
 		break;
@@ -1791,6 +1800,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_TX_RPT_MAX_MACID:
 		{
 			u8 maxMacid = *val;
+
 			DBG_88E("### MacID(%d),Set Max Tx RPT MID(%d)\n", maxMacid, maxMacid+1);
 			usb_write8(Adapter, REG_TX_RPT_CTRL+1, maxMacid+1);
 		}
@@ -1884,6 +1894,7 @@ GetHalDefVar8188EUsb(
 			struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 			struct sta_priv *pstapriv = &Adapter->stapriv;
 			struct sta_info *psta;
+
 			psta = rtw_get_stainfo(pstapriv, pmlmepriv->cur_network.network.MacAddress);
 			if (psta)
 				*((int *)pValue) = psta->rssi_stat.UndecoratedSmoothedPWDB;
@@ -1931,6 +1942,7 @@ GetHalDefVar8188EUsb(
 	case HW_DEF_RA_INFO_DUMP:
 		{
 			u8 entry_id = *((u8 *)pValue);
+
 			if (check_fwstate(&Adapter->mlmepriv, _FW_LINKED)) {
 				DBG_88E("============ RA status check ===================\n");
 				DBG_88E("Mac_id:%d , RateID = %d, RAUseRate = 0x%08x, RateSGI = %d, DecisionRate = 0x%02x ,PTStage = %d\n",
@@ -1946,6 +1958,7 @@ GetHalDefVar8188EUsb(
 	case HW_DEF_ODM_DBG_FLAG:
 		{
 			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
+
 			pr_info("dm_ocm->DebugComponents = 0x%llx\n", dm_ocm->DebugComponents);
 		}
 		break;
@@ -2011,6 +2024,7 @@ static u8 SetHalDefVar8188EUsb(struct adapter *Adapter, enum hal_def_variable eV
 		{
 			u8 bRSSIDump = *((u8 *)pValue);
 			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
+
 			if (bRSSIDump)
 				dm_ocm->DebugComponents	=	ODM_COMP_DIG|ODM_COMP_FA_CNT;
 			else
@@ -2021,6 +2035,7 @@ static u8 SetHalDefVar8188EUsb(struct adapter *Adapter, enum hal_def_variable eV
 		{
 			u64	DebugComponents = *((u64 *)pValue);
 			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
+
 			dm_ocm->DebugComponents = DebugComponents;
 		}
 		break;
-- 
1.9.1


