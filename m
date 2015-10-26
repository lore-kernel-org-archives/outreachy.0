X-GM-THRID: 6209462121071116288
X-Received: by 10.107.153.146 with SMTP id b140mr23873518ioe.30.1445884622676;
        Mon, 26 Oct 2015 11:37:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.19 with SMTP id 19ls3220788qgm.67.gmail; Mon, 26 Oct
 2015 11:37:02 -0700 (PDT)
X-Received: by 10.140.202.202 with SMTP id x193mr31062489qha.12.1445884622249;
        Mon, 26 Oct 2015 11:37:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si3638931pbc.1.2015.10.26.11.37.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 11:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so195467012pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 11:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=00PFC6ffJ2n+PZy0PBqao8QRiM8yrnLAuDBuqKy9I94=;
        b=Moh5JnPOWdu9KjnITTKVyNqeJb5xfSdP6OuKK0QCLPKeN1nU/GwtpTChXQD00B6M4j
         oz9nKFp7fXEJLl0/tZ0Xx/looG/pZiURnITmttvQ7I8f01MX7f8SWZ6PwVx5jIBqXxqi
         RW+ok1Gq86LDIxVOx643Hlk61lrqT4QhzeUKJizvcgIfJoxxqQVDAdzzzNlQIGujEV6z
         p7YkkxSeBKOiLM4F+dD/Dd2Pl/KlQHWqjwYVuAZHc2fBRJrUA542Ct6NEbaC8NdhHRl9
         w+nChZSxc1N8vniSYARgm8GFOMIZImsM4ZIPU+3JeBUYY3U9qBRMGkmir0EXkc5RXo9M
         BT4Q==
X-Received: by 10.68.252.194 with SMTP id zu2mr23590297pbc.58.1445884622089;
        Mon, 26 Oct 2015 11:37:02 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id wh10sm8608307pab.2.2015.10.26.11.37.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 11:37:01 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: r8723au: use kernel preferred style for commenting
Date: Mon, 26 Oct 2015 11:36:56 -0700
Message-Id: <7e032c7f338f9ddcfc779bfdf462fed4ffbe6811.1445883001.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445883001.git.amsfield22@gmail.com>
References: <cover.1445883001.git.amsfield22@gmail.com>

Reworked comments per kernel coding style to improve readability.

Corrects checkpatch.pl:
WARNING: Block comments use * on subsequent lines
WARNING: line over 80 characters

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 242 +++++++----------------------
 1 file changed, 60 insertions(+), 182 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 92a34db..f847374 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -21,34 +21,17 @@
 #include <rtl8723a_hal.h>
 #include <usb_ops_linux.h>
 
-/*------------------------Define local variable------------------------------*/
-
-/*  */
 #define REG_EFUSE_CTRL		0x0030
-#define EFUSE_CTRL			REG_EFUSE_CTRL		/*  E-Fuse Control. */
-/*  */
+#define EFUSE_CTRL		REG_EFUSE_CTRL	/* E-Fuse Control */
 
 #define VOLTAGE_V25		0x03
 #define LDOE25_SHIFT		28
 
-/*-----------------------------------------------------------------------------
- * Function:	Efuse_PowerSwitch
- *
- * Overview:	When we want to enable write operation, we should change to
- *				pwr on state. When we stop write, we should switch to 500k mode
- *				and disable LDO 2.5V.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/17/2008	MHC		Create Version 0.
- *
- *---------------------------------------------------------------------------*/
+/*
+ * When we want to enable write operation, we should change to
+ * pwr on state. When we stop write, we should switch to 500k mode
+ * and disable LDO 2.5V.
+ */
 static void Efuse_PowerSwitch(struct rtw_adapter *padapter,
 			      u8 bWrite, u8 PwrState)
 {
@@ -58,22 +41,26 @@ static void Efuse_PowerSwitch(struct rtw_adapter *padapter,
 	if (PwrState == true) {
 		rtl8723au_write8(padapter, REG_EFUSE_ACCESS, EFUSE_ACCESS_ON);
 
-		/*  1.2V Power: From VDDON with Power
-		    Cut(0x0000h[15]), default valid */
+		/*
+		 * 1.2V Power: From VDDON with Power
+		 * Cut(0x0000h[15]), default valid
+		 */
 		tmpV16 = rtl8723au_read16(padapter, REG_SYS_ISO_CTRL);
 		if (!(tmpV16 & PWC_EV12V)) {
 			tmpV16 |= PWC_EV12V;
 			rtl8723au_write16(padapter, REG_SYS_ISO_CTRL, tmpV16);
 		}
-		/*  Reset: 0x0000h[28], default valid */
+		/* Reset: 0x0000h[28], default valid */
 		tmpV16 = rtl8723au_read16(padapter, REG_SYS_FUNC_EN);
 		if (!(tmpV16 & FEN_ELDR)) {
 			tmpV16 |= FEN_ELDR;
 			rtl8723au_write16(padapter, REG_SYS_FUNC_EN, tmpV16);
 		}
 
-		/*  Clock: Gated(0x0008h[5]) 8M(0x0008h[1]) clock
-		    from ANA, default valid */
+		/*
+		 * Clock: Gated(0x0008h[5]) 8M(0x0008h[1])
+		 * clock from ANA, default valid
+		 */
 		tmpV16 = rtl8723au_read16(padapter, REG_SYS_CLKR);
 		if ((!(tmpV16 & LOADER_CLK_EN)) || (!(tmpV16 & ANA8M))) {
 			tmpV16 |= (LOADER_CLK_EN | ANA8M);
@@ -113,24 +100,19 @@ Efuse_GetCurrentSize23a(struct rtw_adapter *pAdapter, u8 efuseType)
 	return ret;
 }
 
-/*  11/16/2008 MH Add description. Get current efuse area enabled word!!. */
+/* Get current efuse area enabled word */
 u8
 Efuse_CalculateWordCnts23a(u8 word_en)
 {
 	return hweight8((~word_en) & 0xf);
 }
 
-/*  */
-/*	Description: */
-/*		Execute E-Fuse read byte operation. */
-/*		Referred from SD1 Richard. */
-/*  */
-/*	Assumption: */
-/*		1. Boot from E-Fuse and successfully auto-load. */
-/*		2. PASSIVE_LEVEL (USB interface) */
-/*  */
-/*	Created by Roger, 2008.10.21. */
-/*  */
+/*
+ * Description: Execute E-Fuse read byte operation.
+ *
+ * Assumptions: 1. Boot from E-Fuse and successfully auto-load.
+ *              2. PASSIVE_LEVEL (USB interface)
+ */
 void
 ReadEFuseByte23a(struct rtw_adapter *Adapter, u16 _offset, u8 *pbuf)
 {
@@ -156,10 +138,13 @@ ReadEFuseByte23a(struct rtw_adapter *Adapter, u16 _offset, u8 *pbuf)
 		retry++;
 	}
 
-	/*  20100205 Joseph: Add delay suggested by SD1 Victor. */
-	/*  This fix the problem that Efuse read error in high temperature condition. */
-	/*  Designer says that there shall be some delay after ready bit is set, or the */
-	/*  result will always stay on last data we read. */
+	/*
+	 * Added suggested delay. This fixes the problem that
+	 * Efuse read error in high temperature condition.
+	 * Designer says that there shall be some delay after
+	 * ready bit is set, or the result will always stay
+	 * on last data we read.
+	 */
 	udelay(50);
 	value32 = rtl8723au_read32(Adapter, EFUSE_CTRL);
 
@@ -249,22 +234,7 @@ EFUSE_GetEfuseDefinition23a(struct rtw_adapter *pAdapter, u8 efuseType,
 	}
 }
 
-/*-----------------------------------------------------------------------------
- * Function:	EFUSE_Read1Byte23a
- *
- * Overview:	Copy from WMAC fot EFUSE read 1 byte.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 09/23/2008	MHC		Copy from WMAC.
- *
- *---------------------------------------------------------------------------*/
+/* Copy from WMAC for EFUSE read 1 byte. */
 u8
 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 {
@@ -306,25 +276,9 @@ EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 		return data;
 	} else
 		return 0xFF;
-}/* EFUSE_Read1Byte23a */
-
-/*-----------------------------------------------------------------------------
- * Function:	EFUSE_Write1Byte
- *
- * Overview:	Copy from WMAC fot EFUSE write 1 byte.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 09/23/2008	MHC		Copy from WMAC.
- *
- *---------------------------------------------------------------------------*/
+}
 
+/* Copy from WMAC fot EFUSE write 1 byte. */
 void
 EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);
 void
@@ -367,22 +321,22 @@ EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
 			}
 		}
 	}
-}/* EFUSE_Write1Byte */
+}
 
-/*  11/16/2008 MH Read one byte from real Efuse. */
+/* Read one byte from real Efuse. */
 int
 efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 {
 	u8	tmpidx = 0;
 	int	bResult;
 
-	/*  -----------------e-fuse reg ctrl --------------------------------- */
+	/*  -----------------e-fuse reg ctrl ---------------------------- */
 	/* address */
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr&0xff));
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+2, ((u8)((addr>>8) &0x03)) |
 	(rtl8723au_read8(pAdapter, EFUSE_CTRL+2)&0xFC));
 
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+3,  0x72);/* read cmd */
+	rtl8723au_write8(pAdapter, EFUSE_CTRL+3,  0x72); /* read cmd */
 
 	while(!(0x80 &rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx<100))
 		tmpidx++;
@@ -396,7 +350,7 @@ efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 	return bResult;
 }
 
-/*  11/16/2008 MH Write one byte to reald Efuse. */
+/* Write one byte to reald Efuse. */
 int
 efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 {
@@ -405,14 +359,14 @@ efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 
 	/* return	0; */
 
-	/*  -----------------e-fuse reg ctrl --------------------------------- */
+	/*  -----------------e-fuse reg ctrl ------------------------- */
 	/* address */
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr&0xff));
 	rtl8723au_write8(pAdapter, EFUSE_CTRL+2,
 	(rtl8723au_read8(pAdapter, EFUSE_CTRL+2)&0xFC)|(u8)((addr>>8)&0x03));
-	rtl8723au_write8(pAdapter, EFUSE_CTRL, data);/* data */
+	rtl8723au_write8(pAdapter, EFUSE_CTRL, data); /* data */
 
-	rtl8723au_write8(pAdapter, EFUSE_CTRL+3, 0xF2);/* write cmd */
+	rtl8723au_write8(pAdapter, EFUSE_CTRL+3, 0xF2); /* write cmd */
 
 	while((0x80 & rtl8723au_read8(pAdapter, EFUSE_CTRL+3)) &&
 	      (tmpidx<100)) {
@@ -427,23 +381,7 @@ efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 	return bResult;
 }
 
-/*-----------------------------------------------------------------------------
- * Function:	efuse_WordEnableDataRead23a
- *
- * Overview:	Read allowed word in current efuse section data.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/16/2008	MHC		Create Version 0.
- * 11/21/2008	MHC		Fix Write bug when we only enable late word.
- *
- *---------------------------------------------------------------------------*/
+/* Read allowed word in current efuse section data. */
 void
 efuse_WordEnableDataRead23a(u8	word_en,
 			 u8	*sourdata,
@@ -477,9 +415,7 @@ static int efuse_write8(struct rtw_adapter *padapter, u16 address, u8 *value)
 	return efuse_OneByteWrite23a(padapter, address, *value);
 }
 
-/*
- * read/write raw efuse data
- */
+/* read/write raw efuse data */
 int rtw_efuse_access23a(struct rtw_adapter *padapter, u8 bWrite, u16 start_addr,
 			u16 cnts, u8 *data)
 {
@@ -507,7 +443,7 @@ int rtw_efuse_access23a(struct rtw_adapter *padapter, u8 bWrite, u16 start_addr,
 
 	Efuse_PowerSwitch(padapter, bWrite, true);
 
-	/*  e-fuse one byte read / write */
+	/* e-fuse one byte read/write */
 	for (i = 0; i < cnts; i++) {
 		if (start_addr >= real_content_len) {
 			res = _FAIL;
@@ -523,7 +459,7 @@ int rtw_efuse_access23a(struct rtw_adapter *padapter, u8 bWrite, u16 start_addr,
 
 	return res;
 }
-/*  */
+
 u16 efuse_GetMaxSize23a(struct rtw_adapter *padapter)
 {
 	u16 max_size;
@@ -532,7 +468,7 @@ u16 efuse_GetMaxSize23a(struct rtw_adapter *padapter)
 				 (void *)&max_size);
 	return max_size;
 }
-/*  */
+
 int rtw_efuse_map_read23a(struct rtw_adapter *padapter,
 			  u16 addr, u16 cnts, u8 *data)
 {
@@ -573,22 +509,7 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
 	return _SUCCESS;
 }
 
-/*-----------------------------------------------------------------------------
- * Function:	Efuse_ReadAllMap
- *
- * Overview:	Read All Efuse content
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/11/2008	MHC		Create Version 0.
- *
- *---------------------------------------------------------------------------*/
+/* Read All Efuse content */
 void
 Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
 void
@@ -606,33 +527,21 @@ Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
 	Efuse_PowerSwitch(pAdapter, false, false);
 }
 
-/*-----------------------------------------------------------------------------
- * Function:	efuse_ShadowRead1Byte
- *			efuse_ShadowRead2Byte
- *			efuse_ShadowRead4Byte
- *
- * Overview:	Read from efuse init map by one/two/four bytes !!!!!
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/12/2008	MHC		Create Version 0.
+/*
+ * Functions:	efuse_ShadowRead1Byte
+ *		efuse_ShadowRead2Byte
+ *		efuse_ShadowRead4Byte
  *
- *---------------------------------------------------------------------------*/
+ * Read from efuse init map by one/two/four bytes
+ */
 static void
 efuse_ShadowRead1Byte(struct rtw_adapter *pAdapter, u16 Offset, u8 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);
 
 	*Value = pEEPROM->efuse_eeprom_data[Offset];
-}	/*  EFUSE_ShadowRead23a1Byte */
+}
 
-/* Read Two Bytes */
 static void
 efuse_ShadowRead2Byte(struct rtw_adapter *pAdapter, u16 Offset, u16 *Value)
 {
@@ -640,9 +549,8 @@ efuse_ShadowRead2Byte(struct rtw_adapter *pAdapter, u16 Offset, u16 *Value)
 
 	*Value = pEEPROM->efuse_eeprom_data[Offset];
 	*Value |= pEEPROM->efuse_eeprom_data[Offset+1]<<8;
-}	/*  EFUSE_ShadowRead23a2Byte */
+}
 
-/* Read Four Bytes */
 static void
 efuse_ShadowRead4Byte(struct rtw_adapter *pAdapter, u16 Offset, u32 *Value)
 {
@@ -652,24 +560,10 @@ efuse_ShadowRead4Byte(struct rtw_adapter *pAdapter, u16 Offset, u32 *Value)
 	*Value |= pEEPROM->efuse_eeprom_data[Offset+1]<<8;
 	*Value |= pEEPROM->efuse_eeprom_data[Offset+2]<<16;
 	*Value |= pEEPROM->efuse_eeprom_data[Offset+3]<<24;
-}	/*  efuse_ShadowRead4Byte */
+}
+
+/* Transfer current EFUSE content to shadow init and modify map. */
 
-/*-----------------------------------------------------------------------------
- * Function:	EFUSE_ShadowMapUpdate23a
- *
- * Overview:	Transfer current EFUSE content to shadow init and modify map.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/13/2008	MHC		Create Version 0.
- *
- *---------------------------------------------------------------------------*/
 void EFUSE_ShadowMapUpdate23a(struct rtw_adapter *pAdapter, u8 efuseType)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);
@@ -683,25 +577,9 @@ void EFUSE_ShadowMapUpdate23a(struct rtw_adapter *pAdapter, u8 efuseType)
 	else
 		Efuse_ReadAllMap(pAdapter, efuseType,
 				 pEEPROM->efuse_eeprom_data);
+}
 
-}/*  EFUSE_ShadowMapUpdate23a */
-
-/*-----------------------------------------------------------------------------
- * Function:	EFUSE_ShadowRead23a
- *
- * Overview:	Read from efuse init map !!!!!
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
- *
- * Revised History:
- * When			Who		Remark
- * 11/12/2008	MHC		Create Version 0.
- *
- *---------------------------------------------------------------------------*/
+/* Read from efuse init map */
 void
 EFUSE_ShadowRead23a(struct rtw_adapter *pAdapter,
 		    u8 Type, u16 Offset, u32 *Value)
@@ -712,4 +590,4 @@ EFUSE_ShadowRead23a(struct rtw_adapter *pAdapter,
 		efuse_ShadowRead2Byte(pAdapter, Offset, (u16 *)Value);
 	else if (Type == 4)
 		efuse_ShadowRead4Byte(pAdapter, Offset, (u32 *)Value);
-}	/*  EFUSE_ShadowRead23a */
+}
-- 
2.1.4


