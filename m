X-GM-THRID: 6209462121071116288
X-Received: by 10.66.253.37 with SMTP id zx5mr10606699pac.37.1445753429734;
        Sat, 24 Oct 2015 23:10:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.60.65 with SMTP id f1ls632936igr.26.gmail; Sat, 24 Oct 2015
 23:10:29 -0700 (PDT)
X-Received: by 10.67.14.227 with SMTP id fj3mr10062960pad.17.1445753429414;
        Sat, 24 Oct 2015 23:10:29 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si3010043pbb.0.2015.10.24.23.10.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 23:10:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id z6so155546339pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 23:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ths3x8ArUp1NTrwzgGr4TXHBuP+DU/cA/9SSDVz1Wn8=;
        b=fwPng9G61afByx9L3all2/ca/mwhBvwuZvIMuP4jFxIt72eHq80NFURHvaiF7nUrNH
         FDnd+TBwlNhgL8bglEajZNOSFrY6ZSHhSgOS3UWBMCYYdRN5AruA/EdwrVGzUJIRViVe
         cr3V2EBsV9EJUy0YMNuK+S9t2PgzOGYbk+bQdn/IBbWCwiY4RJcf/OkqngXlAtxxKCb5
         1H81Utyajj6QpSwpISy7xppJ6xk9xlqyZEjA1XEvSG0ni6spR+zu8k6A3oqkDILE0fVe
         QgHW8Nliv1E19hsqKcM7MVQWa/D8RNSGHi6CJopFhkHMDcvZx3/EsXdZVpOJiEXpp1vp
         vdVQ==
X-Received: by 10.66.90.198 with SMTP id by6mr14815030pab.78.1445753429302;
        Sat, 24 Oct 2015 23:10:29 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ij3sm11776445pbb.62.2015.10.24.23.10.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 23:10:28 -0700 (PDT)
Date: Sat, 24 Oct 2015 23:10:28 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: r8723au: move function type in line with
 function name
Message-ID: <3732ea5b6267cd471ab10c5f211ec5017484cf3d.1445752141.git.amsfield22@gmail.com>
References: <cover.1445752141.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445752141.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Move function types to be adjacent to the function names in
declarations to improve readability.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 58 +++++++++++-------------------
 1 file changed, 21 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 0fb4726..bf27ea4 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -87,8 +87,7 @@ static void Efuse_PowerSwitch(struct rtw_adapter *padapter,
 	}
 }
 
-u16
-Efuse_GetCurrentSize23a(struct rtw_adapter *pAdapter, u8 efuseType)
+u16 Efuse_GetCurrentSize23a(struct rtw_adapter *pAdapter, u8 efuseType)
 {
 	u16 ret = 0;
 
@@ -101,8 +100,7 @@ Efuse_GetCurrentSize23a(struct rtw_adapter *pAdapter, u8 efuseType)
 }
 
 /* Get current efuse area enabled word */
-u8
-Efuse_CalculateWordCnts23a(u8 word_en)
+u8 Efuse_CalculateWordCnts23a(u8 word_en)
 {
 	return hweight8((~word_en) & 0xf);
 }
@@ -113,8 +111,7 @@ Efuse_CalculateWordCnts23a(u8 word_en)
  * Assumptions: 1. Boot from E-Fuse and successfully auto-load.
  *              2. PASSIVE_LEVEL (USB interface)
  */
-void
-ReadEFuseByte23a(struct rtw_adapter *Adapter, u16 _offset, u8 *pbuf)
+void ReadEFuseByte23a(struct rtw_adapter *Adapter, u16 _offset, u8 *pbuf)
 {
 	u32	value32;
 	u8	readbyte;
@@ -151,9 +148,8 @@ ReadEFuseByte23a(struct rtw_adapter *Adapter, u16 _offset, u8 *pbuf)
 	*pbuf = (u8)(value32 & 0xff);
 }
 
-void
-EFUSE_GetEfuseDefinition23a(struct rtw_adapter *pAdapter, u8 efuseType,
-			    u8 type, void *pOut)
+void EFUSE_GetEfuseDefinition23a(struct rtw_adapter *pAdapter, u8 efuseType,
+				 u8 type, void *pOut)
 {
 	u8 *pu1Tmp;
 	u16 *pu2Tmp;
@@ -235,8 +231,7 @@ EFUSE_GetEfuseDefinition23a(struct rtw_adapter *pAdapter, u8 efuseType,
 }
 
 /* Copy from WMAC for EFUSE read 1 byte. */
-u8
-EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
+u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 {
 	u8	data;
 	u8	Bytetemp = {0x00};
@@ -279,10 +274,8 @@ EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 }
 
 /* Copy from WMAC fot EFUSE write 1 byte. */
-void
-EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);
-void
-EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
+void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);
+void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
 {
 	u8	Bytetemp = {0x00};
 	u8	temp = {0x00};
@@ -324,8 +317,7 @@ EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
 }
 
 /* Read one byte from real Efuse. */
-int
-efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
+int efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 {
 	u8	tmpidx = 0;
 	int	bResult;
@@ -353,8 +345,7 @@ efuse_OneByteRead23a(struct rtw_adapter *pAdapter, u16 addr, u8 *data)
 }
 
 /* Write one byte to reald Efuse. */
-int
-efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
+int efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 {
 	u8	tmpidx = 0;
 	int	bResult;
@@ -385,10 +376,7 @@ efuse_OneByteWrite23a(struct rtw_adapter *pAdapter, u16 addr, u8 data)
 }
 
 /* Read allowed word in current efuse section data. */
-void
-efuse_WordEnableDataRead23a(u8	word_en,
-			 u8	*sourdata,
-			 u8	*targetdata)
+void efuse_WordEnableDataRead23a(u8 word_en, u8 *sourdata, u8 *targetdata)
 {
 	if (!(word_en&BIT(0))) {
 		targetdata[0] = sourdata[0];
@@ -514,10 +502,8 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
 }
 
 /* Read All Efuse content */
-void
-Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
-void
-Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
+void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
+void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
 {
 	u16	mapLen = 0;
 
@@ -538,16 +524,16 @@ Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
  *
  * Read from efuse init map by one/two/four bytes
  */
-static void
-efuse_ShadowRead1Byte(struct rtw_adapter *pAdapter, u16 Offset, u8 *Value)
+static void efuse_ShadowRead1Byte(struct rtw_adapter *pAdapter, u16 Offset,
+				  u8 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);
 
 	*Value = pEEPROM->efuse_eeprom_data[Offset];
 }
 
-static void
-efuse_ShadowRead2Byte(struct rtw_adapter *pAdapter, u16 Offset, u16 *Value)
+static void efuse_ShadowRead2Byte(struct rtw_adapter *pAdapter, u16 Offset,
+				  u16 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);
 
@@ -555,8 +541,8 @@ efuse_ShadowRead2Byte(struct rtw_adapter *pAdapter, u16 Offset, u16 *Value)
 	*Value |= pEEPROM->efuse_eeprom_data[Offset+1]<<8;
 }
 
-static void
-efuse_ShadowRead4Byte(struct rtw_adapter *pAdapter, u16 Offset, u32 *Value)
+static void efuse_ShadowRead4Byte(struct rtw_adapter *pAdapter, u16 Offset,
+				  u32 *Value)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);
 
@@ -567,7 +553,6 @@ efuse_ShadowRead4Byte(struct rtw_adapter *pAdapter, u16 Offset, u32 *Value)
 }
 
 /* Transfer current EFUSE content to shadow init and modify map. */
-
 void EFUSE_ShadowMapUpdate23a(struct rtw_adapter *pAdapter, u8 efuseType)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);
@@ -584,9 +569,8 @@ void EFUSE_ShadowMapUpdate23a(struct rtw_adapter *pAdapter, u8 efuseType)
 }
 
 /* Read from efuse init map */
-void
-EFUSE_ShadowRead23a(struct rtw_adapter *pAdapter,
-		    u8 Type, u16 Offset, u32 *Value)
+void EFUSE_ShadowRead23a(struct rtw_adapter *pAdapter, u8 Type,
+			 u16 Offset, u32 *Value)
 {
 	if (Type == 1)
 		efuse_ShadowRead1Byte(pAdapter, Offset, (u8 *)Value);
-- 
2.1.4


