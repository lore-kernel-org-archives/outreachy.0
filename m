X-GM-THRID: 6249599077237915648
X-Received: by 10.129.146.73 with SMTP id j70mr36316726ywg.25.1455098178226;
        Wed, 10 Feb 2016 01:56:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.5 with SMTP id w5ls171106igw.21.gmail; Wed, 10 Feb 2016
 01:56:17 -0800 (PST)
X-Received: by 10.50.57.17 with SMTP id e17mr8524663igq.11.1455098177941;
        Wed, 10 Feb 2016 01:56:17 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 79si317679pft.0.2016.02.10.01.56.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:56:17 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so721687pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6DiXT1H7CQMYEct3rFgVRvz0lpp//yFSWjhZwQ/Ajs4=;
        b=VF0G/fjby5OWVGC0f7StV87LLOmdCeYiRwqwWstFbfPzZyOofrjpX+OttGmO90ZTw7
         BLqM3kxaTOBjEsVzOFIqFP+a7jiChQSZIQ6NxpLDwiKBc25Q1RgzEcSq3PyVa7ank63j
         IVnJah+DHP0WEXLct3QwNIdI3ufbZu52X1uv4XGfUCRZZu91fHnEuWwqO2DC813qngJF
         xHNbe64N5+7thbVF1+igYHHwYp51fRKZbUEjQMFf7o5TlKQ3s1zHsFLBMf9RwPhT43Wm
         MiDVAXPY0Kz6moJsIryTpBX0V/2GzeY8CFzFkiy58mbsmPZefv7a/ke7C2LWODj9ewd4
         qLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6DiXT1H7CQMYEct3rFgVRvz0lpp//yFSWjhZwQ/Ajs4=;
        b=fbQEkZn9IoPeCMZANhDzi5blrMqs6SM2R8eA1c3Y9LUl0f5Ny2fErzojnnmYssgU2g
         RUiQnAktMG0OLQeEi5Bgdi4Qm2L323TP76ZXu5cwhXC4tE5qLSwvD8l8FkpgzJE0j1jN
         TwVgVRcKDzQdqc1ymHpzw2Q6J6NX29BljQq2Ce9XeC6ARCabLw0XcuyxxfMc8Q3XCUaM
         TydVf6ypluIVilEdBGZGVaBDAIX+BvYzcmBBfhYVau4kSjt9ENkZOD/wqhY90IlDk0rT
         MX7ggUVU8u4vfmdz1PhJE3lCHZPpext5gCHVJnw2NKoJ6s1Kjd1FUEVrAIn1FWBdMd0c
         qCGw==
X-Gm-Message-State: AG10YOTk9mU9f65k9a7iGzc/wgnINvUTE4vVDGwdjr18DczMXv5M49/Ipk4QyqgGyKhQVA==
X-Received: by 10.98.8.200 with SMTP id 69mr58009343pfi.39.1455098177814;
        Wed, 10 Feb 2016 01:56:17 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.165])
        by smtp.gmail.com with ESMTPSA id ey2sm3846810pab.2.2016.02.10.01.56.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 01:56:17 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 1/4] staging: fbtft: Fix block comments according to kernel coding style
Date: Wed, 10 Feb 2016 17:56:06 +0800
Message-Id: <1455098169-17667-2-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>
References: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>

Add the required trailing * on subsequent lines as well as move the */
on a separate line. Checkpatch found this issue.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_hx8340bn.c | 82 ++++++++++++++++++++++---------------
 drivers/staging/fbtft/fb_hx8347d.c  |  8 ++--
 drivers/staging/fbtft/fb_hx8353d.c  | 18 ++++----
 drivers/staging/fbtft/fb_hx8357d.h  | 28 ++++++-------
 4 files changed, 75 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/fbtft/fb_hx8340bn.c b/drivers/staging/fbtft/fb_hx8340bn.c
index ea680e5..4dd77b8 100644
--- a/drivers/staging/fbtft/fb_hx8340bn.c
+++ b/drivers/staging/fbtft/fb_hx8340bn.c
@@ -46,55 +46,69 @@ static int init_display(struct fbtft_par *par)
 
 	/* BTL221722-276L startup sequence, from datasheet */
 
-	/* SETEXTCOM: Set extended command set (C1h)
-	   This command is used to set extended command set access enable.
-	   Enable: After command (C1h), must write: ffh,83h,40h */
+	/*
+	 * SETEXTCOM: Set extended command set (C1h)
+	 * This command is used to set extended command set access enable.
+	 * Enable: After command (C1h), must write: ffh,83h,40h
+	 */
 	write_reg(par, 0xC1, 0xFF, 0x83, 0x40);
 
-	/* Sleep out
-	   This command turns off sleep mode.
-	   In this mode the DC/DC converter is enabled, Internal oscillator
-	   is started, and panel scanning is started. */
+	/*
+	 * Sleep out
+	 * This command turns off sleep mode.
+	 * In this mode the DC/DC converter is enabled, Internal oscillator
+	 * is started, and panel scanning is started.
+	 */
 	write_reg(par, 0x11);
 	mdelay(150);
 
 	/* Undoc'd register? */
 	write_reg(par, 0xCA, 0x70, 0x00, 0xD9);
 
-	/* SETOSC: Set Internal Oscillator (B0h)
-	   This command is used to set internal oscillator related settings */
-	/*	OSC_EN: Enable internal oscillator */
-	/*	Internal oscillator frequency: 125% x 2.52MHz */
+	/*
+	 * SETOSC: Set Internal Oscillator (B0h)
+	 * This command is used to set internal oscillator related settings
+	 *	OSC_EN: Enable internal oscillator
+	 *	Internal oscillator frequency: 125% x 2.52MHz
+	 */
 	write_reg(par, 0xB0, 0x01, 0x11);
 
 	/* Drive ability setting */
 	write_reg(par, 0xC9, 0x90, 0x49, 0x10, 0x28, 0x28, 0x10, 0x00, 0x06);
 	mdelay(20);
 
-	/* SETPWCTR5: Set Power Control 5(B5h)
-	   This command is used to set VCOM Low and VCOM High Voltage */
-	/* VCOMH 0110101 :  3.925 */
-	/* VCOML 0100000 : -1.700 */
-	/* 45h=69  VCOMH: "VMH" + 5d   VCOML: "VMH" + 5d */
+	/*
+	 * SETPWCTR5: Set Power Control 5(B5h)
+	 * This command is used to set VCOM Low and VCOM High Voltage
+	 * VCOMH 0110101 :  3.925
+	 * VCOML 0100000 : -1.700
+	 * 45h=69  VCOMH: "VMH" + 5d   VCOML: "VMH" + 5d
+	 */
 	write_reg(par, 0xB5, 0x35, 0x20, 0x45);
 
-	/* SETPWCTR4: Set Power Control 4(B4h)
-		VRH[4:0]:	Specify the VREG1 voltage adjusting.
-				VREG1 voltage is for gamma voltage setting.
-		BT[2:0]:	Switch the output factor of step-up circuit 2
-				for VGH and VGL voltage generation. */
+	/*
+	 * SETPWCTR4: Set Power Control 4(B4h)
+	 *	VRH[4:0]:	Specify the VREG1 voltage adjusting.
+	 *			VREG1 voltage is for gamma voltage setting.
+	 *	BT[2:0]:	Switch the output factor of step-up circuit 2
+	 *			for VGH and VGL voltage generation.
+	 */
 	write_reg(par, 0xB4, 0x33, 0x25, 0x4C);
 	mdelay(10);
 
-	/* Interface Pixel Format (3Ah)
-	   This command is used to define the format of RGB picture data,
-	   which is to be transfer via the system and RGB interface. */
-	/* RGB interface: 16 Bit/Pixel	*/
+	/*
+	 * Interface Pixel Format (3Ah)
+	 * This command is used to define the format of RGB picture data,
+	 * which is to be transfer via the system and RGB interface.
+	 * RGB interface: 16 Bit/Pixel
+	 */
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);
 
-	/* Display on (29h)
-	   This command is used to recover from DISPLAY OFF mode.
-	   Output from the Frame Memory is enabled. */
+	/*
+	 * Display on (29h)
+	 * This command is used to recover from DISPLAY OFF mode.
+	 * Output from the Frame Memory is enabled.
+	 */
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 	mdelay(10);
 
@@ -137,12 +151,12 @@ static int set_var(struct fbtft_par *par)
 }
 
 /*
-  Gamma Curve selection, GC (only GC0 can be customized):
-    0 = 2.2, 1 = 1.8, 2 = 2.5, 3 = 1.0
-  Gamma string format:
-    OP0 OP1 CP0 CP1 CP2 CP3 CP4 MP0 MP1 MP2 MP3 MP4 MP5 CGM0 CGM1
-    ON0 ON1 CN0 CN1 CN2 CN3 CN4 MN0 MN1 MN2 MN3 MN4 MN5 XXXX  GC
-*/
+ * Gamma Curve selection, GC (only GC0 can be customized):
+ *   0 = 2.2, 1 = 1.8, 2 = 2.5, 3 = 1.0
+ * Gamma string format:
+ *   OP0 OP1 CP0 CP1 CP2 CP3 CP4 MP0 MP1 MP2 MP3 MP4 MP5 CGM0 CGM1
+ *   ON0 ON1 CN0 CN1 CN2 CN3 CN4 MN0 MN1 MN2 MN3 MN4 MN5 XXXX  GC
+ */
 #define CURVE(num, idx)  curves[num * par->gamma.num_values + idx]
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
diff --git a/drivers/staging/fbtft/fb_hx8347d.c b/drivers/staging/fbtft/fb_hx8347d.c
index 6ff76e5..4e9a6b0 100644
--- a/drivers/staging/fbtft/fb_hx8347d.c
+++ b/drivers/staging/fbtft/fb_hx8347d.c
@@ -97,10 +97,10 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 }
 
 /*
-  Gamma string format:
-    VRP0 VRP1 VRP2 VRP3 VRP4 VRP5 PRP0 PRP1 PKP0 PKP1 PKP2 PKP3 PKP4 CGM
-    VRN0 VRN1 VRN2 VRN3 VRN4 VRN5 PRN0 PRN1 PKN0 PKN1 PKN2 PKN3 PKN4 CGM
-*/
+ * Gamma string format:
+ *   VRP0 VRP1 VRP2 VRP3 VRP4 VRP5 PRP0 PRP1 PKP0 PKP1 PKP2 PKP3 PKP4 CGM
+ *   VRN0 VRN1 VRN2 VRN3 VRN4 VRN5 PRN0 PRN1 PKN0 PKN1 PKN2 PKN3 PKN4 CGM
+ */
 #define CURVE(num, idx)  curves[num * par->gamma.num_values + idx]
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
diff --git a/drivers/staging/fbtft/fb_hx8353d.c b/drivers/staging/fbtft/fb_hx8353d.c
index 064ae61..cd85faa 100644
--- a/drivers/staging/fbtft/fb_hx8353d.c
+++ b/drivers/staging/fbtft/fb_hx8353d.c
@@ -88,12 +88,14 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 #define mv BIT(5)
 static int set_var(struct fbtft_par *par)
 {
-	/* madctl - memory data access control
-	     rgb/bgr:
-	     1. mode selection pin srgb
-		rgb h/w pin for color filter setting: 0=rgb, 1=bgr
-	     2. madctl rgb bit
-		rgb-bgr order color filter panel: 0=rgb, 1=bgr */
+	/*
+	 * madctl - memory data access control
+	 *   rgb/bgr:
+	 *   1. mode selection pin srgb
+	 *	rgb h/w pin for color filter setting: 0=rgb, 1=bgr
+	 *   2. madctl rgb bit
+	 *	rgb-bgr order color filter panel: 0=rgb, 1=bgr
+	 */
 	switch (par->info->var.rotate) {
 	case 0:
 		write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
@@ -116,9 +118,7 @@ static int set_var(struct fbtft_par *par)
 	return 0;
 }
 
-/*
-  gamma string format:
-*/
+/* gamma string format: */
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
 	write_reg(par, 0xE0,
diff --git a/drivers/staging/fbtft/fb_hx8357d.h b/drivers/staging/fbtft/fb_hx8357d.h
index 2b014eb..e281921 100644
--- a/drivers/staging/fbtft/fb_hx8357d.h
+++ b/drivers/staging/fbtft/fb_hx8357d.h
@@ -1,17 +1,17 @@
-/***************************************************
-  This is our library for the Adafruit  ILI9341 Breakout and Shield
-  ----> http://www.adafruit.com/products/1651
-
-  Check out the links above for our tutorials and wiring diagrams
-  These displays use SPI to communicate, 4 or 5 pins are required to
-  interface (RST is optional)
-  Adafruit invests time and resources providing this open source code,
-  please support Adafruit and open-source hardware by purchasing
-  products from Adafruit!
-
-  Written by Limor Fried/Ladyada for Adafruit Industries.
-  MIT license, all text above must be included in any redistribution
- ****************************************************/
+/*
+ * This is our library for the Adafruit  ILI9341 Breakout and Shield
+ * ----> http://www.adafruit.com/products/1651
+ *
+ * Check out the links above for our tutorials and wiring diagrams
+ * These displays use SPI to communicate, 4 or 5 pins are required to
+ * interface (RST is optional)
+ * Adafruit invests time and resources providing this open source code,
+ * please support Adafruit and open-source hardware by purchasing
+ * products from Adafruit!
+ *
+ * Written by Limor Fried/Ladyada for Adafruit Industries.
+ * MIT license, all text above must be included in any redistribution
+ */
 
 #ifndef __HX8357_H__
 #define __HX8357_H__
-- 
1.9.1


