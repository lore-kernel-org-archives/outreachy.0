X-GM-THRID: 6406607470592
X-Received: by 10.180.13.98 with SMTP id g2mr3498752wic.3.1425447124450;
        Tue, 03 Mar 2015 21:32:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls130909lac.92.gmail; Tue, 03 Mar
 2015 21:32:02 -0800 (PST)
X-Received: by 10.112.40.81 with SMTP id v17mr335338lbk.5.1425447122963;
        Tue, 03 Mar 2015 21:32:02 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id o3si1016130wib.2.2015.03.03.21.32.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:32:02 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id k11so44015636wes.11
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fRcDTF4Zye9XsXzZHKpy4J7VJNHOUXB9sHOK9e00bVU=;
        b=CdUs9d5QYyQOdB3qlVX+N+dhlO5T7u14jKREjHYuaGL2WkvFnlkgsKv0PpCXW7Mbt0
         5sHUzhyxWiixmT1kXk547pB2Cn8RRv9PlRqImTaaeTlSFsciBxaCtWccL8XpMFNGVaCb
         D8qWCXZNl+dzAy8mNkULIaBAVfFpoariQ1m23ka1CqsGGZGE06wuaWH6iXwSQXNg6ozS
         4OrDgTYyiTXNHG+NJtLLZJlrcFgADQwcs6TXJoMyHDmut0qInHoERsBF5H4RiVq6RlWw
         rS0hwk+zauIEkcK1rQMnSSKsweZh6l1g61wKhEyKVOQ0lmdqNosMDm9T389uob/5Wp3E
         sKuA==
X-Received: by 10.180.106.103 with SMTP id gt7mr52397885wib.59.1425447122888;
        Tue, 03 Mar 2015 21:32:02 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id bx3sm4260554wjc.21.2015.03.03.21.32.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:32:02 -0800 (PST)
Date: Wed, 4 Mar 2015 07:31:56 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/13] staging: rtl8188eu: remove extra parentheses around
 right bit shift operations
Message-ID: <3c1a9ea9e76d3bc02401c78b4ee31b32a6ca4ccc.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operations.
The cases handled here are when resultant values are assigned to
variables. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c        | 2 +-
 drivers/staging/rtl8188eu/hal/odm.c               | 8 ++++----
 drivers/staging/rtl8188eu/hal/odm_HWConfig.c      | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c | 3 ++-
 4 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 8816d11..defec6b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -139,7 +139,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	while ((rtemp8 != 0xFF) && (eFuse_Addr < EFUSE_REAL_CONTENT_LEN_88E)) {
 		/*  Check PG header for section num. */
 		if ((rtemp8 & 0x1F) == 0x0F) {		/* extended header */
-			u1temp = ((rtemp8 & 0xE0) >> 5);
+			u1temp = (rtemp8 & 0xE0) >> 5;
 			rtemp8 = *(phymap+eFuse_Addr);
 			if ((rtemp8 & 0x0F) == 0x0F) {
 				eFuse_Addr++;
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index 06477e8..28b5e7b 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -741,13 +741,13 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE1_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_Fast_Fsync = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_SB_Search_fail = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_SB_Search_fail = (ret_value & 0xffff0000)>>16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE2_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_OFDM_CCA = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Parity_Fail = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_Parity_Fail = (ret_value & 0xffff0000)>>16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE3_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_Rate_Illegal = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Crc8_fail = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_Crc8_fail = (ret_value & 0xffff0000)>>16;
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_OFDM_FA_TYPE4_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_Mcs_fail = (ret_value&0xffff);
 
@@ -757,7 +757,7 @@ void odm_FalseAlarmCounterStatistics(struct odm_dm_struct *pDM_Odm)
 
 	ret_value = phy_query_bb_reg(adapter, ODM_REG_SC_CNT_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_BW_LSC = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_BW_USC = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_BW_USC = (ret_value & 0xffff0000)>>16;
 
 	/* hold cck counter */
 	phy_set_bb_reg(adapter, ODM_REG_CCK_FA_RST_11N, BIT12, 1);
diff --git a/drivers/staging/rtl8188eu/hal/odm_HWConfig.c b/drivers/staging/rtl8188eu/hal/odm_HWConfig.c
index 29f87df..f8fae18 100644
--- a/drivers/staging/rtl8188eu/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_HWConfig.c
@@ -123,7 +123,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 		/* 2011.11.28 LukeLee: 88E use different LNA & VGA gain table */
 		/* The RSSI formula should be modified according to the gain table */
 		/* In 88E, cck_highpwr is always set to 1 */
-		LNA_idx = ((cck_agc_rpt & 0xE0) >> 5);
+		LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
 		VGA_idx = (cck_agc_rpt & 0x1F);
 		switch (LNA_idx) {
 		case 7:
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 3222d8d..7904d22 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -596,7 +596,8 @@ void Hal_EfuseParseBoardType88E(struct adapter *pAdapter, u8 *hwinfo, bool AutoL
 	struct hal_data_8188e *pHalData = GET_HAL_DATA(pAdapter);
 
 	if (!AutoLoadFail)
-		pHalData->BoardType = ((hwinfo[EEPROM_RF_BOARD_OPTION_88E]&0xE0)>>5);
+		pHalData->BoardType = (hwinfo[EEPROM_RF_BOARD_OPTION_88E]
+					& 0xE0) >> 5;
 	else
 		pHalData->BoardType = 0;
 	DBG_88E("Board Type: 0x%2x\n", pHalData->BoardType);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

