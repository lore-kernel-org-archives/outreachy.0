X-GM-THRID: 6335134925218381824
X-Received: by 10.31.69.69 with SMTP id s66mr5640156vka.21.1475013542719;
        Tue, 27 Sep 2016 14:59:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.80 with SMTP id f16ls7393414otd.28.gmail; Tue, 27 Sep
 2016 14:59:02 -0700 (PDT)
X-Received: by 10.157.39.233 with SMTP id c96mr7351474otb.88.1475013542305;
        Tue, 27 Sep 2016 14:59:02 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1014940pab.2.2016.09.27.14.59.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 14:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so1238529pfj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 14:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+PBmW9ZYO5U4ZpsVf4xSPQa2TQjK98TQk00IKjhL7hk=;
        b=hwNtTBV2eZD87dkCyOAm2JXYrFZ8yr0+iWxV4fl8q5X2aDV2xI4LulUQi+vEw/Ryjf
         San8B/x2q2EHB04eGzduyhqr0XdXKsUk/J8lYN6Dk3YnOHiD7R+UVOA8Dq7/s/HKTShe
         +ogCF3Ne28DKDy5xxxl7klJ0Tn7Ks40735fEbSh/svKw8Q4PlMH/ZDCBdf2XOAS3lrxO
         d0ICWicRTDM2EF3ac3QYTDRL5AX65uxUZO3pfq4YFtNY9grV3URYaEbD/deCFCB536Cd
         24umJ5xXjus3tocX497InlmpIbFz+Y7Oo0/QvK07lB/p4OYiiexKH8kQSrjsMNHflN3v
         +dMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+PBmW9ZYO5U4ZpsVf4xSPQa2TQjK98TQk00IKjhL7hk=;
        b=kc/T3FUfjaRflfc3PvM/9yZy89UT62teBrPQ5FxfQ7FtlwYDOsltpCMYyip/XbKqlR
         H/yKludfVSEqJ3Fg3kM6+SdhxB2j8o2yBALKbxv8HUlbGVnE34DTJCYxkx1RZYsC+U9A
         qfcmIxy9Xk2rzg+p9VD26OQR2ICa0axuxYIO1kDk54CBeEoefDkzsjh2gDGA5VFznH0n
         7qYAmaO+85fC+OZG8mJkvCI4r5YTFZLBa/qJZwi4ItJwIEiyCnC9LZYoIFx3xC3NloLn
         c14MEzuuf9g608ePnMbzHjZDTQFK+36jVx6gt1z1Jexe9yDpykQKsg1856NOZ1ee/z5r
         0tFw==
X-Gm-Message-State: AA6/9Rkpsbab+WqDYUt9N/leNIsqi3rLrbK7ujUioYpYUMSdktPbHcHFYRBrzMcHQUxLmA==
X-Received: by 10.98.137.89 with SMTP id v86mr38244665pfd.38.1475013541990;
        Tue, 27 Sep 2016 14:59:01 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id x8sm7089990pfi.93.2016.09.27.14.59.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 14:59:01 -0700 (PDT)
Date: Tue, 27 Sep 2016 14:58:59 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: conform to block comment style
Message-ID: <20160927215857.GA23865@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix two checkpatch errors:
"Block comments use * on subsequent lines" and
"Block comments use a trailing */ on a separate line"
to conform to block commenting style.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.h |  49 ++++++++-------
 drivers/staging/sm750fb/ddk750_hwi2c.c   |   2 +-
 drivers/staging/sm750fb/ddk750_mode.c    |  27 ++++-----
 drivers/staging/sm750fb/ddk750_sii164.c  |   7 ++-
 drivers/staging/sm750fb/ddk750_swi2c.c   |  12 ++--
 drivers/staging/sm750fb/sm750.h          |  16 ++---
 drivers/staging/sm750fb/sm750_accel.c    | 100 ++++++++++++++++++-------------
 7 files changed, 113 insertions(+), 100 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index ca35aa1..609d92b 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -2,8 +2,8 @@
 #define DDK750_DISPLAY_H__
 
 /* panel path select
-	80000[29:28]
-*/
+ *	80000[29:28]
+ */
 
 #define PNL_2_OFFSET 0
 #define PNL_2_MASK (3 << PNL_2_OFFSET)
@@ -13,9 +13,9 @@
 
 
 /* primary timing & plane enable bit
-	1: 80000[8] & 80000[2] on
-	0: both off
-*/
+ *	1: 80000[8] & 80000[2] on
+ *	0: both off
+ */
 #define PRI_TP_OFFSET 4
 #define PRI_TP_MASK BIT(PRI_TP_OFFSET)
 #define PRI_TP_USAGE (PRI_TP_MASK << 16)
@@ -24,8 +24,8 @@
 
 
 /* panel sequency status
-	80000[27:24]
-*/
+ *	80000[27:24]
+ */
 #define PNL_SEQ_OFFSET 6
 #define PNL_SEQ_MASK BIT(PNL_SEQ_OFFSET)
 #define PNL_SEQ_USAGE (PNL_SEQ_MASK << 16)
@@ -33,8 +33,8 @@
 #define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
 
 /* dual digital output
-	80000[19]
-*/
+ *	80000[19]
+ */
 #define DUAL_TFT_OFFSET 8
 #define DUAL_TFT_MASK BIT(DUAL_TFT_OFFSET)
 #define DUAL_TFT_USAGE (DUAL_TFT_MASK << 16)
@@ -42,9 +42,9 @@
 #define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
 
 /* secondary timing & plane enable bit
-	1:80200[8] & 80200[2] on
-	0: both off
-*/
+ *	1:80200[8] & 80200[2] on
+ *	0: both off
+ */
 #define SEC_TP_OFFSET 5
 #define SEC_TP_MASK BIT(SEC_TP_OFFSET)
 #define SEC_TP_USAGE (SEC_TP_MASK << 16)
@@ -52,8 +52,8 @@
 #define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET)|SEC_TP_USAGE)
 
 /* crt path select
-	80200[19:18]
-*/
+ *	80200[19:18]
+ */
 #define CRT_2_OFFSET 2
 #define CRT_2_MASK (3 << CRT_2_OFFSET)
 #define CRT_2_USAGE (CRT_2_MASK << 16)
@@ -62,8 +62,8 @@
 
 
 /* DAC affect both DVI and DSUB
-	4[20]
-*/
+ *	4[20]
+ */
 #define DAC_OFFSET 7
 #define DAC_MASK BIT(DAC_OFFSET)
 #define DAC_USAGE (DAC_MASK << 16)
@@ -71,8 +71,8 @@
 #define DAC_OFF ((0x1 << DAC_OFFSET)|DAC_USAGE)
 
 /* DPMS only affect D-SUB head
-	0[31:30]
-*/
+ *	0[31:30]
+ */
 #define DPMS_OFFSET 9
 #define DPMS_MASK (3 << DPMS_OFFSET)
 #define DPMS_USAGE (DPMS_MASK << 16)
@@ -81,19 +81,18 @@
 
 
 
-/*
-	LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
-	CRT means crt path DSUB
-*/
+/* LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
+ * CRT means crt path DSUB
+ */
 typedef enum _disp_output_t {
 	do_LCD1_PRI = PNL_2_PRI|PRI_TP_ON|PNL_SEQ_ON|DAC_ON,
 	do_LCD1_SEC = PNL_2_SEC|SEC_TP_ON|PNL_SEQ_ON|DAC_ON,
 	do_LCD2_PRI = CRT_2_PRI|PRI_TP_ON|DUAL_TFT_ON,
 	do_LCD2_SEC = CRT_2_SEC|SEC_TP_ON|DUAL_TFT_ON,
 	/*
-	do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
-	do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
-	*/
+	 * do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
+	 * do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
+	 */
 	do_CRT_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
 	do_CRT_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
 }
diff --git a/drivers/staging/sm750fb/ddk750_hwi2c.c b/drivers/staging/sm750fb/ddk750_hwi2c.c
index 39c3e1c..d391c12 100644
--- a/drivers/staging/sm750fb/ddk750_hwi2c.c
+++ b/drivers/staging/sm750fb/ddk750_hwi2c.c
@@ -21,7 +21,7 @@ unsigned char bus_speed_mode
 	POKE32(GPIO_MUX, value);
 
 	/* Enable Hardware I2C power.
-	 TODO: Check if we need to enable GPIO power?
+	 * TODO: Check if we need to enable GPIO power?
 	 */
 	enableI2C(1);
 
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index e29d4bd..028aa16 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -4,15 +4,14 @@
 #include "ddk750_mode.h"
 #include "ddk750_chip.h"
 
-/*
-	SM750LE only:
-    This function takes care extra registers and bit fields required to set
-    up a mode in SM750LE
-
-	Explanation about Display Control register:
-    HW only supports 7 predefined pixel clocks, and clock select is
-    in bit 29:27 of	Display Control register.
-*/
+/* SM750LE only:
+ * This function takes care extra registers and bit fields required to set
+ * up a mode in SM750LE
+ *
+ * Explanation about Display Control register:
+ * HW only supports 7 predefined pixel clocks, and clock select is
+ * in bit 29:27 of Display Control register.
+ */
 static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam, unsigned long dispControl)
 {
 	unsigned long x, y;
@@ -21,9 +20,9 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 	y = pModeParam->vertical_display_end;
 
 	/* SM750LE has to set up the top-left and bottom-right
-	   registers as well.
-	   Note that normal SM750/SM718 only use those two register for
-	   auto-centering mode.
+	 * registers as well.
+	 * Note that normal SM750/SM718 only use those two register for
+	 * auto-centering mode.
 	 */
 	POKE32(CRT_AUTO_CENTERING_TL, 0);
 
@@ -33,8 +32,8 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 		((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 
 	/* Assume common fields in dispControl have been properly set before
-	   calling this function.
-	   This function only sets the extra fields in dispControl.
+	 * calling this function.
+	 * This function only sets the extra fields in dispControl.
 	 */
 
 	/* Clear bit 29:27 of display control register */
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 67f36e7..99a8683 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -174,8 +174,8 @@ long sii164InitChip(
 		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
 
 		/* De-skew enabled with default 111b value.
-		   This will fix some artifacts problem in some mode on board 2.2.
-		   Somehow this fix does not affect board 2.1.
+		 * This fixes some artifacts problem in some mode on board 2.2.
+		 * Somehow this fix does not affect board 2.1.
 		 */
 		if (deskewEnable == 0)
 			config = SII164_DESKEW_DISABLE;
@@ -344,7 +344,8 @@ void sii164EnableHotPlugDetection(
 	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT);
 
 	/* Depending on each DVI controller, need to enable the hot plug based on each
-	   individual chip design. */
+	 * individual chip design.
+	 */
 	if (enableHotPlug != 0)
 		sii164SelectHotPlugDetectionMode(SII164_HOTPLUG_USE_MDI);
 	else
diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
index 8d644a7..e408683 100644
--- a/drivers/staging/sm750fb/ddk750_swi2c.c
+++ b/drivers/staging/sm750fb/ddk750_swi2c.c
@@ -89,12 +89,12 @@ static void sw_i2c_wait(void)
 	 * always be non-zero,which makes the while loop
 	 * never finish.
 	 * use non-ultimate for loop below is safe
-	 * */
+	 */
 
     /* Change wait algorithm to use PCI bus clock,
-       it's more reliable than counter loop ..
-       write 0x61 to 0x3ce and read from 0x3cf
-       */
+     * it's more reliable than counter loop ..
+     * write 0x61 to 0x3ce and read from 0x3cf
+     */
 	int i, tmp;
 
 	for (i = 0; i < 600; i++) {
@@ -501,8 +501,8 @@ long sm750_sw_i2c_write_reg(
 	sw_i2c_start();
 
 	/* Send the device address and read the data. All should return success
-	   in order for the writing processed to be successful
-	*/
+	 * in order for the writing processed to be successful
+	 */
 	if ((sw_i2c_write_byte(addr) != 0) ||
 	    (sw_i2c_write_byte(reg) != 0) ||
 	    (sw_i2c_write_byte(data) != 0)) {
diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 8e70ce0..ff31c5c 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -147,17 +147,17 @@ struct lynxfb_output {
 	int dpms;
 	int paths;
 	/* which paths(s) this output stands for,for sm750:
-	   paths=1:means output for panel paths
-	   paths=2:means output for crt paths
-	   paths=3:means output for both panel and crt paths
-	*/
+	 * paths=1:means output for panel paths
+	 * paths=2:means output for crt paths
+	 * paths=3:means output for both panel and crt paths
+	 */
 
 	int *channel;
 	/* which channel these outputs linked with,for sm750:
-	   *channel=0 means primary channel
-	   *channel=1 means secondary channel
-	   output->channel ==> &crtc->channel
-	*/
+	 * *channel=0 means primary channel
+	 * *channel=1 means secondary channel
+	 * output->channel ==> &crtc->channel
+	 */
 	void *priv;
 
 	int (*proc_setBLANK)(struct lynxfb_output*, int);
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 9aa4066..38adae6 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -67,7 +67,8 @@ void hw_de_init(struct lynx_accel *accel)
 
 /* set2dformat only be called from setmode functions
  * but if you need dual framebuffer driver,need call set2dformat
- * every time you use 2d function */
+ * every time you use 2d function
+ */
 
 void hw_set2dformat(struct lynx_accel *accel, int fmt)
 {
@@ -90,7 +91,8 @@ int hw_fillrect(struct lynx_accel *accel,
 
 	if (accel->de_wait() != 0) {
 		/* int time wait and always busy,seems hardware
-		 * got something error */
+		 * got something error
+		 */
 		pr_debug("De engine always busy\n");
 		return -1;
 	}
@@ -152,24 +154,26 @@ unsigned int rop2)   /* ROP value */
 		/* Determine direction of operation */
 		if (sy < dy) {
 			/* +----------+
-			   |S         |
-			   |   +----------+
-			   |   |      |   |
-			   |   |      |   |
-			   +---|------+   |
-			   |         D|
-			   +----------+ */
+			 * |S         |
+			 * |   +----------+
+			 * |   |      |   |
+			 * |   |      |   |
+			 * +---|------+   |
+			 * |         D|
+			 * +----------+
+			 */
 
 			nDirection = BOTTOM_TO_TOP;
 		} else if (sy > dy) {
 			/* +----------+
-			   |D         |
-			   |   +----------+
-			   |   |      |   |
-			   |   |      |   |
-			   +---|------+   |
-			   |         S|
-			   +----------+ */
+			 * |D         |
+			 * |   +----------+
+			 * |   |      |   |
+			 * |   |      |   |
+			 * +---|------+   |
+			 * |         S|
+			 * +----------+
+			 */
 
 			nDirection = TOP_TO_BOTTOM;
 		} else {
@@ -177,22 +181,24 @@ unsigned int rop2)   /* ROP value */
 
 			if (sx <= dx) {
 				/* +------+---+------+
-				   |S     |   |     D|
-				   |      |   |      |
-				   |      |   |      |
-				   |      |   |      |
-				   +------+---+------+ */
+				 * |S     |   |     D|
+				 * |      |   |      |
+				 * |      |   |      |
+				 * |      |   |      |
+				 * +------+---+------+
+				 */
 
 				nDirection = RIGHT_TO_LEFT;
 			} else {
 			/* sx > dx */
 
 				/* +------+---+------+
-				   |D     |   |     S|
-				   |      |   |      |
-				   |      |   |      |
-				   |      |   |      |
-				   +------+---+------+ */
+				 * |D     |   |     S|
+				 * |      |   |      |
+				 * |      |   |      |
+				 * |      |   |      |
+				 * +------+---+------+
+				 */
 
 				nDirection = LEFT_TO_RIGHT;
 			}
@@ -208,32 +214,36 @@ unsigned int rop2)   /* ROP value */
 	}
 
 	/* Note:
-	   DE_FOREGROUND are DE_BACKGROUND are don't care.
-	  DE_COLOR_COMPARE and DE_COLOR_COMPARE_MAKS are set by set deSetTransparency().
+	 * DE_FOREGROUND are DE_BACKGROUND are don't care.
+	 * DE_COLOR_COMPARE and DE_COLOR_COMPARE_MAKS
+	 * are set by set deSetTransparency().
 	 */
 
 	/* 2D Source Base.
-	 It is an address offset (128 bit aligned) from the beginning of frame buffer.
+	 * It is an address offset (128 bit aligned)
+	 * from the beginning of frame buffer.
 	 */
 	write_dpr(accel, DE_WINDOW_SOURCE_BASE, sBase); /* dpr40 */
 
 	/* 2D Destination Base.
-	 It is an address offset (128 bit aligned) from the beginning of frame buffer.
+	 * It is an address offset (128 bit aligned)
+	 * from the beginning of frame buffer.
 	 */
 	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase); /* dpr44 */
 
     /* Program pitch (distance between the 1st points of two adjacent lines).
-       Note that input pitch is BYTE value, but the 2D Pitch register uses
-       pixel values. Need Byte to pixel conversion.
-    */
+     * Note that input pitch is BYTE value, but the 2D Pitch register uses
+     * pixel values. Need Byte to pixel conversion.
+     */
 	write_dpr(accel, DE_PITCH,
 		  ((dPitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
 		  (sPitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
     /* Screen Window width in Pixels.
-       2D engine uses this value to calculate the linear address in frame buffer for a given point.
-    */
+     * 2D engine uses this value to calculate the linear address in frame buffer
+     * for a given point.
+     */
 	write_dpr(accel, DE_WINDOW_WIDTH,
 		  ((dPitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
@@ -307,33 +317,37 @@ int hw_imageblit(struct lynx_accel *accel,
 		return -1;
 
 	/* 2D Source Base.
-	 Use 0 for HOST Blt.
+	 * Use 0 for HOST Blt.
 	 */
 	write_dpr(accel, DE_WINDOW_SOURCE_BASE, 0);
 
 	/* 2D Destination Base.
-	 It is an address offset (128 bit aligned) from the beginning of frame buffer.
+	 * It is an address offset (128 bit aligned)
+	 * from the beginning of frame buffer.
 	 */
 	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase);
     /* Program pitch (distance between the 1st points of two adjacent lines).
-       Note that input pitch is BYTE value, but the 2D Pitch register uses
-       pixel values. Need Byte to pixel conversion.
-    */
+     * Note that input pitch is BYTE value, but the 2D Pitch register uses
+     * pixel values. Need Byte to pixel conversion.
+     */
 	write_dpr(accel, DE_PITCH,
 		  ((dPitch / bytePerPixel << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
 		  (dPitch / bytePerPixel & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
 	/* Screen Window width in Pixels.
-	 2D engine uses this value to calculate the linear address in frame buffer for a given point.
+	 * 2D engine uses this value to calculate the linear address
+	 * in frame buffer for a given point.
 	 */
 	write_dpr(accel, DE_WINDOW_WIDTH,
 		  ((dPitch / bytePerPixel << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
 		  (dPitch / bytePerPixel & DE_WINDOW_WIDTH_SRC_MASK));
 
-	 /* Note: For 2D Source in Host Write, only X_K1_MONO field is needed, and Y_K2 field is not used.
-	    For mono bitmap, use startBit for X_K1. */
+	 /* Note: For 2D Source in Host Write, only X_K1_MONO field is needed,
+	  * and Y_K2 field is not used.
+	  * For mono bitmap, use startBit for X_K1.
+	  */
 	write_dpr(accel, DE_SOURCE,
 		  (startBit << DE_SOURCE_X_K1_SHIFT) &
 		  DE_SOURCE_X_K1_MONO_MASK); /* dpr00 */
-- 
2.1.4


