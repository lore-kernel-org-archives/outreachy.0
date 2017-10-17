X-GM-THRID: 6477990631903854592
X-Received: by 10.99.164.18 with SMTP id c18mr3295198pgf.56.1508274728762;
        Tue, 17 Oct 2017 14:12:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.133 with SMTP id r5ls597206pgp.31.gmail; Tue, 17 Oct
 2017 14:12:07 -0700 (PDT)
X-Received: by 10.101.80.194 with SMTP id s2mr3340343pgp.11.1508274727638;
        Tue, 17 Oct 2017 14:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508274727; cv=none;
        d=google.com; s=arc-20160816;
        b=w/a2lg2L8rQXQu1JuVqVltZtsiIivjwt5ntFHPwyGN0iI7t9R0GQ2aKLN3x5L71enm
         MNCwGx7UdgcTCDg0jP0MOSmNUwgCCYXF6K28EZ8sNb/OiWnMZ0F6Kq8lhXs9ebW+KXhz
         FP+QYzZ82LFHa6TVYY05Cv5XpQt9ixda+t2c9aSAz+huf07dmGROjKX1eu5xeVBdS9Xj
         qVzGkS8GQi04pRhCqFm2wycsgStRnyOrVEcFreSH1SMblXbefG4hnZ4JqjEAOk+a5WSm
         NONR3AU4v9VXI/VXHmLxI9x90jC6/AaBriX1gOersqXTZqgwzCDgOYXh5/RaVZnH3gHL
         wg3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=lmI4YrpytPsDeyqjEg+Dm839xapDI5tGjzNy38Qxccg=;
        b=DK1Z3pYkjzHoa/w8B2vPVSX9RmTWIFJ1M2rFKhffHtEq3e/vGHmzSiUR+QWtvkc40N
         iYNFwKDV2FWyQ8AO26amX12bZotcjsZ3TjUBJKAfZcv+fksiLQH4VkYIvO7nolgXTLWD
         3WUnwiU0PYI7pQew4VIBfnRgYzG8/e9YZMV4g0xs5DitizwuHEOey4p67q3Txl3P834N
         TYUclk5rO6SfOC1uQRUFUNPjhGPL2dFi1TWY10uKW1Ogg6EIR3gbImeYHoQ/AhGKTCK2
         OBxr7qYl/Gd5KIelTZ+YCQlwYMHsMewSgcQB7hStjxpaIC5pmQPkPQ7QkuS5w5pXhA3F
         O2qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=YX8tyi4H;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::235 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x235.google.com (mail-ua0-x235.google.com. [2607:f8b0:400c:c08::235])
        by gmr-mx.google.com with ESMTPS id e6si633884pgt.2.2017.10.17.14.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 14:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::235 as permitted sender) client-ip=2607:f8b0:400c:c08::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=YX8tyi4H;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::235 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x235.google.com with SMTP id v27so2155171uav.7
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lmI4YrpytPsDeyqjEg+Dm839xapDI5tGjzNy38Qxccg=;
        b=YX8tyi4HN8/Gf4UFV9NN0R+Z+SK+aYO6wODK8vzsaOOCT4l3qBKXbKjwrZoSQPBXF2
         LpJfHLZWlUhFDGXeRuIMv4wsXUD9wuhKHTfSg9dQxVFsqr3AXCpCcyIhqsWHPnqDHXD9
         AO+o2jUTbexWIUwIwxxslKh9HUteq+xFg8jN5yoTBDUMkWkgqBpnBLReUvixFwi1clRZ
         CwxebHiqeSbqKZuFTf5MhWxMaYARWNWiriBk7jRHh/pd0uMDaRxdohZdnCR3J8RkVT8H
         WTpplnwH6Xc/bRspea2AXUmE54gt7ilHDp/eIL4l0ofA4/gIclewX1TXlaFt2d8jiOiK
         SUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lmI4YrpytPsDeyqjEg+Dm839xapDI5tGjzNy38Qxccg=;
        b=rrDYlomucz7Ob/0SqjAnbvUlm7MKVui5rB4ZOFP+IU4NLWf9JLUM3P/6BI1VCHFuxM
         oXnEJydA8wyZHtEKjQ9B2+jtJa0WN+fw7R0r2WGwYq0cfDAdPUeeVbbBEkTlEzGVT+0q
         7eDFxsYRrX7lr87pim1PDt8V6ynODKL9OfA3yHbdYQAmsNH9EXKZuFSuIJpHjuTqJrzM
         DVWmeZUEpryaFctqtiaWF1m2g69d3suq4XyY0RGrk6fcW0K7LxXqZrDmIpSQovWagp1u
         KdP2Lm2HiqdXVTfmo25OB/yzFrC3qGmqU/pPOXPSU80LM4SmxOBybKJOzt4r373ox0Ze
         5hGQ==
X-Gm-Message-State: AMCzsaVIm6SKSOLN37X2z9x/ldh5PwQHsMFdiz24/FD3aqvDyeUxUocp
	iPF32+T7tpK4dc2bAOMkE5fyG3sU
X-Google-Smtp-Source: ABhQp+QOWbQoAi+vqsjKg9wqF1gcWiHw9F8qRjGTR+qdc15VZmAbT6i+xHol/xTdpZyBYuYQ/7Jlww==
X-Received: by 10.159.34.81 with SMTP id 75mr857410uad.148.1508274726329;
        Tue, 17 Oct 2017 14:12:06 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id c190sm2477563vke.41.2017.10.17.14.12.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 14:12:05 -0700 (PDT)
Date: Tue, 17 Oct 2017 17:12:03 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: Remove unnecessary parentheses
Message-ID: <20171017211203.GA9067@ubuntu-server-1604>
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
 drivers/staging/rtlwifi/base.c  | 30 +++++++++++++++---------------
 drivers/staging/rtlwifi/core.c  | 24 ++++++++++++------------
 drivers/staging/rtlwifi/debug.c |  4 ++--
 drivers/staging/rtlwifi/rc.c    | 12 ++++++------
 4 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index b88b0e8..7f86257 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -637,7 +637,7 @@ static void _rtl_query_shortgi(struct ieee80211_hw *hw,
 	sgi_20 = sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20;
 	sgi_80 = sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_80;
 
-	if ((!sta->ht_cap.ht_supported) && (!sta->vht_cap.vht_supported))
+	if (!sta->ht_cap.ht_supported && !sta->vht_cap.vht_supported)
 		return;
 
 	if (!sgi_40 && !sgi_20)
@@ -734,10 +734,10 @@ u8 rtl_mrate_idx_to_arfr_id(
 		ret = RATEID_IDX_B;
 		break;
 	case RATR_INX_WIRELESS_MC:
-		if ((wirelessmode == WIRELESS_MODE_B) ||
-		    (wirelessmode == WIRELESS_MODE_G) ||
-		    (wirelessmode == WIRELESS_MODE_N_24G) ||
-		    (wirelessmode == WIRELESS_MODE_AC_24G))
+		if (wirelessmode == WIRELESS_MODE_B ||
+		    wirelessmode == WIRELESS_MODE_G ||
+		    wirelessmode == WIRELESS_MODE_N_24G ||
+		    wirelessmode == WIRELESS_MODE_AC_24G)
 			ret = RATEID_IDX_BG;
 		else
 			ret = RATEID_IDX_G;
@@ -948,8 +948,8 @@ static u8 _rtl_get_highest_n_rate(struct ieee80211_hw *hw,
 	struct rtl_phy *rtlphy = &rtlpriv->phy;
 	u8 hw_rate;
 
-	if ((get_rf_type(rtlphy) == RF_2T2R) &&
-	    (sta->ht_cap.mcs.rx_mask[1] != 0))
+	if (get_rf_type(rtlphy) == RF_2T2R &&
+	    sta->ht_cap.mcs.rx_mask[1] != 0)
 		hw_rate = rtlpriv->cfg->maps[RTL_RC_HT_RATEMCS15];
 	else
 		hw_rate = rtlpriv->cfg->maps[RTL_RC_HT_RATEMCS7];
@@ -1277,7 +1277,7 @@ void rtl_get_tcb_desc(struct ieee80211_hw *hw,
 				tcb_desc->hw_rate =
 				_rtl_get_vht_highest_n_rate(hw, sta);
 			} else {
-				if (sta && (sta->ht_cap.ht_supported)) {
+				if (sta && sta->ht_cap.ht_supported) {
 					tcb_desc->hw_rate =
 					    _rtl_get_highest_n_rate(hw, sta);
 				} else {
@@ -2080,9 +2080,9 @@ void rtl_watchdog_wq_callback(void *data)
 		    rtlpriv->btcoexist.btc_ops->btc_is_bt_ctrl_lps(rtlpriv))
 			goto label_lps_done;
 
-		if (((rtlpriv->link_info.num_rx_inperiod +
-		      rtlpriv->link_info.num_tx_inperiod) > 8) ||
-		    (rtlpriv->link_info.num_rx_inperiod > 2))
+		if (rtlpriv->link_info.num_rx_inperiod +
+		      rtlpriv->link_info.num_tx_inperiod > 8 ||
+		    rtlpriv->link_info.num_rx_inperiod > 2)
 			rtl_lps_leave(hw);
 		else
 			rtl_lps_enter(hw);
@@ -2552,8 +2552,8 @@ bool rtl_check_beacon_key(struct ieee80211_hw *hw, void *data, unsigned int len)
 	bcn_key.valid = true;
 
 	/* update cur_beacon_keys or compare beacon key */
-	if ((rtlpriv->mac80211.link_state != MAC80211_LINKED) &&
-	    (rtlpriv->mac80211.link_state != MAC80211_LINKED_SCANNING))
+	if (rtlpriv->mac80211.link_state != MAC80211_LINKED &&
+	    rtlpriv->mac80211.link_state != MAC80211_LINKED_SCANNING)
 		return true;
 
 	if (!cur_bcn_key->valid) {
@@ -2576,8 +2576,8 @@ bool rtl_check_beacon_key(struct ieee80211_hw *hw, void *data, unsigned int len)
 		goto chk_exit;
 	}
 
-	if ((cur_bcn_key->bcn_channel == bcn_key.bcn_channel) &&
-	    (cur_bcn_key->ht_cap_info == bcn_key.ht_cap_info)) {
+	if (cur_bcn_key->bcn_channel == bcn_key.bcn_channel &&
+	    cur_bcn_key->ht_cap_info == bcn_key.ht_cap_info) {
 		/* Beacon HT info IE, secondary channel offset check */
 		/* 40M -> 20M */
 		if (cur_bcn_key->ht_info_infos_0_sco >
diff --git a/drivers/staging/rtlwifi/core.c b/drivers/staging/rtlwifi/core.c
index b55e183..89dc6d4 100644
--- a/drivers/staging/rtlwifi/core.c
+++ b/drivers/staging/rtlwifi/core.c
@@ -302,9 +302,9 @@ static void rtl_op_remove_interface(struct ieee80211_hw *hw,
 	mutex_lock(&rtlpriv->locks.conf_mutex);
 
 	/* Free beacon resources */
-	if ((vif->type == NL80211_IFTYPE_AP) ||
-	    (vif->type == NL80211_IFTYPE_ADHOC) ||
-	    (vif->type == NL80211_IFTYPE_MESH_POINT)) {
+	if (vif->type == NL80211_IFTYPE_AP ||
+	    vif->type == NL80211_IFTYPE_ADHOC ||
+	    vif->type == NL80211_IFTYPE_MESH_POINT) {
 		if (mac->beacon_enabled == 1) {
 			mac->beacon_enabled = 0;
 			rtlpriv->cfg->ops->update_interrupt_mask(hw, 0,
@@ -820,8 +820,8 @@ static void rtl_op_configure_filter(struct ieee80211_hw *hw,
 	 * here just used for linked scanning, & linked
 	 * and nolink check bssid is set in set network_type
 	 */
-	if ((changed_flags & FIF_BCN_PRBRESP_PROMISC) &&
-	    (mac->link_state >= MAC80211_LINKED)) {
+	if (changed_flags & FIF_BCN_PRBRESP_PROMISC &&
+	    mac->link_state >= MAC80211_LINKED) {
 		if (mac->opmode != NL80211_IFTYPE_AP &&
 		    mac->opmode != NL80211_IFTYPE_MESH_POINT) {
 			if (*new_flags & FIF_BCN_PRBRESP_PROMISC)
@@ -1042,10 +1042,10 @@ static void rtl_op_bss_info_changed(struct ieee80211_hw *hw,
 	struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 
 	mutex_lock(&rtlpriv->locks.conf_mutex);
-	if ((vif->type == NL80211_IFTYPE_ADHOC) ||
-	    (vif->type == NL80211_IFTYPE_AP) ||
-	    (vif->type == NL80211_IFTYPE_MESH_POINT)) {
-		if ((changed & BSS_CHANGED_BEACON) ||
+	if (vif->type == NL80211_IFTYPE_ADHOC ||
+	    vif->type == NL80211_IFTYPE_AP ||
+	    vif->type == NL80211_IFTYPE_MESH_POINT) {
+		if (changed & BSS_CHANGED_BEACON ||
 		    (changed & BSS_CHANGED_BEACON_ENABLED &&
 		     bss_conf->enable_beacon)) {
 			if (mac->beacon_enabled == 0) {
@@ -1585,8 +1585,8 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 		return -ENOSPC;	/*User disabled HW-crypto */
 	}
 	/* To support IBSS, use sw-crypto for GTK */
-	if (((vif->type == NL80211_IFTYPE_ADHOC) ||
-	     (vif->type == NL80211_IFTYPE_MESH_POINT)) &&
+	if ((vif->type == NL80211_IFTYPE_ADHOC ||
+	     vif->type == NL80211_IFTYPE_MESH_POINT) &&
 	    !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
 		return -ENOSPC;
 	RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
@@ -1661,7 +1661,7 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 			rtlpriv->cfg->ops->enable_hw_sec(hw);
 		}
 	} else {
-		if ((!group_key) || (vif->type == NL80211_IFTYPE_ADHOC) ||
+		if (!group_key || vif->type == NL80211_IFTYPE_ADHOC ||
 		    rtlpriv->sec.pairwise_enc_algorithm == NO_ENCRYPTION) {
 			if (rtlpriv->sec.pairwise_enc_algorithm ==
 			    NO_ENCRYPTION &&
diff --git a/drivers/staging/rtlwifi/debug.c b/drivers/staging/rtlwifi/debug.c
index 63a9b70..be8d72c 100644
--- a/drivers/staging/rtlwifi/debug.c
+++ b/drivers/staging/rtlwifi/debug.c
@@ -33,7 +33,7 @@ void _rtl_dbg_trace(struct rtl_priv *rtlpriv, u64 comp, int level,
 		    const char *fmt, ...)
 {
 	if (unlikely((comp & rtlpriv->cfg->mod_params->debug_mask) &&
-		     (level <= rtlpriv->cfg->mod_params->debug_level))) {
+		     level <= rtlpriv->cfg->mod_params->debug_level)) {
 		struct va_format vaf;
 		va_list args;
 
@@ -52,7 +52,7 @@ void _rtl_dbg_print(struct rtl_priv *rtlpriv, u64 comp, int level,
 		    const char *fmt, ...)
 {
 	if (unlikely((comp & rtlpriv->cfg->mod_params->debug_mask) &&
-		     (level <= rtlpriv->cfg->mod_params->debug_level))) {
+		     level <= rtlpriv->cfg->mod_params->debug_level)) {
 		struct va_format vaf;
 		va_list args;
 
diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
index 779a5c6..c835be9 100644
--- a/drivers/staging/rtlwifi/rc.c
+++ b/drivers/staging/rtlwifi/rc.c
@@ -125,8 +125,8 @@ static void _rtl_rc_rate_set_series(struct rtl_priv *rtlpriv,
 	}
 	rate->count = tries;
 	rate->idx = rix >= 0x00 ? rix : 0x00;
-	if (((rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8812AE) ||
-	     (rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8822BE)) &&
+	if ((rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8812AE ||
+	     rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8822BE) &&
 	    wireless_mode == WIRELESS_MODE_AC_5G)
 		rate->idx |= 0x10;/*2NSS for 8812AE, 8822BE*/
 
@@ -138,7 +138,7 @@ static void _rtl_rc_rate_set_series(struct rtl_priv *rtlpriv,
 			if (sta && (sta->ht_cap.cap &
 				    IEEE80211_HT_CAP_SUP_WIDTH_20_40))
 				rate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
-			if (sta && (sta->vht_cap.vht_supported))
+			if (sta && sta->vht_cap.vht_supported)
 				rate->flags |= IEEE80211_TX_RC_80_MHZ_WIDTH;
 		} else {
 			if (mac->bw_80)
@@ -150,8 +150,8 @@ static void _rtl_rc_rate_set_series(struct rtl_priv *rtlpriv,
 		if (sgi_20 || sgi_40 || sgi_80)
 			rate->flags |= IEEE80211_TX_RC_SHORT_GI;
 		if (sta && sta->ht_cap.ht_supported &&
-		    ((wireless_mode == WIRELESS_MODE_N_5G) ||
-		     (wireless_mode == WIRELESS_MODE_N_24G)))
+		    (wireless_mode == WIRELESS_MODE_N_5G ||
+		     wireless_mode == WIRELESS_MODE_N_24G))
 			rate->flags |= IEEE80211_TX_RC_MCS;
 		if (sta && sta->vht_cap.vht_supported &&
 		    (wireless_mode == WIRELESS_MODE_AC_5G ||
@@ -232,7 +232,7 @@ static void rtl_tx_status(void *ppriv,
 	if (sta) {
 		/* Check if aggregation has to be enabled for this tid */
 		sta_entry = (struct rtl_sta_info *)sta->drv_priv;
-		if ((sta->ht_cap.ht_supported) &&
+		if (sta->ht_cap.ht_supported &&
 		    !(skb->protocol == cpu_to_be16(ETH_P_PAE))) {
 			if (ieee80211_is_data_qos(fc)) {
 				u8 tid = rtl_get_tid(skb);
-- 
2.7.4


