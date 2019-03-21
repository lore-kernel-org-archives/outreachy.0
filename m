X-GM-THRID: 6670717697091698688
X-Received: by 2002:a6b:f803:: with SMTP id o3mr975294ioh.28.1553147495344;
        Wed, 20 Mar 2019 22:51:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cd39:: with SMTP id h25ls1594601jaq.1.gmail; Wed, 20 Mar
 2019 22:51:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpOijwTwbXOXhlqH0CES/npvao7VHa8yEkkIQr2MFl4vCCko1TO4nftzMerAyXgBxNhZ+8
X-Received: by 2002:a02:3b19:: with SMTP id c25mr758694jaa.0.1553147494401;
        Wed, 20 Mar 2019 22:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553147494; cv=none;
        d=google.com; s=arc-20160816;
        b=lPSc+23R8k6hct392P9fo8aduzd5bgkh0xs/LqBJexkTDpa6XLuxyIG3sgSpCvnI01
         7UcsK6kzBZco+BApjSjeHmqO30XB+WMxy/F8s9QyeI34cwZ0pP7S3TuNFhGTgYVoiq53
         ooBGyJCuWO3J4E+dQ6yD7R99cL5IHwhoAgBBIeD2/8Dh2h12UKHF/UZY1ZnfJSoRyipG
         vvtouk3WLHibVnxDBaKngEgxG5Dlp23zMHxUhipXaAa0miSt3YBtRsNr9eIxUUwuCABa
         utMZjit28rls05iyZxSm7Isxwcr/edK4HslPNCmDkUjtbPk1Ft9nVGGz3UgLu4u/XsEb
         OEQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=BOM7WKKiB8O4G85MbBGEFqcNW8vm8NPRFNgzXWTyIng=;
        b=hhgxae5WUxCi4ihg0Gom1gWlhatYtrd0soZPqyBfIBI9iiLNu+ErqKK2oIPerE1k3E
         OhR3gbC24s5EM31F8MK1/nilEE+pJwG9W1RcvR2aCIibvjp8n4l5oj36rfOuGOjI+F5w
         2ctgUssLPpRg0u3UpERMNNR1LpfBrZvzvEs9x50xfU+c0VTWBXikj6S4Q8qnpIKr3t9e
         8DGHqXHCbbw2/CJcnjaOmDk7rToktNe1HCCSw4uoM+3unNWwmcv2T3Rpx5En5UE0UE0v
         WPz4JUz12fnWkNn6+gEmQ0Vl9H+X3NhH64RHvWOKDNwh3ZucQFGgi3iaUbljal/an29J
         A58w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LY3r6hv3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id n194si631431itb.2.2019.03.20.22.51.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 22:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LY3r6hv3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id 9so3348523pfj.13
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 22:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BOM7WKKiB8O4G85MbBGEFqcNW8vm8NPRFNgzXWTyIng=;
        b=LY3r6hv33VZLSMkWtaNmnfaOfDDiPeb+ydztEA+we5kTEFcD/ftmPEDeaFXsBQt6Bn
         TaDInhNaeVlhR5qWVKJi6SOwPXWR4JfbhtXJt4t75PxTRBU993HOHe1XJ3+Qxoo0rBsd
         7E3HgenllBydFW70+SKuGr3e3PRa6qsPTNmyeP762XB49k+yVyJi0+gdQbpCIaNwz5gR
         ouj7Fb5ydGkNTH9vhf2Yp1JCUJJth32C47TKqBG7+4gWscBDDa9dTaBYN+0chMRJLcEp
         bXl1NB0BBdQ9ptby+00NwT+xOERycfXek9tAgu0wsvkO0CJXu7GUbF8QjH56zyKQerg4
         bEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BOM7WKKiB8O4G85MbBGEFqcNW8vm8NPRFNgzXWTyIng=;
        b=fIlJeGZG8vy5Se7OqKdSqdcuGx+NOL8rE/hKosEPK/S4hmJMeU8d+9gaSl4QI/Wc0P
         ww1DJTF9cQZ23Y3quV1+o2DVKfLWziEftVJMqkyxedFyJ8ZHGk+oN/5mOuHKqMDzD10p
         85c8RZfWdbwZ/+8WpjuzJmX773FSNnB3igGD31WIRUctnqIpU8HZhfAIh97dknj0IVJd
         qhsOrvDGC1cxa0P6rkmKdJNvzZGmmdeOdv2Y+88qFfIqbSOwcpqLKyKtxCZNBYpwQWLq
         JLnVVsoVQprGdghKToxEJ+A1w653Yev1wXB1xn9CSqmVQfKysdTiwog9FJoJirrzf7+S
         7vxg==
X-Gm-Message-State: APjAAAXyjFtZJicYG0Y6p3goartzqTLWaVNhdodl6EIOlhRf6j2QrQTO
	NqT+oLvvDiWsu2WmSREC2bN1tPvz
X-Received: by 2002:a17:902:8203:: with SMTP id x3mr1764237pln.159.1553147493106;
        Wed, 20 Mar 2019 22:51:33 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id v6sm5132103pgi.90.2019.03.20.22.51.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 22:51:32 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: sm750fb: avoid camelcase
Date: Thu, 21 Mar 2019 11:21:15 +0530
Message-Id: <1553147475-6907-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Eliminate camelcase to meet the style.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 94 +++++++++++++++++------------------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 4dac691..5dfa87d 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -13,13 +13,13 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
-						  unsigned long dispControl)
+static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,
+						    unsigned long disp_control)
 {
 	unsigned long x, y;
 
-	x = pModeParam->horizontal_display_end;
-	y = pModeParam->vertical_display_end;
+	x = p_mode_param->horizontal_display_end;
+	y = p_mode_param->vertical_display_end;
 
 	/*
 	 * SM750LE has to set up the top-left and bottom-right
@@ -35,47 +35,47 @@ static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModePa
 	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 
 	/*
-	 * Assume common fields in dispControl have been properly set before
+	 * Assume common fields in disp_control have been properly set before
 	 * calling this function.
-	 * This function only sets the extra fields in dispControl.
+	 * This function only sets the extra fields in disp_control.
 	 */
 
 	/* Clear bit 29:27 of display control register */
-	dispControl &= ~CRT_DISPLAY_CTRL_CLK_MASK;
+	disp_control &= ~CRT_DISPLAY_CTRL_CLK_MASK;
 
 	/* Set bit 29:27 of display control register for the right clock */
 	/* Note that SM750LE only need to supported 7 resolutions. */
 	if (x == 800 && y == 600)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL41;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL41;
 	else if (x == 1024 && y == 768)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL65;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL65;
 	else if (x == 1152 && y == 864)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
 	else if (x == 1280 && y == 768)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
 	else if (x == 1280 && y == 720)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL74;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL74;
 	else if (x == 1280 && y == 960)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
 	else if (x == 1280 && y == 1024)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
 	else /* default to VGA clock */
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL25;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL25;
 
 	/* Set bit 25:24 of display controller */
-	dispControl |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
+	disp_control |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
 
 	/* Set bit 14 of display controller */
-	dispControl |= DISPLAY_CTRL_CLOCK_PHASE;
+	disp_control |= DISPLAY_CTRL_CLOCK_PHASE;
 
-	poke32(CRT_DISPLAY_CTRL, dispControl);
+	poke32(CRT_DISPLAY_CTRL, disp_control);
 
-	return dispControl;
+	return disp_control;
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(struct mode_parameter *pModeParam,
-				struct pll_value *pll)
+static int program_mode_registers(struct mode_parameter *p_mode_param,
+				  struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -85,46 +85,46 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 		/* programe secondary pixel clock */
 		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		tmp = ((pModeParam->horizontal_total - 1) <<
+		tmp = ((p_mode_param->horizontal_total - 1) <<
 		       CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
 		     CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
-		tmp |= (pModeParam->horizontal_display_end - 1) &
+		tmp |= (p_mode_param->horizontal_display_end - 1) &
 		      CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
 
 		poke32(CRT_HORIZONTAL_TOTAL, tmp);
 
-		tmp = (pModeParam->horizontal_sync_width <<
+		tmp = (p_mode_param->horizontal_sync_width <<
 		       CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
 		     CRT_HORIZONTAL_SYNC_WIDTH_MASK;
-		tmp |= (pModeParam->horizontal_sync_start - 1) &
+		tmp |= (p_mode_param->horizontal_sync_start - 1) &
 		      CRT_HORIZONTAL_SYNC_START_MASK;
 
 		poke32(CRT_HORIZONTAL_SYNC, tmp);
 
-		tmp = ((pModeParam->vertical_total - 1) <<
+		tmp = ((p_mode_param->vertical_total - 1) <<
 		       CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
 		     CRT_VERTICAL_TOTAL_TOTAL_MASK;
-		tmp |= (pModeParam->vertical_display_end - 1) &
+		tmp |= (p_mode_param->vertical_display_end - 1) &
 		      CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
 
 		poke32(CRT_VERTICAL_TOTAL, tmp);
 
-		tmp = ((pModeParam->vertical_sync_height <<
+		tmp = ((p_mode_param->vertical_sync_height <<
 		       CRT_VERTICAL_SYNC_HEIGHT_SHIFT)) &
 		     CRT_VERTICAL_SYNC_HEIGHT_MASK;
-		tmp |= (pModeParam->vertical_sync_start - 1) &
+		tmp |= (p_mode_param->vertical_sync_start - 1) &
 		      CRT_VERTICAL_SYNC_START_MASK;
 
 		poke32(CRT_VERTICAL_SYNC, tmp);
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
-		if (pModeParam->vertical_sync_polarity)
+		if (p_mode_param->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
-		if (pModeParam->horizontal_sync_polarity)
+		if (p_mode_param->horizontal_sync_polarity)
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
 
 		if (sm750_get_chip_type() == SM750LE) {
-			displayControlAdjust_SM750LE(pModeParam, tmp);
+			display_control_adjust_SM750LE(p_mode_param, tmp);
 		} else {
 			reg = peek32(CRT_DISPLAY_CTRL) &
 				~(DISPLAY_CTRL_VSYNC_PHASE |
@@ -139,40 +139,40 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 
 		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		reg = ((pModeParam->horizontal_total - 1) <<
+		reg = ((p_mode_param->horizontal_total - 1) <<
 			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
 			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
-		reg |= ((pModeParam->horizontal_display_end - 1) &
+		reg |= ((p_mode_param->horizontal_display_end - 1) &
 			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
 		poke32(PANEL_HORIZONTAL_TOTAL, reg);
 
 		poke32(PANEL_HORIZONTAL_SYNC,
-		       ((pModeParam->horizontal_sync_width <<
+		       ((p_mode_param->horizontal_sync_width <<
 			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
 			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
-		       ((pModeParam->horizontal_sync_start - 1) &
+		       ((p_mode_param->horizontal_sync_start - 1) &
 			PANEL_HORIZONTAL_SYNC_START_MASK));
 
 		poke32(PANEL_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
+		       (((p_mode_param->vertical_total - 1) <<
 			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
 			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
+		       ((p_mode_param->vertical_display_end - 1) &
 			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
 
 		poke32(PANEL_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
+		       ((p_mode_param->vertical_sync_height <<
 			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
 			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
+		       ((p_mode_param->vertical_sync_start - 1) &
 			PANEL_VERTICAL_SYNC_START_MASK));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
-		if (pModeParam->vertical_sync_polarity)
+		if (p_mode_param->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
-		if (pModeParam->horizontal_sync_polarity)
+		if (p_mode_param->horizontal_sync_polarity)
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
-		if (pModeParam->clock_phase_polarity)
+		if (p_mode_param->clock_phase_polarity)
 			tmp |= DISPLAY_CTRL_CLOCK_PHASE;
 
 		reserved = PANEL_DISPLAY_CTRL_RESERVED_MASK |
@@ -206,20 +206,20 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 	return ret;
 }
 
-int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
+int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock)
 {
 	struct pll_value pll;
-	unsigned int uiActualPixelClk;
+	unsigned int ui_actual_pixel_clk;
 
 	pll.inputFreq = DEFAULT_INPUT_CLOCK;
 	pll.clockType = clock;
 
-	uiActualPixelClk = sm750_calc_pll_value(parm->pixel_clock, &pll);
+	ui_actual_pixel_clk = sm750_calc_pll_value(parm->pixel_clock, &pll);
 	if (sm750_get_chip_type() == SM750LE) {
 		/* set graphic mode via IO method */
 		outb_p(0x88, 0x3d4);
 		outb_p(0x06, 0x3d5);
 	}
-	programModeRegisters(parm, &pll);
+	program_mode_registers(parm, &pll);
 	return 0;
 }
-- 
2.7.4


