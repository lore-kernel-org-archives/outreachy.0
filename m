X-GM-THRID: 6670105232964321280
X-Received: by 2002:a02:6a1c:: with SMTP id l28mr13347984jac.8.1553005921462;
        Tue, 19 Mar 2019 07:32:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls960926itc.5.canary-gmail; Tue,
 19 Mar 2019 07:32:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzfRAEtS7cSeYMBmNE9nqvr+IE/vznNiUD+JQoR8rglhgcYnhY2xT+NHW91ZWDobxLKXgJZ
X-Received: by 2002:a24:6bd7:: with SMTP id v206mr2241058itc.17.1553005920559;
        Tue, 19 Mar 2019 07:32:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005920; cv=none;
        d=google.com; s=arc-20160816;
        b=UXQlIVuoomD+F92k/NI+lBWEB7WZWgSgMO09lq5qE8a5ROFJzYXsjfr5JzdVO8kab1
         lOvODMIRpskm/syNp/U2d0HY+OZ1h3ivVHrn7SIaBmc/T7cvdHCbCHTBtDMpciDnLMss
         4V1pwXt3pxSy6zCbnTfJ+bs78aIK9raTsvZZ9Ei1zupmH+YUD4OxnC3r8Vdma9RFp9kR
         f4ygj+xE73nnYmVWehptJ+/SFSv+4G3LRs2qLlNtW2I1NbB4ZEGX6ek/1XH7HG7CeC0C
         eQvqhs+zmhCqoVKL/Xv0dd+0Si9+aL00xIROWeTgkqhIKtApZLQBu0O4Lv9tYN5a3zpH
         NsFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=eHZnBeDf1vnOGBYRQPrudnXj8g18ZrvveC+XdlWY8V8=;
        b=SFCt1K8e9xamzC7Gu70iQgvtfsSghdVSkuQ/yMeYb1Srz6CcZAYmGmm/Y/lDp9K5b3
         vBhVX3Txa1BYeukQ5wzEMgOQIj8KD6058+Q14yw5WeyBI8ybH16mlDFIGu1qi0O31bRP
         hFyOwjbP6MpwhdLlgEBeaXMnr0ozkqLdJV7sjZsQY8Gc34226FWOqcrt/pj3HRhBt/qr
         R8Eo+kZk9UKOBoMc7d0tFjafqPNSLm7DMqhJl+7XYkpRe+3kb8TWBr9sdvjwHxKsm0ja
         9cAZzr+anHep5Mur4QhOuem+IQ3DlCkJRq3xsQAgqCYV/bAgsMEYe1sj2IWC0eJy+EsP
         1eUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WI64zHT2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id 71si82413ita.0.2019.03.19.07.32.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:32:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WI64zHT2;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id i2so485910pgj.11
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eHZnBeDf1vnOGBYRQPrudnXj8g18ZrvveC+XdlWY8V8=;
        b=WI64zHT2xWLTFnaJems7aPalqsZUOPGTlo8A2oFRWbWj5N+8KxvLlz4dZ4JrjZ2VAm
         TifusEFla2U3JF+6Z0XZylCPp1TCy9w0ndL+2Q2Xxw6HyS0aOBnVquWesWqHJvkGaWdW
         G67gUs409XisgDEyxZq66Txd7zR5uaHVhJs2gf2DamGSoIdRkRrm7AYIfRIngLqO7r0e
         5fslNzOMmjcQIdSOrcbA438niPIMSorsHYRM4jnQGdVN++rpye7L8sMv7X/SPgHcZDRJ
         CYTdBk97/ar95LbGfWDd8MM194U06mP5gbSyK5I+XtpRSTG7PZalnUIBXbXEsilcisO7
         /QTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eHZnBeDf1vnOGBYRQPrudnXj8g18ZrvveC+XdlWY8V8=;
        b=BnJM/0rF1G0yUSQtBKpvDzKl6TOx3ZJlymeuZokNoaXJel7KOxQXQ2Vbl7DuQksSy8
         Pzyh3TcOGchfxtHiofAS45Ml/beDpUd2BSdpOqfbRGAHU/DLMZdsstg5x1Gu/TdS6t2s
         o6ASFKZSfhAyxgg6IP1jmAQ0r2JbDtSb4rxyb9Ae4M9QXU5paqVXKOudxCXU6msgeVy+
         ZEc/DcMyQ9PdHU3qFCgo86XA6YdK5EAVLIJF/1X+LM4oPJzcLPR9DA15FiL3CRMNI58a
         Dgu/maaSKQQSSqEVtzcClmzoPh5z/La/ZuQ5yiltwCh4WpazI0HvzXdxtU9yFegV2Xob
         oxpA==
X-Gm-Message-State: APjAAAVIgP6yHRFN1/woy2GY7ls8vpM8qoIX18KwIUrkDXL9o5wYrPMl
	4YMf+OcjLuRw9m+NZz8Sv5U62APi
X-Received: by 2002:a65:6656:: with SMTP id z22mr2028568pgv.95.1553005920308;
        Tue, 19 Mar 2019 07:32:00 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id l184sm26489938pfc.41.2019.03.19.07.31.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:31:59 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8192u: r8192U_dm: Fix alignment issue.
Date: Tue, 19 Mar 2019 20:01:46 +0530
Message-Id: <20190319143146.9174-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Ajdust alignment to match open paranthesis.
Issue found by checkpatch.pl

CHECK: Alignment should match open paranthesis.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
No changes from [PATCH 2/3]
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


