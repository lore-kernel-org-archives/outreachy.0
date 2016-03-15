X-GM-THRID: 6262126512629088256
X-Received: by 10.107.132.26 with SMTP id g26mr655182iod.33.1458015026614;
        Mon, 14 Mar 2016 21:10:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.229 with SMTP id rf5ls595obc.22.gmail; Mon, 14 Mar
 2016 21:10:26 -0700 (PDT)
X-Received: by 10.182.65.106 with SMTP id w10mr20692392obs.6.1458015026180;
        Mon, 14 Mar 2016 21:10:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id w69si1551695ywa.3.2016.03.14.21.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id u110so4710482qge.3
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gcrj2ydOltJmMAdXpdZUbm3VSS6XUUy+0eQ05azun24=;
        b=nc3XlkmIQNAuW2Jw4O4rf6vsM96padv/woKFx3yYbzewBMbO41J08PRSpVIQ0X9MnC
         +xofNdqQxDXeVS0tHs1jy1NlPZYI+xqwmWgRqdhJRKyeU/kcp4WCXWx6u8QbGtPzpM4k
         ee7kmvO4vEs77CovUwLhfm4iNMXkcOv8bdOhEiJ+qkAicNm+cimKT9ALDtj0Ud6bOwGF
         Ou0NzpRiuHbDf32jFwk4xdhRlIE/5F8Md4HncnNrjoakwzQo9gtftMQ/hPIIUjKW065j
         r2VdMWRZiHUZfwohroQqlwlu6O0fcbIGW3CV09yxKQGrqiPWaqPfNJK7K+3l0BNmnY5b
         Kj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gcrj2ydOltJmMAdXpdZUbm3VSS6XUUy+0eQ05azun24=;
        b=H/NyW9bfX6pnLVxlZAGXa0+fB8TILYezXbYn7TDuDrYlPy9ToNoY9ZtjuzJDSQu4ZT
         DhMEbqfMfhW9a89StCko0+dBnRoNKknUh3MO3nnHGZpr7aQXapWat0bJXzX9JOqNYfKT
         kEIuLRqvWvX7nqodae415lEK9GMBGpy4bwpu7Ojt23RIiG7Xbo29d5CSTVz1A7beROdC
         Ovh0/l6GM4ID5/PmyDwkguhIjobm7fl/qXRGjU+O3XnUbmg6NfkPJPh3tDIS0jCbYFkU
         bk0e99fSqDdSAuP9ynThtjY71v37DoY3tO9ywjqznfMjXRgczmODC54xXot9pQ3q+4hO
         qx/w==
X-Gm-Message-State: AD7BkJLspUtH40udxlNTf63amrxZKsrW8HGxH3PzOVRcYhVBxrYPgx3N6uVSbtstAgOqnA==
X-Received: by 10.140.98.98 with SMTP id n89mr36234610qge.9.1458015025766;
        Mon, 14 Mar 2016 21:10:25 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id 2sm11860330qgi.33.2016.03.14.21.10.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:10:25 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:10:22 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8188eu: usb_halinit.c: fixed comment blocks
Message-ID: <f5ff61beecc688c4a7482b38231ffd3b7f6ecf27.1458014176.git.juliana.orod@gmail.com>
References: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458014176.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes checkpatch warnings related to
malformed comments and comments over 80 characters limit.
It also removes some clearly unnecessary/old ones
and fixes minor check issues.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 299 ++++++++++++++++------------
 1 file changed, 170 insertions(+), 129 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 61cb7f3..c3384fe 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -58,12 +58,14 @@ static void _ConfigNormalChipOutEP_8188E(struct adapter *adapt, u8 NumOutPipe)
 static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt,
 					      u8 NumInPipe, u8 NumOutPipe)
 {
-	struct hal_data_8188e	*haldata	= GET_HAL_DATA(adapt);
-	bool			result		= false;
+	struct hal_data_8188e	*haldata = GET_HAL_DATA(adapt);
+	bool			result	 = false;
 
 	_ConfigNormalChipOutEP_8188E(adapt, NumOutPipe);
 
-	/*  Normal chip with one IN and one OUT doesn't have interrupt IN EP. */
+	/*  Normal chip with one IN and one OUT
+	 *  doesn't have interrupt IN EP.
+	 */
 	if (1 == haldata->OutEpNumber) {
 		if (1 != NumInPipe)
 			return result;
@@ -80,7 +82,7 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt,
 
 static void rtl8188eu_interface_configure(struct adapter *adapt)
 {
-	struct hal_data_8188e	*haldata	= GET_HAL_DATA(adapt);
+	struct hal_data_8188e	*haldata    = GET_HAL_DATA(adapt);
 	struct dvobj_priv	*pdvobjpriv = adapter_to_dvobj(adapt);
 
 	if (pdvobjpriv->ishighspeed)
@@ -93,12 +95,17 @@ static void rtl8188eu_interface_configure(struct adapter *adapt)
 	haldata->interfaceIndex = pdvobjpriv->InterfaceNumber;
 
 	haldata->UsbTxAggMode		= 1;
-	haldata->UsbTxAggDescNum	= 0x6;	/*  only 4 bits */
 
-	haldata->UsbRxAggMode		= USB_RX_AGG_DMA;/*  USB_RX_AGG_DMA; */
-	haldata->UsbRxAggBlockCount	= 8; /* unit : 512b */
-	haldata->UsbRxAggBlockTimeout	= 0x6;
-	haldata->UsbRxAggPageCount	= 48; /* uint :128 b 0x0A;	10 = MAX_RX_DMA_BUFFER_SIZE/2/haldata->UsbBulkOutSize */
+	haldata->UsbTxAggDescNum	= 0x6; /*  only 4 bits */
+
+	haldata->UsbRxAggMode		= USB_RX_AGG_DMA;
+
+	haldata->UsbRxAggBlockCount	= 8;   /* unit : 512b */
+	haldata->UsbRxAggBlockTimeout	= 0x6; /* uint :128 b 0x0A;
+						* 10 = MAX_RX_DMA_BUFFER_SIZE
+						* /2/haldata->UsbBulkOutSize
+						*/
+	haldata->UsbRxAggPageCount	= 48;
 	haldata->UsbRxAggPageTimeout	= 0x4; /* 6,
 						* absolute time = 34ms/(2^6)
 						*/
@@ -123,13 +130,6 @@ static u32 rtl8188eu_InitPowerOn(struct adapter *adapt)
 		return _FAIL;
 	}
 
-	/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block
-	 *  Set CR bit10 to enable 32k calibration.
-	 *  Suggested by SD1 Gimmy. Added by tynli.
-	 *  2011.08.31.
-	 */
-
-	/* suggseted by zhouzhou, by page, 20111230 */
 	usb_write16(adapt, REG_CR, 0x00);
 
 	/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block */
@@ -137,10 +137,7 @@ static u32 rtl8188eu_InitPowerOn(struct adapter *adapt)
 	value16 |= (HCI_TXDMA_EN | HCI_RXDMA_EN | TXDMA_EN | RXDMA_EN |
 		    PROTOCOL_EN | SCHEDULE_EN | ENSEC | CALTMR_EN);
 
-	/*  for SDIO - Set CR bit10 to enable 32k calibration.
-	 *   Suggested by SD1 Gimmy. Added by tynli. 2011.08.31.
-	 */
-
+	/*  SDIO - Set CR bit10 to enable 32k calibration. */
 	usb_write16(adapt, REG_CR, value16);
 	haldata->bMacPwrCtrlOn = true;
 
@@ -182,7 +179,7 @@ static void _InitInterrupt(struct adapter *Adapter)
 
 static void _InitQueueReservedPage(struct adapter *Adapter)
 {
-	struct hal_data_8188e		*haldata = GET_HAL_DATA(Adapter);
+	struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
 	struct registry_priv	*pregistrypriv = &Adapter->registrypriv;
 	u32 numHQ	= 0;
 	u32 numLQ	= 0;
@@ -320,14 +317,14 @@ static void _InitNormalChipThreeOutEpPriority(struct adapter *Adapter)
 	struct registry_priv *pregistrypriv = &Adapter->registrypriv;
 	u16 beQ, bkQ, viQ, voQ, mgtQ, hiQ;
 
-	if (!pregistrypriv->wifi_spec) {/*  typical setting */
+	if (!pregistrypriv->wifi_spec) {  /*  typical setting */
 		beQ	= QUEUE_LOW;
 		bkQ	= QUEUE_LOW;
 		viQ	= QUEUE_NORMAL;
 		voQ	= QUEUE_HIGH;
 		mgtQ	= QUEUE_HIGH;
 		hiQ	= QUEUE_HIGH;
-	} else {/*  for WMM */
+	} else {			  /*  for WMM  */
 		beQ	= QUEUE_LOW;
 		bkQ	= QUEUE_NORMAL;
 		viQ	= QUEUE_NORMAL;
@@ -371,8 +368,8 @@ static void _InitNetworkType(struct adapter *Adapter)
 static void _InitTransferPageSize(struct adapter *Adapter)
 {
 	/*  Tx page size is always 128. */
-
 	u8 value8;
+
 	value8 = _PSRX(PBP_128) | _PSTX(PBP_128);
 	usb_write8(Adapter, REG_PBP, value8);
 }
@@ -481,7 +478,8 @@ static void _InitRetryFunction(struct adapter *Adapter)
 *	When		Who		Remark
 *	12/10/2010	MHC		Separate to smaller function.
 *
-*---------------------------------------------------------------------------*/
+*------------------------------------------------------------------------------
+*/
 static void usb_AggSettingTxUpdate(struct adapter *Adapter)
 {
 	struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
@@ -514,7 +512,8 @@ static void usb_AggSettingTxUpdate(struct adapter *Adapter)
  *	When		Who		Remark
  *	12/10/2010	MHC		Separate to smaller function.
  *
- *---------------------------------------------------------------------------*/
+ *----------------------------------------------------------------------------
+ */
 static void usb_AggSettingRxUpdate(struct adapter *Adapter)
 {
 	struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
@@ -607,7 +606,6 @@ static void InitUsbAggregationSetting(struct adapter *Adapter)
 	/*  Rx aggregation setting */
 	usb_AggSettingRxUpdate(Adapter);
 
-	/*  201/12/10 MH Add for USB agg mode dynamic switch. */
 	haldata->UsbRxHighSpeedMode = false;
 }
 
@@ -691,7 +689,8 @@ static void _InitAntenna_Selection(struct adapter *Adapter)
  * Revised History:
  *	When		Who		Remark
  *	08/23/2010	MHC		HW suspend mode switch test..
- *---------------------------------------------------------------------------*/
+ *---------------------------------------------------------------------------
+ */
 enum rt_rf_power_state RfOnOffDetect(struct adapter *adapt)
 {
 	u8 val8;
@@ -713,18 +712,17 @@ enum rt_rf_power_state RfOnOffDetect(struct adapter *adapt)
 
 static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 {
-	u8 value8 = 0;
-	u16  value16;
-	u8 txpktbuf_bndy;
-	u32 status = _SUCCESS;
-	struct hal_data_8188e		*haldata = GET_HAL_DATA(Adapter);
-	struct pwrctrl_priv		*pwrctrlpriv = &Adapter->pwrctrlpriv;
+	u8     value8 = 0;
+	u16    value16;
+	u8     txpktbuf_bndy;
+	u32    status			       = _SUCCESS;
+	struct hal_data_8188e	*haldata       = GET_HAL_DATA(Adapter);
+	struct pwrctrl_priv	*pwrctrlpriv   = &Adapter->pwrctrlpriv;
 	struct registry_priv	*pregistrypriv = &Adapter->registrypriv;
-	unsigned long init_start_time = jiffies;
+	unsigned long init_start_time	       = jiffies;
 
 	#define HAL_INIT_PROFILE_TAG(stage) do {} while (0)
 
-
 	HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_BEGIN);
 
 	if (Adapter->pwrctrlpriv.bkeepfwalive) {
@@ -750,8 +748,11 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 		goto exit;
 	}
 
-	/*  Save target channel */
-	haldata->CurrentChannel = 6;/* default set to 6 */
+	/*  Save target channel
+	 *  default set to 6
+	 */
+
+	haldata->CurrentChannel = 6;
 
 	if (pwrctrlpriv->reg_rfoff) {
 		pwrctrlpriv->rf_pwrstate = rf_off;
@@ -826,19 +827,21 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	_InitDriverInfoSize(Adapter, DRVINFO_SZ);
 
 	_InitInterrupt(Adapter);
-	hal_init_macaddr(Adapter);/* set mac_address */
-	_InitNetworkType(Adapter);/* set msr */
+	hal_init_macaddr(Adapter);  /* set mac_address */
+	_InitNetworkType(Adapter);  /* set msr */
 	_InitWMACSetting(Adapter);
 	_InitAdaptiveCtrl(Adapter);
 	_InitEDCA(Adapter);
 	_InitRetryFunction(Adapter);
 	InitUsbAggregationSetting(Adapter);
 	_InitBeaconParameters(Adapter);
+
 	/*  Init CR MACTXEN, MACRXEN after setting RxFF
 	 *  boundary REG_TRXFF_BNDY to patch Hw bug which
 	 *  Hw initials RxFF boundary size to a value
 	 *  which is larger than the real Rx buffer size in 88E.
 	 */
+
 	/*  Enable MACTXEN/MACRXEN block */
 	value16 = usb_read16(Adapter, REG_CR);
 	value16 |= (MACTXEN | MACRXEN);
@@ -889,16 +892,15 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_MISC11);
 /*  Move by Neo for USB SS to below setp
  * _RfPowerSave(Adapter);
  */
-
 	_InitAntenna_Selection(Adapter);
 
-	/*  Disable BAR, suggested by Scott
-	 *  2010.04.09 add by hpfan
-	 */
+	/*  Disable BAR */
 	usb_write32(Adapter, REG_BAR_MODE_CTRL, 0x0201ffff);
 
-	/*  HW SEQ CTRL */
-	/* set 0x0 to 0xFF by tynli. Default enable HW SEQ NUM. */
+	/*  HW SEQ CTRL
+	 *  set 0x0 to 0xFF by tynli.
+	 *  Default enable HW SEQ NUM.
+	 */
 	usb_write8(Adapter, REG_HWSEQ_CTRL, 0xFF);
 
 	if (pregistrypriv->wifi_spec)
@@ -910,19 +912,23 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_MISC11);
 HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_HAL_DM);
 	rtl8188e_InitHalDm(Adapter);
 
-	/*  2010/08/11 MH Merge from 8192SE for Minicard init. We need to confirm current radio status */
-	/*  and then decide to enable RF or not.!!!??? For Selective suspend mode. We may not */
-	/*  call initstruct adapter. May cause some problem?? */
-	/*  Fix the bug that Hw/Sw radio off before S3/S4, the RF off action will not be executed */
-	/*  in MgntActSet_RF_State() after wake up, because the value of haldata->eRFPowerState */
-	/*  is the same as eRfOff, we should change it to eRfOn after we config RF parameters. */
-	/*  Added by tynli. 2010.03.30. */
+	/*  2010/08/11 MH Merge from 8192SE for Minicard init.
+	 *  We need to confirm current radio status, and then decide
+	 *  to enable RF or not.!!!??? For Selective suspend mode.
+	 *  We may not call initstruct adapter. May cause some problem??
+	 *  Fix the bug that Hw/Sw radio off before S3/S4, the RF off
+	 *  action will not be executed in MgntActSet_RF_State()
+	 *  after wake up, because the value of haldata->eRFPowerState
+	 *  is the same as eRfOff, we should change it to eRfOn after
+	 *  we config RF parameters.
+
+	 *  Added by tynli. 2010.03.30
+	 */
 	pwrctrlpriv->rf_pwrstate = rf_on;
 
 	/*  enable Tx report. */
 	usb_write8(Adapter,  REG_FWHW_TXQ_CTRL+1, 0x0F);
 
-	/* Suggested by SD1 pisa. Added by tynli. 2011.10.21. */
 	/* Pretx_en, for WEP/TKIP SEC */
 	usb_write8(Adapter, REG_EARLY_MODE_CONTROL+3, 0x01);
 
@@ -934,7 +940,7 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_HAL_DM);
 		   (usb_read16(Adapter, REG_TXDMA_OFFSET_CHK) | DROP_DATA_EN));
 
 HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_IQK);
-		/*  2010/08/26 MH Merge from 8192CE. */
+	/*  2010/08/26 MH Merge from 8192CE. */
 	if (pwrctrlpriv->rf_pwrstate == rf_on) {
 		if (haldata->odmpriv.RFCalibrateInfo.bIQKInitialized) {
 			rtl88eu_phy_iq_calibrate(Adapter, true);
@@ -951,11 +957,8 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_LCK);
 			rtl88eu_phy_lc_calibrate(Adapter);
 	}
 
-/* HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_PABIAS); */
-/*	_InitPABias(Adapter); */
 	usb_write8(Adapter, REG_USB_HRPWM, 0);
 
-	/* ack for xmit mgmt frames. */
 	usb_write32(Adapter, REG_FWHW_TXQ_CTRL,
 		    usb_read32(Adapter, REG_FWHW_TXQ_CTRL) | BIT(12));
 
@@ -1001,7 +1004,6 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 	/*  reset MCU ready status */
 	usb_write8(Adapter, REG_MCUFWDL, 0);
 
-	/* YJ,add,111212 */
 	/* Disable 32k */
 	val8 = usb_read8(Adapter, REG_32K_CTRL);
 	usb_write8(Adapter, REG_32K_CTRL, val8&(~BIT(0)));
@@ -1032,8 +1034,11 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 }
 static void rtl8192cu_hw_power_down(struct adapter *adapt)
 {
-	/*  2010/-8/09 MH For power down module, we need to enable register block contrl reg at 0x1c. */
-	/*  Then enable power down control bit of register 0x04 BIT4 and BIT15 as 1. */
+	/*  2010/-8/09 MH For power down module, we need to
+	 *  enable register block contrl reg at 0x1c. Then
+	 *  enable power down control bit of register
+	 *  0x04 BIT4 and BIT15 as 1.
+	 */
 
 	/*  Enable register area 0x0-0xc. */
 	usb_write8(adapt, REG_RSV_CTRL, 0x0);
@@ -1063,7 +1068,7 @@ static u32 rtl8188eu_hal_deinit(struct adapter *Adapter)
 		}
 	}
 	return _SUCCESS;
- }
+}
 
 static unsigned int rtl8188eu_inirp_init(struct adapter *Adapter)
 {
@@ -1114,11 +1119,11 @@ static unsigned int rtl8188eu_inirp_deinit(struct adapter *Adapter)
 	return _SUCCESS;
 }
 
-/*  */
-/*  */
-/*	EEPROM/EFUSE Content Parsing */
-/*  */
-/*  */
+/*
+*
+*	EEPROM/EFUSE Content Parsing
+*
+*/
 static void Hal_EfuseParsePIDVID_8188EU(struct adapter *adapt,
 					u8 *hwinfo, bool AutoLoadFail)
 {
@@ -1136,8 +1141,8 @@ static void Hal_EfuseParsePIDVID_8188EU(struct adapter *adapt,
 					    hwinfo[EEPROM_CUSTOMERID_88E];
 		haldata->EEPROMSubCustomerID = EEPROM_Default_SubCustomerID;
 	} else {
-		haldata->EEPROMVID			= EEPROM_Default_VID;
-		haldata->EEPROMPID			= EEPROM_Default_PID;
+		haldata->EEPROMVID	= EEPROM_Default_VID;
+		haldata->EEPROMPID	= EEPROM_Default_PID;
 
 		/*  Customer ID, 0x00 and 0xff are reserved for Realtek. */
 		haldata->EEPROMCustomerID	= EEPROM_Default_CustomerID;
@@ -1201,9 +1206,7 @@ static void readAdapterInfo_8188EU(struct adapter *adapt)
 
 }
 
-static void _ReadPROMContent(
-	struct adapter *Adapter
-	)
+static void _ReadPROMContent(struct adapter *Adapter)
 {
 	struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(Adapter);
 	u8 eeValue;
@@ -1250,8 +1253,10 @@ static void ResumeTxBeacon(struct adapter *adapt)
 {
 	struct hal_data_8188e *haldata = GET_HAL_DATA(adapt);
 
-	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
-	/*  which should be read from register to a global variable. */
+	/*  2010.03.01. Marked by tynli. No need to call
+	 *  workitem beacause we record the value which
+	 *  should be read from register to a global variable.
+	 */
 
 	usb_write8(adapt, REG_FWHW_TXQ_CTRL+2,
 		  (haldata->RegFwHwTxQCtrl) | BIT(6));
@@ -1266,8 +1271,10 @@ static void StopTxBeacon(struct adapter *adapt)
 {
 	struct hal_data_8188e *haldata = GET_HAL_DATA(adapt);
 
-	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
-	/*  which should be read from register to a global variable. */
+	/*  2010.03.01. Marked by tynli. No need to call
+	 *  workitem beacause we record the value which should
+	 *  be read from register to a global variable.
+	 */
 
 	usb_write8(adapt, REG_FWHW_TXQ_CTRL+2,
 		  (haldata->RegFwHwTxQCtrl) & (~BIT(6)));
@@ -1276,7 +1283,6 @@ static void StopTxBeacon(struct adapter *adapt)
 	haldata->RegReg542 &= ~(BIT(0));
 	usb_write8(adapt, REG_TBTT_PROHIBIT+2, haldata->RegReg542);
 
-	 /* todo: CheckFwRsvdPageContent(Adapter);  2010.06.23. Added by tynli. */
 }
 
 static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
@@ -1308,7 +1314,8 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 		usb_write8(Adapter, REG_BCN_CTRL, 0x12);
 
 		/* Set RCR */
-		usb_write32(Adapter, REG_RCR, 0x7000208e);/* CBSSID_DATA must set to 0,reject ICV_ERR packet */
+		/* CBSSID_DATA must set to 0,reject ICV_ERR packet */
+		usb_write32(Adapter, REG_RCR, 0x7000208e);
 		/* enable to rx data frame */
 		usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 		/* enable to rx ps-poll */
@@ -1316,25 +1323,28 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 
 		/* Beacon Control related register for first time */
 		usb_write8(Adapter, REG_BCNDMATIM, 0x02); /*  2ms */
-
-		usb_write8(Adapter, REG_ATIMWND, 0x0a); /*  10ms */
+		usb_write8(Adapter, REG_ATIMWND, 0x0a);   /*  10ms */
 		usb_write16(Adapter, REG_BCNTCFG, 0x00);
+		/* +32767 (~32ms) */
 		usb_write16(Adapter, REG_TBTT_PROHIBIT, 0xff04);
-		usb_write16(Adapter, REG_TSFTR_SYN_OFFSET, 0x7fff);/*  +32767 (~32ms) */
+		usb_write16(Adapter, REG_TSFTR_SYN_OFFSET, 0x7fff);
 
 		/* reset TSF */
 		usb_write8(Adapter, REG_DUAL_TSF_RST, BIT(0));
 
-		/* BIT3 - If set 0, hw will clr bcnq when tx becon ok/fail or port 0 */
+		/* BIT3 - If set 0, hw will clr bcnq when
+		 * tx becon ok/fail or port 0
+		 */
 		usb_write8(Adapter, REG_MBID_NUM,
 			   usb_read8(Adapter, REG_MBID_NUM) | BIT(3) | BIT(4));
 
-		/* enable BCN0 Function for if1 */
-		/* don't enable update TSF0 for if1 (due to TSF update when beacon/probe rsp are received) */
+		/* enable BCN0 Function for if1
+		 * don't enable update TSF0 for if1 (due to TSF
+		 * update when beacon/probe rsp are received)
+		 */
 		usb_write8(Adapter, REG_BCN_CTRL,
 			   (DIS_TSF_UDT0_NORMAL_CHIP|EN_BCN_FUNCTION | BIT(1)));
 
-		/* dis BCN1 ATIM  WND if if2 is station */
 		usb_write8(Adapter, REG_BCN_CTRL_1,
 			   usb_read8(Adapter, REG_BCN_CTRL_1) | BIT(0));
 	}
@@ -1416,22 +1426,28 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			u16 BrateCfg = 0;
 			u8 RateIndex = 0;
 
-			/*  2007.01.16, by Emily */
-			/*  Select RRSR (in Legacy-OFDM and CCK) */
-			/*  For 8190, we select only 24M, 12M, 6M, 11M, 5.5M, 2M, and 1M from the Basic rate. */
-			/*  We do not use other rates. */
+			/*  2007.01.16, by Emily
+			 *  Select RRSR (in Legacy-OFDM and CCK)
+			 *  For 8190, we select only 24M, 12M, 6M,
+			 *  11M, 5.5M, 2M, and 1M from the Basic rate.
+			 *  We do not use other rates.
+			 */
+
 			HalSetBrateCfg(Adapter, val, &BrateCfg);
 			DBG_88E("HW_VAR_BASIC_RATE: BrateCfg(%#x)\n", BrateCfg);
 
-			/* 2011.03.30 add by Luke Lee */
-			/* CCK 2M ACK should be disabled for some BCM and Atheros AP IOT */
-			/* because CCK 2M has poor TXEVM */
-			/* CCK 5.5M & 11M ACK should be enabled for better performance */
+			/* 2011.03.30 add by Luke Lee
+			 * CCK 2M ACK should be disabled for some BCM
+			 * and Atheros AP IOT because CCK 2M has poor TXEVM
+			 * CCK 5.5M & 11M ACK should be enabled for
+			 * better performance
+			 */
 
 			BrateCfg = (BrateCfg | 0xd) & 0x15d;
 			haldata->BasicRateSet = BrateCfg;
 
 			BrateCfg |= 0x01; /*  default enable 1M ACK rate */
+
 			/*  Set RRSR rate table. */
 			usb_write8(Adapter, REG_RRSR, BrateCfg & 0xff);
 			usb_write8(Adapter, REG_RRSR+1, (BrateCfg >> 8) & 0xff);
@@ -1496,8 +1512,10 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		}
 		break;
 	case HW_VAR_MLME_DISCONNECT:
-		/* Set RCR to not to receive data frame when NO LINK state */
-		/* reject all data frames */
+		/* Set RCR to not to receive data
+		 * frame when NO LINK state
+		 * reject all data frames.
+		 */
 		usb_write16(Adapter, REG_RXFLTMAP2, 0x00);
 
 		/* reset TSF */
@@ -1509,7 +1527,9 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		break;
 	case HW_VAR_MLME_SITESURVEY:
 		if (*((u8 *)val)) { /* under sitesurvey */
-			/* config RCR to receive different BSSID & not to receive data frame */
+			/*  config RCR to receive different
+			 *  BSSID & not to receive data frame
+			 */
 			u32 v = usb_read32(Adapter, REG_RCR);
 
 			v &= ~(RCR_CBSSID_BCN);
@@ -1566,9 +1586,11 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			u8 type = *((u8 *)val);
 			struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
 
-			if (type == 0) { /*  prepare to join */
-				/* enable to rx data frame.
-				 * Accept all data frame */
+			if (type == 0) {
+				/* prepare to join
+				 * enable to rx data frame.
+				 * Accept all data frame
+				 */
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 
 				if (Adapter->in_cta_test) {
@@ -1627,7 +1649,6 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 
 			u1bAIFS = aSifsTime + (2 * pmlmeinfo->slotTime);
 
-			/* <Roger_EXP> Temporary removed, 2008.06.20. */
 			usb_write8(Adapter, REG_EDCA_VO_PARAM, u1bAIFS);
 			usb_write8(Adapter, REG_EDCA_VI_PARAM, u1bAIFS);
 			usb_write8(Adapter, REG_EDCA_BE_PARAM, u1bAIFS);
@@ -1636,18 +1657,27 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 
 		break;
 	case HW_VAR_RESP_SIFS:
-		/* RESP_SIFS for CCK */
-		usb_write8(Adapter, REG_R2T_SIFS, val[0]); /*  SIFS_T2T_CCK (0x08) */
-		usb_write8(Adapter, REG_R2T_SIFS+1, val[1]); /* SIFS_R2T_CCK(0x08) */
-		/* RESP_SIFS for OFDM */
-		usb_write8(Adapter, REG_T2T_SIFS, val[2]); /* SIFS_T2T_OFDM (0x0a) */
-		usb_write8(Adapter, REG_T2T_SIFS+1, val[3]); /* SIFS_R2T_OFDM(0x0a) */
+		/* RESP_SIFS for CCK
+		 * SIFS_T2T_CCK (0x08)
+		 * SIFS_R2T_CCK(0x08)
+		 */
+		usb_write8(Adapter, REG_R2T_SIFS, val[0]);
+		usb_write8(Adapter, REG_R2T_SIFS+1, val[1]);
+		/* RESP_SIFS for OFDM
+		 * SIFS_T2T_OFDM (0x0a)
+		 * SIFS_R2T_OFDM(0x0a)
+		 */
+		usb_write8(Adapter, REG_T2T_SIFS, val[2]);
+		usb_write8(Adapter, REG_T2T_SIFS+1, val[3]);
 		break;
 	case HW_VAR_ACK_PREAMBLE:
 		{
 			u8 regTmp;
 			u8 bShortPreamble = *((bool *)val);
-			/*  Joseph marked out for Netgear 3500 TKIP channel 7 issue.(Temporarily) */
+
+			/*  Joseph marked out for Netgear 3500
+			 *  TKIP channel 7 issue.(Temporarily)
+			 */
 			regTmp = (haldata->nCur40MhzPrimeSC) << 5;
 			if (bShortPreamble)
 				regTmp |= 0x80;
@@ -1693,12 +1723,16 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 					((u16)(ulEncAlgo) << 2);
 				else
 					ulContent = 0;
-				/*  polling bit, and No Write enable, and address */
+				/*  polling bit,
+				 *  and No Write enable,
+				 *  and address
+				 */
 				ulCommand = CAM_CONTENT_COUNT*ucIndex+i;
 				ulCommand = ulCommand | CAM_POLLINIG|CAM_WRITE;
 				/*  write content 0 is equall to mark invalid */
-				usb_write32(Adapter, WCAMI, ulContent);  /* delay_ms(40); */
-				usb_write32(Adapter, RWCAM, ulCommand);  /* delay_ms(40); */
+				/*  delay_ms(40); */
+				usb_write32(Adapter, WCAMI, ulContent);
+				usb_write32(Adapter, RWCAM, ulCommand);
 			}
 		}
 		break;
@@ -1837,8 +1871,11 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		{
 			u8 psmode = (*(u8 *)val);
 
-			/*  Forece leave RF low power mode for 1T1R to prevent conficting setting in Fw power */
-			/*  saving sequence. 2010.06.07. Added by tynli. Suggested by SD3 yschang. */
+			/*  Forece leave RF low power mode for 1T1R to
+			 *  prevent conficting setting in Fw power saving
+			 *  sequence. 2010.06.07. Added by tynli.
+			 *  Suggested by SD3 yschang.
+			 */
 			if (psmode != PS_MODE_ACTIVE)
 				ODM_RF_Saving(podmpriv, true);
 			rtl8188e_set_FwPwrMode_cmd(Adapter, psmode);
@@ -1891,7 +1928,9 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			}
 		}
 		break;
-	case HW_VAR_EFUSE_BYTES: /*  To set EFUE total used bytes, added by Roger, 2008.12.22. */
+	case HW_VAR_EFUSE_BYTES: /*  To set EFUE total used bytes,
+				  *  added by Roger, 2008.12.22.
+				  */
 		haldata->EfuseUsedBytes = *((u16 *)val);
 		break;
 	case HW_VAR_FIFO_CLEARN_UP:
@@ -1946,7 +1985,9 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		rtl8188e_set_FwMediaStatus_cmd(Adapter, (*(__le16 *)val));
 		break;
 	case HW_VAR_BCN_VALID:
-		/* BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of REG_TDECTRL+2, write 1 to clear, Clear by sw */
+		/* BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of
+		 * REG_TDECTRL+2, write 1 to clear, Clear by sw
+		 */
 		usb_write8(Adapter, REG_TDECTRL+2,
 			   usb_read8(Adapter, REG_TDECTRL+2) | BIT(0));
 		break;
@@ -1979,10 +2020,14 @@ static void GetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		break;
 	case HW_VAR_FWLPS_RF_ON:
 		{
-			/* When we halt NIC, we should check if FW LPS is leave. */
+			/* When we halt NIC, we should
+			 * check if FW LPS is leave.
+			 */
 			if (Adapter->pwrctrlpriv.rf_pwrstate == rf_off) {
-				/*  If it is in HW/SW Radio OFF or IPS state, we do not check Fw LPS Leave, */
-				/*  because Fw is unload. */
+				/*  If it is in HW/SW Radio OFF or IPS state,
+				 *  we do not check Fw LPS Leave,
+				 *  because Fw is unload.
+				 */
 				val[0] = true;
 			} else {
 				u32 valRCR;
@@ -1999,7 +2044,7 @@ static void GetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_CURRENT_ANTENNA:
 		val[0] = haldata->CurAntenna;
 		break;
-	case HW_VAR_EFUSE_BYTES: /*  To get EFUE total used bytes, added by Roger, 2008.12.22. */
+	case HW_VAR_EFUSE_BYTES: /*  To get EFUE total used bytes */
 		*((u16 *)(val)) = haldata->EfuseUsedBytes;
 		break;
 	case HW_VAR_APFM_ON_MAC:
@@ -2016,16 +2061,12 @@ static void GetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 
 }
 
-/*  */
-/*	Description: */
-/*		Query setting of specified variable. */
-/*  */
-static u8
-GetHalDefVar8188EUsb(
-		struct adapter *Adapter,
-		enum hal_def_variable eVariable,
-		void *pValue
-	)
+/*
+*	Description: Query setting of specified variable.
+*/
+static u8 GetHalDefVar8188EUsb(struct adapter *Adapter,
+			       enum hal_def_variable eVariable,
+			       void *pValue)
 {
 	struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
 	u8 bResult = _SUCCESS;
@@ -2144,7 +2185,7 @@ static void UpdateHalRAMask8188EUsb(struct adapter *adapt,
 	if (psta == NULL)
 		return;
 	switch (mac_id) {
-	case 0:/*  for infra mode */
+	case 0: /*  for infra mode */
 		supportRateNum = rtw_get_rateset_len(cur_network->
 						     SupportedRates);
 		networkType = judge_network_type(adapt,
-- 
2.7.2


