X-GM-THRID: 6262126512629088256
X-Received: by 10.129.145.130 with SMTP id i124mr20231177ywg.8.1458014999979;
        Mon, 14 Mar 2016 21:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.37 with SMTP id c34ls4118qgc.26.gmail; Mon, 14 Mar 2016
 21:09:59 -0700 (PDT)
X-Received: by 10.13.225.194 with SMTP id k185mr19571370ywe.34.1458014999177;
        Mon, 14 Mar 2016 21:09:59 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id w69si1551777ywa.3.2016.03.14.21.09.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x234.google.com with SMTP id o6so2261565qkc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/5XIQVgpbbyjUkAnExvChxTyu+dq8gbb7Uv/xzqCitE=;
        b=F5XctrOGSkqiTr3EMEeAWT7WykYuUNhQfJfxyJP1gsAcQcuzr3W5jUJTUth8BlF2Vj
         cqLyCm2ymcHnbCkYaIxUDzQUBxpjGiwXsxRTFl4k89ALZd2baI7BpY7j1loaXQEjkbD+
         d7ALcjGnOmQAlfbjI7lLJatYermC2l9T9YUDEPikQfhHcVxcTL7W3y7ClDDvJc7ungAJ
         X+nOsAr8FVtyBRfCb4SHvam1GtwI7NOaWkP3FQXYUhHCmaIJ5qPaQiJ/SEx7AI/NefA5
         LEIv1YC1uR7KPJGwZhHglBAOw3rOcVqLDZ+w5O9835sCxddoc7hG6pIIErDvG8eGw5uH
         TcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/5XIQVgpbbyjUkAnExvChxTyu+dq8gbb7Uv/xzqCitE=;
        b=RbFPa1mAt7r4mdqagyX0er/exLXfQhEHb5HN/pOOG2kCKneY3e5/aDt4XaenHqdrHG
         k67/hyeI8MQsbyu2LcBb5oA6s/cyfO7D6eBBfSPCb7zkXHrcBE1qvYuH+1Yy993TtiwT
         T/lIW6x81/NHPZqY9WdW9bBspb/sZhE/xdMhdBymUWkx9udlbvw304RLRSmxBN7UoY/U
         gOlLwpTMmruiZfFcC/MCGLCZjlJD/IbQf2zqAXujt3PxTsGM8daGu7P35f7zvnqfUl/I
         Z5XK21gBA/lGnK2TVRlyrhttjr7LpKA4e7wu2iHAWHUvELIEZya73Ow/roJW26PhnBjJ
         1KWw==
X-Gm-Message-State: AD7BkJLkhcoIeKRRr3pvRG97GmV2VEirvVQYynoO4MNUdbQsQH6+dC1hu3ExXAZ/tvxcSg==
X-Received: by 10.55.73.85 with SMTP id w82mr35377873qka.52.1458014998709;
        Mon, 14 Mar 2016 21:09:58 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id c12sm11861595qge.36.2016.03.14.21.09.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:09:58 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:09:55 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: rtl8188eu: usb_halinit.c: fixed multiple
 warnings
Message-ID: <c5bf96b4d7c7ba75d4eacd7f69c0153ba4ca9352.1458014176.git.juliana.orod@gmail.com>
References: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458014176.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes multiple "line over 80 characters"
checkpatch.pl warnings and also makes some changes to
make the code more readable.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 681 ++++++++++++++++++----------
 1 file changed, 433 insertions(+), 248 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 07a61b8..61cb7f3 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -51,10 +51,12 @@ static void _ConfigNormalChipOutEP_8188E(struct adapter *adapt, u8 NumOutPipe)
 	default:
 		break;
 	}
-	DBG_88E("%s OutEpQueueSel(0x%02x), OutEpNumber(%d)\n", __func__, haldata->OutEpQueueSel, haldata->OutEpNumber);
+	DBG_88E("%s OutEpQueueSel(0x%02x), OutEpNumber(%d)\n", __func__,
+		haldata->OutEpQueueSel, haldata->OutEpNumber);
 }
 
-static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPipe, u8 NumOutPipe)
+static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt,
+					      u8 NumInPipe, u8 NumOutPipe)
 {
 	struct hal_data_8188e	*haldata	= GET_HAL_DATA(adapt);
 	bool			result		= false;
@@ -67,7 +69,9 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt, u8 NumInPip
 			return result;
 	}
 
-	/*  All config other than above support one Bulk IN and one Interrupt IN. */
+	/*  All config other than above support
+	 *  one Bulk IN and one Interrupt IN.
+	 */
 
 	result = Hal_MappingOutPipe(adapt, NumOutPipe);
 
@@ -80,9 +84,11 @@ static void rtl8188eu_interface_configure(struct adapter *adapt)
 	struct dvobj_priv	*pdvobjpriv = adapter_to_dvobj(adapt);
 
 	if (pdvobjpriv->ishighspeed)
-		haldata->UsbBulkOutSize = USB_HIGH_SPEED_BULK_SIZE;/* 512 bytes */
+		/* 512 bytes */
+		haldata->UsbBulkOutSize = USB_HIGH_SPEED_BULK_SIZE;
 	else
-		haldata->UsbBulkOutSize = USB_FULL_SPEED_BULK_SIZE;/* 64 bytes */
+		/* 64 bytes */
+		haldata->UsbBulkOutSize = USB_FULL_SPEED_BULK_SIZE;
 
 	haldata->interfaceIndex = pdvobjpriv->InterfaceNumber;
 
@@ -93,17 +99,21 @@ static void rtl8188eu_interface_configure(struct adapter *adapt)
 	haldata->UsbRxAggBlockCount	= 8; /* unit : 512b */
 	haldata->UsbRxAggBlockTimeout	= 0x6;
 	haldata->UsbRxAggPageCount	= 48; /* uint :128 b 0x0A;	10 = MAX_RX_DMA_BUFFER_SIZE/2/haldata->UsbBulkOutSize */
-	haldata->UsbRxAggPageTimeout	= 0x4; /* 6, absolute time = 34ms/(2^6) */
+	haldata->UsbRxAggPageTimeout	= 0x4; /* 6,
+						* absolute time = 34ms/(2^6)
+						*/
 
 	HalUsbSetQueuePipeMapping8188EUsb(adapt,
-				pdvobjpriv->RtNumInPipes, pdvobjpriv->RtNumOutPipes);
+					  pdvobjpriv->RtNumInPipes,
+					  pdvobjpriv->RtNumOutPipes);
 }
 
 static u32 rtl8188eu_InitPowerOn(struct adapter *adapt)
 {
 	u16 value16;
 	/*  HW Power on sequence */
-	struct hal_data_8188e	*haldata	= GET_HAL_DATA(adapt);
+	struct hal_data_8188e	*haldata = GET_HAL_DATA(adapt);
+
 	if (haldata->bMacPwrCtrlOn)
 		return _SUCCESS;
 
@@ -113,15 +123,23 @@ static u32 rtl8188eu_InitPowerOn(struct adapter *adapt)
 		return _FAIL;
 	}
 
-	/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block */
-	/*  Set CR bit10 to enable 32k calibration. Suggested by SD1 Gimmy. Added by tynli. 2011.08.31. */
-	usb_write16(adapt, REG_CR, 0x00);  /* suggseted by zhouzhou, by page, 20111230 */
+	/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block
+	 *  Set CR bit10 to enable 32k calibration.
+	 *  Suggested by SD1 Gimmy. Added by tynli.
+	 *  2011.08.31.
+	 */
 
-		/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block */
+	/* suggseted by zhouzhou, by page, 20111230 */
+	usb_write16(adapt, REG_CR, 0x00);
+
+	/*  Enable MAC DMA/WMAC/SCHEDULE/SEC block */
 	value16 = usb_read16(adapt, REG_CR);
-	value16 |= (HCI_TXDMA_EN | HCI_RXDMA_EN | TXDMA_EN | RXDMA_EN
-				| PROTOCOL_EN | SCHEDULE_EN | ENSEC | CALTMR_EN);
-	/*  for SDIO - Set CR bit10 to enable 32k calibration. Suggested by SD1 Gimmy. Added by tynli. 2011.08.31. */
+	value16 |= (HCI_TXDMA_EN | HCI_RXDMA_EN | TXDMA_EN | RXDMA_EN |
+		    PROTOCOL_EN | SCHEDULE_EN | ENSEC | CALTMR_EN);
+
+	/*  for SDIO - Set CR bit10 to enable 32k calibration.
+	 *   Suggested by SD1 Gimmy. Added by tynli. 2011.08.31.
+	 */
 
 	usb_write16(adapt, REG_CR, value16);
 	haldata->bMacPwrCtrlOn = true;
@@ -143,13 +161,15 @@ static void _InitInterrupt(struct adapter *Adapter)
 	usb_write32(Adapter, REG_HIMR_88E, imr);
 	haldata->IntrMask[0] = imr;
 
-	imr_ex = IMR_TXERR_88E | IMR_RXERR_88E | IMR_TXFOVW_88E | IMR_RXFOVW_88E;
+	imr_ex = IMR_TXERR_88E | IMR_RXERR_88E |
+		 IMR_TXFOVW_88E | IMR_RXFOVW_88E;
 	usb_write32(Adapter, REG_HIMRE_88E, imr_ex);
 	haldata->IntrMask[1] = imr_ex;
 
-	/*  REG_USB_SPECIAL_OPTION - BIT(4) */
-	/*  0; Use interrupt endpoint to upload interrupt pkt */
-	/*  1; Use bulk endpoint to upload interrupt pkt, */
+	/*  REG_USB_SPECIAL_OPTION - BIT(4)
+	 *  0; Use interrupt endpoint to upload interrupt pkt
+	 *  1; Use bulk endpoint to upload interrupt pkt,
+	 */
 	usb_opt = usb_read8(Adapter, REG_USB_SPECIAL_OPTION);
 
 	if (!adapter_to_dvobj(Adapter)->ishighspeed)
@@ -179,7 +199,7 @@ static void _InitQueueReservedPage(struct adapter *Adapter)
 		if (haldata->OutEpQueueSel & TX_SELE_LQ)
 			numLQ = 0x1C;
 
-		/*  NOTE: This step shall be proceed before writting REG_RQPN. */
+		/* NOTE: This step shall be proceed before writting REG_RQPN. */
 		if (haldata->OutEpQueueSel & TX_SELE_NQ)
 			numNQ = 0x1C;
 		value8 = (u8)_NPQ(numNQ);
@@ -191,9 +211,11 @@ static void _InitQueueReservedPage(struct adapter *Adapter)
 		value32 = _HPQ(numHQ) | _LPQ(numLQ) | _PUBQ(numPubQ) | LD_RQPN;
 		usb_write32(Adapter, REG_RQPN, value32);
 	} else {
-		usb_write16(Adapter, REG_RQPN_NPQ, 0x0000);/* Just follow MP Team,??? Georgia 03/28 */
+		/* Just follow MP Team,??? Georgia 03/28 */
+		usb_write16(Adapter, REG_RQPN_NPQ, 0x0000);
 		usb_write16(Adapter, REG_RQPN_NPQ, 0x0d);
-		usb_write32(Adapter, REG_RQPN, 0x808E000d);/* reserve 7 page for LPS */
+		/* reserve 7 page for LPS */
+		usb_write32(Adapter, REG_RQPN, 0x808E000d);
 	}
 }
 
@@ -209,7 +231,6 @@ static void _InitTxBufferBoundary(struct adapter *Adapter, u8 txpktbuf_bndy)
 static void _InitPageBoundary(struct adapter *Adapter)
 {
 	/*  RX Page Boundary */
-	/*  */
 	u16 rxff_bndy = MAX_RX_DMA_BUFFER_SIZE_88E-1;
 
 	usb_write16(Adapter, (REG_TRXFF_BNDY + 2), rxff_bndy);
@@ -233,6 +254,7 @@ static void _InitNormalChipOneOutEpPriority(struct adapter *Adapter)
 	struct hal_data_8188e	*haldata	= GET_HAL_DATA(Adapter);
 
 	u16 value = 0;
+
 	switch (haldata->OutEpQueueSel) {
 	case TX_SELE_HQ:
 		value = QUEUE_HIGH;
@@ -369,7 +391,9 @@ static void _InitWMACSetting(struct adapter *Adapter)
 				  RCR_APP_ICV | RCR_AMF | RCR_HTC_LOC_CTRL |
 				  RCR_APP_MIC | RCR_APP_PHYSTS;
 
-	/*  some REG_RCR will be modified later by phy_ConfigMACWithHeaderFile() */
+	/*  some REG_RCR will be modified later
+	 *  by phy_ConfigMACWithHeaderFile()
+	 */
 	usb_write32(Adapter, REG_RCR, haldata->ReceiveConfig);
 
 	/*  Accept all multicast address */
@@ -444,20 +468,20 @@ static void _InitRetryFunction(struct adapter *Adapter)
 }
 
 /*-----------------------------------------------------------------------------
- * Function:	usb_AggSettingTxUpdate()
- *
- * Overview:	Separate TX/RX parameters update independent for TP detection and
- *			dynamic TX/RX aggreagtion parameters update.
- *
- * Input:			struct adapter *
- *
- * Output/Return:	NONE
- *
- * Revised History:
- *	When		Who		Remark
- *	12/10/2010	MHC		Separate to smaller function.
- *
- *---------------------------------------------------------------------------*/
+* Function:	usb_AggSettingTxUpdate()
+*
+* Overview:	Separate TX/RX parameters update independent for TP detection
+*		and dynamic TX/RX aggreagtion parameters update.
+*
+* Input:			struct adapter *
+*
+* Output/Return:	NONE
+*
+* Revised History:
+*	When		Who		Remark
+*	12/10/2010	MHC		Separate to smaller function.
+*
+*---------------------------------------------------------------------------*/
 static void usb_AggSettingTxUpdate(struct adapter *Adapter)
 {
 	struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
@@ -469,7 +493,8 @@ static void usb_AggSettingTxUpdate(struct adapter *Adapter)
 	if (haldata->UsbTxAggMode) {
 		value32 = usb_read32(Adapter, REG_TDECTRL);
 		value32 = value32 & ~(BLK_DESC_NUM_MASK << BLK_DESC_NUM_SHIFT);
-		value32 |= ((haldata->UsbTxAggDescNum & BLK_DESC_NUM_MASK) << BLK_DESC_NUM_SHIFT);
+		value32 |= ((haldata->UsbTxAggDescNum & BLK_DESC_NUM_MASK)
+			    << BLK_DESC_NUM_SHIFT);
 
 		usb_write32(Adapter, REG_TDECTRL, value32);
 	}
@@ -478,8 +503,8 @@ static void usb_AggSettingTxUpdate(struct adapter *Adapter)
 /*-----------------------------------------------------------------------------
  * Function:	usb_AggSettingRxUpdate()
  *
- * Overview:	Separate TX/RX parameters update independent for TP detection and
- *			dynamic TX/RX aggreagtion parameters update.
+ * Overview:	Separate TX/RX parameters update independent for TP detection
+ *		and dynamic TX/RX aggreagtion parameters update.
  *
  * Input:			struct adapter *
  *
@@ -490,10 +515,7 @@ static void usb_AggSettingTxUpdate(struct adapter *Adapter)
  *	12/10/2010	MHC		Separate to smaller function.
  *
  *---------------------------------------------------------------------------*/
-static void
-usb_AggSettingRxUpdate(
-		struct adapter *Adapter
-	)
+static void usb_AggSettingRxUpdate(struct adapter *Adapter)
 {
 	struct hal_data_8188e	*haldata = GET_HAL_DATA(Adapter);
 	u8 valueDMA;
@@ -527,22 +549,30 @@ usb_AggSettingRxUpdate(
 
 	switch (haldata->UsbRxAggMode) {
 	case USB_RX_AGG_DMA:
-		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, haldata->UsbRxAggPageCount);
-		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH+1, haldata->UsbRxAggPageTimeout);
+		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH,
+			   haldata->UsbRxAggPageCount);
+		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH+1,
+			   haldata->UsbRxAggPageTimeout);
 		break;
 	case USB_RX_AGG_USB:
-		usb_write8(Adapter, REG_USB_AGG_TH, haldata->UsbRxAggBlockCount);
-		usb_write8(Adapter, REG_USB_AGG_TO, haldata->UsbRxAggBlockTimeout);
+		usb_write8(Adapter, REG_USB_AGG_TH,
+			   haldata->UsbRxAggBlockCount);
+		usb_write8(Adapter, REG_USB_AGG_TO,
+			   haldata->UsbRxAggBlockTimeout);
 		break;
 	case USB_RX_AGG_MIX:
-		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, haldata->UsbRxAggPageCount);
-		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH+1, (haldata->UsbRxAggPageTimeout & 0x1F));/* 0x280[12:8] */
-		usb_write8(Adapter, REG_USB_AGG_TH, haldata->UsbRxAggBlockCount);
-		usb_write8(Adapter, REG_USB_AGG_TO, haldata->UsbRxAggBlockTimeout);
+		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH,
+			   haldata->UsbRxAggPageCount);
+		/* 0x280[12:8] */
+		usb_write8(Adapter, REG_RXDMA_AGG_PG_TH+1,
+			   (haldata->UsbRxAggPageTimeout & 0x1F));
+		usb_write8(Adapter, REG_USB_AGG_TH,
+			   haldata->UsbRxAggBlockCount);
+		usb_write8(Adapter, REG_USB_AGG_TO,
+			   haldata->UsbRxAggBlockTimeout);
 		break;
 	case USB_RX_AGG_DISABLE:
 	default:
-		/*  TODO: */
 		break;
 	}
 
@@ -592,8 +622,11 @@ static void _InitBeaconParameters(struct adapter *Adapter)
 	usb_write8(Adapter, REG_DRVERLYINT, DRIVER_EARLY_INT_TIME);/*  5ms */
 	usb_write8(Adapter, REG_BCNDMATIM, BCN_DMA_ATIME_INT_TIME); /*  2ms */
 
-	/*  Suggested by designer timchen. Change beacon AIFS to the largest number */
-	/*  beacause test chip does not contension before sending beacon. by tynli. 2009.11.03 */
+	/*  Suggested by designer timchen. Change beacon
+	 *  AIFS to the largest number because test chip
+	 *  does not contension before sending beacon.
+	 *  by tynli. 2009.11.03
+	 */
 	usb_write16(Adapter, REG_BCNTCFG, 0x660F);
 
 	haldata->RegBcnCtrlVal = usb_read8(Adapter, REG_BCN_CTRL);
@@ -631,14 +664,17 @@ static void _InitAntenna_Selection(struct adapter *Adapter)
 		return;
 	DBG_88E("==>  %s ....\n", __func__);
 
-	usb_write32(Adapter, REG_LEDCFG0, usb_read32(Adapter, REG_LEDCFG0) | BIT(23));
+	usb_write32(Adapter, REG_LEDCFG0,
+		    usb_read32(Adapter, REG_LEDCFG0) | BIT(23));
 	phy_set_bb_reg(Adapter, rFPGA0_XAB_RFParameter, BIT(13), 0x01);
 
-	if (phy_query_bb_reg(Adapter, rFPGA0_XA_RFInterfaceOE, 0x300) == Antenna_A)
+	if (phy_query_bb_reg(Adapter, rFPGA0_XA_RFInterfaceOE, 0x300) ==
+	    Antenna_A)
 		haldata->CurAntenna = Antenna_A;
 	else
 		haldata->CurAntenna = Antenna_B;
-	DBG_88E("%s,Cur_ant:(%x)%s\n", __func__, haldata->CurAntenna, (haldata->CurAntenna == Antenna_A) ? "Antenna_A" : "Antenna_B");
+	DBG_88E("%s,Cur_ant:(%x)%s\n", __func__, haldata->CurAntenna,
+		(haldata->CurAntenna == Antenna_A) ? "Antenna_A" : "Antenna_B");
 }
 
 /*-----------------------------------------------------------------------------
@@ -666,7 +702,8 @@ enum rt_rf_power_state RfOnOffDetect(struct adapter *adapt)
 		DBG_88E("pwrdown, 0x5c(BIT(7))=%02x\n", val8);
 		rfpowerstate = (val8 & BIT(7)) ? rf_off : rf_on;
 	} else { /*  rf on/off */
-		usb_write8(adapt, REG_MAC_PINMUX_CFG, usb_read8(adapt, REG_MAC_PINMUX_CFG)&~(BIT(3)));
+		usb_write8(adapt, REG_MAC_PINMUX_CFG,
+			   usb_read8(adapt, REG_MAC_PINMUX_CFG)&~(BIT(3)));
 		val8 = usb_read8(adapt, REG_GPIO_IO_SEL);
 		DBG_88E("GPIO_IN=%02x\n", val8);
 		rfpowerstate = (val8 & BIT(3)) ? rf_on : rf_off;
@@ -708,7 +745,8 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_PW_ON);
 	status = rtl8188eu_InitPowerOn(Adapter);
 	if (status == _FAIL) {
-		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("Failed to init power on!\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_err_,
+			("Failed to init power on!\n"));
 		goto exit;
 	}
 
@@ -719,9 +757,12 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 		pwrctrlpriv->rf_pwrstate = rf_off;
 	}
 
-	/*  2010/08/09 MH We need to check if we need to turnon or off RF after detecting */
-	/*  HW GPIO pin. Before PHY_RFConfig8192C. */
-	/*  2010/08/26 MH If Efuse does not support sective suspend then disable the function. */
+	/*  2010/08/09 MH We need to check if we need to
+	 *  turnon or off RF after detecting HW GPIO pin.
+	 *  Before PHY_RFConfig8192C. 2010/08/26 MH If
+	 *  Efuse does not support sective suspend then
+	 *  disable the function.
+	 */
 
 	if (!pregistrypriv->wifi_spec) {
 		txpktbuf_bndy = TX_PAGE_BOUNDARY_88E;
@@ -750,7 +791,8 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 			Adapter->bFWReady = false;
 			return status;
 		} else {
-			RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("Initializeadapt8192CSdio(): Download Firmware Success!!\n"));
+			RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
+				("Initializeadapt8192CSdio(): Download Firmware Success!!\n"));
 			Adapter->bFWReady = true;
 		}
 	}
@@ -774,7 +816,8 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_LLTT);
 	status =  InitLLTTable(Adapter, txpktbuf_bndy);
 	if (status == _FAIL) {
-		RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("Failed to init LLT table\n"));
+		RT_TRACE(_module_hci_hal_init_c_, _drv_err_,
+			("Failed to init LLT table\n"));
 		goto exit;
 	}
 
@@ -791,8 +834,11 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	_InitRetryFunction(Adapter);
 	InitUsbAggregationSetting(Adapter);
 	_InitBeaconParameters(Adapter);
-	/*  Init CR MACTXEN, MACRXEN after setting RxFF boundary REG_TRXFF_BNDY to patch */
-	/*  Hw bug which Hw initials RxFF boundary size to a value which is larger than the real Rx buffer size in 88E. */
+	/*  Init CR MACTXEN, MACRXEN after setting RxFF
+	 *  boundary REG_TRXFF_BNDY to patch Hw bug which
+	 *  Hw initials RxFF boundary size to a value
+	 *  which is larger than the real Rx buffer size in 88E.
+	 */
 	/*  Enable MACTXEN/MACRXEN block */
 	value16 = usb_read16(Adapter, REG_CR);
 	value16 |= (MACTXEN | MACRXEN);
@@ -806,18 +852,27 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 	value8 = usb_read8(Adapter, REG_TX_RPT_CTRL);
 	usb_write8(Adapter,  REG_TX_RPT_CTRL, (value8 | BIT(1) | BIT(0)));
 	/* Set MAX RPT MACID */
-	usb_write8(Adapter,  REG_TX_RPT_CTRL+1, 2);/* FOR sta mode ,0: bc/mc ,1:AP */
+	/* FOR sta mode ,0: bc/mc ,1:AP */
+	usb_write8(Adapter,  REG_TX_RPT_CTRL+1, 2);
 	/* Tx RPT Timer. Unit: 32us */
 	usb_write16(Adapter, REG_TX_RPT_TIME, 0xCdf0);
 
 	usb_write8(Adapter, REG_EARLY_MODE_CONTROL, 0);
 
-	usb_write16(Adapter, REG_PKT_VO_VI_LIFE_TIME, 0x0400);	/*  unit: 256us. 256ms */
-	usb_write16(Adapter, REG_PKT_BE_BK_LIFE_TIME, 0x0400);	/*  unit: 256us. 256ms */
+	/*  unit: 256us. 256ms */
+	usb_write16(Adapter, REG_PKT_VO_VI_LIFE_TIME, 0x0400);
+	usb_write16(Adapter, REG_PKT_BE_BK_LIFE_TIME, 0x0400);
 
 	/* Keep RfRegChnlVal for later use. */
-	haldata->RfRegChnlVal[0] = phy_query_rf_reg(Adapter, (enum rf_radio_path)0, RF_CHNLBW, bRFRegOffsetMask);
-	haldata->RfRegChnlVal[1] = phy_query_rf_reg(Adapter, (enum rf_radio_path)1, RF_CHNLBW, bRFRegOffsetMask);
+	haldata->RfRegChnlVal[0] = phy_query_rf_reg(Adapter,
+						   (enum rf_radio_path)0,
+						   RF_CHNLBW,
+						   bRFRegOffsetMask);
+
+	haldata->RfRegChnlVal[1] = phy_query_rf_reg(Adapter,
+						   (enum rf_radio_path)1,
+						   RF_CHNLBW,
+						   bRFRegOffsetMask);
 
 HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_TURN_ON_BLOCK);
 	_BBTurnOnBlock(Adapter);
@@ -826,18 +881,20 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_SECURITY);
 	invalidate_cam_all(Adapter);
 
 HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_MISC11);
-	/*  2010/12/17 MH We need to set TX power according to EFUSE content at first. */
+	/*  2010/12/17 MH We need to set TX power
+	 *  according to EFUSE content at first.
+	 */
 	phy_set_tx_power_level(Adapter, haldata->CurrentChannel);
 
-/*  Move by Neo for USB SS to below setp */
-/* _RfPowerSave(Adapter); */
+/*  Move by Neo for USB SS to below setp
+ * _RfPowerSave(Adapter);
+ */
 
 	_InitAntenna_Selection(Adapter);
 
-	/*  */
-	/*  Disable BAR, suggested by Scott */
-	/*  2010.04.09 add by hpfan */
-	/*  */
+	/*  Disable BAR, suggested by Scott
+	 *  2010.04.09 add by hpfan
+	 */
 	usb_write32(Adapter, REG_BAR_MODE_CTRL, 0x0201ffff);
 
 	/*  HW SEQ CTRL */
@@ -865,20 +922,22 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_INIT_HAL_DM);
 	/*  enable Tx report. */
 	usb_write8(Adapter,  REG_FWHW_TXQ_CTRL+1, 0x0F);
 
-	/*  Suggested by SD1 pisa. Added by tynli. 2011.10.21. */
-	usb_write8(Adapter, REG_EARLY_MODE_CONTROL+3, 0x01);/* Pretx_en, for WEP/TKIP SEC */
+	/* Suggested by SD1 pisa. Added by tynli. 2011.10.21. */
+	/* Pretx_en, for WEP/TKIP SEC */
+	usb_write8(Adapter, REG_EARLY_MODE_CONTROL+3, 0x01);
 
 	/* tynli_test_tx_report. */
 	usb_write16(Adapter, REG_TX_RPT_TIME, 0x3DF0);
 
 	/* enable tx DMA to drop the redundate data of packet */
-	usb_write16(Adapter, REG_TXDMA_OFFSET_CHK, (usb_read16(Adapter, REG_TXDMA_OFFSET_CHK) | DROP_DATA_EN));
+	usb_write16(Adapter, REG_TXDMA_OFFSET_CHK,
+		   (usb_read16(Adapter, REG_TXDMA_OFFSET_CHK) | DROP_DATA_EN));
 
 HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_IQK);
 		/*  2010/08/26 MH Merge from 8192CE. */
 	if (pwrctrlpriv->rf_pwrstate == rf_on) {
 		if (haldata->odmpriv.RFCalibrateInfo.bIQKInitialized) {
-				rtl88eu_phy_iq_calibrate(Adapter, true);
+			rtl88eu_phy_iq_calibrate(Adapter, true);
 		} else {
 			rtl88eu_phy_iq_calibrate(Adapter, false);
 			haldata->odmpriv.RFCalibrateInfo.bIQKInitialized = true;
@@ -897,7 +956,8 @@ HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_LCK);
 	usb_write8(Adapter, REG_USB_HRPWM, 0);
 
 	/* ack for xmit mgmt frames. */
-	usb_write32(Adapter, REG_FWHW_TXQ_CTRL, usb_read32(Adapter, REG_FWHW_TXQ_CTRL) | BIT(12));
+	usb_write32(Adapter, REG_FWHW_TXQ_CTRL,
+		    usb_read32(Adapter, REG_FWHW_TXQ_CTRL) | BIT(12));
 
 exit:
 HAL_INIT_PROFILE_TAG(HAL_INIT_STAGES_END);
@@ -914,7 +974,8 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 	u8 val8;
 	struct hal_data_8188e	*haldata	= GET_HAL_DATA(Adapter);
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("CardDisableRTL8188EU\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
+		("CardDisableRTL8188EU\n"));
 
 	/* Stop Tx Report Timer. 0x4EC[Bit1]=b'0 */
 	val8 = usb_read8(Adapter, REG_TX_RPT_CTRL);
@@ -964,7 +1025,8 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 	usb_write8(Adapter, REG_GPIO_IO_SEL, (val8<<4));
 	val8 = usb_read8(Adapter, REG_GPIO_IO_SEL+1);
 	usb_write8(Adapter, REG_GPIO_IO_SEL+1, val8|0x0F);/* Reg0x43 */
-	usb_write32(Adapter, REG_BB_PAD_CTRL, 0x00080808);/* set LNA ,TRSW,EX_PA Pin to output mode */
+	/* set LNA ,TRSW,EX_PA Pin to output mode */
+	usb_write32(Adapter, REG_BB_PAD_CTRL, 0x00080808);
 	haldata->bMacPwrCtrlOn = false;
 	Adapter->bFWReady = false;
 }
@@ -988,13 +1050,15 @@ static u32 rtl8188eu_hal_deinit(struct adapter *Adapter)
 
 	DBG_88E("bkeepfwalive(%x)\n", Adapter->pwrctrlpriv.bkeepfwalive);
 	if (Adapter->pwrctrlpriv.bkeepfwalive) {
-		if ((Adapter->pwrctrlpriv.bHWPwrPindetect) && (Adapter->pwrctrlpriv.bHWPowerdown))
+		if ((Adapter->pwrctrlpriv.bHWPwrPindetect) &&
+		    (Adapter->pwrctrlpriv.bHWPowerdown))
 			rtl8192cu_hw_power_down(Adapter);
 	} else {
 		if (Adapter->hw_init_completed) {
 			CardDisableRTL8188EU(Adapter);
 
-			if ((Adapter->pwrctrlpriv.bHWPwrPindetect) && (Adapter->pwrctrlpriv.bHWPowerdown))
+			if ((Adapter->pwrctrlpriv.bHWPwrPindetect) &&
+			    (Adapter->pwrctrlpriv.bHWPowerdown))
 				rtl8192cu_hw_power_down(Adapter);
 		}
 	}
@@ -1018,8 +1082,10 @@ static unsigned int rtl8188eu_inirp_init(struct adapter *Adapter)
 	/* issue Rx irp to receive data */
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
-		if (usb_read_port(Adapter, precvpriv->ff_hwaddr, 0, (unsigned char *)precvbuf) == false) {
-			RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("usb_rx_init: usb_read_port error\n"));
+		if (usb_read_port(Adapter, precvpriv->ff_hwaddr, 0,
+				 (unsigned char *)precvbuf) == false) {
+			RT_TRACE(_module_hci_hal_init_c_, _drv_err_,
+				("usb_rx_init: usb_read_port error\n"));
 			status = _FAIL;
 			goto exit;
 		}
@@ -1030,19 +1096,20 @@ static unsigned int rtl8188eu_inirp_init(struct adapter *Adapter)
 
 exit:
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<=== usb_inirp_init\n"));
-
-
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
+		("<=== usb_inirp_init\n"));
 	return status;
 }
 
 static unsigned int rtl8188eu_inirp_deinit(struct adapter *Adapter)
 {
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("\n ===> usb_rx_deinit\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
+		("\n ===> usb_rx_deinit\n"));
 
 	usb_read_port_cancel(Adapter);
 
-	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("\n <=== usb_rx_deinit\n"));
+	RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
+		("\n <=== usb_rx_deinit\n"));
 
 	return _SUCCESS;
 }
@@ -1052,32 +1119,39 @@ static unsigned int rtl8188eu_inirp_deinit(struct adapter *Adapter)
 /*	EEPROM/EFUSE Content Parsing */
 /*  */
 /*  */
-static void Hal_EfuseParsePIDVID_8188EU(struct adapter *adapt, u8 *hwinfo, bool AutoLoadFail)
+static void Hal_EfuseParsePIDVID_8188EU(struct adapter *adapt,
+					u8 *hwinfo, bool AutoLoadFail)
 {
 	struct hal_data_8188e	*haldata = GET_HAL_DATA(adapt);
 
 	if (!AutoLoadFail) {
 		/*  VID, PID */
-		haldata->EEPROMVID = EF2BYTE(*(__le16 *)&hwinfo[EEPROM_VID_88EU]);
-		haldata->EEPROMPID = EF2BYTE(*(__le16 *)&hwinfo[EEPROM_PID_88EU]);
+		haldata->EEPROMVID = EF2BYTE(*(__le16 *) &
+				     hwinfo[EEPROM_VID_88EU]);
+		haldata->EEPROMPID = EF2BYTE(*(__le16 *) &
+				     hwinfo[EEPROM_PID_88EU]);
 
 		/*  Customer ID, 0x00 and 0xff are reserved for Realtek. */
-		haldata->EEPROMCustomerID = *(u8 *)&hwinfo[EEPROM_CUSTOMERID_88E];
+		haldata->EEPROMCustomerID = *(u8 *) &
+					    hwinfo[EEPROM_CUSTOMERID_88E];
 		haldata->EEPROMSubCustomerID = EEPROM_Default_SubCustomerID;
 	} else {
 		haldata->EEPROMVID			= EEPROM_Default_VID;
 		haldata->EEPROMPID			= EEPROM_Default_PID;
 
 		/*  Customer ID, 0x00 and 0xff are reserved for Realtek. */
-		haldata->EEPROMCustomerID		= EEPROM_Default_CustomerID;
+		haldata->EEPROMCustomerID	= EEPROM_Default_CustomerID;
 		haldata->EEPROMSubCustomerID	= EEPROM_Default_SubCustomerID;
 	}
 
-	DBG_88E("VID = 0x%04X, PID = 0x%04X\n", haldata->EEPROMVID, haldata->EEPROMPID);
-	DBG_88E("Customer ID: 0x%02X, SubCustomer ID: 0x%02X\n", haldata->EEPROMCustomerID, haldata->EEPROMSubCustomerID);
+	DBG_88E("VID = 0x%04X, PID = 0x%04X\n", haldata->EEPROMVID,
+		haldata->EEPROMPID);
+	DBG_88E("Customer ID: 0x%02X, SubCustomer ID: 0x%02X\n",
+		haldata->EEPROMCustomerID, haldata->EEPROMSubCustomerID);
 }
 
-static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt, u8 *hwinfo, bool AutoLoadFail)
+static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt,
+					 u8 *hwinfo, bool AutoLoadFail)
 {
 	u16 i;
 	u8 sMacAddr[6] = {0x00, 0xE0, 0x4C, 0x81, 0x88, 0x02};
@@ -1088,34 +1162,42 @@ static void Hal_EfuseParseMACAddr_8188EU(struct adapter *adapt, u8 *hwinfo, bool
 			eeprom->mac_addr[i] = sMacAddr[i];
 	} else {
 		/* Read Permanent MAC address */
-		memcpy(eeprom->mac_addr, &hwinfo[EEPROM_MAC_ADDR_88EU], ETH_ALEN);
+		memcpy(eeprom->mac_addr, &hwinfo[EEPROM_MAC_ADDR_88EU],
+		       ETH_ALEN);
 	}
 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_,
 		 ("Hal_EfuseParseMACAddr_8188EU: Permanent Address = %pM\n",
 		 eeprom->mac_addr));
 }
 
-static void
-readAdapterInfo_8188EU(
-		struct adapter *adapt
-	)
+static void readAdapterInfo_8188EU(struct adapter *adapt)
 {
 	struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(adapt);
 
 	/* parse the eeprom/efuse content */
 	Hal_EfuseParseIDCode88E(adapt, eeprom->efuse_eeprom_data);
-	Hal_EfuseParsePIDVID_8188EU(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_EfuseParseMACAddr_8188EU(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-
-	Hal_ReadPowerSavingMode88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_ReadTxPowerInfo88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_EfuseParseEEPROMVer88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	rtl8188e_EfuseParseChnlPlan(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_EfuseParseXtal_8188E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_EfuseParseCustomerID88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_ReadAntennaDiversity88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_EfuseParseBoardType88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
-	Hal_ReadThermalMeter_88E(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
+	Hal_EfuseParsePIDVID_8188EU(adapt, eeprom->efuse_eeprom_data,
+				    eeprom->bautoload_fail_flag);
+	Hal_EfuseParseMACAddr_8188EU(adapt, eeprom->efuse_eeprom_data,
+				     eeprom->bautoload_fail_flag);
+	Hal_ReadPowerSavingMode88E(adapt, eeprom->efuse_eeprom_data,
+				   eeprom->bautoload_fail_flag);
+	Hal_ReadTxPowerInfo88E(adapt, eeprom->efuse_eeprom_data,
+			       eeprom->bautoload_fail_flag);
+	Hal_EfuseParseEEPROMVer88E(adapt, eeprom->efuse_eeprom_data,
+				   eeprom->bautoload_fail_flag);
+	rtl8188e_EfuseParseChnlPlan(adapt, eeprom->efuse_eeprom_data,
+				    eeprom->bautoload_fail_flag);
+	Hal_EfuseParseXtal_8188E(adapt, eeprom->efuse_eeprom_data,
+				 eeprom->bautoload_fail_flag);
+	Hal_EfuseParseCustomerID88E(adapt, eeprom->efuse_eeprom_data,
+				    eeprom->bautoload_fail_flag);
+	Hal_ReadAntennaDiversity88E(adapt, eeprom->efuse_eeprom_data,
+				    eeprom->bautoload_fail_flag);
+	Hal_EfuseParseBoardType88E(adapt, eeprom->efuse_eeprom_data,
+				   eeprom->bautoload_fail_flag);
+	Hal_ReadThermalMeter_88E(adapt, eeprom->efuse_eeprom_data,
+				 eeprom->bautoload_fail_flag);
 
 }
 
@@ -1128,10 +1210,11 @@ static void _ReadPROMContent(
 
 	/* check system boot selection */
 	eeValue = usb_read8(Adapter, REG_9346CR);
-	eeprom->EepromOrEfuse		= (eeValue & BOOT_FROM_EEPROM) ? true : false;
-	eeprom->bautoload_fail_flag	= (eeValue & EEPROM_EN) ? false : true;
+	eeprom->EepromOrEfuse = (eeValue & BOOT_FROM_EEPROM) ? true : false;
+	eeprom->bautoload_fail_flag = (eeValue & EEPROM_EN) ? false : true;
 
-	DBG_88E("Boot from %s, Autoload %s !\n", (eeprom->EepromOrEfuse ? "EEPROM" : "EFUSE"),
+	DBG_88E("Boot from %s, Autoload %s !\n",
+		(eeprom->EepromOrEfuse ? "EEPROM" : "EFUSE"),
 		(eeprom->bautoload_fail_flag ? "Fail" : "OK"));
 
 	Hal_InitPGData88E(Adapter);
@@ -1170,11 +1253,13 @@ static void ResumeTxBeacon(struct adapter *adapt)
 	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
 	/*  which should be read from register to a global variable. */
 
-	usb_write8(adapt, REG_FWHW_TXQ_CTRL+2, (haldata->RegFwHwTxQCtrl) | BIT(6));
+	usb_write8(adapt, REG_FWHW_TXQ_CTRL+2,
+		  (haldata->RegFwHwTxQCtrl) | BIT(6));
 	haldata->RegFwHwTxQCtrl |= BIT(6);
 	usb_write8(adapt, REG_TBTT_PROHIBIT+1, 0xff);
 	haldata->RegReg542 |= BIT(0);
-	usb_write8(adapt, REG_TBTT_PROHIBIT+2, haldata->RegReg542);
+	usb_write8(adapt, REG_TBTT_PROHIBIT+2,
+		   haldata->RegReg542);
 }
 
 static void StopTxBeacon(struct adapter *adapt)
@@ -1184,7 +1269,8 @@ static void StopTxBeacon(struct adapter *adapt)
 	/*  2010.03.01. Marked by tynli. No need to call workitem beacause we record the value */
 	/*  which should be read from register to a global variable. */
 
-	usb_write8(adapt, REG_FWHW_TXQ_CTRL+2, (haldata->RegFwHwTxQCtrl) & (~BIT(6)));
+	usb_write8(adapt, REG_FWHW_TXQ_CTRL+2,
+		  (haldata->RegFwHwTxQCtrl) & (~BIT(6)));
 	haldata->RegFwHwTxQCtrl &= (~BIT(6));
 	usb_write8(adapt, REG_TBTT_PROHIBIT+1, 0x64);
 	haldata->RegReg542 &= ~(BIT(0));
@@ -1199,7 +1285,8 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 	u8 mode = *((u8 *)val);
 
 	/*  disable Port0 TSF update */
-	usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
+	usb_write8(Adapter, REG_BCN_CTRL,
+		   usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
 
 	/*  set net_type */
 	val8 = usb_read8(Adapter, MSR)&0x0c;
@@ -1239,14 +1326,17 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 		usb_write8(Adapter, REG_DUAL_TSF_RST, BIT(0));
 
 		/* BIT3 - If set 0, hw will clr bcnq when tx becon ok/fail or port 0 */
-		usb_write8(Adapter, REG_MBID_NUM, usb_read8(Adapter, REG_MBID_NUM) | BIT(3) | BIT(4));
+		usb_write8(Adapter, REG_MBID_NUM,
+			   usb_read8(Adapter, REG_MBID_NUM) | BIT(3) | BIT(4));
 
 		/* enable BCN0 Function for if1 */
 		/* don't enable update TSF0 for if1 (due to TSF update when beacon/probe rsp are received) */
-		usb_write8(Adapter, REG_BCN_CTRL, (DIS_TSF_UDT0_NORMAL_CHIP|EN_BCN_FUNCTION | BIT(1)));
+		usb_write8(Adapter, REG_BCN_CTRL,
+			   (DIS_TSF_UDT0_NORMAL_CHIP|EN_BCN_FUNCTION | BIT(1)));
 
 		/* dis BCN1 ATIM  WND if if2 is station */
-		usb_write8(Adapter, REG_BCN_CTRL_1, usb_read8(Adapter, REG_BCN_CTRL_1) | BIT(0));
+		usb_write8(Adapter, REG_BCN_CTRL_1,
+			   usb_read8(Adapter, REG_BCN_CTRL_1) | BIT(0));
 	}
 }
 
@@ -1279,9 +1369,12 @@ static void hw_var_set_bcn_func(struct adapter *Adapter, u8 variable, u8 *val)
 	bcn_ctrl_reg = REG_BCN_CTRL;
 
 	if (*((u8 *)val))
-		usb_write8(Adapter, bcn_ctrl_reg, (EN_BCN_FUNCTION | EN_TXBCN_RPT));
+		usb_write8(Adapter, bcn_ctrl_reg,
+			  (EN_BCN_FUNCTION | EN_TXBCN_RPT));
 	else
-		usb_write8(Adapter, bcn_ctrl_reg, usb_read8(Adapter, bcn_ctrl_reg)&(~(EN_BCN_FUNCTION | EN_TXBCN_RPT)));
+		usb_write8(Adapter, bcn_ctrl_reg,
+			   usb_read8(Adapter, bcn_ctrl_reg) &
+			   (~(EN_BCN_FUNCTION | EN_TXBCN_RPT)));
 }
 
 static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
@@ -1342,7 +1435,8 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			/*  Set RRSR rate table. */
 			usb_write8(Adapter, REG_RRSR, BrateCfg & 0xff);
 			usb_write8(Adapter, REG_RRSR+1, (BrateCfg >> 8) & 0xff);
-			usb_write8(Adapter, REG_RRSR+2, usb_read8(Adapter, REG_RRSR+2)&0xf0);
+			usb_write8(Adapter, REG_RRSR+2,
+				   usb_read8(Adapter, REG_RRSR+2)&0xf0);
 
 			/*  Set RTS initial rate */
 			while (BrateCfg > 0x1) {
@@ -1359,40 +1453,45 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_BCN_FUNC:
 		hw_var_set_bcn_func(Adapter, variable, val);
 		break;
-	case HW_VAR_CORRECT_TSF:
-		{
-			u64	tsf;
-			struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
-			struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+	case HW_VAR_CORRECT_TSF: {
+		u64	tsf;
+		struct mlme_ext_priv *pmlmeext = &Adapter->mlmeextpriv;
+		struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
-			tsf = pmlmeext->TSFValue - rtw_modular64(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
+		tsf = pmlmeext->TSFValue -
+		      rtw_modular64(pmlmeext->TSFValue,
+		      (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
 
-			if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
-				StopTxBeacon(Adapter);
+		if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
+		    ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
+			StopTxBeacon(Adapter);
 
-			/* disable related TSF function */
-			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(3)));
+		/* disable related TSF function */
+		usb_write8(Adapter, REG_BCN_CTRL,
+			   usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(3)));
 
-			usb_write32(Adapter, REG_TSFTR, tsf);
-			usb_write32(Adapter, REG_TSFTR+4, tsf>>32);
+		usb_write32(Adapter, REG_TSFTR, tsf);
+		usb_write32(Adapter, REG_TSFTR+4, tsf>>32);
 
-			/* enable related TSF function */
-			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(3));
+		/* enable related TSF function */
+		usb_write8(Adapter, REG_BCN_CTRL,
+			   usb_read8(Adapter, REG_BCN_CTRL) | BIT(3));
 
-			if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
-				ResumeTxBeacon(Adapter);
+		if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
+		    ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
+			ResumeTxBeacon(Adapter);
 		}
 		break;
 	case HW_VAR_CHECK_BSSID:
 		if (*((u8 *)val)) {
-			usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_DATA|RCR_CBSSID_BCN);
+			usb_write32(Adapter, REG_RCR,
+			usb_read32(Adapter, REG_RCR) |
+			RCR_CBSSID_DATA|RCR_CBSSID_BCN);
 		} else {
 			u32 val32;
 
 			val32 = usb_read32(Adapter, REG_RCR);
-
 			val32 &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);
-
 			usb_write32(Adapter, REG_RCR, val32);
 		}
 		break;
@@ -1405,22 +1504,25 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		usb_write8(Adapter, REG_DUAL_TSF_RST, (BIT(0) | BIT(1)));
 
 		/* disable update TSF */
-		usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
+		usb_write8(Adapter, REG_BCN_CTRL,
+			   usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
 		break;
 	case HW_VAR_MLME_SITESURVEY:
 		if (*((u8 *)val)) { /* under sitesurvey */
 			/* config RCR to receive different BSSID & not to receive data frame */
 			u32 v = usb_read32(Adapter, REG_RCR);
+
 			v &= ~(RCR_CBSSID_BCN);
 			usb_write32(Adapter, REG_RCR, v);
 			/* reject all data frame */
 			usb_write16(Adapter, REG_RXFLTMAP2, 0x00);
 
 			/* disable update TSF */
-			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
+			usb_write8(Adapter, REG_BCN_CTRL,
+				   usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
 		} else { /* sitesurvey done */
-			struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
-			struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+			struct mlme_ext_priv *pmlmeext = &Adapter->mlmeextpriv;
+			struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 			if ((is_client_associated_to_ap(Adapter)) ||
 			    ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE)) {
@@ -1428,21 +1530,32 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 
 				/* enable update TSF */
-				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(4)));
-			} else if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
+				usb_write8(Adapter, REG_BCN_CTRL,
+					   usb_read8(Adapter, REG_BCN_CTRL) &
+					   (~BIT(4)));
+
+			} else if (pmlmeinfo->state&0x03 == WIFI_FW_AP_STATE) {
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 				/* enable update TSF */
-				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(4)));
+				usb_write8(Adapter, REG_BCN_CTRL,
+					   usb_read8(Adapter, REG_BCN_CTRL) &
+					   (~BIT(4)));
 			}
 			if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
-				usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_BCN);
+				usb_write32(Adapter, REG_RCR,
+					    usb_read32(Adapter, REG_RCR) |
+					    RCR_CBSSID_BCN);
 			} else {
 				if (Adapter->in_cta_test) {
 					u32 v = usb_read32(Adapter, REG_RCR);
-					v &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);/*  RCR_ADF */
+					/*  RCR_ADF */
+					v &= ~(RCR_CBSSID_DATA |
+					       RCR_CBSSID_BCN);
 					usb_write32(Adapter, REG_RCR, v);
 				} else {
-					usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_BCN);
+					usb_write32(Adapter, REG_RCR,
+						    usb_read32(Adapter, REG_RCR)
+						    | RCR_CBSSID_BCN);
 				}
 			}
 		}
@@ -1454,19 +1567,27 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
 
 			if (type == 0) { /*  prepare to join */
-				/* enable to rx data frame.Accept all data frame */
+				/* enable to rx data frame.
+				 * Accept all data frame */
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 
 				if (Adapter->in_cta_test) {
 					u32 v = usb_read32(Adapter, REG_RCR);
-					v &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);/*  RCR_ADF */
+
+					v &= ~(RCR_CBSSID_DATA |
+					       RCR_CBSSID_BCN);/*  RCR_ADF */
 					usb_write32(Adapter, REG_RCR, v);
 				} else {
-					usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_DATA|RCR_CBSSID_BCN);
+					usb_write32(Adapter, REG_RCR,
+						    usb_read32(Adapter, REG_RCR)
+						    | RCR_CBSSID_DATA
+						    | RCR_CBSSID_BCN);
 				}
 
-				if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
-					RetryLimit = (haldata->CustomerID == RT_CID_CCX) ? 7 : 48;
+				if (check_fwstate(pmlmepriv,
+						  WIFI_STATION_STATE))
+					RetryLimit = (haldata->CustomerID ==
+						      RT_CID_CCX) ? 7 : 48;
 				else /*  Ad-hoc Mode */
 					RetryLimit = 0x7;
 			} else if (type == 1) {
@@ -1475,40 +1596,44 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			} else if (type == 2) {
 				/* sta add event call back */
 				/* enable update TSF */
-				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(4)));
+				usb_write8(Adapter, REG_BCN_CTRL,
+					   usb_read8(Adapter, REG_BCN_CTRL) &
+					   (~BIT(4)));
 
-				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE))
+				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE |
+						  WIFI_ADHOC_MASTER_STATE))
 					RetryLimit = 0x7;
 			}
-			usb_write16(Adapter, REG_RL, RetryLimit << RETRY_LIMIT_SHORT_SHIFT | RetryLimit << RETRY_LIMIT_LONG_SHIFT);
+			usb_write16(Adapter, REG_RL,
+				    RetryLimit << RETRY_LIMIT_SHORT_SHIFT |
+				    RetryLimit << RETRY_LIMIT_LONG_SHIFT);
 		}
 		break;
 	case HW_VAR_BEACON_INTERVAL:
 		usb_write16(Adapter, REG_BCN_INTERVAL, *((u16 *)val));
 		break;
 	case HW_VAR_SLOT_TIME:
-		{
-			u8 u1bAIFS, aSifsTime;
-			struct mlme_ext_priv	*pmlmeext = &Adapter->mlmeextpriv;
-			struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
+		u8 u1bAIFS, aSifsTime;
+		struct mlme_ext_priv *pmlmeext = &Adapter->mlmeextpriv;
+		struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
-			usb_write8(Adapter, REG_SLOT, val[0]);
+		usb_write8(Adapter, REG_SLOT, val[0]);
 
-			if (pmlmeinfo->WMM_enable == 0) {
-				if (pmlmeext->cur_wireless_mode == WIRELESS_11B)
-					aSifsTime = 10;
-				else
-					aSifsTime = 16;
+		if (pmlmeinfo->WMM_enable == 0) {
+			if (pmlmeext->cur_wireless_mode == WIRELESS_11B)
+				aSifsTime = 10;
+			else
+				aSifsTime = 16;
 
-				u1bAIFS = aSifsTime + (2 * pmlmeinfo->slotTime);
+			u1bAIFS = aSifsTime + (2 * pmlmeinfo->slotTime);
 
-				/*  <Roger_EXP> Temporary removed, 2008.06.20. */
-				usb_write8(Adapter, REG_EDCA_VO_PARAM, u1bAIFS);
-				usb_write8(Adapter, REG_EDCA_VI_PARAM, u1bAIFS);
-				usb_write8(Adapter, REG_EDCA_BE_PARAM, u1bAIFS);
-				usb_write8(Adapter, REG_EDCA_BK_PARAM, u1bAIFS);
-			}
+			/* <Roger_EXP> Temporary removed, 2008.06.20. */
+			usb_write8(Adapter, REG_EDCA_VO_PARAM, u1bAIFS);
+			usb_write8(Adapter, REG_EDCA_VI_PARAM, u1bAIFS);
+			usb_write8(Adapter, REG_EDCA_BE_PARAM, u1bAIFS);
+			usb_write8(Adapter, REG_EDCA_BK_PARAM, u1bAIFS);
 		}
+
 		break;
 	case HW_VAR_RESP_SIFS:
 		/* RESP_SIFS for CCK */
@@ -1523,7 +1648,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			u8 regTmp;
 			u8 bShortPreamble = *((bool *)val);
 			/*  Joseph marked out for Netgear 3500 TKIP channel 7 issue.(Temporarily) */
-			regTmp = (haldata->nCur40MhzPrimeSC)<<5;
+			regTmp = (haldata->nCur40MhzPrimeSC) << 5;
 			if (bShortPreamble)
 				regTmp |= 0x80;
 
@@ -1545,7 +1670,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_DM_FUNC_SET:
 		if (*((u32 *)val) == DYNAMIC_ALL_FUNC_ENABLE) {
 			pdmpriv->DMFlag = pdmpriv->InitDMFlag;
-			podmpriv->SupportAbility =	pdmpriv->InitODMFlag;
+			podmpriv->SupportAbility = pdmpriv->InitODMFlag;
 		} else {
 			podmpriv->SupportAbility |= *((u32 *)val);
 		}
@@ -1564,7 +1689,8 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			for (i = 0; i < CAM_CONTENT_COUNT; i++) {
 				/*  filled id in CAM config 2 byte */
 				if (i == 0)
-					ulContent |= (ucIndex & 0x03) | ((u16)(ulEncAlgo)<<2);
+					ulContent |= (ucIndex & 0x03) |
+					((u16)(ulEncAlgo) << 2);
 				else
 					ulContent = 0;
 				/*  polling bit, and No Write enable, and address */
@@ -1583,6 +1709,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		{
 			u32 cmd;
 			u32 *cam_val = (u32 *)val;
+
 			usb_write32(Adapter, WCAMI, cam_val[0]);
 
 			cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
@@ -1636,7 +1763,8 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 
 			MinSpacingToSet = *((u8 *)val);
 			if (MinSpacingToSet <= 7) {
-				switch (Adapter->securitypriv.dot11PrivacyAlgrthm) {
+				switch (Adapter->
+					securitypriv.dot11PrivacyAlgrthm) {
 				case _NO_PRIVACY_:
 				case _AES_:
 					SecMinSpace = 0;
@@ -1653,7 +1781,10 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 				}
 				if (MinSpacingToSet < SecMinSpace)
 					MinSpacingToSet = SecMinSpace;
-				usb_write8(Adapter, REG_AMPDU_MIN_SPACE, (usb_read8(Adapter, REG_AMPDU_MIN_SPACE) & 0xf8) | MinSpacingToSet);
+				usb_write8(Adapter, REG_AMPDU_MIN_SPACE, (
+					   usb_read8(Adapter,
+						     REG_AMPDU_MIN_SPACE)
+					   & 0xf8) | MinSpacingToSet);
 			}
 		}
 		break;
@@ -1672,13 +1803,21 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 					FactorToSet = 0xf;
 
 				for (index = 0; index < 4; index++) {
-					if ((pRegToSet[index] & 0xf0) > (FactorToSet<<4))
-						pRegToSet[index] = (pRegToSet[index] & 0x0f) | (FactorToSet<<4);
-
-					if ((pRegToSet[index] & 0x0f) > FactorToSet)
-						pRegToSet[index] = (pRegToSet[index] & 0xf0) | (FactorToSet);
-
-					usb_write8(Adapter, (REG_AGGLEN_LMT+index), pRegToSet[index]);
+					if ((pRegToSet[index] & 0xf0) >
+					    (FactorToSet << 4))
+						pRegToSet[index] =
+						(pRegToSet[index] & 0x0f) |
+						(FactorToSet<<4);
+
+					if ((pRegToSet[index] & 0x0f) >
+					     FactorToSet)
+						pRegToSet[index] =
+						(pRegToSet[index] & 0xf0) |
+						(FactorToSet);
+
+					usb_write8(Adapter,
+						  (REG_AGGLEN_LMT+index),
+						   pRegToSet[index]);
 				}
 			}
 		}
@@ -1686,6 +1825,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_RXDMA_AGG_PG_TH:
 		{
 			u8 threshold = *((u8 *)val);
+
 			if (threshold == 0)
 				threshold = haldata->UsbRxAggPageCount;
 			usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, threshold);
@@ -1707,6 +1847,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_H2C_FW_JOINBSSRPT:
 		{
 			u8 mstatus = (*(u8 *)val);
+
 			rtl8188e_set_FwJoinBssReport_cmd(Adapter, mstatus);
 		}
 		break;
@@ -1716,9 +1857,11 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			u32 rx_gain = ((u32 *)(val))[0];
 
 			if (rx_gain == 0xff) {/* restore rx gain */
-				ODM_Write_DIG(podmpriv, pDigTable->BackupIGValue);
+				ODM_Write_DIG(podmpriv,
+					      pDigTable->BackupIGValue);
 			} else {
-				pDigTable->BackupIGValue = pDigTable->CurIGValue;
+				pDigTable->BackupIGValue = pDigTable->
+							   CurIGValue;
 				ODM_Write_DIG(podmpriv, rx_gain);
 			}
 		}
@@ -1729,6 +1872,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_RPT_TIMER_SETTING:
 		{
 			u16 min_rpt_time = (*(u16 *)val);
+
 			ODM_RA_Set_TxRPT_Time(podmpriv, min_rpt_time);
 		}
 		break;
@@ -1738,8 +1882,10 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			u8 Ant;
 			/* switch antenna to Optimum_antenna */
 			if (haldata->CurAntenna !=  Optimum_antenna) {
-				Ant = (Optimum_antenna == 2) ? MAIN_ANT : AUX_ANT;
-				rtl88eu_dm_update_rx_idle_ant(&haldata->odmpriv, Ant);
+				Ant = (Optimum_antenna == 2) ?
+				       MAIN_ANT : AUX_ANT;
+				rtl88eu_dm_update_rx_idle_ant(&haldata->odmpriv,
+							      Ant);
 
 				haldata->CurAntenna = Optimum_antenna;
 			}
@@ -1757,13 +1903,17 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 			usb_write8(Adapter, REG_TXPAUSE, 0xff);
 
 			/* keep sn */
-			Adapter->xmitpriv.nqos_ssn = usb_read16(Adapter, REG_NQOS_SEQ);
+			Adapter->xmitpriv.nqos_ssn = usb_read16(Adapter,
+								REG_NQOS_SEQ);
 
 			if (!pwrpriv->bkeepfwalive) {
 				/* RX DMA stop */
-				usb_write32(Adapter, REG_RXPKT_NUM, (usb_read32(Adapter, REG_RXPKT_NUM)|RW_RELEASE_EN));
+				usb_write32(Adapter, REG_RXPKT_NUM,
+					   (usb_read32(Adapter, REG_RXPKT_NUM) |
+					    RW_RELEASE_EN));
 				do {
-					if (!(usb_read32(Adapter, REG_RXPKT_NUM)&RXDMA_IDLE))
+					if (!(usb_read32(Adapter, REG_RXPKT_NUM)
+					      & RXDMA_IDLE))
 						break;
 				} while (trycnt--);
 				if (trycnt == 0)
@@ -1780,21 +1930,25 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		break;
 	case HW_VAR_APFM_ON_MAC:
 		haldata->bMacPwrCtrlOn = *val;
-		DBG_88E("%s: bMacPwrCtrlOn=%d\n", __func__, haldata->bMacPwrCtrlOn);
+		DBG_88E("%s: bMacPwrCtrlOn=%d\n", __func__,
+			haldata->bMacPwrCtrlOn);
 		break;
 	case HW_VAR_TX_RPT_MAX_MACID:
 		{
 			u8 maxMacid = *val;
-			DBG_88E("### MacID(%d),Set Max Tx RPT MID(%d)\n", maxMacid, maxMacid+1);
+
+			DBG_88E("### MacID(%d),Set Max Tx RPT MID(%d)\n",
+				maxMacid, maxMacid+1);
 			usb_write8(Adapter, REG_TX_RPT_CTRL+1, maxMacid+1);
 		}
 		break;
 	case HW_VAR_H2C_MEDIA_STATUS_RPT:
-		rtl8188e_set_FwMediaStatus_cmd(Adapter , (*(__le16 *)val));
+		rtl8188e_set_FwMediaStatus_cmd(Adapter, (*(__le16 *)val));
 		break;
 	case HW_VAR_BCN_VALID:
 		/* BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of REG_TDECTRL+2, write 1 to clear, Clear by sw */
-		usb_write8(Adapter, REG_TDECTRL+2, usb_read8(Adapter, REG_TDECTRL+2) | BIT(0));
+		usb_write8(Adapter, REG_TDECTRL+2,
+			   usb_read8(Adapter, REG_TDECTRL+2) | BIT(0));
 		break;
 	default:
 		break;
@@ -1814,7 +1968,8 @@ static void GetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		break;
 	case HW_VAR_BCN_VALID:
 		/* BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of REG_TDECTRL+2 */
-		val[0] = (BIT(0) & usb_read8(Adapter, REG_TDECTRL+2)) ? true : false;
+		val[0] = (BIT(0) &
+			  usb_read8(Adapter, REG_TDECTRL+2)) ? true : false;
 		break;
 	case HW_VAR_DM_FLAG:
 		val[0] = podmpriv->SupportAbility;
@@ -1831,6 +1986,7 @@ static void GetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 				val[0] = true;
 			} else {
 				u32 valRCR;
+
 				valRCR = usb_read32(Adapter, REG_RCR);
 				valRCR &= 0x00070000;
 				if (valRCR)
@@ -1850,7 +2006,9 @@ static void GetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		*val = haldata->bMacPwrCtrlOn;
 		break;
 	case HW_VAR_CHK_HI_QUEUE_EMPTY:
-		*val = ((usb_read32(Adapter, REG_HGQ_INFORMATION)&0x0000ff00) == 0) ? true : false;
+		*val = ((usb_read32(Adapter, REG_HGQ_INFORMATION) &
+				    0x0000ff00) == 0) ?
+			true : false;
 		break;
 	default:
 		break;
@@ -1878,9 +2036,13 @@ GetHalDefVar8188EUsb(
 			struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 			struct sta_priv *pstapriv = &Adapter->stapriv;
 			struct sta_info *psta;
-			psta = rtw_get_stainfo(pstapriv, pmlmepriv->cur_network.network.MacAddress);
+
+			psta = rtw_get_stainfo(pstapriv, pmlmepriv->
+				cur_network.network.MacAddress);
+
 			if (psta)
-				*((int *)pValue) = psta->rssi_stat.UndecoratedSmoothedPWDB;
+				*((int *)pValue) = psta->
+				rssi_stat.UndecoratedSmoothedPWDB;
 		}
 		break;
 	case HAL_DEF_IS_SUPPORT_ANT_DIV:
@@ -1902,22 +2064,19 @@ GetHalDefVar8188EUsb(
 		*((u32 *)pValue) = haldata->odmpriv.SupportAbility;
 		break;
 	case HAL_DEF_RA_DECISION_RATE:
-		{
-			u8 MacID = *((u8 *)pValue);
-			*((u8 *)pValue) = ODM_RA_GetDecisionRate_8188E(&(haldata->odmpriv), MacID);
-		}
+		u8 MacID = *((u8 *)pValue);
+		*((u8 *)pValue) = ODM_RA_GetDecisionRate_8188E(&haldata->
+							       odmpriv, MacID);
 		break;
 	case HAL_DEF_RA_SGI:
-		{
-			u8 MacID = *((u8 *)pValue);
-			*((u8 *)pValue) = ODM_RA_GetShortGI_8188E(&(haldata->odmpriv), MacID);
-		}
+		u8 MacID = *((u8 *)pValue);
+		*((u8 *)pValue) = ODM_RA_GetShortGI_8188E(&haldata->odmpriv,
+							  MacID);
 		break;
 	case HAL_DEF_PT_PWR_STATUS:
-		{
-			u8 MacID = *((u8 *)pValue);
-			*((u8 *)pValue) = ODM_RA_GetHwPwrStatus_8188E(&(haldata->odmpriv), MacID);
-		}
+		u8 MacID = *((u8 *)pValue);
+		*((u8 *)pValue) = ODM_RA_GetHwPwrStatus_8188E(&haldata->odmpriv,
+							      MacID);
 		break;
 	case HW_VAR_MAX_RX_AMPDU_FACTOR:
 		*((u32 *)pValue) = MAX_AMPDU_FACTOR_64K;
@@ -1925,22 +2084,30 @@ GetHalDefVar8188EUsb(
 	case HW_DEF_RA_INFO_DUMP:
 		{
 			u8 entry_id = *((u8 *)pValue);
+
 			if (check_fwstate(&Adapter->mlmepriv, _FW_LINKED)) {
 				DBG_88E("============ RA status check ===================\n");
 				DBG_88E("Mac_id:%d , RateID = %d, RAUseRate = 0x%08x, RateSGI = %d, DecisionRate = 0x%02x ,PTStage = %d\n",
 					entry_id,
-					haldata->odmpriv.RAInfo[entry_id].RateID,
-					haldata->odmpriv.RAInfo[entry_id].RAUseRate,
-					haldata->odmpriv.RAInfo[entry_id].RateSGI,
-					haldata->odmpriv.RAInfo[entry_id].DecisionRate,
-					haldata->odmpriv.RAInfo[entry_id].PTStage);
+					haldata->odmpriv.RAInfo[entry_id]
+						.RateID,
+					haldata->odmpriv.RAInfo[entry_id]
+						.RAUseRate,
+					haldata->odmpriv.RAInfo[entry_id]
+						.RateSGI,
+					haldata->odmpriv.RAInfo[entry_id]
+						.DecisionRate,
+					haldata->odmpriv.RAInfo[entry_id]
+						.PTStage);
 			}
 		}
 		break;
 	case HW_DEF_ODM_DBG_FLAG:
 		{
 			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
-			pr_info("dm_ocm->DebugComponents = 0x%llx\n", dm_ocm->DebugComponents);
+
+			pr_info("dm_ocm->DebugComponents = 0x%llx\n",
+				dm_ocm->DebugComponents);
 		}
 		break;
 	case HAL_DEF_DBG_DUMP_RXPKT:
@@ -1957,7 +2124,8 @@ GetHalDefVar8188EUsb(
 	return bResult;
 }
 
-static void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_level)
+static void UpdateHalRAMask8188EUsb(struct adapter *adapt,
+				    u32 mac_id, u8 rssi_level)
 {
 	u8 init_rate = 0;
 	u8 networkType, raid;
@@ -1977,34 +2145,49 @@ static void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_l
 		return;
 	switch (mac_id) {
 	case 0:/*  for infra mode */
-		supportRateNum = rtw_get_rateset_len(cur_network->SupportedRates);
-		networkType = judge_network_type(adapt, cur_network->SupportedRates, supportRateNum) & 0xf;
+		supportRateNum = rtw_get_rateset_len(cur_network->
+						     SupportedRates);
+		networkType = judge_network_type(adapt,
+						 cur_network->SupportedRates,
+						 supportRateNum) & 0xf;
 		raid = networktype_to_raid(networkType);
-		mask = update_supported_rate(cur_network->SupportedRates, supportRateNum);
-		mask |= (pmlmeinfo->HT_enable) ? update_MSC_rate(&(pmlmeinfo->HT_caps)) : 0;
+		mask = update_supported_rate(cur_network->SupportedRates,
+					     supportRateNum);
+		mask |= (pmlmeinfo->HT_enable) ?
+			update_MSC_rate(&pmlmeinfo->HT_caps) : 0;
 		if (support_short_GI(adapt, &(pmlmeinfo->HT_caps)))
 			shortGIrate = true;
 		break;
 	case 1:/* for broadcast/multicast */
-		supportRateNum = rtw_get_rateset_len(pmlmeinfo->FW_sta_info[mac_id].SupportedRates);
+		supportRateNum = rtw_get_rateset_len(pmlmeinfo->
+						     FW_sta_info[mac_id]
+						     .SupportedRates);
 		if (pmlmeext->cur_wireless_mode & WIRELESS_11B)
 			networkType = WIRELESS_11B;
 		else
 			networkType = WIRELESS_11G;
 		raid = networktype_to_raid(networkType);
-		mask = update_basic_rate(cur_network->SupportedRates, supportRateNum);
+		mask = update_basic_rate(cur_network->SupportedRates,
+					 supportRateNum);
 		break;
 	default: /* for each sta in IBSS */
-		supportRateNum = rtw_get_rateset_len(pmlmeinfo->FW_sta_info[mac_id].SupportedRates);
-		networkType = judge_network_type(adapt, pmlmeinfo->FW_sta_info[mac_id].SupportedRates, supportRateNum) & 0xf;
+		supportRateNum = rtw_get_rateset_len(pmlmeinfo->
+						     FW_sta_info[mac_id]
+						     .SupportedRates);
+		networkType = judge_network_type(adapt, pmlmeinfo->
+						 FW_sta_info[mac_id]
+						 .SupportedRates,
+						 supportRateNum) & 0xf;
 		raid = networktype_to_raid(networkType);
-		mask = update_supported_rate(cur_network->SupportedRates, supportRateNum);
+		mask = update_supported_rate(cur_network->SupportedRates,
+					     supportRateNum);
 
 		/* todo: support HT in IBSS */
 		break;
 	}
 
-	rate_bitmap = ODM_Get_Rate_Bitmap(&haldata->odmpriv, mac_id, mask, rssi_level);
+	rate_bitmap = ODM_Get_Rate_Bitmap(&haldata->odmpriv,
+					  mac_id, mask, rssi_level);
 	DBG_88E("%s => mac_id:%d, networkType:0x%02x, mask:0x%08x\n\t ==> rssi_level:%d, rate_bitmap:0x%08x\n",
 		__func__, mac_id, networkType, mask, rssi_level, rate_bitmap);
 
@@ -2023,9 +2206,9 @@ static void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_l
 static void SetBeaconRelatedRegisters8188EUsb(struct adapter *adapt)
 {
 	u32 value32;
-	struct mlme_ext_priv	*pmlmeext = &(adapt->mlmeextpriv);
+	struct mlme_ext_priv	*pmlmeext  = &(adapt->mlmeextpriv);
 	struct mlme_ext_info	*pmlmeinfo = &(pmlmeext->mlmext_info);
-	u32 bcn_ctrl_reg			= REG_BCN_CTRL;
+	u32 bcn_ctrl_reg		   = REG_BCN_CTRL;
 	/* reset TSF, enable update TSF, correcting TSF On Beacon */
 
 	/* BCN interval */
@@ -2051,7 +2234,8 @@ static void SetBeaconRelatedRegisters8188EUsb(struct adapter *adapt)
 
 	ResumeTxBeacon(adapt);
 
-	usb_write8(adapt, bcn_ctrl_reg, usb_read8(adapt, bcn_ctrl_reg) | BIT(1));
+	usb_write8(adapt, bcn_ctrl_reg,
+		   usb_read8(adapt, bcn_ctrl_reg) | BIT(1));
 }
 
 static void rtl8188eu_init_default_value(struct adapter *adapt)
@@ -2109,7 +2293,8 @@ void rtl8188eu_set_hal_ops(struct adapter *adapt)
 	halfunc->GetHalDefVarHandler = &GetHalDefVar8188EUsb;
 
 	halfunc->UpdateRAMaskHandler = &UpdateHalRAMask8188EUsb;
-	halfunc->SetBeaconRelatedRegistersHandler = &SetBeaconRelatedRegisters8188EUsb;
+	halfunc->SetBeaconRelatedRegistersHandler =
+		&SetBeaconRelatedRegisters8188EUsb;
 
 	halfunc->hal_xmit = &rtl8188eu_hal_xmit;
 	halfunc->mgnt_xmit = &rtl8188eu_mgnt_xmit;
-- 
2.7.2


