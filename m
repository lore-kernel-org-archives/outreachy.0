X-GM-THRID: 6618737831817773056
X-Received: by 2002:a67:8c2:: with SMTP id 185mr5169634vsi.6.1541045192837;
        Wed, 31 Oct 2018 21:06:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:1002:: with SMTP id 2ls1310954vsq.7.gmail; Wed, 31 Oct
 2018 21:06:31 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fT/OicQpXBSZiXtlngoWFlR/o9bgeupBUZM2O678rmeXpKzSu1xwG+8JcBQ+WFCIq2Loha
X-Received: by 2002:a67:8e42:: with SMTP id q63mr5164946vsd.35.1541045191933;
        Wed, 31 Oct 2018 21:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541045191; cv=none;
        d=google.com; s=arc-20160816;
        b=DOOQRf5vMpWaVAuQchH/616doXiMlChYwK22076EQAyZXdYSIT9vr0bvjF6KPzDzbS
         d+1oX34uSlrIhuimWPu8gxJonBl5u37wnwYgHSzPrN1Ki6pYloINiPrTR/kPWUY38eFb
         f7XtwqfwVZMF4m7MwlLltCO8bc+SeGozbsWuLf3NzC/DbGz1ajPefi41fn0mxRmqXU3w
         wh5OohgOr311yRQqjQS9EkIJUxwbuqCJjk3NPmyVP4kaiupK0ZhrtV/wEYs1xASn3EiM
         ULZadvYgL1NnjSnEzxr0uAAs9+S5vWZed7qK/iTimIn/L1nkdz9SmE5tzFqZ33Cp/XDl
         SyFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=L9CSS/rlLvfJepnhiuWiLFYQrqseVNa+OGYfMplnJOM=;
        b=lt1+s99IXnEJ22/PBvppdpp0+/HESxvz8bnAIGvreGnmkK6T6iNupgDHvQ7vdNVLOC
         O2h+IBbBZRrPWWZAGQ+TynA4Zsv8qlzrZRFmom6d3gyLVWI3f76IVSDn4c3UTYmCosLD
         woIKomUjEjfeoOQl6PQvXt5EsYvmB0EFwzdLUu6G7qQaNwQn4DMMaO4TVOIWOCG0cV6I
         FjH0iAkXzlA6yqAvRV8o3ob8po7v0/lQJ3lHom0IwAKe+hA42Fnk5CpvpfMFjQKzT6J/
         6Zlunws0q72Jbt5WE7GC8CiG/7/Sua2Ga083hov5Fb4s5qTivMLNLEzinqdt+UCRnQxu
         A/GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMm5pyYl;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w9si1938733uac.0.2018.10.31.21.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 21:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMm5pyYl;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id n10-v6so8371700pgv.10
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 21:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L9CSS/rlLvfJepnhiuWiLFYQrqseVNa+OGYfMplnJOM=;
        b=oMm5pyYlSDi65GDFKKwN4wuMUXoXG0ax+sdg4HTnzyEuVbXmbaij9jWZL9a/bjyufq
         UDPRokvUBAO8X3NTBwa/AYiLla1nNVIBdrNj3KB5DoADBtAub3UC/bkjNXwyvkmQndy9
         pFjutu80XP9WQ2PJzNfrmN3WTk8NP5Uosm3HH42IgDdgH8b4FI2hhGpYVVY3Lf8Tootg
         V8C6ghsA7LTs8vdG6UmxF2FxzJVRZIRiy9U0zS/iA9/qrOR1ShT+mRypCYdrLhUu5GeI
         9K4TSYqUuyNCiir5EcnxRsvP5h69y3MFsWiYsSpN0VDd5IU0DS1c9kRt5Sl/e46CF74Q
         gNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L9CSS/rlLvfJepnhiuWiLFYQrqseVNa+OGYfMplnJOM=;
        b=XiNvnH1HWU029/ZBCVoDO6xF/GbL3mgYRv3+Vonah7CoOB6FFi4xiFUvO7OMsqjm09
         1QR3B3gp45d/xVZ3v5lDDKxRIJpmdaSVT5Hwp76Nhxcm3tvP71wEEeiisnWfj70AjSIL
         pBRQriw7UkPtyxcqysP6oATRTaGXIOPLVxwYUMzCs7lj3kSfwWA1RULdHKPZqlcWO4Vj
         4OdO/F4ow7vw32aF88BanTyO3v1HuON1ijTumww3c6iAcgRg2CBAXP7iaJqdKJBrihSA
         vuyAfGIzmNysSnIg0PwGEimmbHkPHYOUX/x6R5JfIx+bez2uL/w2G5qGU5ztuKDHNgEi
         1/+g==
X-Gm-Message-State: AGRZ1gKEonuVKLDk+pQL4q4ogEoUR+0V9gxltcLsXO3aqNPY3qVooyDQ
	fSdtal86p5tnSyw2W3LQ3JhovH+K
X-Received: by 2002:a63:f210:: with SMTP id v16-v6mr5562305pgh.371.1541045190779;
        Wed, 31 Oct 2018 21:06:30 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id i26-v6sm17303736pgb.9.2018.10.31.21.06.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 21:06:30 -0700 (PDT)
Date: Wed, 31 Oct 2018 21:06:27 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtlwifi: Change line and comment spacing
Message-ID: <a0c1be6312a62595a5f8f7e0b02ced685933052d.1541037077.git.m.maya.nakamura@gmail.com>
References: <cover.1541037077.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541037077.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Add blank lines at the end of if statements and spaces before and after
comments. Edit statements so that the line does not end with an assignment
operator or a parenthesis. Remove a blank comment, too.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 10 +++++-----
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          |  8 +++++---
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index 7853031ee91f..f94c9d19491e 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -551,10 +551,9 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 		/*dbg_print("echo cmd input_num = %d\n", input_num);*/
 
 		if ((strcmp(input[1], help) == 0)) {
-			PHYDM_SNPRINTF(
-				output + used, out_len - used,
-				"{En} {0:BB,1:BB_MAC,2:RF0,3:RF1,4:MAC}\n {BB:dbg_port[bit],BB_MAC:0-ok/1-fail/2-cca,MAC:ref} {DMA type} {TrigTime}\n {polling_time/ref_mask} {dbg_port} {0:P_Edge, 1:N_Edge} {SpRate:0-80M,1-40M,2-20M} {Capture num}\n");
-			/**/
+			PHYDM_SNPRINTF(output + used,
+				       out_len - used,
+				       "{En} {0:BB,1:BB_MAC,2:RF0,3:RF1,4:MAC}\n {BB:dbg_port[bit],BB_MAC:0-ok/1-fail/2-cca,MAC:ref} {DMA type} {TrigTime}\n {polling_time/ref_mask} {dbg_port} {0:P_Edge, 1:N_Edge} {SpRate:0-80M,1-40M,2-20M} {Capture num}\n");
 		} else if (is_enable_la_mode) {
 			PHYDM_SSCANF(input[2], DCMD_DECIMAL, &var1[1]);
 
@@ -564,6 +563,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 				PHYDM_SSCANF(input[3], DCMD_HEX, &var1[2]);
 			else
 				PHYDM_SSCANF(input[3], DCMD_DECIMAL, &var1[2]);
+
 			trig_sig_sel = var1[2];
 
 			PHYDM_SSCANF(input[4], DCMD_DECIMAL, &var1[3]);
@@ -575,7 +575,7 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 			PHYDM_SSCANF(input[10], DCMD_DECIMAL, &var1[9]);
 
 			dma_data_sig_sel = (u8)var1[3];
-			trigger_time_mu_sec = var1[4]; /*unit: us*/
+			trigger_time_mu_sec = var1[4]; /* unit: us */
 
 			adc_smp->la_mac_ref_mask = var1[5];
 			adc_smp->la_dbg_port = var1[6];
diff --git a/drivers/staging/rtlwifi/phydm/phydm_ccx.c b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
index f292b23a2db1..80679a6d5047 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_ccx.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_ccx.c
@@ -317,7 +317,7 @@ void phydm_get_nhm_result(void *dm_void)
 		ccx_info->NHM_result[10] = (u8)((value32 & MASKBYTE2) >> 16);
 		ccx_info->NHM_result[11] = (u8)((value32 & MASKBYTE3) >> 24);
 
-		/*Get NHM duration*/
+		/* Get NHM duration */
 		value32 = odm_read_4byte(dm, ODM_REG_NHM_CNT10_TO_CNT11_11N);
 		ccx_info->NHM_duration = (u16)(value32 & MASKLWORD);
 	}
@@ -331,8 +331,9 @@ bool phydm_check_nhm_ready(void *dm_void)
 	bool ret = false;
 
 	if (dm->support_ic_type & ODM_IC_11AC_SERIES) {
-		value32 =
-			odm_get_bb_reg(dm, ODM_REG_CLM_RESULT_11AC, MASKDWORD);
+		value32 = odm_get_bb_reg(dm,
+					 ODM_REG_CLM_RESULT_11AC,
+					 MASKDWORD);
 
 		for (i = 0; i < 200; i++) {
 			ODM_delay_ms(1);
@@ -356,6 +357,7 @@ bool phydm_check_nhm_ready(void *dm_void)
 			}
 		}
 	}
+
 	return ret;
 }
 
-- 
2.17.1


