X-GM-THRID: 6748590079853199360
X-Received: by 2002:a67:e3a7:: with SMTP id j7mr3244129vsm.86.1571343157810;
        Thu, 17 Oct 2019 13:12:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e28c:: with SMTP id g12ls362326vsf.11.gmail; Thu, 17 Oct
 2019 13:12:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzc0s572/K7KmFe2jDJCp5Tt+exqWKUXQ25RycGxGurfJc63Q24B4vJ36lcVJd/Xl7+F+a
X-Received: by 2002:a67:30c6:: with SMTP id w189mr3159621vsw.152.1571343156879;
        Thu, 17 Oct 2019 13:12:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571343156; cv=none;
        d=google.com; s=arc-20160816;
        b=BJfVm2KV6tLtwAxj3tSKYQjhsy/25H4WMJYegeCamuhN0i2EMmaw1cHeA5jMqdB6mQ
         5/35SJ6IH3XuYB5rFI3Ol4mUtFZN6mlI8fef2I+2EY+gNY/uM9QKCER/QTcLvv+FqLAX
         4mRug9ZB9CiGanHkH8I4/MbMI70HGWwk3MMbtRRk3xyxteZLwo6DSajAysmNg6N2yYqF
         gtuQyIJSKwAXkp1vXd9hXDMW1hfsZXxp2YWWVUKxXSObosj8iwGSldcjYhIW2mEj2jnp
         CQwJsjvytPzmVFJY+AllmEEgAPT7Qk6AN1AvWKd6J9QiejCDz2qz201UZVPEae7KcodT
         xnEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pcTvqsJ2A+VHaDEx8RjKz/K7N8nbj1eM0yB7GuwfubM=;
        b=EZW8TjMgwoHy4av+ELWy6lpHv/Vsqot5KqLQ5EG8L+zF+g+QjkVm1FwtRzlRaLPITu
         gj9nOUhh0IWkFvBPDSgtKm7X5sfw+V4c0Viv/ri+6CCPP/PK+P1K3gJchCZRG0T0OML+
         plgE9RczLdZP785MSR/kU7BPm6WdEAhsnrcNeBNpbPa3K8SCoL5KJstxJyDaFQOvGyk8
         Dqc/mT4IE5x8UF7z7Cs7mCP+RZ/w74VEquJxixTNW+C2Q0TkyjRGg3vQ9V1al68OVtf9
         NkLWwu9nKfV09iH0LTifUcAZJKUWJSnoIyVQvVUpggmI6sgmR3D8TwPbCFVb5SjnyD/H
         ULNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3e38zfL;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id u196si196270vkb.1.2019.10.17.13.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 13:12:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3e38zfL;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id d22so1661870pll.7
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 13:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pcTvqsJ2A+VHaDEx8RjKz/K7N8nbj1eM0yB7GuwfubM=;
        b=F3e38zfLgVN9aCsk0byA+GEp2phM9PUYKVPd/64sJXgCyXYznAQfIPG5/0Sh2uN75d
         h5YyPAcAbpO8dkCC/oibTN22oWl1cUnC1IBjX1RZNUZL+B4bO+ARFGXtTw8cJ7EmL78W
         74UuE1aeWwHtTeDvEQxchZKZ9WzhFvx1OCPy9aWzURwTd7HkwHHMvF6uFxzBAbdW4k0S
         guXBzwsKbx4Wx9dTGSmbaqCgDkCNx63B1JeiuwqTYvGUqs+fEoXj6T/ryicu22+Vt4ec
         QQyqy125PkaNEd3jb2agbwI0sb19UpxFmcApcREC2EQBPgKEmJqyhfqdFdkugKOOqAbl
         TeBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pcTvqsJ2A+VHaDEx8RjKz/K7N8nbj1eM0yB7GuwfubM=;
        b=QEmHq7QqDJBT6EuEfZCFLGFEtzo3chyOA9R7rH7iUYpv5+em3FLy1bdbAMaGA18NZ7
         Seqau+vteIvlMHmyXhshSbqX7djtJhqahBGasTD8mFMESbJj7cv7KgWaLNxJFavL+YhT
         XxxlhvmtXEXce1Ra5ffQXkSfyaGcOGnqSlvbWh0dSlvL1B4BO5ZGL/46Tvfkjgn55jxU
         dg54jADr1iuh3ueZ95nONO05yPyGbjdy8RehghtjWxDQtRD7ZRTrYHpWOVs2OlK3SntB
         6O398VTDUkjcXjQwz2JcoGERArUm8tDUkd7qC7zHh4St4q7GhlTPQKOEzUy6yFON6AGK
         f3rA==
X-Gm-Message-State: APjAAAVz5BnBLuFzNczHV6LbRxi/Fe0GUGYsAhAAxcpMUqxsq7W7LjpZ
	Vwutq/zWx0zRjtiRkpIvtxM=
X-Received: by 2002:a17:902:6acb:: with SMTP id i11mr6087949plt.16.1571343155835;
        Thu, 17 Oct 2019 13:12:35 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q30sm3767721pja.18.2019.10.17.13.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 13:12:34 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: sm750fb: Edit CamelCase in ddk750_mode files
Date: Thu, 17 Oct 2019 13:12:20 -0700
Message-Id: <20191017201220.27728-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Edit CamelCase naming in ddk750 files and
in dependent file sm750_hw.c.

Remove hungrarian notation prefixes in ddk750_mode.c file.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v2:
 - Remove hungarion notation prefixes in ddk750_mode.c file
---
 drivers/staging/sm750fb/ddk750_mode.c | 86 +++++++++++++--------------
 drivers/staging/sm750fb/ddk750_mode.h |  2 +-
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 3 files changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index e00a6cb31947..a2f9ce2128e7 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -14,13 +14,13 @@
  * in bit 29:27 of Display Control register.
  */
 static unsigned long
-displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
-			     unsigned long dispControl)
+display_control_adjust_SM750LE(struct mode_parameter *mode_param,
+			       unsigned long disp_control)
 {
 	unsigned long x, y;
 
-	x = pModeParam->horizontal_display_end;
-	y = pModeParam->vertical_display_end;
+	x = mode_param->horizontal_display_end;
+	y = mode_param->vertical_display_end;
 
 	/*
 	 * SM750LE has to set up the top-left and bottom-right
@@ -42,41 +42,41 @@ displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
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
+static int program_mode_registers(struct mode_parameter *mode_param,
+				  struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -86,46 +86,46 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 		/* programe secondary pixel clock */
 		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		tmp = ((pModeParam->horizontal_total - 1) <<
+		tmp = ((mode_param->horizontal_total - 1) <<
 		       CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
 		     CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
-		tmp |= (pModeParam->horizontal_display_end - 1) &
+		tmp |= (mode_param->horizontal_display_end - 1) &
 		      CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
 
 		poke32(CRT_HORIZONTAL_TOTAL, tmp);
 
-		tmp = (pModeParam->horizontal_sync_width <<
+		tmp = (mode_param->horizontal_sync_width <<
 		       CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
 		     CRT_HORIZONTAL_SYNC_WIDTH_MASK;
-		tmp |= (pModeParam->horizontal_sync_start - 1) &
+		tmp |= (mode_param->horizontal_sync_start - 1) &
 		      CRT_HORIZONTAL_SYNC_START_MASK;
 
 		poke32(CRT_HORIZONTAL_SYNC, tmp);
 
-		tmp = ((pModeParam->vertical_total - 1) <<
+		tmp = ((mode_param->vertical_total - 1) <<
 		       CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
 		     CRT_VERTICAL_TOTAL_TOTAL_MASK;
-		tmp |= (pModeParam->vertical_display_end - 1) &
+		tmp |= (mode_param->vertical_display_end - 1) &
 		      CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
 
 		poke32(CRT_VERTICAL_TOTAL, tmp);
 
-		tmp = ((pModeParam->vertical_sync_height <<
+		tmp = ((mode_param->vertical_sync_height <<
 		       CRT_VERTICAL_SYNC_HEIGHT_SHIFT)) &
 		     CRT_VERTICAL_SYNC_HEIGHT_MASK;
-		tmp |= (pModeParam->vertical_sync_start - 1) &
+		tmp |= (mode_param->vertical_sync_start - 1) &
 		      CRT_VERTICAL_SYNC_START_MASK;
 
 		poke32(CRT_VERTICAL_SYNC, tmp);
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
-		if (pModeParam->vertical_sync_polarity)
+		if (mode_param->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
-		if (pModeParam->horizontal_sync_polarity)
+		if (mode_param->horizontal_sync_polarity)
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
 
 		if (sm750_get_chip_type() == SM750LE) {
-			displayControlAdjust_SM750LE(pModeParam, tmp);
+			display_control_adjust_SM750LE(mode_param, tmp);
 		} else {
 			reg = peek32(CRT_DISPLAY_CTRL) &
 				~(DISPLAY_CTRL_VSYNC_PHASE |
@@ -140,40 +140,40 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 
 		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		reg = ((pModeParam->horizontal_total - 1) <<
+		reg = ((mode_param->horizontal_total - 1) <<
 			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
 			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
-		reg |= ((pModeParam->horizontal_display_end - 1) &
+		reg |= ((mode_param->horizontal_display_end - 1) &
 			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
 		poke32(PANEL_HORIZONTAL_TOTAL, reg);
 
 		poke32(PANEL_HORIZONTAL_SYNC,
-		       ((pModeParam->horizontal_sync_width <<
+		       ((mode_param->horizontal_sync_width <<
 			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
 			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
-		       ((pModeParam->horizontal_sync_start - 1) &
+		       ((mode_param->horizontal_sync_start - 1) &
 			PANEL_HORIZONTAL_SYNC_START_MASK));
 
 		poke32(PANEL_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
+		       (((mode_param->vertical_total - 1) <<
 			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
 			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
+		       ((mode_param->vertical_display_end - 1) &
 			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
 
 		poke32(PANEL_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
+		       ((mode_param->vertical_sync_height <<
 			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
 			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
+		       ((mode_param->vertical_sync_start - 1) &
 			PANEL_VERTICAL_SYNC_START_MASK));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
-		if (pModeParam->vertical_sync_polarity)
+		if (mode_param->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
-		if (pModeParam->horizontal_sync_polarity)
+		if (mode_param->horizontal_sync_polarity)
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
-		if (pModeParam->clock_phase_polarity)
+		if (mode_param->clock_phase_polarity)
 			tmp |= DISPLAY_CTRL_CLOCK_PHASE;
 
 		reserved = PANEL_DISPLAY_CTRL_RESERVED_MASK |
@@ -207,7 +207,7 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 	return ret;
 }
 
-int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
+int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock)
 {
 	struct pll_value pll;
 
@@ -220,6 +220,6 @@ int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
 		outb_p(0x88, 0x3d4);
 		outb_p(0x06, 0x3d5);
 	}
-	programModeRegisters(parm, &pll);
+	program_mode_registers(parm, &pll);
 	return 0;
 }
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 2df78a0937b2..1b70885f85e5 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -33,5 +33,5 @@ struct mode_parameter {
 	enum spolarity clock_phase_polarity;
 };
 
-int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock);
+int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock);
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index ea1d3d4efbc2..15ac73821ab5 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -305,7 +305,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 		clock = SECONDARY_PLL;
 
 	pr_debug("Request pixel clock = %lu\n", modparm.pixel_clock);
-	ret = ddk750_setModeTiming(&modparm, clock);
+	ret = ddk750_set_mode_timing(&modparm, clock);
 	if (ret) {
 		pr_err("Set mode timing failed\n");
 		goto exit;
-- 
2.17.1


