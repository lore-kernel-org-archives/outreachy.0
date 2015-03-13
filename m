X-GM-THRID: 8179991707648
X-Received: by 10.112.167.131 with SMTP id zo3mr2962233lbb.7.1426278419843;
        Fri, 13 Mar 2015 13:26:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.201 with SMTP id m9ls464984lah.6.gmail; Fri, 13 Mar
 2015 13:26:59 -0700 (PDT)
X-Received: by 10.112.199.69 with SMTP id ji5mr7472318lbc.0.1426278419307;
        Fri, 13 Mar 2015 13:26:59 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id o3si201967wib.2.2015.03.13.13.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id u56so25633561wes.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 13:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:reply-to:mime-version:content-type
         :content-disposition:user-agent;
        bh=VfwSxmGdEbXQQqQduXcEpGAoYONo4/IEn/2u87PjC64=;
        b=YQvfnCqAWg9ms6bq+67IJJWWQ21+l4tV1ccx+lpoHn0wIHtfFxw8kp4oWzwAeaesLb
         jXPnxFGTTGyH0cHizoq31sRdLcMS7G0hkjt8PGPbS6JfhHiHe2mVsMhTu8dpMynPwhRZ
         3JYvFP8/EJPqjr+2797SGl4U/yEh6njbnMz1SxbWDGP2ycoJR/0KKMGrM2TW65EocPKq
         Bs4cfjIuHJCipfqBgOE4JWKglNqbhjEY0k3shTipyOwTW1w+ZloHwE0u8+yfzUaMnPDR
         lCcZ9jlrv7InhZ/eSg2RqmqHc4L7UYLtizn3p6/wG0GYr0SD2ld6gAnGFpZXz/3+0bpP
         Yj9w==
X-Received: by 10.194.78.231 with SMTP id e7mr98281032wjx.33.1426278419064;
        Fri, 13 Mar 2015 13:26:59 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id bo1sm4253932wjb.15.2015.03.13.13.26.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 13:26:58 -0700 (PDT)
Date: Fri, 13 Mar 2015 20:14:52 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/8] Staging: rtl8192e: Remove parentheses around right side
 an assignment
Message-ID: <20150313171452.GA7358@haneen-vb>
Reply-To: 20150313165321.GA6657@haneen-vb
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Parentheses are not needed around the right hand side of an assignment.
This patch remove parenthese of such occurenses. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 14 +++++++-------
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 20 ++++++++++----------
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c   |  6 +++---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c     |  2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c |  2 +-
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c   |  4 ++--
 drivers/staging/rtl8192e/rtllib_softmac.c      |  2 +-
 7 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 08735cb..aea5bed 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -195,14 +195,14 @@ void rtl8192e_SetHwReg(struct net_device *dev, u8 variable, u8 *val)
 
 		dm_init_edca_turbo(dev);
 
-		u4bAcParam = (((le16_to_cpu(
+		u4bAcParam = ((le16_to_cpu(
 					qos_parameters->tx_op_limit[pAcParam])) <<
 			     AC_PARAM_TXOP_LIMIT_OFFSET) |
 			     ((le16_to_cpu(qos_parameters->cw_max[pAcParam])) <<
 			     AC_PARAM_ECW_MAX_OFFSET) |
 			     ((le16_to_cpu(qos_parameters->cw_min[pAcParam])) <<
 			     AC_PARAM_ECW_MIN_OFFSET) |
-			     (((u32)u1bAIFS) << AC_PARAM_AIFS_OFFSET));
+			     (((u32)u1bAIFS) << AC_PARAM_AIFS_OFFSET);
 
 		RT_TRACE(COMP_DBG, "%s():HW_VAR_AC_PARAM eACI:%x:%x\n",
 			 __func__, eACI, u4bAcParam);
@@ -343,7 +343,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 		priv->eeprom_ChannelPlan = usValue&0xff;
 		IC_Version = (usValue & 0xff00)>>8;
 
-		ICVer8192 = (IC_Version&0xf);
+		ICVer8192 = IC_Version&0xf;
 		ICVer8256 = (IC_Version & 0xf0)>>4;
 		RT_TRACE(COMP_INIT, "\nICVer8192 = 0x%x\n", ICVer8192);
 		RT_TRACE(COMP_INIT, "\nICVer8256 = 0x%x\n", ICVer8256);
@@ -761,8 +761,8 @@ start:
 	if (priv->ResetProgress == RESET_TYPE_NORESET) {
 		ulRegRead = read_nic_dword(dev, CPU_GEN);
 		if (priv->LoopbackMode == RTL819X_NO_LOOPBACK)
-			ulRegRead = ((ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) |
-				     CPU_GEN_NO_LOOPBACK_SET);
+			ulRegRead = (ulRegRead & CPU_GEN_NO_LOOPBACK_MSK) |
+				     CPU_GEN_NO_LOOPBACK_SET;
 		else if (priv->LoopbackMode == RTL819X_MAC_LOOPBACK)
 			ulRegRead |= CPU_CCK_LOOPBACK;
 		else
@@ -1879,12 +1879,12 @@ static void rtl8192_TranslateRxSignalStuff(struct net_device *dev,
 	praddr = hdr->addr1;
 
 	bpacket_match_bssid =
-		((RTLLIB_FTYPE_CTL != type) &&
+		(RTLLIB_FTYPE_CTL != type) &&
 		 ether_addr_equal(priv->rtllib->current_network.bssid,
 				  (fc & RTLLIB_FCTL_TODS) ? hdr->addr1 :
 				  (fc & RTLLIB_FCTL_FROMDS) ? hdr->addr2 :
 				  hdr->addr3) &&
-		 (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV));
+		 (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV);
 	bpacket_toself = bpacket_match_bssid &&		/* check this */
 			 ether_addr_equal(praddr, priv->rtllib->dev->dev_addr);
 	if (WLAN_FC_GET_FRAMETYPE(fc) == RTLLIB_STYPE_BEACON)
diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index cd3c662..e208203 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -89,8 +89,8 @@ void rtl8192_setBBreg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
 	if (dwBitMask != bMaskDWord) {
 		OriginalValue = read_nic_dword(dev, dwRegAddr);
 		BitShift = rtl8192_CalculateBitShift(dwBitMask);
-		NewValue = (((OriginalValue) & (~dwBitMask)) |
-			    (dwData << BitShift));
+		NewValue = ((OriginalValue) & (~dwBitMask)) |
+			    (dwData << BitShift);
 		write_nic_dword(dev, dwRegAddr, NewValue);
 	} else
 		write_nic_dword(dev, dwRegAddr, dwData);
@@ -235,8 +235,8 @@ void rtl8192_phy_SetRFReg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = phy_FwRFSerialRead(dev, eRFPath,
 							    RegAddr);
 			BitShift =  rtl8192_CalculateBitShift(BitMask);
-			New_Value = (((Original_Value) & (~BitMask)) |
-				    (Data << BitShift));
+			New_Value = ((Original_Value) & (~BitMask)) |
+				    (Data << BitShift);
 
 			phy_FwRFSerialWrite(dev, eRFPath, RegAddr, New_Value);
 		} else
@@ -248,8 +248,8 @@ void rtl8192_phy_SetRFReg(struct net_device *dev, enum rf90_radio_path eRFPath,
 			Original_Value = rtl8192_phy_RFSerialRead(dev, eRFPath,
 								  RegAddr);
 			BitShift =  rtl8192_CalculateBitShift(BitMask);
-			New_Value = (((Original_Value) & (~BitMask)) |
-				     (Data << BitShift));
+			New_Value = ((Original_Value) & (~BitMask)) |
+				     (Data << BitShift);
 
 			rtl8192_phy_RFSerialWrite(dev, eRFPath, RegAddr,
 						  New_Value);
@@ -585,9 +585,9 @@ static bool rtl8192_BB_Config_ParaFile(struct net_device *dev)
 
 	if (priv->IC_Cut  > VERSION_8190_BD) {
 		if (priv->rf_type == RF_2T4R)
-			dwRegValue = (priv->AntennaTxPwDiff[2]<<8 |
+			dwRegValue = priv->AntennaTxPwDiff[2]<<8 |
 				      priv->AntennaTxPwDiff[1]<<4 |
-				      priv->AntennaTxPwDiff[0]);
+				      priv->AntennaTxPwDiff[0];
 		else
 			dwRegValue = 0x0;
 		rtl8192_setBBreg(dev, rFPGA0_TxGainStage,
@@ -670,9 +670,9 @@ void rtl8192_phy_setTxPower(struct net_device *dev, u8 channel)
 			priv->AntennaTxPwDiff[1] = (u8)(ant_pwr_diff);
 			priv->AntennaTxPwDiff[0] = 0;
 
-			u4RegValue = (priv->AntennaTxPwDiff[2]<<8 |
+			u4RegValue = priv->AntennaTxPwDiff[2]<<8 |
 				      priv->AntennaTxPwDiff[1]<<4 |
-				      priv->AntennaTxPwDiff[0]);
+				      priv->AntennaTxPwDiff[0];
 
 			rtl8192_setBBreg(dev, rFPGA0_TxGainStage,
 			(bXBTxAGC|bXCTxAGC|bXDTxAGC), u4RegValue);
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index a603acc..165272d 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -879,10 +879,10 @@ static u8 rtl8192_getSupportedWireleeMode(struct net_device *dev)
 	case RF_8256:
 	case RF_6052:
 	case RF_PSEUDO_11N:
-		ret = (WIRELESS_MODE_N_24G|WIRELESS_MODE_G | WIRELESS_MODE_B);
+		ret = WIRELESS_MODE_N_24G|WIRELESS_MODE_G | WIRELESS_MODE_B;
 		break;
 	case RF_8258:
-		ret = (WIRELESS_MODE_A | WIRELESS_MODE_N_5G);
+		ret = WIRELESS_MODE_A | WIRELESS_MODE_N_5G;
 		break;
 	default:
 		ret = WIRELESS_MODE_B;
@@ -2252,7 +2252,7 @@ rtl819x_update_rxsignalstatistics8190pci(
 		weighting = 5;
 	else if (pprevious_stats->RecvSignalPower <
 		 priv->stats.recv_signal_power)
-		weighting = (-5);
+		weighting = -5;
 	priv->stats.recv_signal_power = (priv->stats.recv_signal_power * 5 +
 					pprevious_stats->RecvSignalPower +
 					weighting) / 6;
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index bdb9274..4c2caff 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -789,7 +789,7 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 		if (tmpCCK40Mindex >= CCK_Table_length)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
-		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
+		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 		if (tmpval >= 6)
 			tmpOFDMindex = tmpCCK20Mindex = 0;
 		else
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c b/drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c
index a6778e0..4e1fd4b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c
@@ -67,7 +67,7 @@ static short eprom_r(struct net_device *dev)
 {
 	short bit;
 
-	bit = (read_nic_byte(dev, EPROM_CMD) & (1<<EPROM_R_SHIFT));
+	bit = read_nic_byte(dev, EPROM_CMD) & (1<<EPROM_R_SHIFT);
 	udelay(EPROM_DELAY);
 
 	if (bit)
diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 01f85db..b8665bc 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -125,8 +125,8 @@ static void ccmp_init_blocks(struct crypto_tfm *tfm,
 	qc_included = ((WLAN_FC_GET_TYPE(fc) == RTLLIB_FTYPE_DATA) &&
 		       (WLAN_FC_GET_STYPE(fc) & 0x08));
 	*/
-	qc_included = ((WLAN_FC_GET_TYPE(fc) == RTLLIB_FTYPE_DATA) &&
-		       (WLAN_FC_GET_STYPE(fc) & 0x80));
+	qc_included = (WLAN_FC_GET_TYPE(fc) == RTLLIB_FTYPE_DATA) &&
+		       (WLAN_FC_GET_STYPE(fc) & 0x80);
 	aad_len = 22;
 	if (a4_included)
 		aad_len += 6;
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 16aef7c..2aa5bb4 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1024,7 +1024,7 @@ static struct sk_buff *rtllib_assoc_resp(struct rtllib_device *ieee, u8 *dest)
 	else
 		crypt = NULL;
 
-	encrypt = (crypt && crypt->ops);
+	encrypt = crypt && crypt->ops;
 
 	if (encrypt)
 		assoc->capability |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
-- 
1.9.1


