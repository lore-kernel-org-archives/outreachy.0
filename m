X-GM-THRID: 6670105232964321280
X-Received: by 2002:a1f:9644:: with SMTP id y65mr14203095vkd.23.1553009050628;
        Tue, 19 Mar 2019 08:24:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c782:: with SMTP id t2ls2558895vsk.2.gmail; Tue, 19 Mar
 2019 08:24:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3+9Zbijt21f78f34BXGHSQBXPxLw6nCGAK/1Ttn+P1/5pJQUk5VUduYHx3e+Tl4pE9P/t
X-Received: by 2002:a67:f24f:: with SMTP id y15mr3870921vsm.25.1553009049939;
        Tue, 19 Mar 2019 08:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553009049; cv=none;
        d=google.com; s=arc-20160816;
        b=gZGbph8K2gtIzIW5HmBCIOs1XmsVtsYH4obgg8kT9L1bVeTwcTd9cs1KWfVJ2eUsvt
         k4Uy/c7z68u5b/qWRc9ljY/gGMyZZQ89u1lvFASrfE/C3uwwt/EDWNn4EMHt/B5wVkhM
         7VGZ+FfyDdUFoJxNqP1kanTfF1MxiqVMCR+SsVMTnKoNA69fZE3qEXhcg/QAoabK8qjc
         X9xokLLp7tFiLPymIrC9PGbzS1HhPRKu3zBJxFsUlI77fBR7uJjCmW1SEeSgn95QHi8T
         Ephgl4pq1EUN+E/hNo6+cLVZlg4jO/Td1wcoZTeUJUCazV9SgrxwuTwpcA9j3MKhSuna
         LQOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/NAK+iHJytNKjK08KQ8x6gLtIBlYPTfpVqjK+pddpNU=;
        b=hs8JV/llCLI8fT69zVVamTMDKpmu9d3PFdOwsDiOGi9ixZsVZKUZSf5CSbMvTffxz1
         M/NG4QGn8rRM9rbuCQVeSbiROnQsAscs8uDzQ8lXtCFqFXLqgj8H5pnkmL/f1yP8zrH6
         990M/YwXFSzzXn8pMOVmTipEWKRbkBiJRnQF5mQhKn0rGVlALB2upM2jSYnQAdiBBnYe
         0qSb2VdWhO8ZN+ZzsoFG//T2eKL6iqXwjQ9wEpw4U33Jl4P1olJREZZQ9WqAEernDumk
         G5COnfU/q4wjik5pBoTc0jPtM+uYbQsYbdvxDt3QlKq8+lX+vI68GMCHktdT6eoLtG18
         rTow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BG9ff1Ct;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c15si705888vsp.2.2019.03.19.08.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BG9ff1Ct;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v1so9374307pgi.5
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 08:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/NAK+iHJytNKjK08KQ8x6gLtIBlYPTfpVqjK+pddpNU=;
        b=BG9ff1CtVnH4FJee6RBJYojp6i5IyJg7etbMzSqrYbW2Q/vx53C51TeUQXCIAypH/2
         10wfuGARchEkDHH3vY0nTszraLbA4btF1tuNKaY6YEOpcAcGkMlvxUMizDdFIfPEoP4p
         dgnd46Xx99r1uCO/TJ0TjuApfcXvBqQZZTk9YCCqNwxsxaHSu/Z8t3rh7tIdJV4+SlxL
         NPWXNz0rt6vW5+HUFhUSjjXB5ayJQUMxZNN9JkDQeFEMw7DJLTRB45sZI+fpObgfgSp5
         UdGvOqZBIeUZ7En/bzM+YwfTuaYqYHOA/nFpj07EITCzxCCRBqIffRx1kcwGMd77vpql
         tmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/NAK+iHJytNKjK08KQ8x6gLtIBlYPTfpVqjK+pddpNU=;
        b=AotbdkPJ6TOwKci3aVuK+gg4rgeQ1TEvARTWpbYW3YDv/6cr8r01S+u6RfEUONYHlG
         +3AeVrCu1TBtnB4VOCb6+ba2JEutgSrFAtkTVFzxSFjI51simL8IhqNXnWiCEJInmeOu
         3Orf5Np19OLAZsYCrQ72gjsByYvjcleBig6y0WHL091vXqBaAUsHf1V4ZcG4PT00n/DS
         v4wPfu17va7YabnkkFxYnoUVpCM+rCniCioQl8qvVg8JdXkkx272MnBpkOxAI9hwRJtm
         SzOK0QjigZGnd9kRQw7nN0pzlud6d+/24IaTOU1NdWXqGLxEr0HQjj7CwRb4DT4Ln5Uk
         Ui1A==
X-Gm-Message-State: APjAAAX3+pC0XKlqz6lo/YlcOMU23mlBB5sX9Hoznrf2EV1RqzckCF/t
	wjw/RmVF0f5Hj9xwDLomju4=
X-Received: by 2002:aa7:8051:: with SMTP id y17mr2530691pfm.29.1553009048998;
        Tue, 19 Mar 2019 08:24:08 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id s4sm8848194pgp.89.2019.03.19.08.24.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:24:08 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] staging: rtl8192u: r8192U_dm: Fix alignment issue.
Date: Tue, 19 Mar 2019 20:53:55 +0530
Message-Id: <20190319152355.10376-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Ajdust alignment to match open paranthesis.
Issue found by checkpatch.pl

CHECK: Alignment should match open paranthesis.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
No changes

Changes in v2:
No changes
 drivers/staging/rtl8192u/r8192U_dm.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 6c9f9d82477d..0f1318865dd1 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -1454,7 +1454,7 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
 
 		rtl8192_setBBreg(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
 		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
-			rCCK0_TxFilter1, TempVal);
+			 rCCK0_TxFilter1, TempVal);
 		/* Write 0xa24 ~ 0xa27 */
 		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][2] +
 					(CCKSwingTable_Ch14[priv->CCK_index][3]<<8) +
@@ -1462,14 +1462,14 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
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
 
@@ -1520,7 +1520,7 @@ void dm_restore_dynamic_mechanism_state(struct net_device *dev)
 		return;
 	/* TODO: Only 11n mode is implemented currently, */
 	if (!(priv->ieee80211->mode == WIRELESS_MODE_N_24G ||
-		priv->ieee80211->mode == WIRELESS_MODE_N_5G))
+	      priv->ieee80211->mode == WIRELESS_MODE_N_5G))
 		return;
 
 	{
@@ -1751,7 +1751,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 
 	/* For smooth, we can not change DIG state. */
 	if ((priv->undecorated_smoothed_pwdb > dm_digtable.rssi_low_thresh) &&
-		(priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
+	    (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
 		return;
 
 	/*DbgPrint("Dig by Fw False Alarm\n");*/
@@ -1814,7 +1814,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
 		u8 reset_flag = 0;
 
 		if (dm_digtable.dig_state == DM_STA_DIG_ON &&
-			(priv->reset_count == reset_cnt)) {
+		    (priv->reset_count == reset_cnt)) {
 			dm_ctrl_initgain_byrssi_highpwr(dev);
 			return;
 		}
@@ -1912,7 +1912,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
 	 */
 	if (priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_power_highthresh) {
 		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_ON &&
-			(priv->reset_count == reset_cnt_highpwr))
+		    (priv->reset_count == reset_cnt_highpwr))
 			return;
 		dm_digtable.dig_highpwr_state = DM_STA_DIG_ON;
 
@@ -1928,7 +1928,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
 			write_nic_byte(dev, rOFDM0_RxDetector1, 0x43);
 	} else {
 		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_OFF &&
-			(priv->reset_count == reset_cnt_highpwr))
+		    (priv->reset_count == reset_cnt_highpwr))
 			return;
 		dm_digtable.dig_highpwr_state = DM_STA_DIG_OFF;
 
@@ -2129,7 +2129,7 @@ static	void dm_cs_ratio(
 
 	{
 		if ((dm_digtable.precs_ratio_state != dm_digtable.curcs_ratio_state) ||
-			!initialized || force_write) {
+		    !initialized || force_write) {
 			/*DbgPrint("Write CS_ratio state = %d\n", DM_DigTable.CurCS_ratioState);*/
 			if (dm_digtable.curcs_ratio_state == DIG_CS_RATIO_LOWER) {
 				/*  Lower CS ratio for CCK. */
@@ -2646,7 +2646,7 @@ void dm_fsync_timer_callback(struct timer_list *t)
 	bool		bDoubleTimeInterval = false;
 
 	if (priv->ieee80211->state == IEEE80211_LINKED &&
-		priv->ieee80211->bfsync_enable &&
+	    priv->ieee80211->bfsync_enable &&
 		(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_CDD_FSYNC)) {
 		/* Count rate 54, MCS [7], [12, 13, 14, 15] */
 		u32 rate_bitmap;
-- 
2.17.1


