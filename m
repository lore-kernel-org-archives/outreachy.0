X-GM-THRID: 6250306033025024000
X-Received: by 10.107.11.23 with SMTP id v23mr1064143ioi.13.1455262779504;
        Thu, 11 Feb 2016 23:39:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.234 with SMTP id d103ls365788ioj.74.gmail; Thu, 11 Feb
 2016 23:39:39 -0800 (PST)
X-Received: by 10.107.7.200 with SMTP id g69mr1110383ioi.3.1455262779186;
        Thu, 11 Feb 2016 23:39:39 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si1611639pab.0.2016.02.11.23.39.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:39:39 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so3061499pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=z4ctsjvQlbjHhYF1zCFtty5obbm0wYd6Ysd2M+ckKZc=;
        b=ckdmxCAGp9iuPxdnGyTh4junYuGWI+GcezfX41l/gwrw/U1XkCw2oPBpO5JpBZCQ/m
         5sNxV61O8mkyEeDqHOHKUj2LZT6HDNcqn/5MPbSNXaCr0w1jbBUJFt2T/FZ/wLTgUJb9
         t0MM7BtOI8g54xcW94IofItu9A3rUyRg49lXxZapZx9lp135Q0s/mIRz4j4wK7/g7xqb
         dBItehfymnFgjAeGGZvDaihdXZk9bqNsM1DbAvn51kW2mlJ7exwSyitvlWzbmE6GEh5n
         SEnZqg5KeIiNV5eNYt/+/qtnatYg+qxRZddqv5G9P+8FGFX8IfFks76TN7fEDUql2g18
         Iy5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=z4ctsjvQlbjHhYF1zCFtty5obbm0wYd6Ysd2M+ckKZc=;
        b=Sy4ND07JjGxRYUn5AFMYDLULMbk9k6AEAjoYhjdZJN1jQtROMAlNpRY0uO78QayHBa
         MFN1KweezCtRO+MOBQ1dhk+2UGGqOWsFdglwi6gQ6uZyz33td03EQDTwXFNARDXXDweG
         Gmu9TxlnRmp4k/XCLWwu93hmN7hf0IeiFswcSxr7avgKKPmgmtYpeH6uVMj+w8Q7Vl7R
         OXM5JanNh6Wbwe3hmtIa69kQ/BOBntRVrePaWE26UsBTBYfI33lm8L2JjYEQA75vG2Pf
         RzhPk8uCAqeeCC/T9EKEXe0EFp5sHWUiWz/F4wzhE3NtpCS3ZYESNsU9C8KbYIS3+p4W
         S17g==
X-Gm-Message-State: AG10YOSVQ+Rncu4QOYu0MYP5AYxh+XLI2ytqhQTGAY1mRDQjEXziV+PLQgLPD8CPSJkaUg==
X-Received: by 10.98.8.80 with SMTP id c77mr157638pfd.42.1455262779088;
        Thu, 11 Feb 2016 23:39:39 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.60])
        by smtp.gmail.com with ESMTPSA id l62sm17066144pfj.7.2016.02.11.23.39.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:39:38 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 1/5] staging: fbtft: Modify block comments based on kernel coding style
Date: Fri, 12 Feb 2016 15:39:26 +0800
Message-Id: <5d4ddf3cc600a2a46a88c230f3784105c6ac6ca8.1455260992.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>

Add the required trailing * on subsequent lines as well as move the */
on a separate line. Checkpatch found this issue.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_ili9163.c | 69 ++++++++++++++++----------------
 drivers/staging/fbtft/fb_ili9320.c |  8 ++--
 drivers/staging/fbtft/fb_ili9325.c | 80 +++++++++++++++++++-------------------
 drivers/staging/fbtft/fb_ili9341.c |  8 ++--
 4 files changed, 83 insertions(+), 82 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
index cbcfbb5..3f6c245 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -39,11 +39,11 @@
 #endif
 
 /* ILI9163C commands */
-#define CMD_FRMCTR1	0xB1 /* Frame Rate Control
-				(In normal mode/Full colors) */
+#define CMD_FRMCTR1	0xB1 /* Frame Rate Control */
+			     /*	(In normal mode/Full colors) */
 #define CMD_FRMCTR2	0xB2 /* Frame Rate Control (In Idle mode/8-colors) */
-#define CMD_FRMCTR3	0xB3 /* Frame Rate Control
-				(In Partial mode/full colors) */
+#define CMD_FRMCTR3	0xB3 /* Frame Rate Control */
+			     /*	(In Partial mode/full colors) */
 #define CMD_DINVCTR	0xB4 /* Display Inversion Control */
 #define CMD_RGBBLK	0xB5 /* RGB Interface Blanking Porch setting */
 #define CMD_DFUNCTR	0xB6 /* Display Function set 5 */
@@ -63,17 +63,18 @@
 #define CMD_GAMRSEL	0xF2 /* GAM_R_SEL */
 
 /*
-This display:
-http://www.ebay.com/itm/Replace-Nokia-5110-LCD-1-44-Red-Serial-128X128-SPI-Color-TFT-LCD-Display-Module-/271422122271
-This particular display has a design error! The controller has 3 pins to
-configure to constrain the memory and resolution to a fixed dimension (in
-that case 128x128) but they leaved those pins configured for 128x160 so
-there was several pixel memory addressing problems.
-I solved by setup several parameters that dinamically fix the resolution as
-needit so below the parameters for this display. If you have a strain or a
-correct display (can happen with chinese) you can copy those parameters and
-create setup for different displays.
-*/
+ * This display:
+ * http://www.ebay.com/itm/Replace-Nokia-5110-LCD-1-44-Red-Serial-128X128-SPI-
+ * Color-TFT-LCD-Display-Module-/271422122271
+ * This particular display has a design error! The controller has 3 pins to
+ * configure to constrain the memory and resolution to a fixed dimension (in
+ * that case 128x128) but they leaved those pins configured for 128x160 so
+ * there was several pixel memory addressing problems.
+ * I solved by setup several parameters that dinamically fix the resolution as
+ * needit so below the parameters for this display. If you have a strain or a
+ * correct display (can happen with chinese) you can copy those parameters and
+ * create setup for different displays.
+ */
 
 #ifdef RED
 #define __OFFSET		32 /*see note 2 - this is the red version */
@@ -153,25 +154,25 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys,
 }
 
 /*
-7) MY:  1(bottom to top),	0(top to bottom)    Row Address Order
-6) MX:  1(R to L),		0(L to R)	    Column Address Order
-5) MV:  1(Exchanged),		0(normal)	    Row/Column exchange
-4) ML:  1(bottom to top),	0(top to bottom)    Vertical Refresh Order
-3) RGB: 1(BGR),			0(RGB)		    Color Space
-2) MH:  1(R to L),		0(L to R)	    Horizontal Refresh Order
-1)
-0)
-
-	MY, MX, MV, ML,RGB, MH, D1, D0
-	0 | 0 | 0 | 0 | 1 | 0 | 0 | 0	//normal
-	1 | 0 | 0 | 0 | 1 | 0 | 0 | 0	//Y-Mirror
-	0 | 1 | 0 | 0 | 1 | 0 | 0 | 0	//X-Mirror
-	1 | 1 | 0 | 0 | 1 | 0 | 0 | 0	//X-Y-Mirror
-	0 | 0 | 1 | 0 | 1 | 0 | 0 | 0	//X-Y Exchange
-	1 | 0 | 1 | 0 | 1 | 0 | 0 | 0	//X-Y Exchange, Y-Mirror
-	0 | 1 | 1 | 0 | 1 | 0 | 0 | 0	//XY exchange
-	1 | 1 | 1 | 0 | 1 | 0 | 0 | 0
-*/
+ * 7) MY:  1(bottom to top),	0(top to bottom)    Row Address Order
+ * 6) MX:  1(R to L),		0(L to R)	    Column Address Order
+ * 5) MV:  1(Exchanged),	0(normal)	    Row/Column exchange
+ * 4) ML:  1(bottom to top),	0(top to bottom)    Vertical Refresh Order
+ * 3) RGB: 1(BGR),		0(RGB)		    Color Space
+ * 2) MH:  1(R to L),		0(L to R)	    Horizontal Refresh Order
+ * 1)
+ * 0)
+ *
+ *	MY, MX, MV, ML,RGB, MH, D1, D0
+ *	0 | 0 | 0 | 0 | 1 | 0 | 0 | 0	//normal
+ *	1 | 0 | 0 | 0 | 1 | 0 | 0 | 0	//Y-Mirror
+ *	0 | 1 | 0 | 0 | 1 | 0 | 0 | 0	//X-Mirror
+ *	1 | 1 | 0 | 0 | 1 | 0 | 0 | 0	//X-Y-Mirror
+ *	0 | 0 | 1 | 0 | 1 | 0 | 0 | 0	//X-Y Exchange
+ *	1 | 0 | 1 | 0 | 1 | 0 | 0 | 0	//X-Y Exchange, Y-Mirror
+ *	0 | 1 | 1 | 0 | 1 | 0 | 0 | 0	//XY exchange
+ *	1 | 1 | 1 | 0 | 1 | 0 | 0 | 0
+ */
 static int set_var(struct fbtft_par *par)
 {
 	u8 mactrl_data = 0; /* Avoid compiler warning */
diff --git a/drivers/staging/fbtft/fb_ili9320.c b/drivers/staging/fbtft/fb_ili9320.c
index 3ed50fe..5da2764 100644
--- a/drivers/staging/fbtft/fb_ili9320.c
+++ b/drivers/staging/fbtft/fb_ili9320.c
@@ -216,10 +216,10 @@ static int set_var(struct fbtft_par *par)
 }
 
 /*
-  Gamma string format:
-    VRP0 VRP1 RP0 RP1 KP0 KP1 KP2 KP3 KP4 KP5
-    VRN0 VRN1 RN0 RN1 KN0 KN1 KN2 KN3 KN4 KN5
-*/
+ * Gamma string format:
+ *  VRP0 VRP1 RP0 RP1 KP0 KP1 KP2 KP3 KP4 KP5
+ *  VRN0 VRN1 RN0 RN1 KN0 KN1 KN2 KN3 KN4 KN5
+ */
 #define CURVE(num, idx)  curves[num * par->gamma.num_values + idx]
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_ili9325.c
index 3b3a06d..64cdf55 100644
--- a/drivers/staging/fbtft/fb_ili9325.c
+++ b/drivers/staging/fbtft/fb_ili9325.c
@@ -56,42 +56,42 @@ module_param(vcm, uint, 0);
 MODULE_PARM_DESC(vcm, "Set the internal VcomH voltage");
 
 /*
-Verify that this configuration is within the Voltage limits
-
-Display module configuration: Vcc = IOVcc = Vci = 3.3V
-
- Voltages
-----------
-Vci                                =   3.3
-Vci1           =  Vci * 0.80       =   2.64
-DDVDH          =  Vci1 * 2         =   5.28
-VCL            = -Vci1             =  -2.64
-VREG1OUT       =  Vci * 1.85       =   4.88
-VCOMH          =  VREG1OUT * 0.735 =   3.59
-VCOM amplitude =  VREG1OUT * 0.98  =   4.79
-VGH            =  Vci * 4          =  13.2
-VGL            = -Vci * 4          = -13.2
-
- Limits
---------
-Power supplies
-1.65 < IOVcc < 3.30   =>  1.65 < 3.3 < 3.30
-2.40 < Vcc   < 3.30   =>  2.40 < 3.3 < 3.30
-2.50 < Vci   < 3.30   =>  2.50 < 3.3 < 3.30
-
-Source/VCOM power supply voltage
- 4.50 < DDVDH < 6.0   =>  4.50 <  5.28 <  6.0
--3.0  < VCL   < -2.0  =>  -3.0 < -2.64 < -2.0
-VCI - VCL < 6.0       =>  5.94 < 6.0
-
-Gate driver output voltage
- 10  < VGH   < 20     =>   10 <  13.2  < 20
--15  < VGL   < -5     =>  -15 < -13.2  < -5
-VGH - VGL < 32        =>   26.4 < 32
-
-VCOM driver output voltage
-VCOMH - VCOML < 6.0   =>  4.79 < 6.0
-*/
+ * Verify that this configuration is within the Voltage limits
+ *
+ * Display module configuration: Vcc = IOVcc = Vci = 3.3V
+ *
+ * Voltages
+ * ----------
+ * Vci                                =   3.3
+ * Vci1           =  Vci * 0.80       =   2.64
+ * DDVDH          =  Vci1 * 2         =   5.28
+ * VCL            = -Vci1             =  -2.64
+ * VREG1OUT       =  Vci * 1.85       =   4.88
+ * VCOMH          =  VREG1OUT * 0.735 =   3.59
+ * VCOM amplitude =  VREG1OUT * 0.98  =   4.79
+ * VGH            =  Vci * 4          =  13.2
+ * VGL            = -Vci * 4          = -13.2
+ *
+ * Limits
+ * --------
+ * Power supplies
+ * 1.65 < IOVcc < 3.30   =>  1.65 < 3.3 < 3.30
+ * 2.40 < Vcc   < 3.30   =>  2.40 < 3.3 < 3.30
+ * 2.50 < Vci   < 3.30   =>  2.50 < 3.3 < 3.30
+ *
+ * Source/VCOM power supply voltage
+ *  4.50 < DDVDH < 6.0   =>  4.50 <  5.28 <  6.0
+ * -3.0  < VCL   < -2.0  =>  -3.0 < -2.64 < -2.0
+ * VCI - VCL < 6.0       =>  5.94 < 6.0
+ *
+ * Gate driver output voltage
+ *  10  < VGH   < 20     =>   10 <  13.2  < 20
+ * -15  < VGL   < -5     =>  -15 < -13.2  < -5
+ * VGH - VGL < 32        =>   26.4 < 32
+ *
+ * VCOM driver output voltage
+ * VCOMH - VCOML < 6.0   =>  4.79 < 6.0
+ */
 
 static int init_display(struct fbtft_par *par)
 {
@@ -213,10 +213,10 @@ static int set_var(struct fbtft_par *par)
 }
 
 /*
-  Gamma string format:
-    VRP0 VRP1 RP0 RP1 KP0 KP1 KP2 KP3 KP4 KP5
-    VRN0 VRN1 RN0 RN1 KN0 KN1 KN2 KN3 KN4 KN5
-*/
+ * Gamma string format:
+ *  VRP0 VRP1 RP0 RP1 KP0 KP1 KP2 KP3 KP4 KP5
+ *  VRN0 VRN1 RN0 RN1 KN0 KN1 KN2 KN3 KN4 KN5
+ */
 #define CURVE(num, idx)  curves[num * par->gamma.num_values + idx]
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
diff --git a/drivers/staging/fbtft/fb_ili9341.c b/drivers/staging/fbtft/fb_ili9341.c
index d1e13cd..e8107d1 100644
--- a/drivers/staging/fbtft/fb_ili9341.c
+++ b/drivers/staging/fbtft/fb_ili9341.c
@@ -116,10 +116,10 @@ static int set_var(struct fbtft_par *par)
 }
 
 /*
-  Gamma string format:
-    Positive: Par1 Par2 [...] Par15
-    Negative: Par1 Par2 [...] Par15
-*/
+ * Gamma string format:
+ *  Positive: Par1 Par2 [...] Par15
+ *  Negative: Par1 Par2 [...] Par15
+ */
 #define CURVE(num, idx)  curves[num * par->gamma.num_values + idx]
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
-- 
1.9.1


