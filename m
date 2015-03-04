X-GM-THRID: 6406607470592
X-Received: by 10.112.147.35 with SMTP id th3mr321266lbb.15.1425447255042;
        Tue, 03 Mar 2015 21:34:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls131326lab.107.gmail; Tue, 03
 Mar 2015 21:34:13 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr342043lah.8.1425447253593;
        Tue, 03 Mar 2015 21:34:13 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id r6si243622wix.0.2015.03.03.21.34.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:34:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id l15so27956140wiw.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1iwktRFwZb5RYDYvpmI0h02HnHqV4gNYmGQ0Y+/QDmA=;
        b=AITX577MB3E32bDBixvwqd92pKUEYgUsYSpfydMuWR7IICWiw7uOhcv90FpXHpwJB0
         m96gBbdSlhdnzLWsz0JqQZdv/z5eIY9e4mPg6IaFUaZgq0iU27Pp+wv7HCyXM52TFssA
         UkL7/bHoyz456p32vkk5CokXQHmIfpPWPBph1FLDEEs4xKPyPwIuE+mwnmyaG1K1HNCD
         6qPcKf9nRPKt18UiZxyn3VORTQoNv4xJgpoISCQzO6eSKBP9Fxd/ZlvNqXbmYdnih4iv
         0tqgQjpsTf7WyWQaoiE4HfJGS9KGpC4EXpA/3L/sWosOj3VUTCcHpueBCQHVx1Nb7+4g
         QxfQ==
X-Received: by 10.194.11.9 with SMTP id m9mr4327060wjb.82.1425447253499;
        Tue, 03 Mar 2015 21:34:13 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id hi6sm4247234wjc.34.2015.03.03.21.34.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:34:12 -0800 (PST)
Date: Wed, 4 Mar 2015 07:34:07 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 10/13] staging: rtl8723au: remove extra parentheses around
 right bit shift operations
Message-ID: <d7817c024bd2e553250826c7127e1be8e3aaa06c.1425446659.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8723au/hal/odm.c               | 6 +++---
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/odm.c b/drivers/staging/rtl8723au/hal/odm.c
index 375f85d..e52a8e3 100644
--- a/drivers/staging/rtl8723au/hal/odm.c
+++ b/drivers/staging/rtl8723au/hal/odm.c
@@ -778,15 +778,15 @@ void odm_FalseAlarmCounterStatistics23a(struct dm_odm_t *pDM_Odm)
 	ret_value =
 		ODM_GetBBReg(pDM_Odm, ODM_REG_OFDM_FA_TYPE1_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_Fast_Fsync = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_SB_Search_fail = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_SB_Search_fail = (ret_value & 0xffff0000)>>16;
 	ret_value =
 		ODM_GetBBReg(pDM_Odm, ODM_REG_OFDM_FA_TYPE2_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_OFDM_CCA = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Parity_Fail = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_Parity_Fail = (ret_value & 0xffff0000)>>16;
 	ret_value =
 		ODM_GetBBReg(pDM_Odm, ODM_REG_OFDM_FA_TYPE3_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_Rate_Illegal = (ret_value&0xffff);
-	FalseAlmCnt->Cnt_Crc8_fail = ((ret_value&0xffff0000)>>16);
+	FalseAlmCnt->Cnt_Crc8_fail = (ret_value & 0xffff0000)>>16;
 	ret_value =
 		ODM_GetBBReg(pDM_Odm, ODM_REG_OFDM_FA_TYPE4_11N, bMaskDWord);
 	FalseAlmCnt->Cnt_Mcs_fail = (ret_value&0xffff);
diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
index a5eadd4..3bf2f7b 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
@@ -755,7 +755,7 @@ void rtl8723a_read_chip_version(struct rtw_adapter *padapter)
 
 	value32 = rtl8723au_read32(padapter, REG_GPIO_OUTSTS);
 	/*  ROM code version. */
-	ChipVersion.ROMVer = ((value32 & RF_RL_ID) >> 20);
+	ChipVersion.ROMVer = (value32 & RF_RL_ID) >> 20;
 
 	/*  For multi-function consideration. Added by Roger, 2010.10.06. */
 	pHalData->MultiFunc = RT_MULTI_FUNC_NONE;
@@ -1747,8 +1747,8 @@ Hal_EfuseParseBTCoexistInfo_8723A(struct rtw_adapter *padapter,
 		/*  eeprom spec */
 		tempval = hwinfo[RF_OPTION4_8723A];
 		pHalData->EEPROMBluetoothAntNum = (tempval & 0x1);
-		pHalData->EEPROMBluetoothAntIsolation = ((tempval & 0x10) >> 4);
-		pHalData->EEPROMBluetoothRadioShared = ((tempval & 0x20) >> 5);
+		pHalData->EEPROMBluetoothAntIsolation = (tempval & 0x10) >> 4;
+		pHalData->EEPROMBluetoothRadioShared = (tempval & 0x20) >> 5;
 	} else {
 		pHalData->EEPROMBluetoothCoexist = 0;
 		pHalData->EEPROMBluetoothType = BT_RTL8723A;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

