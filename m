X-GM-THRID: 6616097415299596288
X-Received: by 2002:aca:590b:: with SMTP id n11-v6mr3806200oib.22.1540430266671;
        Wed, 24 Oct 2018 18:17:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c20b:: with SMTP id s11-v6ls2401430oif.8.gmail; Wed, 24
 Oct 2018 18:17:45 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cVz2sIm73QSwLMdT09QQl85CWmHAh7NZ5iAl4TFIEGAhS4Wj700qRyQnMhptjkpNTeRUEy
X-Received: by 2002:aca:5649:: with SMTP id k70-v6mr3898352oib.51.1540430265591;
        Wed, 24 Oct 2018 18:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540430265; cv=none;
        d=google.com; s=arc-20160816;
        b=gj7gxRbBytYaX+DiHemKbBItvJmOjHqP4mlBtQdRcYzZoYNjiaqgzyNoazi+PH3MLp
         rX5p16NDy0YQY4mfZMMJDRrPdJHuO50Y7j54hUtNqmkZTxIQE5EHWy2fXZ02IOyexg50
         BOwXQhZv8hhXvowEvXE6e+qzuTXUkI5p8TejQpJpDC7A/vPPz+a6u0UFHuSQCIvrVFd8
         q5U6Xu7EPUyBF/LRYAz3R26jvXlPLorKRb6CxAFoste2+8RmxqLYH1qhSqH2GVWcM+Rh
         TgFvpUJT2ZNsTTl0IKtIE0adngQP4H7gPZ2kN5vLddW//vo7hRWm6DRlqGfwxnNqFNOT
         Fg/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=gjtKhGZP499G+wi7IDPhI20tmiEyGLvJya2lmEWsIfM=;
        b=UJwn1ou9B2NbvNqhuFVZ2SKNlDTiLvppsZV5kDvEUdhptmzDyRvxwF4HtoIrV3XR3D
         pZmY+ZOij5nPYpMezty7hM+3/r2UCi9PirY6O2ptVookN3hmKwdChWUIz5vGiQNmxEl0
         tdv/OzEY/hpskdzVtKWwDoHFinBG9vwu50LreQc3A4XH+695V7Gn2Wij1KeEde1TTPo/
         Kzq/OSlCpjh75J70AJ4Rs7BkcGPO8STaLmq6UYJXMqALRTZus1NS4mv8dIIl+AJ29Rf/
         ky0akk6SurZsJ5VwsdEHjwoajw5g9HPwHdn59jnLLVsEikFFs6nAx8QIlnIpYB1fa0Ei
         zLhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZYTBvay;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id 107si227193oth.4.2018.10.24.18.17.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 18:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZYTBvay;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id p5-v6so3054899plq.8
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 18:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gjtKhGZP499G+wi7IDPhI20tmiEyGLvJya2lmEWsIfM=;
        b=JZYTBvayJGqWnNW3FvOI0smzpsOoxfE2NNc2e94FUWsWOwhDNEgsT0jrAgDTcFkQls
         vqtkXGuee6TVm0dbMmZsuHaTmwcxoo6Z/lLtEoV4ee8zYz8RLDmuFYtGv2a/jtLKq+2b
         IpRUJmaMPtZbzuV6wjoNHRUKUSvVJcT6sch1FJ/a8Bck+lqrX42NELtLtpME8hB/LJ6c
         RhdVnFeb+A7vthOWxCCxzyPHI9sbvhnMrLtcbuC+h56FLQhjiOqyXcDL8kFOQiOCdJGh
         f10sa1Q2V8NbwaEHQA2fNup9czW2KHf+T3j/ixfelSn7HKjbNloRv/Q4D5mKTXRpJ8zO
         O/ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gjtKhGZP499G+wi7IDPhI20tmiEyGLvJya2lmEWsIfM=;
        b=go0LoJDcKIriBGdx4wJZfUmSeVCp3xDfXbvl+7NAsjfqqpE7Yx1tyxRSDJ5HZeUBAc
         CMWVIRrLDuQXoLpfRmHL02iLPB8y0SOPfAyqC+hVet6Wl8rWp3PURkZTzlaS8Ntccj90
         e0dNLcuXPnV+fMk8zbI2gySiPFS5DUS7nU2FPi6ee1rgqJlKmLMHefRayjos30JfCHzK
         3e4qspCvunQrF0wEUO3botJ1HtddZ6k0IXxUlWVYnAPpxAwIP1vo/TA4yjUQesfK56/S
         uq8VioT9NnRGV2G4M2R1DtOHtS3K8kRycV2TyxE/wwHfg3ueivR+mkxKxQ4YMxnmZTHk
         yVOQ==
X-Gm-Message-State: AGRZ1gI5chxKFZjd2meScSXKtn/SlfILCRIeefNPP/4NnhyFeEzdERnu
	pEK47fL0cR1x8njfO7R/ZRsxRN8J
X-Received: by 2002:a17:902:b03:: with SMTP id 3-v6mr4574726plq.141.1540430265088;
        Wed, 24 Oct 2018 18:17:45 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id k70-v6sm7638086pfc.76.2018.10.24.18.17.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 18:17:44 -0700 (PDT)
Date: Wed, 24 Oct 2018 18:17:41 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtlwifi: Remove function that only returns the
 second argument
Message-ID: <0140568914059cf5d16dfd298964983ab3ca1f28.1540428705.git.m.maya.nakamura@gmail.com>
References: <cover.1540428705.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540428705.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Because the odm_signal_scale_mapping function is only called to return the
second argument, remove the unnecessary function and change five
statements that call it.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 27 ++++---------------
 .../staging/rtlwifi/phydm/phydm_hwconfig.h    |  2 --
 2 files changed, 5 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 4bf86e5a451f..fd208581d857 100644
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
@@ -749,13 +737,11 @@ static void odm_rx_phy_status92c_series_parsing(
 	 */
 	/* It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp(). */
 	if (is_cck_rate) {
-		phy_info->signal_strength = (u8)(
-			odm_signal_scale_mapping(dm, pwdb_all)); /*pwdb_all;*/
+		phy_info->signal_strength = (u8)pwdb_all;
 	} else {
 		if (rf_rx_num != 0) {
 			phy_info->signal_strength =
-				(u8)(odm_signal_scale_mapping(dm, total_rssi /=
-								  rf_rx_num));
+				(u8)(total_rssi /= rf_rx_num);
 		}
 	}
 
@@ -1051,8 +1037,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
 	 */
 	/*It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp().*/
 	if (is_cck_rate) {
-		phy_info->signal_strength = (u8)(
-			odm_signal_scale_mapping(dm, pwdb_all)); /*pwdb_all;*/
+		phy_info->signal_strength = (u8)pwdb_all;
 	} else {
 		if (rf_rx_num != 0) {
 			/* 2015/01 Sean, use the best two RSSI only,
@@ -1062,8 +1047,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
 				avg_rssi = best_rssi;
 			else
 				avg_rssi = (best_rssi + second_rssi) / 2;
-			phy_info->signal_strength =
-				(u8)(odm_signal_scale_mapping(dm, avg_rssi));
+			phy_info->signal_strength = (u8)avg_rssi;
 		}
 	}
 	dm->rx_pwdb_ave = dm->rx_pwdb_ave + phy_info->rx_pwdb_all;
@@ -1874,8 +1858,7 @@ void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
 	/* Update signal strength to UI, and phy_info->rx_pwdb_all is the
 	 * maximum RSSI of all path
 	 */
-	phy_info->signal_strength =
-		(u8)(odm_signal_scale_mapping(phydm, phy_info->rx_pwdb_all));
+	phy_info->signal_strength = (u8)phy_info->rx_pwdb_all;
 
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


