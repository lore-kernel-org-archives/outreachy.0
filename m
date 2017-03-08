X-GM-THRID: 6395188144195502080
X-Received: by 10.99.234.5 with SMTP id c5mr3253446pgi.172.1488998891379;
        Wed, 08 Mar 2017 10:48:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls4026457otr.34.gmail; Wed, 08 Mar
 2017 10:48:11 -0800 (PST)
X-Received: by 10.200.35.170 with SMTP id q39mr1781562qtq.57.1488998890975;
        Wed, 08 Mar 2017 10:48:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si753148pfb.5.2017.03.08.10.48.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 10:48:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so4208465pgg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 10:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eEny5rjSBaJnL5LE47rp8o+CaJyYz/+UEoet4aFHb2M=;
        b=b+MsoDFjqSRElMe5bSqXQ/K0CpKbsNguExEjqyq8fHU98UolS2+oqH3rDjbbmk1Dxi
         BgpQEjshy9+YMyUm5dcZ3wgq7skrl9dkXS5KlLMr9ip25v4aFAOqnd5MnFk/yzRbIYRE
         ZT8zhGmdUJAx1cwnm2H1yRE4exuKMoi6XicVC4l9cCUn3GywBzvE9JlKgcK0ZAVRxCoi
         x18515VP14FbMeiOCUwRiXQpxjUhO/FIrmW/vo6qZQ7DHVCEaD4oA4R/7jlLQGGuyK+n
         g2zCHd3MWoaDoKdinV7r8U1NoaZn40kJXx7QuqNAM3l8wXrYkE0+NtajE4DvcaWPGsXf
         b3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eEny5rjSBaJnL5LE47rp8o+CaJyYz/+UEoet4aFHb2M=;
        b=dGJ4sf9mfVB0ET6u0qXqgIv5wTm93Qe4LD+IIvgCmzdSMkmH/TAKE9ersC364phChT
         dU+25Id7aU6Xt1/kb0jSngIXeFeE5p9q7Kma5u5bAeoPa/cTVo9cxL21oDnm7NXeHTwu
         GwSFPzLfD3axGx00tn+Bf7Dl+Plf7CPvDBjfxyMyWY9xEwXMBBPGbrEk/ZRdqagqZHyA
         HkiVsGFF4J10Iot1Hgdouao50fMve1svFQajxvHK+KyuPjEn6SUAdZW+H9R3dxgUkUok
         X/QOOAcUDLgGiRVQ3uoWPt0cb896/ihfcpJHF9DsFeFnW/I7YfUroaOIFPFOXMEbAsJY
         CgJg==
X-Gm-Message-State: AMke39nBb5/voj5GZLbAQMcQUD1qvKf5aFROylPPVhJAyF+LAt0X850E4in7HS8d9OIDmg==
X-Received: by 10.84.216.15 with SMTP id m15mr11037332pli.22.1488998890669;
        Wed, 08 Mar 2017 10:48:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id z27sm7643440pfg.38.2017.03.08.10.48.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 10:48:10 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: rtl8192e: Remove useless type conversion
Date: Thu,  9 Mar 2017 00:15:49 +0530
Message-Id: <1488998749-30535-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Some type conversions like casting a pointer/non-pointer to a pointer of same type,
casting to the original type using addressof(&) operator, etc. are not needed.
Therefore, remove them. Done using coccinelle:

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
Changes in v2:
	- Remove useless parenthesis.
	- Improve commit message.
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 32 +++++++++++---------------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 8d6bca6..c3c56e2 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -135,7 +135,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 	{
 		u32	RegRCR, Type;
 
-		Type = ((u8 *)(val))[0];
+		Type = val[0];
 		RegRCR = rtl92e_readl(dev, RCR);
 		priv->ReceiveConfig = RegRCR;
 
@@ -161,7 +161,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 	{
 		u32 regTmp;
 
-		priv->short_preamble = (bool)(*(u8 *)val);
+		priv->short_preamble = (bool)*val;
 		regTmp = priv->basic_rate;
 		if (priv->short_preamble)
 			regTmp |= BRSR_AckShortPmb;
@@ -175,7 +175,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 
 	case HW_VAR_AC_PARAM:
 	{
-		u8	pAcParam = *((u8 *)val);
+		u8	pAcParam = *val;
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
+		u8 pAcParam = *val;
 		u32 eACI = pAcParam;
 		union aci_aifsn *pAciAifsn = (union aci_aifsn *) &
 					      (qos_parameters->aifs[0]);
@@ -293,7 +293,7 @@ void rtl92e_set_reg(struct net_device *dev, u8 variable, u8 *val)
 
 	case HW_VAR_RF_TIMING:
 	{
-		u8 Rf_Timing = *((u8 *)val);
+		u8 Rf_Timing = *val;
 
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


