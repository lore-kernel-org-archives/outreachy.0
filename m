X-GM-THRID: 6618035235223240704
X-Received: by 2002:a17:902:b01:: with SMTP id 1-v6mr605315plq.131.1540881403641;
        Mon, 29 Oct 2018 23:36:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6103:: with SMTP id z3-v6ls3184225pgu.15.gmail; Mon, 29
 Oct 2018 23:36:42 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dkTL/KMZBzCCEIQmqOTCcE7bMtFwuCwqhd+wkufGfkJXJtmNs10/VNyZQHUbhgAYbYzM/e
X-Received: by 2002:a63:e652:: with SMTP id p18-v6mr3074236pgj.111.1540881402701;
        Mon, 29 Oct 2018 23:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540881402; cv=none;
        d=google.com; s=arc-20160816;
        b=qtJ/Wp3BLFsYA2NWJTv+a7VZejkRYp0W3QdAnnWdVbj6B1m3kTja0dicG6WRVAvkm4
         LDoYGsaduQvXjqSn2IdOoba2pj1frFH7K28W1/rqQ2VdSaeF+PAi1KFJKP8m5w7lPmio
         HJgniXkuzI+FCVuXu/tTZAqQnfS0eB+MCMvQg+wtfYLq7R1aYOmKz5rMnU9vEm1RM7Z0
         7e+YMo9czS/e3rPxRNkmj+9dso4JMXikT0sQRzD7kOInAAlMyxcJ4xZc4GviNaViSV93
         RuLkkVsVQloLyqGvWq47OuJGB676mSEON4iWt9Jztx5hjgZ/lINzkyHcJbfiJwnJYP/W
         XQng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=S/yTG8+n5o4N7gT5K0Kq7Gq5ME1ecedEKefBX3LDyQ0=;
        b=STzk/wzeqndVWK1cCetPOjEy8jkcN5zuKjCifFA/nzRPxVvwaFnuQE2UGr4stt+aBx
         vHFUEUWe8z2WKww9bqTvNT1NWTQsZjkV1fjyuA753blJA6VG04R49cmrxV0ZCEdumxor
         pDdSI3eZWnpP3eWlX6Fx3NHfiVxfDexBy6w/x3BR9/S1MV/M4NP1hTcyl4oIlKDOGQtl
         6Nl4TCjveu8nGBpxCJdM598ZZBsqEBPw/OiBCcnLIBWF3gl2A/CvyExNTEDa++IsJr6q
         kQcJrpIiKFWNrNLF8bMzmitMlLfwVelnco58mjWu3/r2SFE0/25E38w41+nsKmhes1vT
         bdJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fx08kvmm;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id q199-v6si1340213pgq.0.2018.10.29.23.36.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 23:36:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fx08kvmm;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id b9-v6so5012724pls.7
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 23:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=S/yTG8+n5o4N7gT5K0Kq7Gq5ME1ecedEKefBX3LDyQ0=;
        b=Fx08kvmmAxVeqHgWgIXlVEBcTYVbkualPgRBviUki8Po4fZuLRgU5TRMy5Fcuzf24L
         rpEB226BG98xpPdbWJqh+D6YlcWH68kIQR2LQSNV0yIrLfviHtcxx0rT705rim4hmR9D
         E2uDWxGH1f8+Zbwyv0BjRY70xn7IlRGeoKlhVuBnxetOU/JIYwRK9MgTRi6O39OWq6Ht
         aTCAbiZCpiXxQ+4ZnzghkGjW7Vcv16Ziu/Cf8Kdtate1WTWtJ44yVaGYAQQGX2y/6PQh
         EOOTYKeFZ9MqK/4L40UT2KCNOn6E36+5lIn0gxoieKK8bHT10hlz7aSL7k4AJ98sO+TS
         lj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=S/yTG8+n5o4N7gT5K0Kq7Gq5ME1ecedEKefBX3LDyQ0=;
        b=ARV3jw+yHrLsqBsO6waMlOQ7upBa8TVGd39WzdeOHhOzpTLyd89KB5ukyJ25wTuLWG
         Eg8aMJk+471pmSPUx6nMlf0MWiCinanZftKI4/qkexDl8HwfGeMmN0m9hI2ebxzgQ0NM
         IbUNZzOx1tsujSbTt42OSSYw4aKj9/xwgipxuQ3zA8EMCsaXwO8hqqPTuFALxX/oJ4rI
         Czp1CUuWgNMWYPR2VnNt4BefU8r22s8+hNDfdoFannzxzflcAp+1b/+Scsjnn4/jeXCW
         +PMJd7Zo48a28jhxSLc5quqR2DGS1eRPIcLOQ9KJW2A+yQcyMrU1CdGzYyacSwdoEVri
         Rjpg==
X-Gm-Message-State: AGRZ1gK8Sw2refGzz92IWuVUxlSkgpHN9JnOUTV7SmGoyksZwX9m2uJv
	zj5WNkUeUlBVOTLSdjFfEjDYR7xR
X-Received: by 2002:a17:902:aa84:: with SMTP id d4-v6mr17739310plr.25.1540881402209;
        Mon, 29 Oct 2018 23:36:42 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id v19-v6sm26991703pgl.80.2018.10.29.23.36.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 23:36:41 -0700 (PDT)
Date: Mon, 29 Oct 2018 23:36:38 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: Remove unnecessary conditions
Message-ID: <20181030063636.GA5098@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove conditions with no effect at four different sections. Issues found
by Coccinelle's semantic patch results for cond_no_effect.cocci. Edit two
statements to keep expressions on one line--one from Julia's feedback.
Eliminate checkpatch result, a line should not end with a parenthesis.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_debug.c   | 35 +++++++------------
 drivers/staging/rtlwifi/phydm/phydm_dig.c     |  9 ++---
 .../staging/rtlwifi/phydm/phydm_hwconfig.c    |  6 ++--
 drivers/staging/rtlwifi/phydm/phydm_psd.c     |  7 +---
 4 files changed, 17 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
index b5b69d5f1a41..91f2c054d83b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
@@ -140,26 +140,17 @@ static inline void phydm_print_csi(struct phy_dm_struct *dm, u32 used,
 		dword_h = odm_get_bb_reg(dm, 0xF74, MASKDWORD);
 		dword_l = odm_get_bb_reg(dm, 0xF5C, MASKDWORD);
 
-		if (index % 2 == 0)
-			PHYDM_SNPRINTF(
-				output + used, out_len - used,
-				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
-				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
-				(dword_l & MASKBYTE2) >> 16,
-				(dword_l & MASKBYTE3) >> 24,
-				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
-				(dword_h & MASKBYTE2) >> 16,
-				(dword_h & MASKBYTE3) >> 24);
-		else
-			PHYDM_SNPRINTF(
-				output + used, out_len - used,
-				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
-				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
-				(dword_l & MASKBYTE2) >> 16,
-				(dword_l & MASKBYTE3) >> 24,
-				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
-				(dword_h & MASKBYTE2) >> 16,
-				(dword_h & MASKBYTE3) >> 24);
+		PHYDM_SNPRINTF(output + used,
+			       out_len - used,
+			       "%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
+			       dword_l & MASKBYTE0,
+			       (dword_l & MASKBYTE1) >> 8,
+			       (dword_l & MASKBYTE2) >> 16,
+			       (dword_l & MASKBYTE3) >> 24,
+			       dword_h & MASKBYTE0,
+			       (dword_h & MASKBYTE1) >> 8,
+			       (dword_h & MASKBYTE2) >> 16,
+			       (dword_h & MASKBYTE3) >> 24);
 	}
 }
 
@@ -168,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
 	dm->debug_level = ODM_DBG_TRACE;
 
 	dm->fw_debug_components = 0;
-	dm->debug_components =
-
-		0;
+	dm->debug_components = 0;
 
 	dm->fw_buff_is_enpty = true;
 	dm->pre_c2h_seq = 0;
diff --git a/drivers/staging/rtlwifi/phydm/phydm_dig.c b/drivers/staging/rtlwifi/phydm/phydm_dig.c
index f10776fbe2d9..99c805cc380b 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_dig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_dig.c
@@ -599,13 +599,8 @@ void odm_dig_init(void *dm_void)
 		       (DM_DIG_MAX_PAUSE_TYPE + 1));
 	dig_tab->pause_cckpd_level = 0;
 
-	if (dm->board_type & (ODM_BOARD_EXT_PA | ODM_BOARD_EXT_LNA)) {
-		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
-		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
-	} else {
-		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
-		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
-	}
+	dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
+	dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
 
 	dig_tab->enable_adjust_big_jump = 1;
 	if (dm->support_ic_type & ODM_RTL8822B) {
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index e1544e38944b..2f4f273a0239 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -45,8 +45,8 @@ static u32 phydm_process_rssi_pwdb(struct phy_dm_struct *dm,
 	u32 weighting = 0, undecorated_smoothed_pwdb;
 	/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
 
-	if (entry->rssi_stat.ofdm_pkt ==
-	    64) { /* speed up when all packets are OFDM*/
+	if (entry->rssi_stat.ofdm_pkt == 64) {
+		/* speed up when all packets are OFDM*/
 		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
 		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
 			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
@@ -1719,8 +1719,6 @@ static void phydm_get_rx_phy_status_type2(struct phy_dm_struct *dm,
 					  ODM_RTL8710B)) { /* JJ ADD 20161014 */
 		if (rxsc == 3)
 			bw = ODM_BW40M;
-		else if ((rxsc == 1) || (rxsc == 2))
-			bw = ODM_BW20M;
 		else
 			bw = ODM_BW20M;
 	}
diff --git a/drivers/staging/rtlwifi/phydm/phydm_psd.c b/drivers/staging/rtlwifi/phydm/phydm_psd.c
index badc514ac0be..c93d871f1eb6 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_psd.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_psd.c
@@ -336,12 +336,7 @@ void phydm_psd_init(void *dm_void)
 			2; /*2b'11: 20MHz, 2b'10: 40MHz, 2b'01: 80MHz */
 	}
 
-	if (dm->support_ic_type == ODM_RTL8812)
-		dm_psd_table->psd_pwr_common_offset = 0;
-	else if (dm->support_ic_type == ODM_RTL8821)
-		dm_psd_table->psd_pwr_common_offset = 0;
-	else
-		dm_psd_table->psd_pwr_common_offset = 0;
+	dm_psd_table->psd_pwr_common_offset = 0;
 
 	phydm_psd_para_setting(dm, 1, 2, 3, 128, 0, 0, 7, 0);
 	/*phydm_psd(dm, 0x3c, 0, 127);*/ /* target at -50dBm */
-- 
2.17.1


