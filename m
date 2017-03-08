X-GM-THRID: 6395188144195502080
X-Received: by 10.129.52.17 with SMTP id b17mr3309124ywa.107.1488995771324;
        Wed, 08 Mar 2017 09:56:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls3827839otf.39.gmail; Wed, 08 Mar
 2017 09:56:10 -0800 (PST)
X-Received: by 10.237.60.99 with SMTP id u32mr1732002qte.24.1488995770904;
        Wed, 08 Mar 2017 09:56:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si726056pfa.4.2017.03.08.09.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so4070007pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=l0y7H9BkrsKbdrFBxvl8gP5DFxDynKVhnBeL83RskZ8=;
        b=iL/aBxeJKiQ//QTuCKgzuUvu+UPRPEs2RAhFctU1m/Ia+Xl/izqORb5yMg+35b9eke
         DyIKorjbH/gcq4Imcbcws0wujqgF1GleZXkK87a1aZkXXs0hXEzLf10VKl6OAfcfI0IC
         Aqj6Z3K6UnHRmjQ/uii9C8OX5sHq7NZE3/bZ+zYYtN5ATnci1eycULm0TWsg3Q+V3EwB
         FjsBUyiRfEZa3Jrw4g4kMBgnCNcYcQNzpkZS2O2L7AY+FEO2d8z2bJ1DNYozzLDXu4P9
         DStFX5MCi4fYWfIqigj+TwT8y6UaCjztKICEfTM7QIQ+HQNxrAb699aUKgkjIxROtzjl
         nhYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=l0y7H9BkrsKbdrFBxvl8gP5DFxDynKVhnBeL83RskZ8=;
        b=Xaa96ffDZ5lq6AOv62Hdrd7vn5ZdQ8WjDpYCzICeto9J9hE6nOwNsumMPlYpixNMAz
         WJvwGkfyBy1KYPyH+oVnAQZsMImac2k6AvJQ8+uitSHE0ISD1GkkJnaf/C9YsGW6Lmeg
         Ks0rvGG2CZ7IB3ECpAigLG2xvnJ7t3Gyph5Xu8JVPRcGuQ276DdFk/xwcW1RChTEZf32
         3fKrm+tWLeq2RREOBikWWb4UdMKLdfciw+n1VDxO3xpFctPFtYwhfqEq6jWEgveWkpGP
         pqNRirNqbb5I10lAiQdB6558KVtr/BG6DTChSP2BpWHMB8ha3FQESBDSjgJgcWhiwiks
         pQSQ==
X-Gm-Message-State: AMke39nEToL26NOuSKShNbE0B8zzs0/1kYYJ3Te/niResMpB4KQBVQmvJYwh8ltu+W6s7g==
X-Received: by 10.98.11.144 with SMTP id 16mr8678459pfl.78.1488995770453;
        Wed, 08 Mar 2017 09:56:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l17sm7490726pfg.62.2017.03.08.09.56.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:56:09 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192e: Remove useless type conversion
Date: Wed,  8 Mar 2017 23:23:42 +0530
Message-Id: <1488995622-25258-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p;
t a;
@@
(
- (t)(a)
+ a
|
- (t *)(p)
+ p
|
- (t *)(&a)
+ &a
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 32 +++++++++++---------------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 8d6bca6..5c1d830 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -135,7 +135,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 	{
 		u32	RegRCR, Type;
 
-		Type = ((u8 *)(val))[0];
+		Type = (val)[0];
 		RegRCR = rtl92e_readl(dev, RCR);
 		priv->ReceiveConfig = RegRCR;
 
@@ -161,7 +161,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 	{
 		u32 regTmp;
 
-		priv->short_preamble = (bool)(*(u8 *)val);
+		priv->short_preamble = (bool)(*val);
 		regTmp = priv->basic_rate;
 		if (priv->short_preamble)
 			regTmp |= BRSR_AckShortPmb;
@@ -175,7 +175,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 
 	case HW_VAR_AC_PARAM:
 	{
-		u8	pAcParam = *((u8 *)val);
+		u8	pAcParam = *(val);
 		u32	eACI = pAcParam;
 		u8		u1bAIFS;
 		u32		u4bAcParam;
@@ -221,7 +221,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 			break;
 		}
 		priv->rtllib->SetHwRegHandler(dev, HW_VAR_ACM_CTRL,
-					      (u8 *)(&pAcParam));
+					      &pAcParam);
 		break;
 	}
 
@@ -229,7 +229,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 	{
 		struct rtllib_qos_parameters *qos_parameters =
 			 &priv->rtllib->current_network.qos_data.parameters;
-		u8 pAcParam = *((u8 *)val);
+		u8 pAcParam = *(val);
 		u32 eACI = pAcParam;
 		union aci_aifsn *pAciAifsn = (union aci_aifsn *) &
 					      (qos_parameters->aifs[0]);
@@ -293,7 +293,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 
 	case HW_VAR_RF_TIMING:
 	{
-		u8 Rf_Timing = *((u8 *)val);
+		u8 Rf_Timing = *(val);
 
 		rtl92e_writeb(dev, rFPGA0_RFTiming1, Rf_Timing);
 		break;
@@ -372,7 +372,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 	if (!priv->AutoloadFailFlag) {
 		for (i = 0; i < 6; i += 2) {
 			usValue = rtl92e_eeprom_read(dev,
-				 (u16)((EEPROM_NODE_ADDRESS_BYTE_0 + i) >> 1));
+				 (EEPROM_NODE_ADDRESS_BYTE_0 + i) >> 1);
 			*(u16 *)(&dev->dev_addr[i]) = usValue;
 		}
 	} else {
@@ -436,8 +436,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 			for (i = 0; i < 14; i += 2) {
 				if (!priv->AutoloadFailFlag)
 					usValue = rtl92e_eeprom_read(dev,
-						  (u16)((EEPROM_TxPwIndex_CCK +
-						  i) >> 1));
+						  (EEPROM_TxPwIndex_CCK + i) >> 1);
 				else
 					usValue = EEPROM_Default_TxPower;
 				*((u16 *)(&priv->EEPROMTxPowerLevelCCK[i])) =
@@ -452,8 +451,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 			for (i = 0; i < 14; i += 2) {
 				if (!priv->AutoloadFailFlag)
 					usValue = rtl92e_eeprom_read(dev,
-						(u16)((EEPROM_TxPwIndex_OFDM_24G
-						+ i) >> 1));
+						(EEPROM_TxPwIndex_OFDM_24G + i) >> 1);
 				else
 					usValue = EEPROM_Default_TxPower;
 				*((u16 *)(&priv->EEPROMTxPowerLevelOFDM24G[i]))
@@ -1650,15 +1648,11 @@ static void _rtl92e_query_rxphystatus(
 			evm = rtl92e_evm_db_to_percent(rx_evmX);
 			if (bpacket_match_bssid) {
 				if (i == 0) {
-					pstats->SignalQuality = (u8)(evm &
-								 0xff);
-					precord_stats->SignalQuality = (u8)(evm
-									& 0xff);
+					pstats->SignalQuality = evm & 0xff;
+					precord_stats->SignalQuality = evm & 0xff;
 				}
-				pstats->RxMIMOSignalQuality[i] = (u8)(evm &
-								 0xff);
-				precord_stats->RxMIMOSignalQuality[i] = (u8)(evm
-									& 0xff);
+				pstats->RxMIMOSignalQuality[i] = evm & 0xff;
+				precord_stats->RxMIMOSignalQuality[i] = evm & 0xff;
 			}
 		}
 
-- 
2.7.4


