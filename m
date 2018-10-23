X-GM-THRID: 6615692944071458816
X-Received: by 2002:a67:a997:: with SMTP id m23mr267139vsh.44.1540336046712;
        Tue, 23 Oct 2018 16:07:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2349:: with SMTP id h9ls890558uao.3.gmail; Tue, 23 Oct
 2018 16:07:24 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dXCdbkhxgH/7DmiFsEsibsDhXE1nmXReDk7WzY/tqTCm6+fWa8CjCkDmdAnjFN8G5vscR9
X-Received: by 2002:ab0:9d8:: with SMTP id e24mr277610uah.12.1540336044063;
        Tue, 23 Oct 2018 16:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540336044; cv=none;
        d=google.com; s=arc-20160816;
        b=dWi1jWLXHNg5dYp7D43N/CheG8fFcm+jCFxtAvYgUqGTIJtOabKMg0ygGIKYCWwnOo
         x7sZHDnH3sdqh4oMVtcE4903O/MJst6jfx4y8smfG/qA15BQ1e75DYQ2NfQl+DZFzsPW
         r4AcifrI2FCvhiidy1vUEKqbJKpvHLMxCUse3JP93aqQGj5/vm50rwH1vXNn0smnfrPh
         8ik9orjUh6830PG1Ri/oy7qr38Wa/YSWeX7Yd6QAIYtNtCIE1itkh15pvbJkHU/RSxak
         si7oXjLgr1QxCPGIG7QKJImh0rB6PhVYPEauggqTY2T2skyHEnoBknSe+gZgN3rAOS7l
         D2hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=P9jmXTuiKHrjl7k/kgy3uQlnhwBqznaWXGd+v7d2YdQ=;
        b=fngvjmOeK/UBaBo+/A+uUIkv5wWCp7LWgq+wYLbjmRPrmqlfClQDhn0Rc/Ini0479F
         PT4YGkOmQ7iLLSZ8ITtTK+Ref3OQz+Ygr16AiIfwdC0AoM45RxI5+KxmemxY2bfMWgds
         itecT0xaD9y9HQ9MF8Z9gvRFxOoObik+SVnUA290FCCXVkX191/gTivGAmSuvjVTirVF
         aoSwUOZRZ3fbM24eBTaxxBvFwuZ4cyPI3Dk7kd+Lo8Gh0QE+2JaWK4kc8UFD7o5Q4THj
         /TGyBPtuOmG4Uy2EpUfc4lNjaRmHdMiNT9ZGwV4VIkJchYnd/WnkJcFiSo8sfUKzxVyt
         dx6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/XtApJB";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a71si157122vsb.1.2018.10.23.16.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 16:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/XtApJB";
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 32-v6so1375508pgu.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 16:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P9jmXTuiKHrjl7k/kgy3uQlnhwBqznaWXGd+v7d2YdQ=;
        b=Y/XtApJBLJyKH6uT7QKMGw1l0qfB0OEPZNgAAZjh1/syxU6yntNkh6MJ0uqBbHF2vD
         W76fOMrfdxNwDmOxk7j6Exyy+xEzraVtpW6g+5AC0HCA65lcuwgK9hcpf/uH/3j042sj
         gazcnLiRWR21glH+AxsrvFKV/fDxzhNMnKN2bMUbsNhRb/28CSsQZxyq1S/O3CrEFOoY
         Bfc5C/XMOF3tHE9G3KNxg22EIRZeo3i7sVWUmrsB6xGm14G5F3BFnB09Z3+TAqVW8cmX
         Be66I/WycX0EvB4h+HxykNRKqR2QLDPWVqofMawyWx6CyNR0dJds9wJgj3/qKJHivMiD
         zxrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P9jmXTuiKHrjl7k/kgy3uQlnhwBqznaWXGd+v7d2YdQ=;
        b=nlZh6K+L7ZR5BNv2aGbKtpZOKgm/N+kyJigg6xXC/2KVlR9VHzo+LcOLKp8NBvM0Rh
         QJPN1vZg1NNXY2DLdG4tpC/wilDRdsayy2UpW9G4xJ3GR+nBzz0+PJAKTdqTfWVP94rD
         39FYgpz65JVKpY7IQnPB/xYINbpKnrsqWsGbvy8ellimMixJIUesr2YSfQbH+6ppNy0Z
         c5k+96qUi+gFRwEJS+iOiGuVs0vAdVs0ZfY6auZUt96Ehz6bqbT/ehTSFLmBJGhmyv8M
         ahM+nqD7eFFFFDab8MWkECVTtyCGLQM2Z0hI3t8P1AXtdPXodf9xXb9Ms09XTUyY48XA
         9yQw==
X-Gm-Message-State: AGRZ1gLv5V1+W4WI/yuAVNVSyhAWXpn4ZlKw+aZtqDF8w89vROq7fSdH
	YPEs2ez05fyELCDqGfSg5lfWEenhBos=
X-Received: by 2002:a63:1a41:: with SMTP id a1-v6mr224144pgm.9.1540336043003;
        Tue, 23 Oct 2018 16:07:23 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id f68-v6sm9602537pfe.143.2018.10.23.16.07.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 16:07:22 -0700 (PDT)
Date: Tue, 23 Oct 2018 16:07:20 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtlwifi: Remove unnecessary function
Message-ID: <20181023230718.GA18724@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Because the odm_signal_scale_mapping function is only called to return the
second argument, remove the function and change five statements that call
it.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
Changes since v1:
 - Remove a function's declaration, definition, and its comment.
 - Change five statements that call the function.

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


