X-GM-THRID: 8179991707648
X-Received: by 10.112.98.38 with SMTP id ef6mr6766009lbb.3.1426280587268;
        Fri, 13 Mar 2015 14:03:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.23.195 with SMTP id o3ls462942laf.82.gmail; Fri, 13 Mar
 2015 14:03:06 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr5205925lbc.17.1426280586825;
        Fri, 13 Mar 2015 14:03:06 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id sf8si205340wic.2.2015.03.13.14.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id w55so25848518wes.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 14:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mYaeCWZzmiEr/ryTCcUgFY3xvtr0JuRsl78WSrpdjQk=;
        b=v6cCcU0crlLtvMDkxkvbGypva37rNXNvCzFAtUxygW28LJwyiTwMIsWbmGoC8cCElB
         Wari6R3/jaFJzmtyNZsdBan2a8i4OrZ05Up1XvIjgS1GfSTID4T60XvQbtghfOxLI1Jp
         i1jRYb4i6ZDZGrCa1twcl9on/l1Qxk6pzxPDd6xy/38AtyRvRwXioj7oqV0AVOBG8LDw
         spUFLovMjvIu8B68gbXl4vOS4588NYa6+MtUS1gyUgv0Pfr0TQha0+FINjYrZTMf7HgP
         Mn1BllUEBlpjBMDfuXi9NB8G4X1cJ8gSTqtfikMMTjDPfq+HV7uWHAamghR8/ZRhOEPH
         RbQQ==
X-Received: by 10.194.201.164 with SMTP id kb4mr99552372wjc.32.1426280586718;
        Fri, 13 Mar 2015 14:03:06 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id xy2sm4362542wjc.14.2015.03.13.14.03.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 14:03:06 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id CFDCDC1F52; Fri, 13 Mar 2015 20:50:55 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 7/8] Staging: rtl8192u: Remove parentheses around right side an assignment
Date: Fri, 13 Mar 2015 20:50:52 +0300
Message-Id: <1426269052-7995-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>

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
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |  4 ++--
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c    |  2 +-
 drivers/staging/rtl8192u/r8192U_core.c                    | 12 ++++++------
 drivers/staging/rtl8192u/r8192U_dm.c                      |  6 +++---
 drivers/staging/rtl8192u/r819xU_phy.c                     |  4 ++--
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index 32177c6..788704b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -130,8 +130,8 @@ static void ccmp_init_blocks(struct crypto_tfm *tfm,
 		       (WLAN_FC_GET_STYPE(fc) & 0x08));
 	*/
 	/* fixed by David :2006.9.6 */
-	qc_included = ((WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
-		       (WLAN_FC_GET_STYPE(fc) & 0x80));
+	qc_included = (WLAN_FC_GET_TYPE(fc) == IEEE80211_FTYPE_DATA) &&
+		       (WLAN_FC_GET_STYPE(fc) & 0x80);
 	aad_len = 22;
 	if (a4_included)
 		aad_len += 6;
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 878086a..f32ad88 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -877,7 +877,7 @@ static struct sk_buff *ieee80211_assoc_resp(struct ieee80211_device *ieee,
 		crypt = ieee->crypt[ieee->tx_keyidx];
 	else crypt = NULL;
 
-	encrypt = (crypt && crypt->ops);
+	encrypt = crypt && crypt->ops;
 
 	if (encrypt)
 		assoc->capability |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 8f7a321..b6acbd7 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2078,10 +2078,10 @@ static u8 rtl8192_getSupportedWireleeMode(struct net_device *dev)
 	case RF_8225:
 	case RF_8256:
 	case RF_PSEUDO_11N:
-		ret = (WIRELESS_MODE_N_24G|WIRELESS_MODE_G|WIRELESS_MODE_B);
+		ret = WIRELESS_MODE_N_24G|WIRELESS_MODE_G|WIRELESS_MODE_B;
 		break;
 	case RF_8258:
-		ret = (WIRELESS_MODE_A|WIRELESS_MODE_N_5G);
+		ret = WIRELESS_MODE_A|WIRELESS_MODE_N_5G;
 		break;
 	default:
 		ret = WIRELESS_MODE_B;
@@ -2688,7 +2688,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 
 	read_nic_dword(dev, CPU_GEN, &dwRegRead);
 	if (priv->LoopbackMode == RTL819xU_NO_LOOPBACK)
-		dwRegRead = ((dwRegRead & CPU_GEN_NO_LOOPBACK_MSK) | CPU_GEN_NO_LOOPBACK_SET);
+		dwRegRead = (dwRegRead & CPU_GEN_NO_LOOPBACK_MSK) | CPU_GEN_NO_LOOPBACK_SET;
 	else if (priv->LoopbackMode == RTL819xU_MAC_LOOPBACK)
 		dwRegRead |= CPU_CCK_LOOPBACK;
 	else
@@ -3644,7 +3644,7 @@ static u8 HwRateToMRate90(bool bIsHT, u8 rate)
 				ret_rate = MGN_MCS15;
 				break;
 			case DESC90_RATEMCS32:
-				ret_rate = (0x80|0x20);
+				ret_rate = 0x80|0x20;
 				break;
 
 			default:
@@ -4229,9 +4229,9 @@ static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
 	praddr = hdr->addr1;
 
 	/* Check if the received packet is acceptable. */
-	bpacket_match_bssid = ((IEEE80211_FTYPE_CTL != type) &&
+	bpacket_match_bssid = (IEEE80211_FTYPE_CTL != type) &&
 			       (eqMacAddr(priv->ieee80211->current_network.bssid,  (fc & IEEE80211_FCTL_TODS) ? hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS) ? hdr->addr2 : hdr->addr3))
-			       && (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV));
+			       && (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV);
 	bpacket_toself =  bpacket_match_bssid & (eqMacAddr(praddr, priv->ieee80211->dev->dev_addr));
 
 	if (WLAN_FC_GET_FRAMETYPE(fc) == IEEE80211_STYPE_BEACON)
diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 16cafcd..64257a3 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -717,7 +717,7 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 		if (tmpCCK40Mindex >= CCK_Table_length)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
-		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
+		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 
 		if (tmpval >= 6) /* higher temperature */
 			tmpOFDMindex = tmpCCK20Mindex = 0; /* max to +6dB */
@@ -2270,10 +2270,10 @@ static void dm_check_edca_turbo(
 				/*  For Each time updating EDCA parameter, reset EDCA turbo mode status. */
 				dm_init_edca_turbo(dev);
 				u1bAIFS = qos_parameters->aifs[0] * ((mode&(IEEE_G|IEEE_N_24G)) ? 9 : 20) + aSifsTime;
-				u4bAcParam = ((((u32)(qos_parameters->tx_op_limit[0])) << AC_PARAM_TXOP_LIMIT_OFFSET)|
+				u4bAcParam = (((u32)(qos_parameters->tx_op_limit[0])) << AC_PARAM_TXOP_LIMIT_OFFSET)|
 					(((u32)(qos_parameters->cw_max[0])) << AC_PARAM_ECW_MAX_OFFSET)|
 					(((u32)(qos_parameters->cw_min[0])) << AC_PARAM_ECW_MIN_OFFSET)|
-					((u32)u1bAIFS << AC_PARAM_AIFS_OFFSET));
+					((u32)u1bAIFS << AC_PARAM_AIFS_OFFSET);
 				/*write_nic_dword(dev, WDCAPARA_ADD[i], u4bAcParam);*/
 				write_nic_dword(dev, EDCAPARA_BE,  u4bAcParam);
 
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 084e04f..b1086a0 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -823,8 +823,8 @@ static void rtl8192_BB_Config_ParaFile(struct net_device *dev)
 	write_nic_byte_E(dev, 0x5e, 0x00);
 	if (priv->card_8192_version == (u8)VERSION_819xU_A) {
 		/* Antenna gain offset from B/C/D to A */
-		reg_u32 = (priv->AntennaTxPwDiff[1]<<4 |
-			   priv->AntennaTxPwDiff[0]);
+		reg_u32 = priv->AntennaTxPwDiff[1]<<4 |
+			   priv->AntennaTxPwDiff[0];
 		rtl8192_setBBreg(dev, rFPGA0_TxGainStage, (bXBTxAGC|bXCTxAGC),
 				 reg_u32);
 
-- 
1.9.1


