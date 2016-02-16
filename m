X-GM-THRID: 6251825619811696640
X-Received: by 10.50.183.39 with SMTP id ej7mr16786439igc.3.1455616583588;
        Tue, 16 Feb 2016 01:56:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls3080377qgm.97.gmail; Tue, 16 Feb
 2016 01:56:21 -0800 (PST)
X-Received: by 10.129.158.2 with SMTP id v2mr20758366ywg.42.1455616581634;
        Tue, 16 Feb 2016 01:56:21 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id ui7si3828509pab.0.2016.02.16.01.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 01:56:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id c10so104597584pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 01:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pKR9I0b86yQfiwGb5fehfXcVWWkXWBWvV9uUmIXZkfg=;
        b=QpkhKbTeFVBQ1zqGwEPCkR/F3m8pwwdxO0RZmkfi6kKj1c44SGuEC69DqGADCFrRc8
         MGvOd+yv2tDUcEb1YxyEYxItpNk7+psGtLUNt9tO3yytOx6/npWPMGjxfj5NDbGslJwj
         rI4xO81bXAcaePCQGVhAXODVRpq9m3K7aXxFu8LmMzkIPaaeexCwfQIVyIeo9tMSt7a7
         D4T9BPgrGBRxBIFHJ+fogeP3eeDlMQxrbQxZbcipTssJNlRL8Ura6XVKu43OMbU8SYPj
         idholgJwrrpx/L0VjVLtRi98lbogIyG5ssxqk+ihGEXBlPC4H7B6uDmfBdt98aMw/KT3
         97vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pKR9I0b86yQfiwGb5fehfXcVWWkXWBWvV9uUmIXZkfg=;
        b=Hb2ycBMVIdiM+pwm7u8AJcQAYcH/x1KB3qwT1j6R7+iPxjLu+NnRxM6cu1Z7T9T4If
         PH8hQ8iyAS4cP4nvPu13Cmu2HkAR7flQE6p0s0LlLNcFjzbsL4OvwUDFL6+gGTN4dDr8
         TaL2lKNIp6UNgOHDEJnxzY1GH5BLVXDT8sbp1RmeDrz1ZRBioyV6gqbf8/8kdMPLKnT/
         MNW/tN5M11VWDhnGj3iHKMnkjRM9Y0vR93L0zn5qSdso/DeBeb6bcvaaxkXEn8g7HqDT
         jGv1gqaVuQ9pxIr0L1XMESYl7YxZ0VcCbnIH/qIiELdkyo71AQfw8rAU/Ujcf2f4/AtE
         FrBQ==
X-Gm-Message-State: AG10YORpoDSjklGxxHo4eiC2afs0QE3xby0iK9dSouwbZq8+t5ONfud+MJ4u51TrLWgIpA==
X-Received: by 10.98.16.150 with SMTP id 22mr29841881pfq.128.1455616581478;
        Tue, 16 Feb 2016 01:56:21 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.158.21])
        by smtp.gmail.com with ESMTPSA id x1sm44416001pfi.42.2016.02.16.01.56.16
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 01:56:20 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 15:26:09 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Convert long if-else block to switch-case
Date: Tue, 16 Feb 2016 15:26:05 +0530
Message-Id: <1455616565-5987-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace long if-else block with switch-case to make it more readable and
compact.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 52 +++++++++++++++++++++++++++---------
 1 file changed, 40 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index d2e86b9..1e0e53c 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -1628,47 +1628,75 @@ static void dm_bb_initialgain_backup(struct net_device *dev)
 void dm_change_dynamic_initgain_thresh(struct net_device *dev, u32 dm_type,
 				       u32 dm_value)
 {
-	if (dm_type == DIG_TYPE_THRESH_HIGH) {
+	switch (dm_type) {
+	case DIG_TYPE_THRESH_HIGH:
 		dm_digtable.rssi_high_thresh = dm_value;
-	} else if (dm_type == DIG_TYPE_THRESH_LOW) {
+		break;
+
+	case  DIG_TYPE_THRESH_LOW:
 		dm_digtable.rssi_low_thresh = dm_value;
-	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
+		break;
+
+	case  DIG_TYPE_THRESH_HIGHPWR_HIGH:
 		dm_digtable.rssi_high_power_highthresh = dm_value;
-	} else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_LOW) {
+		break;
+
+	case DIG_TYPE_THRESH_HIGHPWR_LOW:
 		dm_digtable.rssi_high_power_lowthresh = dm_value;
-	} else if (dm_type == DIG_TYPE_ENABLE) {
+		break;
+
+	case DIG_TYPE_ENABLE:
 		dm_digtable.dig_state		= DM_STA_DIG_MAX;
 		dm_digtable.dig_enable_flag	= true;
-	} else if (dm_type == DIG_TYPE_DISABLE) {
+		break;
+
+	case DIG_TYPE_DISABLE:
 		dm_digtable.dig_state		= DM_STA_DIG_MAX;
 		dm_digtable.dig_enable_flag	= false;
-	} else if (dm_type == DIG_TYPE_DBG_MODE) {
+		break;
+
+	case DIG_TYPE_DBG_MODE:
 		if (dm_value >= DM_DBG_MAX)
 			dm_value = DM_DBG_OFF;
 		dm_digtable.dbg_mode		= (u8)dm_value;
-	} else if (dm_type == DIG_TYPE_RSSI) {
+		break;
+
+	case DIG_TYPE_RSSI:
 		if (dm_value > 100)
 			dm_value = 30;
 		dm_digtable.rssi_val			= (long)dm_value;
-	} else if (dm_type == DIG_TYPE_ALGORITHM) {
+		break;
+
+	case DIG_TYPE_ALGORITHM:
 		if (dm_value >= DIG_ALGO_MAX)
 			dm_value = DIG_ALGO_BY_FALSE_ALARM;
 		if (dm_digtable.dig_algorithm != (u8)dm_value)
 			dm_digtable.dig_algorithm_switch = 1;
 		dm_digtable.dig_algorithm	= (u8)dm_value;
-	} else if (dm_type == DIG_TYPE_BACKOFF) {
+		break;
+
+	case DIG_TYPE_BACKOFF:
 		if (dm_value > 30)
 			dm_value = 30;
 		dm_digtable.backoff_val		= (u8)dm_value;
-	} else if (dm_type == DIG_TYPE_RX_GAIN_MIN) {
+		break;
+
+	case DIG_TYPE_RX_GAIN_MIN:
 		if (dm_value == 0)
 			dm_value = 0x1;
 		dm_digtable.rx_gain_range_min = (u8)dm_value;
-	} else if (dm_type == DIG_TYPE_RX_GAIN_MAX) {
+		break;
+
+	case DIG_TYPE_RX_GAIN_MAX:
 		if (dm_value > 0x50)
 			dm_value = 0x50;
 		dm_digtable.rx_gain_range_max = (u8)dm_value;
+		break;
+
+	default:
+		break;
 	}
+
 }	/* DM_ChangeDynamicInitGainThresh */
 
 /*-----------------------------------------------------------------------------
-- 
1.9.1


