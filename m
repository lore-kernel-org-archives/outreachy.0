X-GM-THRID: 6478086724175003648
X-Received: by 10.84.233.2 with SMTP id j2mr3938477plk.14.1508297755284;
        Tue, 17 Oct 2017 20:35:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.242.10 with SMTP id m10ls765496pfh.8.gmail; Tue, 17 Oct
 2017 20:35:54 -0700 (PDT)
X-Received: by 10.101.75.78 with SMTP id k14mr3486018pgt.101.1508297754287;
        Tue, 17 Oct 2017 20:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508297754; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNZ3tMdqb1zxnU5l2K6c9hdd5jLm4VQGNwv8inEW/CqfxQrIpMjejA2M5YxwJnZQlH
         mUJkj0dF0GOIU9F+FQPxykgXOrGF1mqlov2Q9W/7LzU1yl0zLFlMusN/HcOi4debOTW5
         fk9Eb/kBcsqP9fr0d47K1/F+i/EO81P6LCf2N0xX1p7X6ugY/2pMSfDc40xtN0P6icXq
         CV99vYajR0d6Ck6XjTTbZz+Q57Mpa88w0bD5fphEkGROvZxWa9ieFqdkc6jsc6ccyv6p
         1VvLW4x0Nq77xtAk2Qxyf8rKiohxOFZzPrRFTD+T8o2fwFhYIBWKOwN2whFq10nqkqKl
         Hdpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=3QdkRyRQKPFADsBHeGLjB8RUM6AYhkcsX65FQSLyfyw=;
        b=lOMLPyIDRNmMFi2gvQ5CMQAPy60mrWPa+ad743tLITkBWsCjwNWGeRgdNCOL7Vg0fy
         7gOg/dP+fxM+CgyZlQq9TFJtHn0wY6bzwtyOW5nR8eXIC8ksK0CzYnYmjiLbEmqVFc3x
         z5qdQ/8L6eHeWdNrvVr3pUJOn4sYKGSc8fhcAlwj6u9e6NJpDopURDxJt6cZ1hI9A1pH
         d0CoLZLI0E1kEd3hgme+8N2aBoUdzOqSiuCroOS+8BlqjZXYluG4kU37i/qB5yPV8gsb
         zjwbvMHOt0nmPS4FBccgT5ZUQAbTcSslD+bjdZbxKSXaBhZKbnPSas1QwyeNVfwAsxyt
         Be7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=meJZTSMJ;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22c as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x22c.google.com (mail-vk0-x22c.google.com. [2607:f8b0:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id z123si494277pgz.5.2017.10.17.20.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 20:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22c as permitted sender) client-ip=2607:f8b0:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=meJZTSMJ;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::22c as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x22c.google.com with SMTP id j2so2457231vki.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 20:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3QdkRyRQKPFADsBHeGLjB8RUM6AYhkcsX65FQSLyfyw=;
        b=meJZTSMJrW3+2mbZGRWjUHGFnoFoif775XWn0FedDO0nAqr//Yxs6esHiaVKHg7kUZ
         JFZnUdk2PA8ex+jVACZrvYZ/SN/6RbIPoYKDB13UHfh/a/rDSBxB65zTRfMW96l8RFe7
         z2BFQIcKOavu1sAnw+Ykwuj/FAKwhFRpSD+s9N0Kg+WLGjwO8m4IhLywM5oo8qbwRrly
         RmP/RCoC3ZNBVU7KgmTl5g9mzNvG8QxuG4UDf44vUavCnjHsK8OpFa96+Rc5eZ9rvkrK
         UuxBa+mbPBcaOD3XRELAq8u7apJ+GRgo26Nl1OIAXxT+cXDnshb4HxIDsklRDa8gnvcE
         d9WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3QdkRyRQKPFADsBHeGLjB8RUM6AYhkcsX65FQSLyfyw=;
        b=A8q0PcjmJF4uhSHeAyOzHsSQrQDNusve54uAi0AGZDfowcaSn4OySY9CRzgQrsjhod
         yUHcnjL0iwpqgpDR8KuxsMVLEkafkFeq7DNZXrlP6kSamaaajW2jG6SVk56RVTk+VMNZ
         pYxYheFdwlorvX8aHXgYahU8ENBwoKL1AuHTUXIwKD0Td2R+gf0NQGRxQ43y59VoKj7L
         7/wGSMqaDx0wHmBhszP1H4xWAgD0SIFmzgHNn2s0uyNoqlBZHh41MMBwf5Ud5Mym18u3
         6WEtnq0IcSheHqsyfAf4Zvz/SyB2F60rZVJVqduhoqj0Bz9/CrlSIvCFjMyMaUM4bort
         08yw==
X-Gm-Message-State: AMCzsaVkYHPwjGu0tY61hr0C0zlo/srlfoQzsi/0dO7E/X106f45I0uL
	Paf9g7B5+G93pggP8WmpF40T0IDP
X-Google-Smtp-Source: ABhQp+Q2YaEvAJP8jaLzpSF12MnfwqCDqvIq1paQ+JoO7aaq7S7fSlJSqPaXL894DHvNh6WRZGe3og==
X-Received: by 10.31.206.3 with SMTP id e3mr4626054vkg.89.1508297753620;
        Tue, 17 Oct 2017 20:35:53 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.125.129])
        by smtp.gmail.com with ESMTPSA id x184sm862491vkc.50.2017.10.17.20.35.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 20:35:52 -0700 (PDT)
Date: Tue, 17 Oct 2017 23:35:51 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtlwifi: rtl8822be: Remove useless parentheses
Message-ID: <de40d501a4e33d1de9ea6d7d60e02cfe14db184c.1508295702.git.frank@generalsoftwareinc.com>
References: <cover.1508295702.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508295702.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses to comply with preferred coding style for
the linux kernel and avoid the following checkpatch's message:
'CHECK: Unnecessary parentheses around'.

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtlwifi/rtl8822be/fw.c  |  4 ++--
 drivers/staging/rtlwifi/rtl8822be/led.c |  2 +-
 drivers/staging/rtlwifi/rtl8822be/phy.c | 10 +++++-----
 drivers/staging/rtlwifi/rtl8822be/trx.c | 18 +++++++++---------
 4 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/fw.c b/drivers/staging/rtlwifi/rtl8822be/fw.c
index 02f5004..fa62983 100644
--- a/drivers/staging/rtlwifi/rtl8822be/fw.c
+++ b/drivers/staging/rtlwifi/rtl8822be/fw.c
@@ -330,7 +330,7 @@ void rtl8822be_set_fw_pwrmode_cmd(struct ieee80211_hw *hw, u8 mode)
 			byte5 = btc_ops->btc_get_lps_val(rtlpriv);
 			power_state = btc_ops->btc_get_rpwm_val(rtlpriv);
 
-			if ((rlbm == 2) && (byte5 & BIT(4))) {
+			if (rlbm == 2 && (byte5 & BIT(4))) {
 				/* Keep awake interval to 1 to prevent from
 				 * decreasing coex performance
 				 */
@@ -835,7 +835,7 @@ void rtl8822be_set_p2p_ps_offload_cmd(struct ieee80211_hw *hw, u8 p2p_ps_state)
 			rtl_write_dword(rtlpriv, 0x5EC,
 					p2pinfo->noa_count_type[i]);
 		}
-		if ((p2pinfo->opp_ps == 1) || (p2pinfo->noa_num > 0)) {
+		if (p2pinfo->opp_ps == 1 || p2pinfo->noa_num > 0) {
 			/* rst p2p circuit */
 			rtl_write_byte(rtlpriv, REG_DUAL_TSF_RST_8822B, BIT(4));
 			p2p_ps_offload->offload_en = 1;
diff --git a/drivers/staging/rtlwifi/rtl8822be/led.c b/drivers/staging/rtlwifi/rtl8822be/led.c
index f4b5af8..0054c89 100644
--- a/drivers/staging/rtlwifi/rtl8822be/led.c
+++ b/drivers/staging/rtlwifi/rtl8822be/led.c
@@ -114,7 +114,7 @@ void rtl8822be_led_control(struct ieee80211_hw *hw, enum led_ctl_mode ledaction)
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 	struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 
-	if ((ppsc->rfoff_reason > RF_CHANGE_BY_PS) &&
+	if (ppsc->rfoff_reason > RF_CHANGE_BY_PS &&
 	    (ledaction == LED_CTL_TX || ledaction == LED_CTL_RX ||
 	     ledaction == LED_CTL_SITE_SURVEY || ledaction == LED_CTL_LINK ||
 	     ledaction == LED_CTL_NO_LINK ||
diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index 589ef15..aacaca6 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -1610,9 +1610,9 @@ u8 rtl8822be_get_txpower_index(struct ieee80211_hw *hw, u8 path, u8 rate,
 	char limit;
 	char powerdiff_byrate = 0;
 
-	if (((rtlhal->current_bandtype == BAND_ON_2_4G) &&
+	if ((rtlhal->current_bandtype == BAND_ON_2_4G &&
 	     (channel > 14 || channel < 1)) ||
-	    ((rtlhal->current_bandtype == BAND_ON_5G) && (channel <= 14))) {
+	    (rtlhal->current_bandtype == BAND_ON_5G && channel <= 14)) {
 		index = 0;
 		RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
 			 "Illegal channel!!\n");
@@ -1913,8 +1913,8 @@ static u8 _rtl8822be_phy_get_pri_ch_id(struct rtl_priv *rtlpriv)
 
 	if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_80) {
 		/* primary channel is at lower subband of 80MHz & 40MHz */
-		if ((mac->cur_40_prime_sc == HAL_PRIME_CHNL_OFFSET_LOWER) &&
-		    (mac->cur_80_prime_sc == HAL_PRIME_CHNL_OFFSET_LOWER)) {
+		if (mac->cur_40_prime_sc == HAL_PRIME_CHNL_OFFSET_LOWER &&
+		    mac->cur_80_prime_sc == HAL_PRIME_CHNL_OFFSET_LOWER) {
 			pri_ch_idx = VHT_DATA_SC_20_LOWEST_OF_80MHZ;
 		/* primary channel is at
 		 * lower subband of 80MHz & upper subband of 40MHz
@@ -2142,7 +2142,7 @@ static bool _rtl8822be_phy_set_rf_power_state(struct ieee80211_hw *hw,
 
 	switch (rfpwr_state) {
 	case ERFON:
-		if ((ppsc->rfpwr_state == ERFOFF) &&
+		if (ppsc->rfpwr_state == ERFOFF &&
 		    RT_IN_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC)) {
 			bool rtstatus = false;
 			u32 initialize_count = 0;
diff --git a/drivers/staging/rtlwifi/rtl8822be/trx.c b/drivers/staging/rtlwifi/rtl8822be/trx.c
index 54f65f3..87e15e4 100644
--- a/drivers/staging/rtlwifi/rtl8822be/trx.c
+++ b/drivers/staging/rtlwifi/rtl8822be/trx.c
@@ -165,7 +165,7 @@ static bool rtl8822be_get_rxdesc_is_ht(struct ieee80211_hw *hw, u8 *pdesc)
 
 	RT_TRACE(rtlpriv, COMP_RXDESC, DBG_LOUD, "rx_rate=0x%02x.\n", rx_rate);
 
-	if ((rx_rate >= DESC_RATEMCS0) && (rx_rate <= DESC_RATEMCS15))
+	if (rx_rate >= DESC_RATEMCS0 && rx_rate <= DESC_RATEMCS15)
 		return true;
 	else
 		return false;
@@ -193,8 +193,8 @@ static u8 rtl8822be_get_rx_vht_nss(struct ieee80211_hw *hw, u8 *pdesc)
 
 	rx_rate = GET_RX_DESC_RX_RATE(pdesc);
 
-	if ((rx_rate >= DESC_RATEVHT1SS_MCS0) &&
-	    (rx_rate <= DESC_RATEVHT1SS_MCS9))
+	if (rx_rate >= DESC_RATEVHT1SS_MCS0 &&
+	    rx_rate <= DESC_RATEVHT1SS_MCS9)
 		vht_nss = 1;
 	else if ((rx_rate >= DESC_RATEVHT2SS_MCS0) &&
 		 (rx_rate <= DESC_RATEVHT2SS_MCS9))
@@ -510,8 +510,8 @@ static u8 rtl8822be_bw_mapping(struct ieee80211_hw *hw,
 		else
 			bw_setting_of_desc = 0;
 	} else if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
-		if ((ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40) ||
-		    (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_80))
+		if (ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_20_40 ||
+		    ptcb_desc->packet_bw == HT_CHANNEL_WIDTH_80)
 			bw_setting_of_desc = 1;
 		else
 			bw_setting_of_desc = 0;
@@ -546,10 +546,10 @@ static u8 rtl8822be_sc_mapping(struct ieee80211_hw *hw,
 					 "%s: Not Correct Primary40MHz Setting\n",
 					 __func__);
 		} else {
-			if ((mac->cur_40_prime_sc ==
-			     HAL_PRIME_CHNL_OFFSET_LOWER) &&
-			    (mac->cur_80_prime_sc ==
-			     HAL_PRIME_CHNL_OFFSET_LOWER))
+			if (mac->cur_40_prime_sc ==
+			     HAL_PRIME_CHNL_OFFSET_LOWER &&
+			    mac->cur_80_prime_sc ==
+			     HAL_PRIME_CHNL_OFFSET_LOWER)
 				sc_setting_of_desc =
 					VHT_DATA_SC_20_LOWEST_OF_80MHZ;
 			else if ((mac->cur_40_prime_sc ==
-- 
2.7.4


