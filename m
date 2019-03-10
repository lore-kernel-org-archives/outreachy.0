X-GM-THRID: 6666833523477839872
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr2168704plf.60.1552243140634;
        Sun, 10 Mar 2019 11:39:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls6536481pfa.3.gmail; Sun, 10 Mar
 2019 11:38:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwx+q9r+D7627TOduBccqyx5RTX4qlcLTfSDXWsqsW5STydVIPLrtGLMjSkl7WESpjvXpay
X-Received: by 2002:a62:52c7:: with SMTP id g190mr11088855pfb.68.1552243139887;
        Sun, 10 Mar 2019 11:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552243139; cv=none;
        d=google.com; s=arc-20160816;
        b=vf2J+f6fcKKHaHW/f0+aOjT6iiIqsR8Ir+TldARS2Q2LCkObNKKbdtkkYSv1sDuonR
         KuEdVGFHn8D8rKvPt5lWPmXVmoM7803Twe9i82tMaV1F5dHnHu1Ogg6LyZWKaluTIaLH
         HMXzR52c1mMEux1WaF2nixNhsTg0ouDh2lR3KWOIF21UtJYRlOAEuAUnw1yxji0RW42U
         GKpH71nbo25v45uOKRAYRTTH/NFjuLEwaDcO8hrgj23pm3uwe0TTEl4Sma2yewtP4xrY
         exVDBjx5AeScXA83FudDlgAWdomKC0/pRGEjJVkYeudvuH9BEN48Cp+r33mUQEZqLLL1
         XRfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RAjxr7eDxAJ+XLEYlheWWBIgVc8DGbQF37KZv+crgLU=;
        b=lj6CVTcVqK45f7qb/7Hr5vutPPrSIkhlUj3I284yuF7tEW6shJAldRr1JuYMSs0cNY
         ncix3ewNtVaqMuun1Jjc2mDi5fx+aIwxzMtP+Io4S9m07oAcQLyc/rT4ANzr9XJheeuf
         ROrZSBjDyqAebgQYuuZK9SrSvTmxfcaiaGfGWo1DvJDxyIZHwvmcdhiAJI+0kdynOeb2
         Yd4DwHBqZLlWUtjrpAaYuxcZSPosq9sFh+UgIn14AGFITvAzldKhNi8jEzf10mataCqs
         wtC1Ps6D2ZknTW0RxyJIZEka2lKR1Qtp3M02shEr4yhLlWeWksyFzaKoTQ1+2jyVRaYv
         t4+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=awDkNe3W;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-20.consmr.mail.sg3.yahoo.com (sonic312-20.consmr.mail.sg3.yahoo.com. [106.10.244.210])
        by gmr-mx.google.com with ESMTPS id g83si112468pfg.5.2019.03.10.11.38.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) client-ip=106.10.244.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=awDkNe3W;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552243137; bh=RAjxr7eDxAJ+XLEYlheWWBIgVc8DGbQF37KZv+crgLU=; h=From:To:Cc:Subject:Date:From:Subject; b=awDkNe3W1ONa4lVV7Yck3iW9MAAk4faV5o92g4q29B0T8Umo9EZniNg8ECS6OBIuCVLRAviI36hsrKT03HGjS0RqKcDqBXn2tDoxFVlBA552T7gitCELVQ0D0vZhFyRDkKvH5ftY5izraHEqZa7ySWsNbBqHG8Xuh2Xs60ksWCeHVleFy2BgREFj3p1dvgjyCnblCxpF/Dcd826bzBxaH0pWBs3lhviKniveraWKahcdgZpVcQswUulEZLbU4G4y5AZIi9QMgYUO2bmbcdUfX/Xleg7ye7N/AQBAOtWwMRCbMUpsm6h3vtLHfKzoeQYl6SRNA+RvECngOyP3bLBIuw==
X-YMail-OSG: di7_wmYVM1kr_9atvEgAh93.7RnAzqE4hjsGcI81xA0A8Hlc4jiLu2XGilR2R.W
 PO0TE2SpFwxTTdt1WlXbmeiZvbT4gSmCk2NMh2_QL9A625.bjHuaQKabRBbsUAblRPX8fTQLPXxL
 vu9zNgexqIJZizt372ScNHXZ0qOMx1AuD3kxb9rNtTQ.U6aQUeV42F5eW1rOwbxg.Wm.SLnyL6wq
 .1vgeSGSVy9IJ0CL3woZZBjlNMPvkssSEuZiZEVhiAQrp30AylugtRR0.1l473REPLY_.SbFhhVV
 garazg9aUw4qWn.TyZjBVSWCDA1kLaPp7oCcEH.yhlqvVUTyMWnBLCMcJJfiZz4a4W0S_ZzDFKqk
 NvI2dNBdqfR6782oC8fPOkQVkh7LK1UGOOGDY6Vnpu2w5m3ZBYiAXSitWU9JQyKRktf7xFAjAivn
 PsfBH1A0iDtFkjJqTKXwlNcRWfa39vlaqQGiXrNw2sasivcxG5BoJ0e1rsYA6ev1CBdVLGuBiDvQ
 4iuI2modD0cutdzPZnKaWXR3qDiE_8gjLXgQbpClEVDdtM8EzgTOTE8GrAD8a7bLWx5sRzmnNZ0t
 TGfLNiZcH1JcwbiN79b.RlPdENDZFUkO2IGPXZZNvKxYfJcyD8Yl9ujWTAW5JG0PedeaU5y7O94m
 mSRoDrGiK4Y7N2U4R5eYQIfog5osN6Q36_rr9t16IkWaOiyzmgxNVpZXjtFt7pKIhZ4takgck0PO
 4yZ4Arp7LpCC2IyhshpqXmoCA53gAU2hjixXzvfnis50iqXRudfCnF7iLo_GIe14T6JTvNswLxVo
 w_Eyfu_7vEV0kDYPv0y_8boo432f4ZFdTTChHGgrbz4VPzomOUhHpeds8ovgzLCAjB_O6bWH0VyW
 epbWGI2c6jIIOvCNlsF.6RBPFcb.qOJb8b1eDw7z_KePmg4ecqOdtx1c01EVUEP8ufRzRPohKOEw
 poj8myMXu1pR8ZKqeru1AMwoBS0a7gx.k0TlPaGiPV4ZCfWjVlcXFE5A7ps3ApUrnSghNQ_T4Nnw
 EDJXM7Z8uhsgKr27thp7O2lZzvq444mfIA_RksJYBG8wZec_86Zx9wxaDfjlCYaawWqv51i1yjUL
 DER6qdrwGyrZgnc61Af2w8M6_nxg-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Sun, 10 Mar 2019 18:38:57 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp428.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 073824aad04280cb256e282403cbe193;
          Sun, 10 Mar 2019 18:38:52 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2] staging: sm750fb: Edit CamelCase in local variables
Date: Mon, 11 Mar 2019 00:08:36 +0530
Message-Id: <20190310183836.2464-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edit CamelCase in local variables across 4 files:
- sm750fb/ddk750_chip.c
- sm750fb/ddk750_chip.h
- sm750fb/ddk750_dvi.c
- sm750fb/ddk750_sii164.c
to comply with the coding style. Also edit associated comments
accordingly.
Issue found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Submit entire patchset (4 files) as a single commit.

 drivers/staging/sm750fb/ddk750_chip.c   |  16 ++--
 drivers/staging/sm750fb/ddk750_chip.h   |   2 +-
 drivers/staging/sm750fb/ddk750_dvi.c    |  40 ++++-----
 drivers/staging/sm750fb/ddk750_sii164.c | 114 ++++++++++++------------
 4 files changed, 86 insertions(+), 86 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f551da..90f5480304f4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
 	return chip;
 }
 
-void sm750_set_chip_type(unsigned short devId, u8 revId)
+void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
 {
-	if (devId == 0x718) {
+	if (dev_id == 0x718) {
 		chip = SM718;
-	} else if (devId == 0x750) {
+	} else if (dev_id == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (revId == SM750LE_REVISION_ID) {
+		if (rev_id == SM750LE_REVISION_ID) {
 			chip = SM750LE;
 			pr_info("found sm750le\n");
 		}
@@ -321,7 +321,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
 	int mini_diff;
 	unsigned int RN, quo, rem, fl_quo;
 	unsigned int input, request;
-	unsigned int tmpClock, ret;
+	unsigned int tmp_clock, ret;
 	const int max_OD = 3;
 	int max_d = 6;
 
@@ -365,8 +365,8 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
 			if (M < 256 && M > 0) {
 				unsigned int diff;
 
-				tmpClock = pll->inputFreq * M / N / X;
-				diff = abs(tmpClock - request_orig);
+				tmp_clock = pll->inputFreq * M / N / X;
+				diff = abs(tmp_clock - request_orig);
 				if (diff < mini_diff) {
 					pll->M = M;
 					pll->N = N;
@@ -375,7 +375,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
 						pll->POD = d - max_OD;
 					pll->OD = d - pll->POD;
 					mini_diff = diff;
-					ret = tmpClock;
+					ret = tmp_clock;
 				}
 			}
 		}
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index c72aac21b675..3e92b3297160 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -93,7 +93,7 @@ struct initchip_param {
 };
 
 enum logical_chip_type sm750_get_chip_type(void);
-void sm750_set_chip_type(unsigned short devId, u8 revId);
+void sm750_set_chip_type(unsigned short dev_id, u8 rev_id);
 unsigned int sm750_calc_pll_value(unsigned int request, struct  pll_value *pll);
 unsigned int sm750_format_pll_reg(struct pll_value *pPLL);
 unsigned int ddk750_get_vm_size(void);
diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index b20d16198c17..cd564ea40779 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -30,31 +30,31 @@ static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
 #endif
 };
 
-int dviInit(unsigned char edgeSelect,
-	    unsigned char busSelect,
-	    unsigned char dualEdgeClkSelect,
-	    unsigned char hsyncEnable,
-	    unsigned char vsyncEnable,
-	    unsigned char deskewEnable,
-	    unsigned char deskewSetting,
-	    unsigned char continuousSyncEnable,
-	    unsigned char pllFilterEnable,
-	    unsigned char pllFilterValue)
+int dviInit(unsigned char edge_select,
+	    unsigned char bus_select,
+	    unsigned char dual_edge_clk_select,
+	    unsigned char hsync_enable,
+	    unsigned char vsync_enable,
+	    unsigned char deskew_enable,
+	    unsigned char deskew_setting,
+	    unsigned char continuous_sync_enable,
+	    unsigned char pll_filter_enable,
+	    unsigned char pll_filter_value)
 {
 	struct dvi_ctrl_device *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
 	if (pCurrentDviCtrl->pfnInit) {
-		return pCurrentDviCtrl->pfnInit(edgeSelect,
-						busSelect,
-						dualEdgeClkSelect,
-						hsyncEnable,
-						vsyncEnable,
-						deskewEnable,
-						deskewSetting,
-						continuousSyncEnable,
-						pllFilterEnable,
-						pllFilterValue);
+		return pCurrentDviCtrl->pfnInit(edge_select,
+						bus_select,
+						dual_edge_clk_select,
+						hsync_enable,
+						vsync_enable,
+						deskew_enable,
+						deskew_setting,
+						continuous_sync_enable,
+						pll_filter_enable,
+						pll_filter_value);
 	}
 	return -1; /* error */
 }
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


