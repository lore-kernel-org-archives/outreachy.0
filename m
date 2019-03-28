X-GM-THRID: 6673408192486047744
X-Received: by 2002:aca:3841:: with SMTP id f62mr2576807oia.9.1553773924589;
        Thu, 28 Mar 2019 04:52:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:e683:: with SMTP id d125ls3503049oih.5.gmail; Thu, 28
 Mar 2019 04:52:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUmGNGKqwKMAZkFhoBmC4J9P8C0HZr70JP3+TgDvybIA+fLix1yaEEcWjKQV0YmPbcz7mG
X-Received: by 2002:aca:c7c4:: with SMTP id x187mr1631514oif.2.1553773923648;
        Thu, 28 Mar 2019 04:52:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553773923; cv=none;
        d=google.com; s=arc-20160816;
        b=qIvmskoPaobso5oRH6pKuzHc0py9k5dL9jeGI7K7BVHiSbqUoCzK9lzkDgK8jMZLJi
         J2G/CEyhK3o4yHGhJscB6edTplKFYo/gJHlsGdKSO5vYq5S5xDA9zdeoOw+Srbl7p8ID
         OQTlYqqEFvGKAlJJYRXqpoQCgVxakicYKhUGrsJBr6Hh9Xo9OhSplIgtBFBh2M7iYUj5
         EYkzNBkHf6yla0DN8ia38R1Bf48+SCm1OD/DehzUZBxToRvWpE20BFXnGrWIafOMQ6QK
         MHQryAPEiLCUQgf0w/s9/z6ihMCSY1bOKhDv4GaBOfXsaab0SDQeOR5gkEPaUdYZmymp
         9JGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=4hdYCdwk0Bin2lvA/BcGirgDNzVKoAgF8bpg2NuIpnE=;
        b=P1BXspvKS8VDTP5ZEjZEHhZffYeFWVlC7gH7L1yG4Z5DtWpd58AD5uiGaOja5JmZb1
         7LatKIUTj3IR9ZC3Eq1WyDD9e4KmHYr/XMpeQbNq+4QN6ucdqHXz3SkodswRKg/1Ytut
         uDD0U/QwFBEWNm6fSOEtSxWehMlH4U7mCHi1HKotWn/JEl0PLr9MLr6EU8oFop7FCRIK
         9OjSnEuBP4fGm7NYg89WlqfS864kOFZ9uetaPNmh0j3lTUAy3ZxrWXthwGEEdV4lL7Vx
         6Pan67sYaCERXbRblPY+gbkr2R+OUvDvJOCHZUPRlf0kGdR2B9VrNu6+jfEJKMIJM8m4
         Qrvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADEsJhlS;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x4si1499664otg.2.2019.03.28.04.52.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 04:52:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADEsJhlS;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i2so11476609pgj.11
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 04:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4hdYCdwk0Bin2lvA/BcGirgDNzVKoAgF8bpg2NuIpnE=;
        b=ADEsJhlSiIgLyL7FOoKMjGzzTuQVbeJ3UFU0B9eOM/JPZN9rTFBG3Sjlk3R4dcMzP7
         +knSlPNF/eEPrfjit0QFM5VeSgmvKCtOETjthmDC8QkHg0TUCnqv6gPsFmWTkc+jUKq3
         DYevsznBZsXrbYPLtll7QTxKdS6XNXjkfyzwPGWFHJcYh56ZjthcjNetr8IDHeQ0rEqG
         lzYg9d4ysbi8xDL7Et4BSzJdriZtApcvosn3asZDsovYfXiH80akTfgX2yXVIUCgvSB6
         o7Jur+4/+ulvUIF6rLJzWXPlL3mjBy7D2PLWFIE7MCREHk4JRfQBoTYJWxV2hFzY1eqP
         AKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4hdYCdwk0Bin2lvA/BcGirgDNzVKoAgF8bpg2NuIpnE=;
        b=eqkSxU4ruih1sDso2+7bp5dTYVWwhn/LBMZ8lTiYEx6RNGEsOPgHDLD3U+riECEM7E
         A+WEmh0M3vgKIZsLbTIXdmRe2Q07jtKaIZlwXpCUkenn+hXn53I04/kG5q+l2nFojBZG
         fFQ5DLeuGo2e4sTOpzdkHK83a0m3BuavaHt6fDzUgtV5g7yba8PRDn27a+qc5L8qJSkx
         WDZX+FeHaZepZsUooOjy/B+2Y/z/zINtloMMpo5QCuXmYdcSWtPJCYY/LlSq41ZJuclV
         iqga9+rIFGXYizTIJ2E0AcZNHL0h5qjULSmzKnTMlulkI8ZqHD8+wokMSHDFaE0Zsz8x
         9N8g==
X-Gm-Message-State: APjAAAVpUOcVNqy4AHabgg/UEPgFy9I9OdVatGQRI3G9EF4C/BRrG/bd
	hVrfYfnAvxYlsk9OZQb6RJ0a/70V
X-Received: by 2002:aa7:8818:: with SMTP id c24mr40394819pfo.129.1553773922520;
        Thu, 28 Mar 2019 04:52:02 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.249.65])
        by smtp.gmail.com with ESMTPSA id p86sm42366742pfa.104.2019.03.28.04.51.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Mar 2019 04:52:00 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: Remove unnecessary parentheses
Date: Thu, 28 Mar 2019 17:20:57 +0530
Message-Id: <1553773857-4964-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.

This patch removes unnecessary parentheses around the right hand side of an assignment.
Using following script: 

@@ 
local idexpression id;
expression e1,e2;
@@

- id = (e1<<e2)
+ id = e1<<e2

@@ 
local idexpression id;
expression e1,e2;
@@

- id = (e1>>e2)
+ id = e1>>e2

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
diff -u -p a/rtlwifi/phydm/phydm.c b/rtlwifi/phydm/phydm.c
--- a/rtlwifi/phydm/phydm.c
+++ b/rtlwifi/phydm/phydm.c
@@ -1766,8 +1766,7 @@ static u8 phydm_calculate_intf_distance(
 	if (f_interference >= bw_low && f_interference <= bw_up) {
 		int_distance = (fc >= f_interference) ? (fc - f_interference) :
 							(f_interference - fc);
-		tone_idx_tmp =
-			(int_distance << 5); /* =10*(int_distance /0.3125) */
+		tone_idx_tmp = int_distance << 5; /* =10*(int_distance /0.3125) */
 		ODM_RT_TRACE(
 			dm, ODM_COMP_API,
 			"int_distance = ((%d MHz)) Mhz, tone_idx_tmp = ((%d.%d))\n",
diff -u -p a/rtlwifi/phydm/phydm_adc_sampling.c b/rtlwifi/phydm/phydm_adc_sampling.c
--- a/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/rtlwifi/phydm/phydm_adc_sampling.c
@@ -67,7 +67,7 @@ static void phydm_la_get_tx_pkt_buf(void
 			"is_round_up = ((%d)), finish_addr=((0x%x)), 0x7c0=((0x%x))\n",
 			is_round_up, finish_addr, value32);
 		/*Byte to 64Byte*/
-		smp_number = ((adc_smp_buf->buffer_size) >> 3);
+		smp_number = (adc_smp_buf->buffer_size) >> 3;
 	} else {
 		addr = adc_smp_buf->start_pos;
 
diff -u -p a/rtlwifi/phydm/phydm_hwconfig.c b/rtlwifi/phydm/phydm_hwconfig.c
--- a/rtlwifi/phydm/phydm_hwconfig.c
+++ b/rtlwifi/phydm/phydm_hwconfig.c
@@ -59,10 +59,7 @@ static u32 phydm_process_rssi_pwdb(struc
 			weighting = ((entry->rssi_stat.ofdm_pkt) > 4) ?
 					    64 :
 					    (entry->rssi_stat.ofdm_pkt << 4);
-			undecorated_smoothed_pwdb =
-				(weighting * undecorated_smoothed_ofdm +
-				 (64 - weighting) * undecorated_smoothed_cck) >>
-				6;
+			undecorated_smoothed_pwdb = (weighting * undecorated_smoothed_ofdm + (64 - weighting) * undecorated_smoothed_cck) >> 6;
 			ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
 				     "PWDB_1[%d] = (( %d )), W = (( %d ))\n",
 				     pktinfo->station_id,
@@ -218,16 +215,14 @@ static u32 phydm_process_rssi_ofdm(struc
 		/* Calculate average RSSI */
 		switch (rx_count) {
 		case 2:
-			rssi_linear = (rssi_linear >> 1);
+			rssi_linear = rssi_linear >> 1;
 			break;
 		case 3:
 			/* rssi_linear/3 ~ rssi_linear*11/32 */
-			rssi_linear = ((rssi_linear) + (rssi_linear << 1) +
-				       (rssi_linear << 3)) >>
-				      5;
+			rssi_linear = ((rssi_linear) + (rssi_linear << 1) + (rssi_linear << 3)) >> 5;
 			break;
 		case 4:
-			rssi_linear = (rssi_linear >> 2);
+			rssi_linear = rssi_linear >> 2;
 			break;
 		}
 
@@ -582,7 +577,7 @@ static void odm_rx_phy_status92c_series_
 		if (dm->support_ic_type & (ODM_RTL8703B)) {
 		} else { /*3 bit LNA*/
 
-			LNA_idx = ((cck_agc_rpt & 0xE0) >> 5);
+			LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
 			VGA_idx = (cck_agc_rpt & 0x1F);
 		}
 
@@ -813,7 +808,7 @@ static void odm_rx_phy_status_jaguar_ser
 		cck_highpwr = dm->is_cck_high_power;
 
 		cck_agc_rpt = phy_sta_rpt->cfosho[0];
-		LNA_idx = ((cck_agc_rpt & 0xE0) >> 5);
+		LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
 		VGA_idx = (cck_agc_rpt & 0x1F);
 
 		if (dm->support_ic_type == ODM_RTL8812) {
@@ -1435,7 +1430,7 @@ static void phydm_set_per_path_phy_info(
 
 	if (rx_evm < 0) {
 		/* Calculate EVM in dBm */
-		evm_dbm = ((u8)(0 - rx_evm) >> 1);
+		evm_dbm = (u8)(0 - rx_evm) >> 1;
 
 		/* Calculate EVM in percentage */
 		if (evm_dbm >= 33)
@@ -1774,32 +1769,26 @@ phydm_process_rssi_for_dm_new_type(struc
 
 		switch (phy_info->rx_count + 1) {
 		case 2:
-			rssi_linear = (rssi_linear >> 1);
+			rssi_linear = rssi_linear >> 1;
 			break;
 		case 3:
 			/* rssi_linear/3 ~ rssi_linear*11/32 */
-			rssi_linear = ((rssi_linear) + (rssi_linear << 1) +
-				       (rssi_linear << 3)) >>
-				      5;
+			rssi_linear = ((rssi_linear) + (rssi_linear << 1) + (rssi_linear << 3)) >> 5;
 			break;
 		case 4:
-			rssi_linear = (rssi_linear >> 2);
+			rssi_linear = rssi_linear >> 2;
 			break;
 		}
 		rssi_ave = odm_convert_to_db(rssi_linear);
 
 		if (undecorated_smoothed_pwdb <= 0) {
-			accumulate_pwdb =
-				(phy_info->rx_pwdb_all << scaling_factor);
+			accumulate_pwdb = phy_info->rx_pwdb_all << scaling_factor;
 			undecorated_smoothed_pwdb = phy_info->rx_pwdb_all;
 		} else {
 			accumulate_pwdb = accumulate_pwdb -
 					  (accumulate_pwdb >> scaling_factor) +
 					  rssi_ave;
-			undecorated_smoothed_pwdb =
-				(accumulate_pwdb +
-				 (1 << (scaling_factor - 1))) >>
-				scaling_factor;
+			undecorated_smoothed_pwdb = (accumulate_pwdb + (1 << (scaling_factor - 1))) >> scaling_factor;
 		}
 
 		entry->rssi_stat.undecorated_smoothed_pwdb =
diff -u -p a/rtlwifi/btcoexist/halbtc8822b1ant.c b/rtlwifi/btcoexist/halbtc8822b1ant.c
--- a/rtlwifi/btcoexist/halbtc8822b1ant.c
+++ b/rtlwifi/btcoexist/halbtc8822b1ant.c
@@ -4035,7 +4035,7 @@ void ex_btc8822b1ant_display_coex_info(s
 	btcoexist->btc_get(btcoexist, BTC_GET_U4_WIFI_FW_VER, &fw_ver);
 	phyver = btcoexist->btc_get_bt_phydm_version(btcoexist);
 
-	bt_coex_ver = ((coex_sta->bt_coex_supported_version & 0xff00) >> 8);
+	bt_coex_ver = (coex_sta->bt_coex_supported_version & 0xff00) >> 8;
 
 	seq_printf(
 		m, "\r\n %-35s = %d_%02x/ 0x%02x/ 0x%02x (%s)",
diff -u -p a/rtlwifi/efuse.c b/rtlwifi/efuse.c
--- a/rtlwifi/efuse.c
+++ b/rtlwifi/efuse.c
@@ -266,7 +266,7 @@ void read_efuse(struct ieee80211_hw *hw,
 	while ((*rtemp8 != 0xFF) && (efuse_addr < efuse_len)) {
 		/*  Check PG header for section num.  */
 		if ((*rtemp8 & 0x1F) == 0x0F) {/* extended header */
-			u1temp = ((*rtemp8 & 0xE0) >> 5);
+			u1temp = (*rtemp8 & 0xE0) >> 5;
 			read_efuse_byte(hw, efuse_addr, rtemp8);
 
 			if ((*rtemp8 & 0x0F) == 0x0F) {
diff -u -p a/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c b/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
--- a/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
+++ b/rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c
@@ -838,7 +838,7 @@ halmac_check_efuse_enough_88xx(struct ha
 				(*(eeprom_mask_updated + (i >> 4)) & 0x0F);
 			word_enb = pre_word_enb ^ 0x0F;
 		} else {
-			pre_word_enb = (*(eeprom_mask_updated + (i >> 4)) >> 4);
+			pre_word_enb = *(eeprom_mask_updated + (i >> 4)) >> 4;
 			word_enb = pre_word_enb ^ 0x0F;
 		}
 
@@ -912,7 +912,7 @@ halmac_program_efuse_88xx(struct halmac_
 				(*(eeprom_mask_updated + (i >> 4)) & 0x0F);
 			word_enb = pre_word_enb ^ 0x0F;
 		} else {
-			pre_word_enb = (*(eeprom_mask_updated + (i >> 4)) >> 4);
+			pre_word_enb = *(eeprom_mask_updated + (i >> 4)) >> 4;
 			word_enb = pre_word_enb ^ 0x0F;
 		}
 
diff -u -p a/media/zoran/zoran_device.c b/media/zoran/zoran_device.c
--- a/media/zoran/zoran_device.c
+++ b/media/zoran/zoran_device.c
@@ -496,7 +496,7 @@ zr36057_overlay (struct zoran *zr,
 				KERN_ERR
 				"%s: zr36057_overlay() - video_stride not aligned\n",
 				ZR_DEVNAME(zr));
-		reg = (reg << ZR36057_VSSFGR_DispStride);
+		reg = reg << ZR36057_VSSFGR_DispStride;
 		reg |= ZR36057_VSSFGR_VidOvf;	/* clear overflow status */
 		btwrite(reg, ZR36057_VSSFGR);
 
@@ -1421,7 +1421,7 @@ zoran_irq (int             irq,
 					reg = 0;
 					if (zr->v4l_settings.height > BUZ_MAX_HEIGHT / 2)
 						reg += zr->v4l_settings.bytesperline;
-					reg = (reg << ZR36057_VSSFGR_DispStride);
+					reg = reg << ZR36057_VSSFGR_DispStride;
 					reg |= ZR36057_VSSFGR_VidOvf;
 					reg |= ZR36057_VSSFGR_SnapShot;
 					reg |= ZR36057_VSSFGR_FrameGrab;
diff -u -p a/comedi/drivers/usbduxsigma.c b/comedi/drivers/usbduxsigma.c
--- a/comedi/drivers/usbduxsigma.c
+++ b/comedi/drivers/usbduxsigma.c
@@ -1121,8 +1121,8 @@ static void usbduxsigma_pwm_pattern(stru
 				    unsigned int sign)
 {
 	struct usbduxsigma_private *devpriv = dev->private;
-	char pwm_mask = (1 << chan);	/* DIO bit for the PWM data */
-	char sgn_mask = (16 << chan);	/* DIO bit for the sign */
+	char pwm_mask = 1 << chan;	/* DIO bit for the PWM data */
+	char sgn_mask = 16 << chan;	/* DIO bit for the sign */
 	char *buf = (char *)(devpriv->pwm_urb->transfer_buffer);
 	int szbuf = devpriv->pwm_buf_sz;
 	int i;
diff -u -p a/comedi/drivers/usbdux.c b/comedi/drivers/usbdux.c
--- a/comedi/drivers/usbdux.c
+++ b/comedi/drivers/usbdux.c
@@ -1278,8 +1278,8 @@ static void usbdux_pwm_pattern(struct co
 			       unsigned int sign)
 {
 	struct usbdux_private *devpriv = dev->private;
-	char pwm_mask = (1 << chan);	/* DIO bit for the PWM data */
-	char sgn_mask = (16 << chan);	/* DIO bit for the sign */
+	char pwm_mask = 1 << chan;	/* DIO bit for the PWM data */
+	char sgn_mask = 16 << chan;	/* DIO bit for the sign */
 	char *buf = (char *)(devpriv->pwm_urb->transfer_buffer);
 	int szbuf = devpriv->pwm_buf_sz;
 	int i;
diff -u -p a/mt7621-mmc/sd.c b/mt7621-mmc/sd.c
--- a/mt7621-mmc/sd.c
+++ b/mt7621-mmc/sd.c
@@ -1274,7 +1274,7 @@ static int msdc_ops_get_ro(struct mmc_ho
 
 	if (host->hw->flags & MSDC_WP_PIN_EN) { /* set for card */
 		spin_lock_irqsave(&host->lock, flags);
-		ro = (readl(host->base + MSDC_PS) >> 31);
+		ro = readl(host->base + MSDC_PS) >> 31;
 		spin_unlock_irqrestore(&host->lock, flags);
 	}
 	return ro;
diff -u -p a/rtl8723bs/hal/odm_HWConfig.c b/rtl8723bs/hal/odm_HWConfig.c
--- a/rtl8723bs/hal/odm_HWConfig.c
+++ b/rtl8723bs/hal/odm_HWConfig.c
@@ -122,7 +122,7 @@ static void odm_RxPhyStatus92CSeries_Par
 		/* 2011.11.28 LukeLee: 88E use different LNA & VGA gain table */
 		/* The RSSI formula should be modified according to the gain table */
 		/* In 88E, cck_highpwr is always set to 1 */
-		LNA_idx = ((cck_agc_rpt & 0xE0)>>5);
+		LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
 		VGA_idx = (cck_agc_rpt & 0x1F);
 		rx_pwr_all = odm_CCKRSSI_8723B(LNA_idx, VGA_idx);
 		PWDB_ALL = odm_QueryRxPwrPercentage(rx_pwr_all);
@@ -387,7 +387,7 @@ static void odm_Process_RSSIForDM(
 
 			if (pEntry->rssi_stat.ValidBit == 64) {
 				Weighting = ((OFDM_pkt<<4) > 64)?64:(OFDM_pkt<<4);
-				UndecoratedSmoothedPWDB = (Weighting*UndecoratedSmoothedOFDM+(64-Weighting)*UndecoratedSmoothedCCK)>>6;
+				UndecoratedSmoothedPWDB = (Weighting * UndecoratedSmoothedOFDM + (64 - Weighting) * UndecoratedSmoothedCCK) >> 6;
 			} else {
 				if (pEntry->rssi_stat.ValidBit != 0)
 					UndecoratedSmoothedPWDB = (OFDM_pkt*UndecoratedSmoothedOFDM+(pEntry->rssi_stat.ValidBit-OFDM_pkt)*UndecoratedSmoothedCCK)/pEntry->rssi_stat.ValidBit;

