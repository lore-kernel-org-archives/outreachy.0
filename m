X-GM-THRID: 6670800294132056064
X-Received: by 2002:a25:34cb:: with SMTP id b194mr379889yba.98.1553166726800;
        Thu, 21 Mar 2019 04:12:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls1769252ybb.12.gmail; Thu, 21
 Mar 2019 04:12:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3VN4UBPLLb85/M1VFgi65i9H2+GMwWRYZeSUo0N5P39Z0S0nTdkEGiomBjN2cps9nSnV2
X-Received: by 2002:a25:fd6:: with SMTP id 205mr523141ybp.32.1553166725997;
        Thu, 21 Mar 2019 04:12:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553166725; cv=none;
        d=google.com; s=arc-20160816;
        b=ipXKYPv4tXNvh8tV0n5l1lk6N2Tyu7FhIl7DRn4WAW1NxtrVHoReq327C+A8IeDEHU
         Mxg/4kV6ObPvOKDPqZrou/5Ox8fdkDfS8wzW365xnWkwwlZGe37z8nTSZLrwjtGqxLFR
         nBbqsCxT4kgVWUehQ3Yk+D6g7kYFv6EYHHxJAsQSJB30OtOeuvqswRgaPOEDE+fEHg/Y
         N6PWBbvIJANH3Y4oNWCA5d5srzDfdeRsavuBVLuIdX0cLh7M2b/BYaMlQvl/8zgMrBz+
         5SBbQrrS2/mGAD230wjM2ZzHRK5PAvcWHy9gxuKjROLDCoxPg4cTEyTDRJCB55m0kKQ/
         G/nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2/NuDDny0NsK/Qql7RsMRvQMWhJLJbjAqP50OjGet7M=;
        b=SxuwSfDhgXlIJKrlnuYsLdV1W3PBDhqltvOSYkj8TrXMz1CHRj36du4Fhq31Z5vZkR
         B6WwKYG+bu/faQSKUtdcWHeWiMAsnnvWhgCKGoRe365jEYiiLzSEliWBg5h6NFYmHDGv
         KlfYXzOSON0uC+S4YNfK0QhtP9kC3wP5onsSr7YDLeCfyxXmLrh7zI97Jpfx6U6eS+eA
         JaeVKo7vbPOpzub5DX7GDxmMFbgIul8SwVv9laA3onSOtw4WYjdN3TFteywr3j5NG2Sc
         LwDcmoOsSfdBcbHWxycn0tkzowM8rTvJX8sZe9T+oMjpnusWHr2ltBh5sxj8/AXkeunf
         1JFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FR3Diq5Y;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e23si409596ybb.1.2019.03.21.04.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 04:12:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FR3Diq5Y;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c207so4079195pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 04:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2/NuDDny0NsK/Qql7RsMRvQMWhJLJbjAqP50OjGet7M=;
        b=FR3Diq5YSRX0S0jp+o/FLmjwRc1DnQd4adLId9ZtRhBg3perBECtTS8lCicwuzVnwF
         rm0M6MHnRix01tltQmsFEcHHWMTgw4oAXcJbq2g/Dkt1jrrIiEnK4suFYqQLH0aaQ7Kr
         0NGFlyl1oJhBac+k2rvuM1xnvuw/DWTZgnqnl7PUazHWQkKAtw5j67sNGXTHy4LxRDrY
         kQCHW8dkKJtK0oS+ISi59GtThVxBzmLYz3LyV0LEfDsPnO7TVEwSTJ8rjj+38QQdTXuy
         jSdafZJ/2xcEBPatD7ord6fWgJDIPHS+hD1/KkInTBgMANSmTBTrM3B1L34DSsTuf/M/
         DHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2/NuDDny0NsK/Qql7RsMRvQMWhJLJbjAqP50OjGet7M=;
        b=V4xUxkiPjD+suued3sq0+RbLAQVUoUE2T9InMqCVqOw7MoaBMogNsSSZSoWvW31YwZ
         tMh6n+mKA/uMydbZr5f0eMTjvmFMifygzHSQemeX3cg6XUQ3/W8HTV3y0NSs2FAK5AYs
         DAsmZLDUGrgOJBt9reck5wZPEwy/eytnIaKis8eUX2ATOhfC+Y8ftjMtHthvfYCnnEYE
         DQvtlGtohkHbFLkAR9R1vtzknxHs0wof4uNQlShX/EjzFEnqOqW7u5Uh/T9Kpk05ggCi
         Vwlio+GNawfgCuo/6IQxTe9uPrqfTIig2b3Xbvnv8lDRFRPJcUG427PV7O4qpoyqmxXx
         Lksg==
X-Gm-Message-State: APjAAAU28IOJkTohvfQqtySXljUNpzWALGQ2gBm9u2dQtvtZDz3rtwPa
	+tm8r8T/EFop5E0gcfJnT0Rmt4QD
X-Received: by 2002:a17:902:547:: with SMTP id 65mr2983592plf.242.1553166724783;
        Thu, 21 Mar 2019 04:12:04 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id p34sm8526827pgb.18.2019.03.21.04.12.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 04:12:04 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 2/3] [Outreachy kernel] staging: sm750fb: avoid camelcase structure fields
Date: Thu, 21 Mar 2019 16:41:49 +0530
Message-Id: <1553166709-12186-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase structure fields to fix the style issue – ‘avoid
camelcase’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 52 +++++++++++++++++------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 5e35fec..b55cd96 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -13,13 +13,13 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long display_control_adjust_SM750LE(struct mode_parameter *pModeParam,
+static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,
 						    unsigned long dispcontrol)
 {
 	unsigned long x, y;
 
-	x = pModeParam->horizontal_display_end;
-	y = pModeParam->vertical_display_end;
+	x = p_mode_param->horizontal_display_end;
+	y = p_mode_param->vertical_display_end;
 
 	/*
 	 * SM750LE has to set up the top-left and bottom-right
@@ -74,7 +74,7 @@ static unsigned long display_control_adjust_SM750LE(struct mode_parameter *pMode
 }
 
 /* only timing related registers will be  programed */
-static int program_mode_registers(struct mode_parameter *pModeParam,
+static int program_mode_registers(struct mode_parameter *p_mode_param,
 				  struct pll_value *pll)
 {
 	int ret = 0;
@@ -85,46 +85,46 @@ static int program_mode_registers(struct mode_parameter *pModeParam,
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
-			display_control_adjust_SM750LE(pModeParam, tmp);
+			display_control_adjust_SM750LE(p_mode_param, tmp);
 		} else {
 			reg = peek32(CRT_DISPLAY_CTRL) &
 				~(DISPLAY_CTRL_VSYNC_PHASE |
@@ -139,40 +139,40 @@ static int program_mode_registers(struct mode_parameter *pModeParam,
 
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
-- 
2.7.4


