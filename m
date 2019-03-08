X-GM-THRID: 6666119040327483392
X-Received: by 2002:a63:c545:: with SMTP id g5mr7881645pgd.9.1552076810279;
        Fri, 08 Mar 2019 12:26:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:2b87:: with SMTP id l7ls5312994plb.8.gmail; Fri, 08
 Mar 2019 12:26:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqzhysqdgFw+cgpt47CMZIuz0K6X0Fd9b7WqFcqWnu8K3KoiLErJOuZUP5CzdcKsI/FfIQEa
X-Received: by 2002:a17:902:1125:: with SMTP id d34mr6462327pla.25.1552076809651;
        Fri, 08 Mar 2019 12:26:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552076809; cv=none;
        d=google.com; s=arc-20160816;
        b=jAFuCo5SfOXNOl7sd8OceqBf7k5fqnqw9R7+7XsrmhDyMI9E2uW63nruiSR4txDlzk
         cpv+2X+1fINomTGJqLoGCNbWYujP4MEafXmkfI4NnMhTxynDSqlbHw6DHV4MRoemGscu
         +LIOsqaOk3p8/SGyeemgKEoVZ9Xcux5WMhmjA8yh/l3jReX3Z5uGkcsOxoI5RyZ3Sy+2
         2PM6ZQne4dBFeoFE/WSHi+Q3h2ppWAOm87lIXq8cTvAc7G1IGZRRigNtDPrIj6GEUoD4
         LPGQ0n36SwkVzw9+kCZcuQZwoag3vb/0pPkG0IgEusD7xDuIvMIspQuy9enYdRvNOAE+
         69Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aTrJ8XDqUW/QRUuas+6fc++on81gjGtEfesNIagP+4s=;
        b=sQdP8mip+ojHl6Wqu06HRLtKuhqCaIFM5B7TiQ8w83ubsGcnSE5J99MkhGPu+D+XAR
         Yyb1g/VmN1UFj3KTMqyiZslI98sPlB1hR28MsLMD0kYgvAOFyeL+GNn7MgYfknOlu4hJ
         NQ3t3HJB+GXoYA7kx49w4FSJqF+Lxi0nxGf4l4leFHitMXPWL8yM9Zru9czgWYyq+2Xc
         mmFwqgt26WV6jJhLZh67BtTWX7vrZINdtLp5WpP6C5QRsgN6xsb3aJm0HZ20prYU6QQ7
         FRdn39w7tUwa/eLdmzXlZsEOBdMI4j8GVsfSMHr6Z61Jxlojyz93ynSfbJ8Cug2lTZh2
         a+3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=J9qAGTt5;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-20.consmr.mail.sg3.yahoo.com (sonic313-20.consmr.mail.sg3.yahoo.com. [106.10.240.79])
        by gmr-mx.google.com with ESMTPS id b38si434331plb.1.2019.03.08.12.26.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:26:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) client-ip=106.10.240.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=J9qAGTt5;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552076807; bh=aTrJ8XDqUW/QRUuas+6fc++on81gjGtEfesNIagP+4s=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=J9qAGTt5Ym2t9Y+ff+fv5RXIO5e3Wn5mbK8ovRl+SeZ8Yrnem/ZV9V6tvD9LsBEX/yGSdKKB4nHb0Jy2M3H6Lc29JxMac4kiRSVdN52O4nbR2HoO3nDmaWlcQ8Uoc8JRTIXh6R3+X2FmA6kPhMg++M2GPCBCyjSGf8cOKTt+vRIikptgpYKvR/o9pdjhRIhzzVzB2kWE8OR9+vgTXjkTHAariuq/mmP+v305V9rVCLhfVZtRTWpoyn1NG7vJ39wVBy159jB6T7ybrYh75eLDIocfIw2cu3eM/fDgK5qQuEYX3ZVxdDCfI4cS+CbO8w8S4GtyVbMKyC93vZ6St2ocXQ==
X-YMail-OSG: LHHePUcVM1m4X4HLd.aS3yZb7wEHUk4Vyz0tI1Jbku_6ofWpqRWzIBWEkPDBvOW
 JWz1pkPZBHKxNHSeFNqpueyxGxcHo5jepcFMgk_rG3zQwhqthuUKH9MozDlVXrjFK2Gh4QfWE98U
 yAPD8NpuSqwmmdrIlPxCOCLiRBjlTq0Fss4.vgBNBjt43LdBL9rspX5cZyDtChF6EPriL8X8QO0D
 Z8xRXNtvTV_qZeg5d3.RwIgX8FEzhfwUatlNfLj.optgQFKVHQEL0G0RnlgROgS388O.7t5cpJhK
 nMPi7o_Ur2pXlQx7mmNOd698sUKPIhO4CiK5QK9bMPDjN7yFtA63TAEixL2loVn1PSLh0wlWTVNg
 jD3VfLL1x46IoomnLWw9_XRfNYNIHAaGqBwZWT_Okt3lklA8W0NXYFYe4BIHqaGjGxHR7K6Gphof
 uAKZpSd8Lhuau25vOKysQ0HzxsgbxBEAuwbf1cklmZ0q4HsR0SKWBwcDO6b5yVhUPXqtRe5r6j8p
 T24Mf4EI85X6ETryE0DomAXjO6yLChaOXwK_r2cbN0oFR80aUDyCuLe2RYZ4Q0LZd8zL5HATTrSC
 _EpssN3_8Qqlhdy8etHco309OF_oxT.4ThINVkeCLFBi0Gk_irhK4xQutKvB2PstQ_5M9ON8juAC
 i4LWSrK7y0ueEw9dRE4WfF5FWRL0ICWa948mz6TkiBAAO0o217cViLkxuOcnWB_kUHBayWQ6TLNo
 FfXr6JMKR2AoIxiXs5ST6n3flq_RkTlILznAt4gPd4tV7ghM9oIe9HmaIRmKv3x5vYbB9t3HMb.z
 a4a8qslcoRSCFkVClfEEOqTvGdltLJZtF.W9CZ9lwStphMVd6CtvFktbq9.G3QJ6Se5fsddw2iVk
 IG7CtirWveewYbItf3VMrk.VIMP4Gd_s7voxI_9DnJB7otmFqeugx3sX4YxxA9xPOeu.WsDfWzWG
 p320SKpqVK53mf30csL7gFdTubLt2Skkrvec_qT2_7NxtV.Gtfn5cpNLRcuYaGfCD6TRyfavy_dr
 fieXHF08wWlL_0YVcj0TcqqjEupLmUce_d8BaFtUAErNX84EOb_klTRjHDT2L7eUpCTON9MaF2RX
 F25wGErfinqDfQfdWPjxRaKcy366pn7jj
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Fri, 8 Mar 2019 20:26:47 +0000
Received: from 47.15.233.237 (EHLO localhost.localdomain) ([47.15.233.237])
          by smtp432.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 97b59abc1276b5581cd8b807a2758e64;
          Fri, 08 Mar 2019 20:26:43 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 4/4] staging: sm750fb: Change CamelCase variable names
Date: Sat,  9 Mar 2019 01:56:05 +0530
Message-Id: <20190308202605.4061-4-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
References: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change variable names that were in CamelCase, and also associated
comments, to make code more readable. Issue found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/sm750fb/ddk750_sii164.c | 114 ++++++++++++------------
 1 file changed, 57 insertions(+), 57 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 8391f57d5383..c8e856c13912 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -69,58 +69,58 @@ unsigned short sii164GetDeviceID(void)
  *      This function initialize and detect the DVI controller chip.
  *
  *  Input:
- *      edgeSelect          - Edge Select:
- *                              0 = Input data is falling edge latched (falling edge
- *                                  latched first in dual edge mode)
- *                              1 = Input data is rising edge latched (rising edge
- *                                  latched first in dual edge mode)
- *      busSelect           - Input Bus Select:
- *                              0 = Input data bus is 12-bits wide
- *                              1 = Input data bus is 24-bits wide
- *      dualEdgeClkSelect   - Dual Edge Clock Select
- *                              0 = Input data is single edge latched
- *                              1 = Input data is dual edge latched
- *      hsyncEnable         - Horizontal Sync Enable:
- *                              0 = HSYNC input is transmitted as fixed LOW
- *                              1 = HSYNC input is transmitted as is
- *      vsyncEnable         - Vertical Sync Enable:
- *                              0 = VSYNC input is transmitted as fixed LOW
- *                              1 = VSYNC input is transmitted as is
- *      deskewEnable        - De-skewing Enable:
- *                              0 = De-skew disabled
- *                              1 = De-skew enabled
- *      deskewSetting       - De-skewing Setting (increment of 260psec)
- *                              0 = 1 step --> minimum setup / maximum hold
- *                              1 = 2 step
- *                              2 = 3 step
- *                              3 = 4 step
- *                              4 = 5 step
- *                              5 = 6 step
- *                              6 = 7 step
- *                              7 = 8 step --> maximum setup / minimum hold
- *      continuousSyncEnable- SYNC Continuous:
- *                              0 = Disable
- *                              1 = Enable
- *      pllFilterEnable     - PLL Filter Enable
- *                              0 = Disable PLL Filter
- *                              1 = Enable PLL Filter
- *      pllFilterValue      - PLL Filter characteristics:
- *                              0~7 (recommended value is 4)
+ *      edge_select           - Edge Select:
+ *                               0 = Input data is falling edge latched (falling
+ *                                   edge latched first in dual edge mode)
+ *                               1 = Input data is rising edge latched (rising
+ *                                   edge latched first in dual edge mode)
+ *      bus_select            - Input Bus Select:
+ *                               0 = Input data bus is 12-bits wide
+ *                               1 = Input data bus is 24-bits wide
+ *      dual_edge_clk_select  - Dual Edge Clock Select
+ *                               0 = Input data is single edge latched
+ *                               1 = Input data is dual edge latched
+ *      hsync_enable          - Horizontal Sync Enable:
+ *                               0 = HSYNC input is transmitted as fixed LOW
+ *                               1 = HSYNC input is transmitted as is
+ *      vsync_enable          - Vertical Sync Enable:
+ *                               0 = VSYNC input is transmitted as fixed LOW
+ *                               1 = VSYNC input is transmitted as is
+ *      deskew_enable         - De-skewing Enable:
+ *                               0 = De-skew disabled
+ *                               1 = De-skew enabled
+ *      deskew_setting        - De-skewing Setting (increment of 260psec)
+ *                               0 = 1 step --> minimum setup / maximum hold
+ *                               1 = 2 step
+ *                               2 = 3 step
+ *                               3 = 4 step
+ *                               4 = 5 step
+ *                               5 = 6 step
+ *                               6 = 7 step
+ *                               7 = 8 step --> maximum setup / minimum hold
+ *      continuous_sync_enable- SYNC Continuous:
+ *                               0 = Disable
+ *                               1 = Enable
+ *      pll_filter_enable     - PLL Filter Enable
+ *                               0 = Disable PLL Filter
+ *                               1 = Enable PLL Filter
+ *      pll_filter_value      - PLL Filter characteristics:
+ *                               0~7 (recommended value is 4)
  *
  *  Output:
  *      0   - Success
  *     -1   - Fail.
  */
-long sii164InitChip(unsigned char edgeSelect,
-		    unsigned char busSelect,
-		    unsigned char dualEdgeClkSelect,
-		    unsigned char hsyncEnable,
-		    unsigned char vsyncEnable,
-		    unsigned char deskewEnable,
-		    unsigned char deskewSetting,
-		    unsigned char continuousSyncEnable,
-		    unsigned char pllFilterEnable,
-		    unsigned char pllFilterValue)
+long sii164InitChip(unsigned char edge_select,
+		    unsigned char bus_select,
+		    unsigned char dual_edge_clk_select,
+		    unsigned char hsync_enable,
+		    unsigned char vsync_enable,
+		    unsigned char deskew_enable,
+		    unsigned char deskew_setting,
+		    unsigned char continuous_sync_enable,
+		    unsigned char pll_filter_enable,
+		    unsigned char pll_filter_value)
 {
 	unsigned char config;
 
@@ -139,31 +139,31 @@ long sii164InitChip(unsigned char edgeSelect,
 		 */
 
 		/* Select the edge */
-		if (edgeSelect == 0)
+		if (edge_select == 0)
 			config = SII164_CONFIGURATION_LATCH_FALLING;
 		else
 			config = SII164_CONFIGURATION_LATCH_RISING;
 
 		/* Select bus wide */
-		if (busSelect == 0)
+		if (bus_select == 0)
 			config |= SII164_CONFIGURATION_BUS_12BITS;
 		else
 			config |= SII164_CONFIGURATION_BUS_24BITS;
 
 		/* Select Dual/Single Edge Clock */
-		if (dualEdgeClkSelect == 0)
+		if (dual_edge_clk_select == 0)
 			config |= SII164_CONFIGURATION_CLOCK_SINGLE;
 		else
 			config |= SII164_CONFIGURATION_CLOCK_DUAL;
 
 		/* Select HSync Enable */
-		if (hsyncEnable == 0)
+		if (hsync_enable == 0)
 			config |= SII164_CONFIGURATION_HSYNC_FORCE_LOW;
 		else
 			config |= SII164_CONFIGURATION_HSYNC_AS_IS;
 
 		/* Select VSync Enable */
-		if (vsyncEnable == 0)
+		if (vsync_enable == 0)
 			config |= SII164_CONFIGURATION_VSYNC_FORCE_LOW;
 		else
 			config |= SII164_CONFIGURATION_VSYNC_AS_IS;
@@ -175,12 +175,12 @@ long sii164InitChip(unsigned char edgeSelect,
 		 * This fixes some artifacts problem in some mode on board 2.2.
 		 * Somehow this fix does not affect board 2.1.
 		 */
-		if (deskewEnable == 0)
+		if (deskew_enable == 0)
 			config = SII164_DESKEW_DISABLE;
 		else
 			config = SII164_DESKEW_ENABLE;
 
-		switch (deskewSetting) {
+		switch (deskew_setting) {
 		case 0:
 			config |= SII164_DESKEW_1_STEP;
 			break;
@@ -209,19 +209,19 @@ long sii164InitChip(unsigned char edgeSelect,
 		i2cWriteReg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
 
 		/* Enable/Disable Continuous Sync. */
-		if (continuousSyncEnable == 0)
+		if (continuous_sync_enable == 0)
 			config = SII164_PLL_FILTER_SYNC_CONTINUOUS_DISABLE;
 		else
 			config = SII164_PLL_FILTER_SYNC_CONTINUOUS_ENABLE;
 
 		/* Enable/Disable PLL Filter */
-		if (pllFilterEnable == 0)
+		if (pll_filter_enable == 0)
 			config |= SII164_PLL_FILTER_DISABLE;
 		else
 			config |= SII164_PLL_FILTER_ENABLE;
 
 		/* Set the PLL Filter value */
-		config |= ((pllFilterValue & 0x07) << 1);
+		config |= ((pll_filter_value & 0x07) << 1);
 
 		i2cWriteReg(SII164_I2C_ADDRESS, SII164_PLL, config);
 
-- 
2.19.1


