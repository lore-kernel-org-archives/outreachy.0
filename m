X-GM-THRID: 6406607470592
X-Received: by 10.180.39.164 with SMTP id q4mr790390wik.5.1425447194147;
        Tue, 03 Mar 2015 21:33:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.39 with SMTP id ev7ls44308wib.18.gmail; Tue, 03 Mar
 2015 21:33:12 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr790373wik.5.1425447192851;
        Tue, 03 Mar 2015 21:33:12 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id v5si528248wif.3.2015.03.03.21.33.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:33:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so27953816wiw.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=UMhT5GV/fClER86UkHr9QXMrcK9W9MBjCsLzPQZysYY=;
        b=Zx+QLIGkiuLv0bqQ3wQNSrYMi/udRsNWEL6r0DRZ/Y/NZ7ZnBJNTmZ1p8Mednxcytk
         Vjx1WVdLgT7aD1cLfdyo0doY7eRNnN2J7gUki98VLXl6ac6DjlCzrnOrdFN8d/Eq5MNY
         olyKQAaDkXFXTU4rPF5TusEUrQ4jdH2IN+UZHLqqyAj7JulzGpz1HbPuYgDAlX9my1Y0
         /Wv+OVCGORPSYODd7Cp45XTb35NCSTJXmM60Kqi8ntH+XWJ1JaC1o9lUilGw4qKEKJRz
         zhL+F2XAawX1j8EKgRWwg2LD8xDbJml+yKLuWvGAaLC21VhVo/drFfUNeE8Rx9U0oR2t
         01gA==
X-Received: by 10.180.90.237 with SMTP id bz13mr52261188wib.45.1425447191815;
        Tue, 03 Mar 2015 21:33:11 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id bf8sm2603678wjb.37.2015.03.03.21.33.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:33:11 -0800 (PST)
Date: Wed, 4 Mar 2015 07:33:06 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 08/13] staging: rtl8192u: remove extra parentheses around
 right bit shift operation
Message-ID: <076f797b7a1c3417bb6fe5d027a4a21d5e33b072.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The cases handled are when the resultant value is assigned to
a variable or when a shift operation is carried out for a function
argument. The issues were detected and resolved using the following
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

Some coding style issues were handled manually to avoid
checkpatch warnings and errors.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 9de4412..bab7751 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2310,11 +2310,11 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 	}
 
 	if (bLoad_From_EEPOM) {
-		tmpValue = eprom_read(dev, (EEPROM_VID>>1));
+		tmpValue = eprom_read(dev, EEPROM_VID>>1);
 		priv->eeprom_vid = endian_swap(&tmpValue);
-		priv->eeprom_pid = eprom_read(dev, (EEPROM_PID>>1));
-		tmpValue = eprom_read(dev, (EEPROM_ChannelPlan>>1));
-		priv->eeprom_ChannelPlan = ((tmpValue&0xff00)>>8);
+		priv->eeprom_pid = eprom_read(dev, EEPROM_PID>>1);
+		tmpValue = eprom_read(dev, EEPROM_ChannelPlan>>1);
+		priv->eeprom_ChannelPlan = (tmpValue & 0xff00)>>8;
 		priv->btxpowerdata_readfromEEPORM = true;
 		priv->eeprom_CustomerID = eprom_read(dev, (EEPROM_Customer_ID>>1)) >>8;
 	} else {
@@ -2397,7 +2397,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 			}
 		} else if (priv->EEPROM_Def_Ver == 1) {
 			if (bLoad_From_EEPOM) {
-				tmpValue = eprom_read(dev, (EEPROM_TxPwIndex_CCK_V1>>1));
+				tmpValue = eprom_read(dev,
+						EEPROM_TxPwIndex_CCK_V1 >> 1);
 				tmpValue = (tmpValue & 0xff00) >> 8;
 			} else {
 				tmpValue = 0x10;
@@ -2410,7 +2411,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 				tmpValue = 0x1010;
 			*((u16 *)(&priv->EEPROMTxPowerLevelCCK_V1[1])) = tmpValue;
 			if (bLoad_From_EEPOM)
-				tmpValue = eprom_read(dev, (EEPROM_TxPwIndex_OFDM_24G_V1>>1));
+				tmpValue = eprom_read(dev,
+					EEPROM_TxPwIndex_OFDM_24G_V1 >> 1);
 			else
 				tmpValue = 0x1010;
 			*((u16 *)(&priv->EEPROMTxPowerLevelOFDM24G[0])) = tmpValue;
@@ -2453,7 +2455,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 		// Antenna B gain offset to antenna A, bit0~3
 		priv->AntennaTxPwDiff[0] = (priv->EEPROMTxPowerDiff & 0xf);
 		// Antenna C gain offset to antenna A, bit4~7
-		priv->AntennaTxPwDiff[1] = ((priv->EEPROMTxPowerDiff & 0xf0)>>4);
+		priv->AntennaTxPwDiff[1] = (priv->EEPROMTxPowerDiff & 0xf0)>>4;
 		// CrystalCap, bit12~15
 		priv->CrystalCap = priv->EEPROMCrystalCap;
 		// ThermalMeter, bit0~3 for RFIC1, bit4~7 for RFIC2
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

