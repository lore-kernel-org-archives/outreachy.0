X-GM-THRID: 6751575419230617600
X-Received: by 2002:a62:685:: with SMTP id 127mr1492427pfg.227.1571973656531;
        Thu, 24 Oct 2019 20:20:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f8d:: with SMTP id g13ls450098plq.16.gmail; Thu, 24
 Oct 2019 20:20:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx5EbacYNB/D/mTnXmB+9J0+rlZlC07SXJWjRdECYRl65ROFquuEuQys8Jt7SERaUIZ0s1e
X-Received: by 2002:a17:902:a50a:: with SMTP id s10mr1260596plq.59.1571973655126;
        Thu, 24 Oct 2019 20:20:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571973655; cv=none;
        d=google.com; s=arc-20160816;
        b=IWHGeyAva0fFNWSn0gn36RnfCfMvDDrX8SYdS/r0Iz0QvuQ6gNhfWVUrHaJH2QIhgH
         BCE5mpdXATIstw3u6FXf/dIQTeib3jaqm24x5SQtqXYbDo0YOnWgaHXV8foIfOgliOqy
         r1A/YpTHxDl0W0SUF9xV6rlpUMugmXGvQOoWojxna9Dg8cvDyp8mWjvWDCSaqZGMvTNL
         /8hINYiSC3W5phuAX8vQwMFa+nOfzjz7ALmqTCd/NZUQrfXVpZWmtM7UpliDDGQhUTID
         wh1y0HHj8YcnAFSVTSGQvjj1JBzCcX88B7OQD3L3jQpBxlXeTg9iA59L7jp0GBKEsNvK
         UkNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=S3q1VTpE68VzbrcpmStX4BHktorwxHvUqnC5ZDe2DgE=;
        b=dKwD6m66trPMKzEJmmnQ6J7M2vv2eUpP3wU2CyjqVFaUB9k3zq0hDsnXWDw3aBTUup
         pxXtZ61Lctm/x060F7YsYpd1/LK8P/OfNnWjwfnUN9pw+QLuPokypjF3roeepT+8YkIG
         QBVUPvsOV0LLsiWx8omXPsk4FlAqlIEKMYZxYjlgcjJS/IMqAjoO2qthQ2o0ml7Ftta+
         5knBQ7svk3ImNfCJCLV/RrCfcgwM4grsnWR3NcC1T4ZefyYg0xmWkF4jvVt/Y2gUHmiM
         C9UdOTtNeFtszQXgIEHbSRr6Lz2s8GEHQryfVvhsdxNRG4lEg/3I+VsukeISaHMCE20a
         F4DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aKSVs6rs;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t22si18694pjy.1.2019.10.24.20.20.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:20:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aKSVs6rs;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id q21so460544plr.13
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 20:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=S3q1VTpE68VzbrcpmStX4BHktorwxHvUqnC5ZDe2DgE=;
        b=aKSVs6rsjYUy/PUnFuOa0adLYD8jGRcnm6Yu4b6MzSsNB+lzRzStljhXk+hAShb7Sj
         zEeLru/oeFhzMf2Uv00v6bKghy/16CrP2+55bQhCCJz+5HvKb3QB1t91yPN7JGvQNCV9
         qYIQjkRgiHpSePTjOvvcN4rPQ4BI0inuGZyKOTJTz5xu2NbHU4tAgKOgKl1VdMGyrDGZ
         UFv1egKejMbFz0U6f8FlmJuAH4lxQUPasO2s38sk69aq+Moim0iepDUNVeS0SpqceqsF
         DaJt311agyB1xOP056PE+NaTxRORPu8SCU3mohKMw+SoZbSPHbrLTSJ1Zvm49PjWTqpd
         UIqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=S3q1VTpE68VzbrcpmStX4BHktorwxHvUqnC5ZDe2DgE=;
        b=ieL5hWQcd6G+6YkUhz0iJXuM2/igEvnbdyabaDZ/H4WQ7TIB20MbPouAB1O+U6lBYq
         2vb+oaYFmISLovT4FAEApbYuOuwLDj41KQM28Jad5/llDGj9inhWFFmrfXUCeGxWHAi6
         HaadDhZRMnQwuxZXaMNv9oZmUCc55xQ+j4MVG7PZCwyL1fJTyBthKT3rK+AK13+XtsQD
         BvqQEOGTbxCxTIhoLxBUeMMHtqF/tCqGC25wHJMyfPgF82pHohqHnrCP8zin5msE9kO7
         JIiH3+YxypukvC4ZYYue/1IlFg4M4lLr2xu94noBdTCmz8Bx02Cn3wpo1oU5iWOVl7XK
         rJ8Q==
X-Gm-Message-State: APjAAAXorh+Tcms1LfABybmk889FgNcKGdyD3/2ciWXKLtpiZbTO2Q7L
	tG4SHycQYsENM+MKfwT8xAk=
X-Received: by 2002:a17:902:8ecc:: with SMTP id x12mr1229233plo.189.1571973654421;
        Thu, 24 Oct 2019 20:20:54 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id c7sm397427pfr.75.2019.10.24.20.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 20:20:53 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 1/4] staging: sm750sb: Edit CamelCase in dvi/sii164 files
Date: Thu, 24 Oct 2019 20:20:32 -0700
Message-Id: <3c47824bcff53ae7f921c21684eb1091e8a77921.1571973516.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571973516.git.jamal.k.shareef@gmail.com>
References: <cover.1571973516.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571973516.git.jamal.k.shareef@gmail.com>
References: <cover.1571973516.git.jamal.k.shareef@gmail.com>

Edits CamelCase naming in a group of dependent
sm750fb files. Issue found by checkpatch.

Removes hungarian notation as well as part of fix to
CamelCase in a given word.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v4:
 - Revert removal of dviInt function and global variable.
   The change will be part of a separate patch to handle the
   removal.
Changes in v3:
 - Fix checkpatch warning for multiple blank lines that occured
   after deleting function and variable.
Changes in v2:
 - Remove dviInt function and global variable because they are
   not used.
 - Remove hungarion notation prefixes.
---
 drivers/staging/sm750fb/ddk750_dvi.c    |  68 ++++-----
 drivers/staging/sm750fb/ddk750_dvi.h    |  80 +++++-----
 drivers/staging/sm750fb/ddk750_sii164.c | 185 ++++++++++++------------
 drivers/staging/sm750fb/ddk750_sii164.h |  40 ++---
 4 files changed, 187 insertions(+), 186 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index cd564ea40779..6fef1ab484c1 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -11,50 +11,50 @@
  * function API. Please set the function pointer to NULL whenever the function
  * is not supported.
  */
-static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
+static struct dvi_ctrl_device dcft_supported_dvi_controller[] = {
 #ifdef DVI_CTRL_SII164
 	{
-		.pfnInit = sii164InitChip,
-		.pfnGetVendorId = sii164GetVendorID,
-		.pfnGetDeviceId = sii164GetDeviceID,
+		.init = sii164_init_chip,
+		.get_vendor_id = sii164_get_vendor_id,
+		.get_device_id = sii164_get_device_id,
 #ifdef SII164_FULL_FUNCTIONS
-		.pfnResetChip = sii164ResetChip,
-		.pfnGetChipString = sii164GetChipString,
-		.pfnSetPower = sii164SetPower,
-		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
-		.pfnIsConnected = sii164IsConnected,
-		.pfnCheckInterrupt = sii164CheckInterrupt,
-		.pfnClearInterrupt = sii164ClearInterrupt,
+		.reset_chip = sii164_reset_chip,
+		.get_chip_string = sii164_get_chip_string,
+		.set_power = sii164_set_power,
+		.enable_hot_plug_detection = sii164_enable_hot_plug_detection,
+		.is_connected = sii164_is_connected,
+		.check_interrupt = sii164_check_interrupt,
+		.clear_interrupt = sii164_clear_interrupt,
 #endif
 	},
 #endif
 };
 
-int dviInit(unsigned char edge_select,
-	    unsigned char bus_select,
-	    unsigned char dual_edge_clk_select,
-	    unsigned char hsync_enable,
-	    unsigned char vsync_enable,
-	    unsigned char deskew_enable,
-	    unsigned char deskew_setting,
-	    unsigned char continuous_sync_enable,
-	    unsigned char pll_filter_enable,
-	    unsigned char pll_filter_value)
+int dvi_init(unsigned char edge_select,
+	     unsigned char bus_select,
+	     unsigned char dual_edge_clk_select,
+	     unsigned char hsync_enable,
+	     unsigned char vsync_enable,
+	     unsigned char deskew_enable,
+	     unsigned char deskew_setting,
+	     unsigned char continuous_sync_enable,
+	     unsigned char pll_filter_enable,
+	     unsigned char pll_filter_value)
 {
-	struct dvi_ctrl_device *pCurrentDviCtrl;
+	struct dvi_ctrl_device *current_dvi_ctrl;
 
-	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl->pfnInit) {
-		return pCurrentDviCtrl->pfnInit(edge_select,
-						bus_select,
-						dual_edge_clk_select,
-						hsync_enable,
-						vsync_enable,
-						deskew_enable,
-						deskew_setting,
-						continuous_sync_enable,
-						pll_filter_enable,
-						pll_filter_value);
+	current_dvi_ctrl = dcft_supported_dvi_controller;
+	if (current_dvi_ctrl->init) {
+		return current_dvi_ctrl->init(edge_select,
+					      bus_select,
+					      dual_edge_clk_select,
+					      hsync_enable,
+					      vsync_enable,
+					      deskew_enable,
+					      deskew_setting,
+					      continuous_sync_enable,
+					      pll_filter_enable,
+					      pll_filter_value);
 	}
 	return -1; /* error */
 }
diff --git a/drivers/staging/sm750fb/ddk750_dvi.h b/drivers/staging/sm750fb/ddk750_dvi.h
index 1c7a565b617a..51e9642769a6 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.h
+++ b/drivers/staging/sm750fb/ddk750_dvi.h
@@ -4,54 +4,54 @@
 
 /* dvi chip stuffs structros */
 
-typedef long (*PFN_DVICTRL_INIT)(unsigned char edgeSelect,
-				 unsigned char busSelect,
-				 unsigned char dualEdgeClkSelect,
-				 unsigned char hsyncEnable,
-				 unsigned char vsyncEnable,
-				 unsigned char deskewEnable,
-				 unsigned char deskewSetting,
-				 unsigned char continuousSyncEnable,
-				 unsigned char pllFilterEnable,
-				 unsigned char pllFilterValue);
-
-typedef void (*PFN_DVICTRL_RESETCHIP)(void);
-typedef char* (*PFN_DVICTRL_GETCHIPSTRING)(void);
-typedef unsigned short (*PFN_DVICTRL_GETVENDORID)(void);
-typedef unsigned short (*PFN_DVICTRL_GETDEVICEID)(void);
-typedef void (*PFN_DVICTRL_SETPOWER)(unsigned char powerUp);
-typedef void (*PFN_DVICTRL_HOTPLUGDETECTION)(unsigned char enableHotPlug);
-typedef unsigned char (*PFN_DVICTRL_ISCONNECTED)(void);
-typedef unsigned char (*PFN_DVICTRL_CHECKINTERRUPT)(void);
-typedef void (*PFN_DVICTRL_CLEARINTERRUPT)(void);
+typedef long (*DVICTRL_INIT)(unsigned char edge_select,
+			     unsigned char bus_select,
+			     unsigned char dual_edge_clk_select,
+			     unsigned char hsync_enable,
+			     unsigned char vsync_enable,
+			     unsigned char deskew_enable,
+			     unsigned char deskew_setting,
+			     unsigned char continuous_sync_enable,
+			     unsigned char pll_filter_enable,
+			     unsigned char pll_filter_value);
+
+typedef void (*DVICTRL_RESETCHIP)(void);
+typedef char* (*DVICTRL_GETCHIPSTRING)(void);
+typedef unsigned short (*DVICTRL_GETVENDORID)(void);
+typedef unsigned short (*DVICTRL_GETDEVICEID)(void);
+typedef void (*DVICTRL_SETPOWER)(unsigned char power_up);
+typedef void (*DVICTRL_HOTPLUGDETECTION)(unsigned char enable_hot_plug);
+typedef unsigned char (*DVICTRL_ISCONNECTED)(void);
+typedef unsigned char (*DVICTRL_CHECKINTERRUPT)(void);
+typedef void (*DVICTRL_CLEARINTERRUPT)(void);
 
 /* Structure to hold all the function pointer to the DVI Controller. */
 struct dvi_ctrl_device {
-	PFN_DVICTRL_INIT		pfnInit;
-	PFN_DVICTRL_RESETCHIP		pfnResetChip;
-	PFN_DVICTRL_GETCHIPSTRING	pfnGetChipString;
-	PFN_DVICTRL_GETVENDORID		pfnGetVendorId;
-	PFN_DVICTRL_GETDEVICEID		pfnGetDeviceId;
-	PFN_DVICTRL_SETPOWER		pfnSetPower;
-	PFN_DVICTRL_HOTPLUGDETECTION	pfnEnableHotPlugDetection;
-	PFN_DVICTRL_ISCONNECTED		pfnIsConnected;
-	PFN_DVICTRL_CHECKINTERRUPT	pfnCheckInterrupt;
-	PFN_DVICTRL_CLEARINTERRUPT	pfnClearInterrupt;
+	DVICTRL_INIT			init;
+	DVICTRL_RESETCHIP		reset_chip;
+	DVICTRL_GETCHIPSTRING		get_chip_string;
+	DVICTRL_GETVENDORID		get_vendor_id;
+	DVICTRL_GETDEVICEID		get_device_id;
+	DVICTRL_SETPOWER		set_power;
+	DVICTRL_HOTPLUGDETECTION	enable_hot_plug_detection;
+	DVICTRL_ISCONNECTED		is_connected;
+	DVICTRL_CHECKINTERRUPT		check_interrupt;
+	DVICTRL_CLEARINTERRUPT		clear_interrupt;
 };
 
 #define DVI_CTRL_SII164
 
 /* dvi functions prototype */
-int dviInit(unsigned char edgeSelect,
-	    unsigned char busSelect,
-	    unsigned char dualEdgeClkSelect,
-	    unsigned char hsyncEnable,
-	    unsigned char vsyncEnable,
-	    unsigned char deskewEnable,
-	    unsigned char deskewSetting,
-	    unsigned char continuousSyncEnable,
-	    unsigned char pllFilterEnable,
-	    unsigned char pllFilterValue);
+int dvi_init(unsigned char edge_select,
+	     unsigned char bus_select,
+	     unsigned char dual_edge_clk_select,
+	     unsigned char hsync_enable,
+	     unsigned char vsync_enable,
+	     unsigned char deskew_enable,
+	     unsigned char deskew_setting,
+	     unsigned char continuous_sync_enable,
+	     unsigned char pll_filter_enable,
+	     unsigned char pll_filter_value);
 
 #endif
 
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index bee58edc84e7..f8fe39026528 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -12,11 +12,11 @@
 #define USE_HW_I2C
 
 #ifdef USE_HW_I2C
-    #define i2cWriteReg sm750_hw_i2c_write_reg
-    #define i2cReadReg  sm750_hw_i2c_read_reg
+    #define i2c_write_reg sm750_hw_i2c_write_reg
+    #define i2c_read_reg  sm750_hw_i2c_read_reg
 #else
-    #define i2cWriteReg sm750_sw_i2c_write_reg
-    #define i2cReadReg  sm750_sw_i2c_read_reg
+    #define i2c_write_reg sm750_sw_i2c_write_reg
+    #define i2c_read_reg  sm750_sw_i2c_read_reg
 #endif
 
 /* SII164 Vendor and Device ID */
@@ -25,45 +25,45 @@
 
 #ifdef SII164_FULL_FUNCTIONS
 /* Name of the DVI Controller chip */
-static char *gDviCtrlChipName = "Silicon Image SiI 164";
+static char *dvi_ctrl_chip_name = "Silicon Image SiI 164";
 #endif
 
 /*
- *  sii164GetVendorID
+ *  sii164_get_vendor_id
  *      This function gets the vendor ID of the DVI controller chip.
  *
  *  Output:
  *      Vendor ID
  */
-unsigned short sii164GetVendorID(void)
+unsigned short sii164_get_vendor_id(void)
 {
-	unsigned short vendorID;
+	unsigned short vendor_id;
 
-	vendorID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
-					       SII164_VENDOR_ID_HIGH) << 8) |
-		   (unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
-					      SII164_VENDOR_ID_LOW);
+	vendor_id = ((unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
+						 SII164_VENDOR_ID_HIGH) << 8) |
+		    (unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
+						SII164_VENDOR_ID_LOW);
 
-	return vendorID;
+	return vendor_id;
 }
 
 /*
- *  sii164GetDeviceID
+ *  sii164_get_device_id
  *      This function gets the device ID of the DVI controller chip.
  *
  *  Output:
  *      Device ID
  */
-unsigned short sii164GetDeviceID(void)
+unsigned short sii164_get_device_id(void)
 {
-	unsigned short deviceID;
+	unsigned short device_id;
 
-	deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
-					       SII164_DEVICE_ID_HIGH) << 8) |
-		   (unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
-					      SII164_DEVICE_ID_LOW);
+	device_id = ((unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
+						 SII164_DEVICE_ID_HIGH) << 8) |
+		    (unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
+						SII164_DEVICE_ID_LOW);
 
-	return deviceID;
+	return device_id;
 }
 
 /*
@@ -72,7 +72,7 @@ unsigned short sii164GetDeviceID(void)
  */
 
 /*
- *  sii164InitChip
+ *  sii164_init_chip
  *      This function initialize and detect the DVI controller chip.
  *
  *  Input:
@@ -118,16 +118,16 @@ unsigned short sii164GetDeviceID(void)
  *      0   - Success
  *     -1   - Fail.
  */
-long sii164InitChip(unsigned char edge_select,
-		    unsigned char bus_select,
-		    unsigned char dual_edge_clk_select,
-		    unsigned char hsync_enable,
-		    unsigned char vsync_enable,
-		    unsigned char deskew_enable,
-		    unsigned char deskew_setting,
-		    unsigned char continuous_sync_enable,
-		    unsigned char pll_filter_enable,
-		    unsigned char pll_filter_value)
+long sii164_init_chip(unsigned char edge_select,
+		      unsigned char bus_select,
+		      unsigned char dual_edge_clk_select,
+		      unsigned char hsync_enable,
+		      unsigned char vsync_enable,
+		      unsigned char deskew_enable,
+		      unsigned char deskew_setting,
+		      unsigned char continuous_sync_enable,
+		      unsigned char pll_filter_enable,
+		      unsigned char pll_filter_value)
 {
 	unsigned char config;
 
@@ -140,8 +140,8 @@ long sii164InitChip(unsigned char edge_select,
 #endif
 
 	/* Check if SII164 Chip exists */
-	if ((sii164GetVendorID() == SII164_VENDOR_ID) &&
-			(sii164GetDeviceID() == SII164_DEVICE_ID)) {
+	if ((sii164_get_vendor_id() == SII164_VENDOR_ID) &&
+	    (sii164_get_device_id() == SII164_DEVICE_ID)) {
 		/*
 		 *  Initialize SII164 controller chip.
 		 */
@@ -176,7 +176,7 @@ long sii164InitChip(unsigned char edge_select,
 		else
 			config |= SII164_CONFIGURATION_VSYNC_AS_IS;
 
-		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
+		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
 
 		/*
 		 * De-skew enabled with default 111b value.
@@ -214,7 +214,7 @@ long sii164InitChip(unsigned char edge_select,
 			config |= SII164_DESKEW_8_STEP;
 			break;
 		}
-		i2cWriteReg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
+		i2c_write_reg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
 
 		/* Enable/Disable Continuous Sync. */
 		if (continuous_sync_enable == 0)
@@ -231,12 +231,12 @@ long sii164InitChip(unsigned char edge_select,
 		/* Set the PLL Filter value */
 		config |= ((pll_filter_value & 0x07) << 1);
 
-		i2cWriteReg(SII164_I2C_ADDRESS, SII164_PLL, config);
+		i2c_write_reg(SII164_I2C_ADDRESS, SII164_PLL, config);
 
 		/* Recover from Power Down and enable output. */
-		config = i2cReadReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
+		config = i2c_read_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
 		config |= SII164_CONFIGURATION_POWER_NORMAL;
-		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
+		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
 
 		return 0;
 	}
@@ -250,157 +250,158 @@ long sii164InitChip(unsigned char edge_select,
 #ifdef SII164_FULL_FUNCTIONS
 
 /*
- *  sii164ResetChip
+ *  sii164_reset_chip
  *      This function resets the DVI Controller Chip.
  */
-void sii164ResetChip(void)
+void sii164_reset_chip(void)
 {
 	/* Power down */
-	sii164SetPower(0);
-	sii164SetPower(1);
+	sii164_set_power(0);
+	sii164_set_power(1);
 }
 
 /*
- * sii164GetChipString
+ * sii164_get_chip_string
  *      This function returns a char string name of the current DVI Controller
  *      chip.
  *
  *      It's convenient for application need to display the chip name.
  */
-char *sii164GetChipString(void)
+char *sii164_get_chip_string(void)
 {
-	return gDviCtrlChipName;
+	return dvi_ctrl_chip_name;
 }
 
 /*
- *  sii164SetPower
+ *  sii164_set_power
  *      This function sets the power configuration of the DVI Controller Chip.
  *
  *  Input:
- *      powerUp - Flag to set the power down or up
+ *      power_up - Flag to set the power down or up
  */
-void sii164SetPower(unsigned char powerUp)
+void sii164_set_power(unsigned char power_up)
 {
 	unsigned char config;
 
-	config = i2cReadReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
-	if (powerUp == 1) {
+	config = i2c_read_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
+	if (power_up == 1) {
 		/* Power up the chip */
 		config &= ~SII164_CONFIGURATION_POWER_MASK;
 		config |= SII164_CONFIGURATION_POWER_NORMAL;
-		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
+		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
 	} else {
 		/* Power down the chip */
 		config &= ~SII164_CONFIGURATION_POWER_MASK;
 		config |= SII164_CONFIGURATION_POWER_DOWN;
-		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
+		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
 	}
 }
 
 /*
- *  sii164SelectHotPlugDetectionMode
+ *  sii164_select_hot_plug_detection_mode
  *      This function selects the mode of the hot plug detection.
  */
 static
-void sii164SelectHotPlugDetectionMode(enum sii164_hot_plug_mode hotPlugMode)
+void sii164_select_hot_plug_detection_mode(enum sii164_hot_plug_mode
+					   hot_plug_mode)
 {
-	unsigned char detectReg;
+	unsigned char detect_reg;
 
-	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) &
-		    ~SII164_DETECT_MONITOR_SENSE_OUTPUT_FLAG;
-	switch (hotPlugMode) {
+	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT) &
+		     ~SII164_DETECT_MONITOR_SENSE_OUTPUT_FLAG;
+	switch (hot_plug_mode) {
 	case SII164_HOTPLUG_DISABLE:
-		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HIGH;
+		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HIGH;
 		break;
 	case SII164_HOTPLUG_USE_MDI:
-		detectReg &= ~SII164_DETECT_INTERRUPT_MASK;
-		detectReg |= SII164_DETECT_INTERRUPT_BY_HTPLG_PIN;
-		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_MDI;
+		detect_reg &= ~SII164_DETECT_INTERRUPT_MASK;
+		detect_reg |= SII164_DETECT_INTERRUPT_BY_HTPLG_PIN;
+		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_MDI;
 		break;
 	case SII164_HOTPLUG_USE_RSEN:
-		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_RSEN;
+		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_RSEN;
 		break;
 	case SII164_HOTPLUG_USE_HTPLG:
-		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HTPLG;
+		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HTPLG;
 		break;
 	}
 
-	i2cWriteReg(SII164_I2C_ADDRESS, SII164_DETECT, detectReg);
+	i2c_write_reg(SII164_I2C_ADDRESS, SII164_DETECT, detect_reg);
 }
 
 /*
- *  sii164EnableHotPlugDetection
+ *  sii164_enable_hot_plug_detection
  *      This function enables the Hot Plug detection.
  *
- *  enableHotPlug   - Enable (=1) / disable (=0) Hot Plug detection
+ *  enable_hot_plug   - Enable (=1) / disable (=0) Hot Plug detection
  */
-void sii164EnableHotPlugDetection(unsigned char enableHotPlug)
+void sii164_enable_hot_plug_detection(unsigned char enable_hot_plug)
 {
-	unsigned char detectReg;
+	unsigned char detect_reg;
 
-	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT);
+	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT);
 
 	/* Depending on each DVI controller, need to enable the hot plug based
 	 * on each individual chip design.
 	 */
-	if (enableHotPlug != 0)
-		sii164SelectHotPlugDetectionMode(SII164_HOTPLUG_USE_MDI);
+	if (enable_hot_plug != 0)
+		sii164_select_hot_plug_detection_mode(SII164_HOTPLUG_USE_MDI);
 	else
-		sii164SelectHotPlugDetectionMode(SII164_HOTPLUG_DISABLE);
+		sii164_select_hot_plug_detection_mode(SII164_HOTPLUG_DISABLE);
 }
 
 /*
- *  sii164IsConnected
+ *  sii164_is_connected
  *      Check if the DVI Monitor is connected.
  *
  *  Output:
  *      0   - Not Connected
  *      1   - Connected
  */
-unsigned char sii164IsConnected(void)
+unsigned char sii164_is_connected(void)
 {
-	unsigned char hotPlugValue;
+	unsigned char hot_plug_value;
 
-	hotPlugValue = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) &
-		       SII164_DETECT_HOT_PLUG_STATUS_MASK;
-	if (hotPlugValue == SII164_DETECT_HOT_PLUG_STATUS_ON)
+	hot_plug_value = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT) &
+			 SII164_DETECT_HOT_PLUG_STATUS_MASK;
+	if (hot_plug_value == SII164_DETECT_HOT_PLUG_STATUS_ON)
 		return 1;
 	else
 		return 0;
 }
 
 /*
- *  sii164CheckInterrupt
+ *  sii164_check_interrupt
  *      Checks if interrupt has occurred.
  *
  *  Output:
  *      0   - No interrupt
  *      1   - Interrupt occurs
  */
-unsigned char sii164CheckInterrupt(void)
+unsigned char sii164_check_interrupt(void)
 {
-	unsigned char detectReg;
+	unsigned char detect_reg;
 
-	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) &
-		    SII164_DETECT_MONITOR_STATE_MASK;
-	if (detectReg == SII164_DETECT_MONITOR_STATE_CHANGE)
+	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT) &
+		     SII164_DETECT_MONITOR_STATE_MASK;
+	if (detect_reg == SII164_DETECT_MONITOR_STATE_CHANGE)
 		return 1;
 	else
 		return 0;
 }
 
 /*
- *  sii164ClearInterrupt
+ *  sii164_clear_interrupt
  *      Clear the hot plug interrupt.
  */
-void sii164ClearInterrupt(void)
+void sii164_clear_interrupt(void)
 {
-	unsigned char detectReg;
+	unsigned char detect_reg;
 
 	/* Clear the MDI interrupt */
-	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT);
-	i2cWriteReg(SII164_I2C_ADDRESS, SII164_DETECT,
-		    detectReg | SII164_DETECT_MONITOR_STATE_CLEAR);
+	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT);
+	i2c_write_reg(SII164_I2C_ADDRESS, SII164_DETECT,
+		      detect_reg | SII164_DETECT_MONITOR_STATE_CLEAR);
 }
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
index d940cb729066..737b0e4869ff 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.h
+++ b/drivers/staging/sm750fb/ddk750_sii164.h
@@ -16,28 +16,28 @@ enum sii164_hot_plug_mode {
 };
 
 /* Silicon Image SiI164 chip prototype */
-long sii164InitChip(unsigned char edgeSelect,
-		    unsigned char busSelect,
-		    unsigned char dualEdgeClkSelect,
-		    unsigned char hsyncEnable,
-		    unsigned char vsyncEnable,
-		    unsigned char deskewEnable,
-		    unsigned char deskewSetting,
-		    unsigned char continuousSyncEnable,
-		    unsigned char pllFilterEnable,
-		    unsigned char pllFilterValue);
-
-unsigned short sii164GetVendorID(void);
-unsigned short sii164GetDeviceID(void);
+long sii164_init_chip(unsigned char edge_select,
+		      unsigned char bus_select,
+		      unsigned char dual_edge_clk_select,
+		      unsigned char hsync_enable,
+		      unsigned char vsync_enable,
+		      unsigned char deskew_enable,
+		      unsigned char deskew_setting,
+		      unsigned char continuous_sync_enable,
+		      unsigned char pll_filter_enable,
+		      unsigned char pll_filter_value);
+
+unsigned short sii164_get_vendor_id(void);
+unsigned short sii164_get_device_id(void);
 
 #ifdef SII164_FULL_FUNCTIONS
-void sii164ResetChip(void);
-char *sii164GetChipString(void);
-void sii164SetPower(unsigned char powerUp);
-void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
-unsigned char sii164IsConnected(void);
-unsigned char sii164CheckInterrupt(void);
-void sii164ClearInterrupt(void);
+void sii164_reset_chip(void);
+char *sii164_get_chip_string(void);
+void sii164_set_power(unsigned char power_up);
+void sii164_enable_hot_plug_detection(unsigned char enable_hot_plug);
+unsigned char sii164_is_connected(void);
+unsigned char sii164_check_interrupt(void);
+void sii164_clear_interrupt(void);
 #endif
 /*
  * below register definition is used for
-- 
2.17.1


