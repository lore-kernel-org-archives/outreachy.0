X-GM-THRID: 6406607470592
X-Received: by 10.112.77.101 with SMTP id r5mr359683lbw.4.1425447156184;
        Tue, 03 Mar 2015 21:32:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls121307laa.66.gmail; Tue, 03 Mar
 2015 21:32:35 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr359676lbw.4.1425447155737;
        Tue, 03 Mar 2015 21:32:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id o3si1016216wib.2.2015.03.03.21.32.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:32:35 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so27933947wid.1
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=o/MRVRaGT+UqppCNekKF5QN9N+oPpt//ZP6lukJEniw=;
        b=faDCU2qIizf0wTbVAu3MZzlzxVy3cyDr87MJBbo1z83DEv7Wi4a3H/FDzeeWd5DDCo
         zf0zFflm5tow/Lm4UlWQRf0Sf1xjfuYLLWAS/E7jbUBZkCiUNxB5AFJ+nYbW+avXkxqB
         HaR3zlj9WGelADVk1+a2TX2otK8zzs5mmEtCCavN4oFf/5HV6Zz1VU613QILCEDZWpnu
         bQhV5j9T/6aQ1qacztmroRoy9r/+RHPctcmSZ7iqb/f4A7C8dZ7cs/9TD7yYdtHK3J+h
         Ho3igKO7Xhn8UtjJ38AA07+FJRxU6ZKm4Hazw3SjPonJX1Fn4RB9nejsWLfKByUJNkhD
         gCxw==
X-Received: by 10.194.236.200 with SMTP id uw8mr4381961wjc.10.1425447155649;
        Tue, 03 Mar 2015 21:32:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id bf8sm2601984wjb.37.2015.03.03.21.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:32:35 -0800 (PST)
Date: Wed, 4 Mar 2015 07:32:30 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/13] staging: rtl8192e: remove extra parentheses around
 right bit shift operation
Message-ID: <f3ca7e96aaf101889e2bb3331b9c927b0e17f5dd.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The cases handled are  when the resultant value is assigned to
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
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 28 +++++++++++++-------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index a85fb71..08735cb 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -334,17 +334,17 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 	}
 
 	if (!priv->AutoloadFailFlag) {
-		priv->eeprom_vid = eprom_read(dev, (EEPROM_VID >> 1));
-		priv->eeprom_did = eprom_read(dev, (EEPROM_DID >> 1));
+		priv->eeprom_vid = eprom_read(dev, EEPROM_VID >> 1);
+		priv->eeprom_did = eprom_read(dev, EEPROM_DID >> 1);
 
 		usValue = eprom_read(dev, (u16)(EEPROM_Customer_ID>>1)) >> 8;
 		priv->eeprom_CustomerID = (u8)(usValue & 0xff);
-		usValue = eprom_read(dev, (EEPROM_ICVersion_ChannelPlan>>1));
+		usValue = eprom_read(dev, EEPROM_ICVersion_ChannelPlan>>1);
 		priv->eeprom_ChannelPlan = usValue&0xff;
-		IC_Version = ((usValue&0xff00)>>8);
+		IC_Version = (usValue & 0xff00)>>8;
 
 		ICVer8192 = (IC_Version&0xf);
-		ICVer8256 = ((IC_Version&0xf0)>>4);
+		ICVer8256 = (IC_Version & 0xf0)>>4;
 		RT_TRACE(COMP_INIT, "\nICVer8192 = 0x%x\n", ICVer8192);
 		RT_TRACE(COMP_INIT, "\nICVer8256 = 0x%x\n", ICVer8256);
 		if (ICVer8192 == 0x2) {
@@ -424,7 +424,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 		if (priv->epromtype == EEPROM_93C46) {
 			if (!priv->AutoloadFailFlag) {
 				usValue = eprom_read(dev,
-					  (EEPROM_TxPwDiff_CrystalCap >> 1));
+					  EEPROM_TxPwDiff_CrystalCap >> 1);
 				priv->EEPROMAntPwDiff = (usValue&0x0fff);
 				priv->EEPROMCrystalCap = (u8)((usValue & 0xf000)
 							 >> 12);
@@ -483,15 +483,15 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 					 priv->EEPROMLegacyHTTxPowerDiff;
 			priv->AntennaTxPwDiff[0] = (priv->EEPROMAntPwDiff &
 						    0xf);
-			priv->AntennaTxPwDiff[1] = ((priv->EEPROMAntPwDiff &
-						    0xf0)>>4);
-			priv->AntennaTxPwDiff[2] = ((priv->EEPROMAntPwDiff &
-						    0xf00)>>8);
+			priv->AntennaTxPwDiff[1] = (priv->EEPROMAntPwDiff &
+							0xf0) >> 4;
+			priv->AntennaTxPwDiff[2] = (priv->EEPROMAntPwDiff &
+							0xf00) >> 8;
 			priv->CrystalCap = priv->EEPROMCrystalCap;
 			priv->ThermalMeter[0] = (priv->EEPROMThermalMeter &
 						 0xf);
-			priv->ThermalMeter[1] = ((priv->EEPROMThermalMeter &
-						 0xf0)>>4);
+			priv->ThermalMeter[1] = (priv->EEPROMThermalMeter &
+						     0xf0) >> 4;
 		} else if (priv->epromtype == EEPROM_93C56) {
 
 			for (i = 0; i < 3; i++) {
@@ -548,8 +548,8 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 			priv->CrystalCap = priv->EEPROMCrystalCap;
 			priv->ThermalMeter[0] = (priv->EEPROMThermalMeter &
 						 0xf);
-			priv->ThermalMeter[1] = ((priv->EEPROMThermalMeter &
-						 0xf0)>>4);
+			priv->ThermalMeter[1] = (priv->EEPROMThermalMeter &
+						     0xf0) >> 4;
 		}
 	}
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

