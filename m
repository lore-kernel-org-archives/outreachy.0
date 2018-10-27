X-GM-THRID: 6616097415299596288
X-Received: by 2002:a37:9786:: with SMTP id z128-v6mr5731313qkd.39.1540635309109;
        Sat, 27 Oct 2018 03:15:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1931:: with SMTP id t46-v6ls1726074qtj.0.gmail; Sat, 27
 Oct 2018 03:15:08 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eMfEHG/6RoznlsW4S2tRv3XIHRd+NAAUn5UJZDZHF1a1t7UaOoxufniD+fN2XH5dOJa1eY
X-Received: by 2002:ac8:744f:: with SMTP id h15-v6mr5912239qtr.52.1540635308624;
        Sat, 27 Oct 2018 03:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540635308; cv=none;
        d=google.com; s=arc-20160816;
        b=y3juuWWNAi71GgWbsROjNI1NFFnO7/3Lv7u6uMbB/RGfDfxEFNUzcY34AnLYj9dAEn
         mhPYIaCQ+h6SVU852gRi3wBmipi2s+ieJk9SRgYOvh/JIqbv4cueu2DUQXBAkcgknaP9
         qZhWD41+R6HwjWZHJfGjpBQ808wp+bmMJEOYpHSldaDnGTThXBAeRrvwIHr6CD3niNO5
         WTNZS79U5xgO76SImxxmM5zmpDzmtOee2sEl+D3LTKhlcL1kkeIGL09NHOSgkUDy4ZOr
         cfMUNa/n6dNC0aiZHDHbsE99z+p1MZuJq8T0soBnqezkN8jrO9Fv6O0LOrcmpM8cqoJI
         zyvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=On4/QuprfAjyrBSWAGAjr3EOMOShVwU0n1Nhmk7s5f8=;
        b=fPeYfXmMh0CbuQwO9DDVIoH/QxLa+a1Nwka2w2Bh7lvtmlr/1y1OdW+KNZeMgo0kEA
         Wqliva4z+eCQ0CaGA6oAqRwR0jvl2BkpNXViDAhHkVoBja3BambIk9yCLMTWN2QAUrbt
         BSE3Wi3VBMkPzBHqHroZCtMQfg9wfsecCbNYyu8xsjzx42DeBQ+2ufwR2rNy9xcoYDFa
         63vhDJS8S6MN63F0apdhfnylx02+/lFSjgAGP3YkLYRcQj3GLXmGqZdLPKDGobwaWqZV
         bG1uXFVs2njlo1psgBze1O9+1XNT5e7IcjsPrdMJdpSLTqWX280PMKByG/gYMSfLB92T
         mdpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kReyst/t";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x41-v6si664788qth.2.2018.10.27.03.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 03:15:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kReyst/t";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id f78-v6so1739909pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Oct 2018 03:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=On4/QuprfAjyrBSWAGAjr3EOMOShVwU0n1Nhmk7s5f8=;
        b=kReyst/tj6nmmaJ4wbNovA7PVNejiFTCuDkrwa3OGlyISo7A1XgS8hrs78UA8A4GGs
         P/xVzUVqzjpz78WxxMKWAjF+zt9TS+yRqFnGJyEfOXHKaqUrvl4IIc7RO+elm3kcqm+y
         y1DfhfttLR3Ii5CxqiDstlHtjJB4oH53fDoYnNqC6cSBA1SgyYf+c2yPIYK2fow2urim
         mRmzjDdKY8RpZAyfezaT6WTKgjXgR5OwvFNCgDVxA0uYejby33gav1cPesbuxEzSeHZj
         lN3+bSrYScdeRCgHhpKDnWn3qffFI+MIBR2DnTC4KTVhpbZXYrSyOZKL8L1M3gReS/RW
         hwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=On4/QuprfAjyrBSWAGAjr3EOMOShVwU0n1Nhmk7s5f8=;
        b=VJJiP8rSsWAGGeATqO3X5ao38J9jtJZVVr5XXrnUbCFERAMmrPnEDvN2yqohMHlUqP
         5TUYclhzO/TvGzTFIaDJ/CS8x3+p9+xUihy5wDdu4U/tk8ve7UjjpE1NpQLuGxeuMUN1
         UMS09lYeR0bYr8PL7OaBkrbU+/S2CizNPyD4l/5uh9BLkPDug3abvplFqAITonR62uXM
         DpA03PaidGSYRYmyNF//20uHiatcWBSnICVuXGzlgtnzqkOmHI6YNvUQMBmF3RS6QcjG
         3P/MG+O0bAjOEqikjId3S8Olqz1d4jYc4Wl0LWcgOnjzVY6sFX8As4rflcjHtA084lOr
         AtQA==
X-Gm-Message-State: AGRZ1gLL96FDZw7YpsZQcL2vq0wW00LoLH+kMByJAY6CWgaSvBT+X7V9
	+fTxgoOJC5UEh/O2+l1sL8G/Z0F0
X-Received: by 2002:a63:b90a:: with SMTP id z10-v6mr6665369pge.221.1540635307568;
        Sat, 27 Oct 2018 03:15:07 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id x36-v6sm13732413pgl.43.2018.10.27.03.15.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 27 Oct 2018 03:15:07 -0700 (PDT)
Date: Sat, 27 Oct 2018 03:15:03 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rtlwifi: Remove function that only returns
 the second argument
Message-ID: <c06674447976d2ed6900e7d9c2ccb92fa67e7104.1540632666.git.m.maya.nakamura@gmail.com>
References: <cover.1540632666.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540632666.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Because the odm_signal_scale_mapping function is only called to return the
second argument, remove the unnecessary function and change the statements
that call it, including removing unneeded braces and adding a blank line.

Note that removing casts (u8 to s32 and back to u8) will not lose
information because the value converted should be between 0 and 100.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Changes since v1:
 - Remove casts to u8 and a note to the commit message.
 - Remove unneeded braces from if-else statements.
 - Add a blank line after an if-else statement.

 .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 55 ++++++-------------
 .../staging/rtlwifi/phydm/phydm_hwconfig.h    |  2 -
 2 files changed, 17 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 4bf86e5a451f..c71ac1276ebe 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -477,18 +477,6 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
 		return 100 + ant_power;
 }
 
-/*
- * 2012/01/12 MH MOve some signal strength smooth method to MP HAL layer.
- * IF other SW team do not support the feature, remove this section.??
- */
-
-s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig)
-{
-	{
-		return curr_sig;
-	}
-}
-
 static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
 						  u8 is_cck_rate, u8 pwdb_all,
 						  u8 path, u8 RSSI)
@@ -748,16 +736,10 @@ static void odm_rx_phy_status92c_series_parsing(
 	 * from 0~100.
 	 */
 	/* It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp(). */
-	if (is_cck_rate) {
-		phy_info->signal_strength = (u8)(
-			odm_signal_scale_mapping(dm, pwdb_all)); /*pwdb_all;*/
-	} else {
-		if (rf_rx_num != 0) {
-			phy_info->signal_strength =
-				(u8)(odm_signal_scale_mapping(dm, total_rssi /=
-								  rf_rx_num));
-		}
-	}
+	if (is_cck_rate)
+		phy_info->signal_strength = pwdb_all;
+	else if (rf_rx_num != 0)
+		phy_info->signal_strength = (total_rssi /= rf_rx_num);
 
 	/* For 92C/92D HW (Hybrid) Antenna Diversity */
 }
@@ -1051,21 +1033,19 @@ static void odm_rx_phy_status_jaguar_series_parsing(
 	 */
 	/*It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp().*/
 	if (is_cck_rate) {
-		phy_info->signal_strength = (u8)(
-			odm_signal_scale_mapping(dm, pwdb_all)); /*pwdb_all;*/
-	} else {
-		if (rf_rx_num != 0) {
-			/* 2015/01 Sean, use the best two RSSI only,
-			 * suggested by Ynlin and ChenYu.
-			 */
-			if (rf_rx_num == 1)
-				avg_rssi = best_rssi;
-			else
-				avg_rssi = (best_rssi + second_rssi) / 2;
-			phy_info->signal_strength =
-				(u8)(odm_signal_scale_mapping(dm, avg_rssi));
-		}
+		phy_info->signal_strength = pwdb_all;
+	} else if (rf_rx_num != 0) {
+		/* 2015/01 Sean, use the best two RSSI only,
+		 * suggested by Ynlin and ChenYu.
+		 */
+		if (rf_rx_num == 1)
+			avg_rssi = best_rssi;
+		else
+			avg_rssi = (best_rssi + second_rssi) / 2;
+
+		phy_info->signal_strength = avg_rssi;
 	}
+
 	dm->rx_pwdb_ave = dm->rx_pwdb_ave + phy_info->rx_pwdb_all;
 
 	dm->dm_fat_table.antsel_rx_keep_0 = phy_sta_rpt->antidx_anta;
@@ -1874,8 +1854,7 @@ void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
 	/* Update signal strength to UI, and phy_info->rx_pwdb_all is the
 	 * maximum RSSI of all path
 	 */
-	phy_info->signal_strength =
-		(u8)(odm_signal_scale_mapping(phydm, phy_info->rx_pwdb_all));
+	phy_info->signal_strength = phy_info->rx_pwdb_all;
 
 	/* Calculate average RSSI and smoothed RSSI */
 	phydm_process_rssi_for_dm_new_type(phydm, phy_info, pktinfo);
diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
index 6ad5e0292a97..c9833889688c 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
@@ -216,8 +216,6 @@ odm_config_fw_with_header_file(struct phy_dm_struct *dm,
 
 u32 odm_get_hw_img_version(struct phy_dm_struct *dm);
 
-s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig);
-
 /*For 8822B only!! need to move to FW finally */
 /*==============================================*/
 void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
-- 
2.17.1


