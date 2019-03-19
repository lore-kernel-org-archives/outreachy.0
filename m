X-GM-THRID: 6670105232964321280
X-Received: by 2002:a25:8444:: with SMTP id r4mr833206ybm.31.1553005101199;
        Tue, 19 Mar 2019 07:18:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls5104261ybh.9.gmail; Tue, 19
 Mar 2019 07:18:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyKMDtZYQHar4asVQqGRC7bp36XIxajKpcSZRhp52rCXtsDMpdFtWwDffGOzJ4mIUKuo6OO
X-Received: by 2002:a25:3f41:: with SMTP id m62mr819003yba.72.1553005100211;
        Tue, 19 Mar 2019 07:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005100; cv=none;
        d=google.com; s=arc-20160816;
        b=dFpsLx2/JR5R+8zP7dyCu2hx3lRMT/7/+k0pJs2SUCNuc2bzFutiWdvsAIVNQX00Ud
         GxW1cND8QUDWGpF6T8+TGMkWUQcj+3wIk2Tmyn38siX20pIhnoh492Uhm4k71F/T9IkY
         LdgQx5ZMx7Lyub92hElmG2hAVj2GrHMP2oE0jkAuRi4CBoftK9/SU6gmBE16cLFmf77U
         WZEcpnH/MkU7/VJRav+bdPK1UEj/HIzjUp9tfH3n25hXwJtUX0AK9hRO19Q6Hg7CiWfq
         l41OzQ2I+SeRjrS/UNQ3wooL6kTIiuVNHyOAnGXFKfkZkgekxOMmO1gU9Wiy3LBtjEd9
         W3cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=sVYjI1qtlbT1ehxbzyx8jMprTThccFkGCvxUFwnZmT8=;
        b=x/FrPIswuepJchVhiOBlNsmSxnW+iE/Nq+FbYii4JI7OplSb7X0vgWCJLtV6J+Q3gq
         l/JvlL1d6TRrXQjqstMGv6tLb+JW2Vm40ia9DpOL1bXCMuf/wauv2W8NAHMwrLv9k8Dc
         veBJxOZJ4pi0BeamSJ6WHNQrl3CFzjPr8oczNuSU6tODCwUEU1fEGlVE8R0XMFqNWVbL
         gWHUT1gZpjualqeY85B2mh8T5VoJQDhijzpYTXA+ZSxkfJatAI1M0LPNipxlUysX1rfO
         NGyIyLfqoBVvAt1XifX4D16zStzZWubWVe8TAO2MIaKFg+LcHUCIzy4RQkqvLRcyUn6T
         NBxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mBAUowxP;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id k62si857661ybb.4.2019.03.19.07.18.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mBAUowxP;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id v21so13777846pfm.12
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=sVYjI1qtlbT1ehxbzyx8jMprTThccFkGCvxUFwnZmT8=;
        b=mBAUowxP0OGJtQVW6iFA7DtdkM7lHSdh9TKUfejrYezeDuAwqTgEX4oWHEw/r9nVuu
         zQGEFZLVTcWqYvr1gW/EpudfUaA9vvTkMSBJNciNyWaXmi0/DqgZ/3Sy4XXWv0I+G4wZ
         gctX5xh/uwrKJ9FwsctBqkMHwr8jeyK1VTwCpKScO5/nGNEZmZjM/LPlZ0AMKXx57KAN
         HKp6Wdw0+67bItuF7Q2J+Tr7LOQhumanYk8tmg0r6nm0/MXkB0zB386g13uqZQc6GbhS
         zMvJ5OBJZwRpV3B+DdAL8mOvTzpCO2xilfHWouXDwt3c2kH6SSR4ndg/JKbE4ALrVW8D
         neYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=sVYjI1qtlbT1ehxbzyx8jMprTThccFkGCvxUFwnZmT8=;
        b=aMm5qHdjaz2dm0qn5PAbM+MpQ3avXBfkKtpwSAsFU5BmkbbCc1ErkZ+smoEYA7izHk
         wSyRoqjoghLXNtpGIF7OTIAxRPaJOh3h+BXwwx+aQmPAfIegCwowzUmaBUjetxSq23mm
         bmwLYF3YzQ44CP/cjPnR/tj8MplO3iRd9ljqEwR8CRph4LGjbfJ8fwPHfn1xZCsdcXp9
         41pR2kWcyiStwQ48UkiKvtktZfhOpaE6kue5SU8FQSD4jkkOcLcBeFOTuE7GkCtTMcw9
         j+X0PQj4tHmqwkfCAmQLjRccSE/VtejjvojdLo/7mP7ykc2mezQqTWawHGn9Bx76dZIg
         +I/Q==
X-Gm-Message-State: APjAAAVk24vID7vaCcsdQhXbRd70kiXmIgYRmbNuiScs+bKZIMPS4i/+
	dUP/jkxFtilKhfMHqdn7qI4=
X-Received: by 2002:a63:4342:: with SMTP id q63mr2048476pga.6.1553005099910;
        Tue, 19 Mar 2019 07:18:19 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id f7sm13907664pgf.48.2019.03.19.07.18.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:18:19 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8192u: r8192U_dm: Fix alignment issue.
Date: Tue, 19 Mar 2019 19:48:06 +0530
Message-Id: <20190319141806.8592-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Ajdust alignment to match open paranthesis.
Issue found by checkpatch.pl

CHECK: Alignment should match open paranthesis.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 4fe4c99a0880..8279fa721c74 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -1451,7 +1451,7 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
 
 		rtl8192_setBBreg(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
 		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
-			rCCK0_TxFilter1, TempVal);
+			 rCCK0_TxFilter1, TempVal);
 		/* Write 0xa24 ~ 0xa27 */
 		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][2] +
 					(CCKSwingTable_Ch14[priv->CCK_index][3]<<8) +
@@ -1459,14 +1459,14 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
 					(CCKSwingTable_Ch14[priv->CCK_index][5]<<24);
 		rtl8192_setBBreg(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
 		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
-			rCCK0_TxFilter2, TempVal);
+			 rCCK0_TxFilter2, TempVal);
 		/* Write 0xa28  0xa29 */
 		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][6] +
 					(CCKSwingTable_Ch14[priv->CCK_index][7]<<8);
 
 		rtl8192_setBBreg(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
 		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
-			rCCK0_DebugPort, TempVal);
+			 rCCK0_DebugPort, TempVal);
 	}
 }
 
@@ -1517,7 +1517,7 @@ void dm_restore_dynamic_mechanism_state(struct net_device *dev)
 		return;
 	/* TODO: Only 11n mode is implemented currently, */
 	if (!(priv->ieee80211->mode == WIRELESS_MODE_N_24G ||
-		priv->ieee80211->mode == WIRELESS_MODE_N_5G))
+	      priv->ieee80211->mode == WIRELESS_MODE_N_5G))
 		return;
 
 	{
@@ -1748,7 +1748,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 
 	/* For smooth, we can not change DIG state. */
 	if ((priv->undecorated_smoothed_pwdb > dm_digtable.rssi_low_thresh) &&
-		(priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
+	    (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
 		return;
 
 	/*DbgPrint("Dig by Fw False Alarm\n");*/
@@ -1811,7 +1811,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 		u8 reset_flag = 0;
 
 		if (dm_digtable.dig_state == DM_STA_DIG_ON &&
-			(priv->reset_count == reset_cnt)) {
+		    (priv->reset_count == reset_cnt)) {
 			dm_ctrl_initgain_byrssi_highpwr(dev);
 			return;
 		}
@@ -1909,7 +1909,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
 	 */
 	if (priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_power_highthresh) {
 		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_ON &&
-			(priv->reset_count == reset_cnt_highpwr))
+		    (priv->reset_count == reset_cnt_highpwr))
 			return;
 		dm_digtable.dig_highpwr_state = DM_STA_DIG_ON;
 
@@ -1925,7 +1925,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
 			write_nic_byte(dev, rOFDM0_RxDetector1, 0x43);
 	} else {
 		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_OFF &&
-			(priv->reset_count == reset_cnt_highpwr))
+		    (priv->reset_count == reset_cnt_highpwr))
 			return;
 		dm_digtable.dig_highpwr_state = DM_STA_DIG_OFF;
 
@@ -2126,7 +2126,7 @@ static	void dm_cs_ratio(
 
 	{
 		if ((dm_digtable.precs_ratio_state != dm_digtable.curcs_ratio_state) ||
-			!initialized || force_write) {
+		    !initialized || force_write) {
 			/*DbgPrint("Write CS_ratio state = %d\n", DM_DigTable.CurCS_ratioState);*/
 			if (dm_digtable.curcs_ratio_state == DIG_CS_RATIO_LOWER) {
 				/*  Lower CS ratio for CCK. */
@@ -2643,7 +2643,7 @@ void dm_fsync_timer_callback(struct timer_list *t)
 	bool		bDoubleTimeInterval = false;
 
 	if (priv->ieee80211->state == IEEE80211_LINKED &&
-		priv->ieee80211->bfsync_enable &&
+	    priv->ieee80211->bfsync_enable &&
 		(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_CDD_FSYNC)) {
 		/* Count rate 54, MCS [7], [12, 13, 14, 15] */
 		u32 rate_bitmap;
-- 
2.17.1


