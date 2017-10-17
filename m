X-GM-THRID: 6478004870562447360
X-Received: by 10.157.22.162 with SMTP id c31mr8014939ote.11.1508278043388;
        Tue, 17 Oct 2017 15:07:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.2.21 with SMTP id 21ls629017oic.12.gmail; Tue, 17 Oct 2017
 15:07:22 -0700 (PDT)
X-Received: by 10.157.37.6 with SMTP id k6mr7728782otb.59.1508278042552;
        Tue, 17 Oct 2017 15:07:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508278042; cv=none;
        d=google.com; s=arc-20160816;
        b=yr+dlrEa+viMwsDHwRYyHOkvs7b4oyp9RqzrQ6r8OjwE5sZPbI3QPMu7qeubqnQUB4
         FhcSTuH7HBlGW+maVjraJrLva+wDtX+2Ag2+OkleUlN2smiEeGpdQ47Won4C2swenyU3
         GQxqiQpJ9TBrdPpl2Q7mpykLvTSoNLGmqS/SuLT+ZegIca1A8gIZJnmN21uAQDenqonW
         wXo8OaLqYPLXi3m6UEAmoisan49ikfj5oNkWIWW/r7ttEd5hpkPYj4LiCoIn4kuWiROb
         eaNupbj4CdoHlNz1LxGLspKoJM399wIRYZc05IGqPlpqhNWgsJbW8wzu/mTR4FBNUhNT
         d8pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=f50/LSjyiFQK7fZOXJ72w3mWam7skkgGLJdq7AUp2tw=;
        b=pD2YSAzYLxSrjhJdI1m27xwuBXKbB/juE1jERnFU1A7WHExTkkwTnDjHpzSSmP+/cF
         /avROUbtuQFar6t71+P0d5LAHyK76OZ3S8sNqu6eevmL1eWHqjeVkEmepggvq60mSO3M
         PkJdLq4Ff3900JgQXbgWQmfQFTUZtWvfT+fC5qMbvBlgiDP/yQx8L5OtiM61FFbCg/eR
         sIKJdV9LTt33Ht8OdBW0qR7Oq/cTXd+YaYMAn1eSZPcbRTuNXnwKH/1N/wPqZ0G7ETNx
         6ySWx596bdgMr7WZOrYxkSLiUxoroDuAKJWVgZruJ9zsFoRPdF6csaQZ3aT6LpsAwDyZ
         sQkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=QH0M+Et1;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x22e.google.com (mail-vk0-x22e.google.com. [2607:f8b0:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id q7si475177oih.5.2017.10.17.15.07.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:07:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22e as permitted sender) client-ip=2607:f8b0:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=QH0M+Et1;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x22e.google.com with SMTP id d12so2114946vkf.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 15:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f50/LSjyiFQK7fZOXJ72w3mWam7skkgGLJdq7AUp2tw=;
        b=QH0M+Et1FUp4TA6xpSr7QNGjv5SUgeHUwHZLea9s3Ah+yOMsMr+g+kfPlnIWYhpmR0
         /tYfqFgqebMbxUrr7RlNB0zhxQlcnNCwZDtadMTOrfK1GIV69y2huwyTfAQ/Rzzc9NnF
         mBf6mzNzjCqG/LBkzaJTkKqRstY/I/V3VCzMsls1l3b6qSuqNjSXnj59y7O5qiIePFfd
         fKZ41YaBxt7jzqxHu7X/dw1z1mQpBLuM+XXxQVOHXOwxG/UmWcYuLimQat7x3nTOAbfB
         rFP5vH7PrQpW39z3pFbR5z96TXeLKCsDVCJHIrBv1tq/nAwk9l8u6ja1N7At3r67uxuA
         fHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f50/LSjyiFQK7fZOXJ72w3mWam7skkgGLJdq7AUp2tw=;
        b=opNq7xCBta0QrkLhDfjw/dnPz1Ebr+lOiT2rOgf1vw0O7ipL8VAhm1Xtzpb3BwIhem
         t9l4smSl5wtXwahz5OwTO5TZEgoO5iBQZ131oOSc+Ge2UPSzjBIhNyNIJzW3jMAa9O+b
         nY/lfIQOYwaq9LA4Nub0G6t48y+C23oBwg+fbZ/M02HvkmQzsoECcmFxDfSqc7tx3DGP
         2EUsARxp3tidk4fNwvatTka2lYvt9ZkE2DcFBYTxbN+HoSfq7C2L7ouBLO2zra0isEJy
         RrWrHWWkbSnwDo7bTUD2IAgnMbmjQj4qHN7Pxdjf19E6kmyYYt6AhtnEFOXbGJf/hVE/
         T+Dw==
X-Gm-Message-State: AMCzsaXSQWWIXRGqIb6Q/ECQ4cxn39VkLdEoAPdDe28AVxk+UuB1pi3X
	cCKodMtT7p7/r5eGwJtJ9q4AX2VC
X-Google-Smtp-Source: ABhQp+Qch19DxAPtArrwX04Ce2Fug3EqhpRyq0u9bE9oSqVx4huKBn8r1hvS9qa2bEZ6w9FFwS9LGg==
X-Received: by 10.31.165.23 with SMTP id o23mr581894vke.151.1508278041513;
        Tue, 17 Oct 2017 15:07:21 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id q18sm2729242vkd.36.2017.10.17.15.07.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 15:07:20 -0700 (PDT)
Date: Tue, 17 Oct 2017 18:07:18 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: phydm: Remove useless parentheses
Message-ID: <20171017220718.GA9968@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses to comply with preferred coding style for
the linux kernel and avoid the following checkpatch's message:
'CHECK: Unnecessary parentheses around'.

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtlwifi/phydm/halphyrf_ce.c      |  2 +-
 drivers/staging/rtlwifi/phydm/phydm.c            |  8 ++++----
 drivers/staging/rtlwifi/phydm/phydm_adaptivity.c |  4 ++--
 drivers/staging/rtlwifi/phydm/phydm_debug.c      |  8 ++++----
 drivers/staging/rtlwifi/phydm/phydm_dig.c        | 22 +++++++++++-----------
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/halphyrf_ce.c b/drivers/staging/rtlwifi/phydm/halphyrf_ce.c
index 684e383..5986892 100644
--- a/drivers/staging/rtlwifi/phydm/halphyrf_ce.c
+++ b/drivers/staging/rtlwifi/phydm/halphyrf_ce.c
@@ -798,7 +798,7 @@ void odm_txpowertracking_callback_thermal_meter(void *dm_void)
 
 		if (xtal_offset_eanble != 0 &&
 		    cali_info->txpowertrack_control &&
-		    (rtlefu->eeprom_thermalmeter != 0xff)) {
+		    rtlefu->eeprom_thermalmeter != 0xff) {
 			ODM_RT_TRACE(
 				dm, ODM_COMP_TX_PWR_TRACK,
 				"**********Enter Xtal Tracking**********\n");
diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
index 37888c30..8b2a180 100644
--- a/drivers/staging/rtlwifi/phydm/phydm.c
+++ b/drivers/staging/rtlwifi/phydm/phydm.c
@@ -1338,7 +1338,7 @@ static void odm_update_power_training_state(struct phy_dm_struct *dm)
 		return;
 
 	/* First connect */
-	if ((dm->is_linked) && !dig_tab->is_media_connect_0) {
+	if (dm->is_linked && !dig_tab->is_media_connect_0) {
 		dm->PT_score = 0;
 		dm->is_change_state = true;
 		dm->phy_dbg_info.num_qry_phy_status_ofdm = 0;
@@ -1360,7 +1360,7 @@ static void odm_update_power_training_state(struct phy_dm_struct *dm)
 			     (u32)(dm->phy_dbg_info.num_qry_phy_status_cck);
 
 		if ((false_alm_cnt->cnt_cca_all > 31 && rx_pkt_cnt > 31) &&
-		    (false_alm_cnt->cnt_cca_all >= rx_pkt_cnt)) {
+		    false_alm_cnt->cnt_cca_all >= rx_pkt_cnt) {
 			if ((rx_pkt_cnt + (rx_pkt_cnt >> 1)) <=
 			    false_alm_cnt->cnt_cca_all)
 				score = 0;
@@ -1697,7 +1697,7 @@ static u8 phydm_calculate_fc(void *dm_void, u32 channel, u32 bw, u32 second_ch,
 
 		fc = 2412 + (channel - 1) * 5;
 
-		if (bw == 40 && (second_ch == PHYDM_ABOVE)) {
+		if (bw == 40 && second_ch == PHYDM_ABOVE) {
 			if (channel >= 10) {
 				ODM_RT_TRACE(
 					dm, ODM_COMP_API,
@@ -1774,7 +1774,7 @@ static u8 phydm_calculate_intf_distance(void *dm_void, u32 bw, u32 fc,
 		     "[f_l, fc, fh] = [ %d, %d, %d ], f_int = ((%d))\n", bw_low,
 		     fc, bw_up, f_interference);
 
-	if ((f_interference >= bw_low) && (f_interference <= bw_up)) {
+	if (f_interference >= bw_low && f_interference <= bw_up) {
 		int_distance = (fc >= f_interference) ? (fc - f_interference) :
 							(f_interference - fc);
 		tone_idx_tmp =
diff --git a/drivers/staging/rtlwifi/phydm/phydm_adaptivity.c b/drivers/staging/rtlwifi/phydm/phydm_adaptivity.c
index 4f9e267..103a774 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adaptivity.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adaptivity.c
@@ -762,7 +762,7 @@ void phydm_adaptivity(void *dm_void)
 		dm->rssi_min, adaptivity->adajust_igi_level,
 		dm->adaptivity_flag, dm->adaptivity_enable);
 
-	if (adaptivity->dynamic_link_adaptivity && (!dm->is_linked) &&
+	if (adaptivity->dynamic_link_adaptivity && !dm->is_linked &&
 	    !dm->adaptivity_enable) {
 		phydm_set_edcca_threshold(dm, 0x7f, 0x7f);
 		ODM_RT_TRACE(
@@ -773,7 +773,7 @@ void phydm_adaptivity(void *dm_void)
 
 	if (dm->support_ic_type &
 	    (ODM_IC_11AC_GAIN_IDX_EDCCA | ODM_IC_11N_GAIN_IDX_EDCCA)) {
-		if ((adaptivity->adajust_igi_level > IGI) &&
+		if (adaptivity->adajust_igi_level > IGI &&
 		    dm->adaptivity_enable)
 			diff = adaptivity->adajust_igi_level - IGI;
 
diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index d4dd0fd..e18ba2c 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -1442,9 +1442,9 @@ static void phydm_get_per_path_txagc(void *dm_void, u8 path, u32 *_used,
 	u32 out_len = *_out_len;
 
 	if (((dm->support_ic_type & (ODM_RTL8822B | ODM_RTL8197F)) &&
-	     (path <= ODM_RF_PATH_B)) ||
+	     path <= ODM_RF_PATH_B) ||
 	    ((dm->support_ic_type & (ODM_RTL8821C)) &&
-	     (path <= ODM_RF_PATH_A))) {
+	     path <= ODM_RF_PATH_A)) {
 		for (rate_idx = 0; rate_idx <= 0x53; rate_idx++) {
 			if (rate_idx == ODM_RATE1M)
 				PHYDM_SNPRINTF(output + used, out_len - used,
@@ -2530,7 +2530,7 @@ void phydm_cmd_parser(struct phy_dm_struct *dm, char input[][MAX_ARGV],
 		}
 
 		/* NMH trigger */
-		if ((var1[0] <= 2) && (var1[0] != 0)) {
+		if (var1[0] <= 2 && var1[0] != 0) {
 			ccx_info->echo_NHM_en = true;
 			ccx_info->echo_IGI =
 				(u8)odm_get_bb_reg(dm, 0xC50, MASKBYTE0);
@@ -2808,7 +2808,7 @@ void phydm_fw_trace_handler(void *dm_void, u8 *cmd_buf, u8 cmd_len)
 	freg_num = (buf_0 & 0xf);
 	c2h_seq = (buf_0 & 0xf0) >> 4;
 
-	if ((c2h_seq != dm->pre_c2h_seq) && !dm->fw_buff_is_enpty) {
+	if (c2h_seq != dm->pre_c2h_seq && !dm->fw_buff_is_enpty) {
 		dm->fw_debug_trace[dm->c2h_cmd_start] = '\0';
 		ODM_RT_TRACE(dm, ODM_FW_DEBUG_TRACE,
 			     "[FW Dbg Queue Overflow] %s\n",
diff --git a/drivers/staging/rtlwifi/phydm/phydm_dig.c b/drivers/staging/rtlwifi/phydm/phydm_dig.c
index 31a4f3f..47d6e50 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_dig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_dig.c
@@ -198,7 +198,7 @@ static u8 odm_forbidden_igi_check(void *dm_void, u8 dig_dynamic_min,
 		if ((fa_cnt->cnt_all >
 		     (fa_cnt->cnt_all_pre + (fa_cnt->cnt_all_pre >> 3) +
 		      (fa_cnt->cnt_all_pre >> 4))) &&
-		    (current_igi < dig_tab->pre_ig_value)) {
+		    current_igi < dig_tab->pre_ig_value) {
 			if (dig_tab->large_fa_hit != 3)
 				dig_tab->large_fa_hit++;
 
@@ -319,7 +319,7 @@ void odm_write_dig(void *dm_void, u8 current_igi)
 		     __func__, ODM_REG(IGI_A, dm), ODM_BIT(IGI, dm));
 
 	/* 1 Check initial gain by upper bound */
-	if ((!dig_tab->is_psd_in_progress) && dm->is_linked) {
+	if (!dig_tab->is_psd_in_progress && dm->is_linked) {
 		if (current_igi > dig_tab->rx_gain_range_max) {
 			ODM_RT_TRACE(
 				dm, ODM_COMP_DIG,
@@ -353,7 +353,7 @@ void odm_write_dig(void *dm_void, u8 current_igi)
 
 		/*Add by YuChen for USB IO too slow issue*/
 		if ((dm->support_ability & ODM_BB_ADAPTIVITY) &&
-		    (current_igi > dig_tab->cur_ig_value)) {
+		    current_igi > dig_tab->cur_ig_value) {
 			dig_tab->cur_ig_value = current_igi;
 			phydm_adaptivity(dm);
 		}
@@ -388,7 +388,7 @@ void odm_pause_dig(void *dm_void, enum phydm_pause_type pause_type,
 	ODM_RT_TRACE(dm, ODM_COMP_DIG, "%s()=========> level = %d\n", __func__,
 		     pause_level);
 
-	if ((dig_tab->pause_dig_level == 0) &&
+	if (dig_tab->pause_dig_level == 0 &&
 	    (!(dm->support_ability & ODM_BB_DIG) ||
 	     !(dm->support_ability & ODM_BB_FA_CNT))) {
 		ODM_RT_TRACE(
@@ -718,7 +718,7 @@ void odm_DIG(void *dm_void)
 		/* 4 Modify DIG upper bound for 92E, 8723A\B, 8821 & 8812 BT */
 		if ((dm->support_ic_type & (ODM_RTL8192E | ODM_RTL8723B |
 					    ODM_RTL8812 | ODM_RTL8821)) &&
-		    (dm->is_bt_limited_dig == 1)) {
+		    dm->is_bt_limited_dig == 1) {
 			offset = 10;
 			ODM_RT_TRACE(
 				dm, ODM_COMP_DIG,
@@ -817,8 +817,8 @@ void odm_DIG(void *dm_void)
 	if (dm->is_linked && !first_connect) {
 		ODM_RT_TRACE(dm, ODM_COMP_DIG, "Beacon Num (%d)\n",
 			     dm->phy_dbg_info.num_qry_beacon_pkt);
-		if ((dm->phy_dbg_info.num_qry_beacon_pkt < 5) &&
-		    (dm->bsta_state)) {
+		if (dm->phy_dbg_info.num_qry_beacon_pkt < 5 &&
+		    dm->bsta_state) {
 			dig_tab->rx_gain_range_min = 0x1c;
 			ODM_RT_TRACE(
 				dm, ODM_COMP_DIG,
@@ -880,9 +880,9 @@ void odm_DIG(void *dm_void)
 				current_igi = current_igi - 2;
 
 			/* 4 Abnormal # beacon case */
-			if ((dm->phy_dbg_info.num_qry_beacon_pkt < 5) &&
-			    (fa_cnt->cnt_all < DM_DIG_FA_TH1) &&
-			    (dm->bsta_state)) {
+			if (dm->phy_dbg_info.num_qry_beacon_pkt < 5 &&
+			    fa_cnt->cnt_all < DM_DIG_FA_TH1 &&
+			    dm->bsta_state) {
 				current_igi = dig_tab->rx_gain_range_min;
 				ODM_RT_TRACE(
 					dm, ODM_COMP_DIG,
@@ -1319,7 +1319,7 @@ void odm_pause_cck_packet_detection(void *dm_void,
 	ODM_RT_TRACE(dm, ODM_COMP_DIG, "%s()=========> level = %d\n", __func__,
 		     pause_level);
 
-	if ((dig_tab->pause_cckpd_level == 0) &&
+	if (dig_tab->pause_cckpd_level == 0 &&
 	    (!(dm->support_ability & ODM_BB_CCK_PD) ||
 	     !(dm->support_ability & ODM_BB_FA_CNT))) {
 		ODM_RT_TRACE(
-- 
2.7.4


