X-GM-THRID: 6748523404915113984
X-Received: by 2002:aca:4994:: with SMTP id w142mr5467777oia.88.1571354759778;
        Thu, 17 Oct 2019 16:25:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cc88:: with SMTP id c130ls696016oig.4.gmail; Thu, 17 Oct
 2019 16:25:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx00yoe6imZe2MEjJh/RnnW80ixZ56/ygY/esZ5rsoMVefXjMJuhhMikt9tDGXJ2Ohtx8oM
X-Received: by 2002:aca:49c2:: with SMTP id w185mr5504090oia.163.1571354758819;
        Thu, 17 Oct 2019 16:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571354758; cv=none;
        d=google.com; s=arc-20160816;
        b=N2XqiNIBdfrrgDvqdalRs2p5TF/7t4brPsAqVF+rXhsCxSJeoyIYIf54rj9aqutiGt
         SEtEu/KN3i/mCv5kK3G6ZTAsAlYYEwfyfQ+hxwOw/K0P/q+4ZzM+lsAAOs2Sju+JZc2O
         Wnowd/v7lV8AodI93CwSN54n9sK96pmYmd/skrFnipDtHbSWiCphI4pToefW7AE7z4yH
         AlImk1QR4XE3PuBSNxl9ehXbxFqoIb3rt+W3xdNQQPevyHV2BKBwp3wRrKCR+PEm7gtS
         h0+dyLhw0X6VqX8n6vxfr531LXpYNMQAIJJIfElfLnfIJLQoslTg57biw20Ay2wnqPcV
         BpRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CnTz0Le7dIxkm7YSuiFp+2qE44rRyUYQtzzG6E5RLxU=;
        b=fk2sph3wkAaTk97ynrZFwvsdIJsmtxvNAXS8T1oxioRsByJd/8Ku6vczQi6GLT6Gl+
         cwz2ywULw/XimGjOULE3Obb+RycygF7B27MQawpGybh/rBVfYr8AmjvwWsAfs5t6At1T
         O6pU0r/P2dGzRVYcsA9vAgFLlV6mYygWTdS0LwhY1YQ7tX3wNO/s0E9tqlUg6OxzhhqH
         PzIGV5tj+jJlMYinW4jYlCB/4ZM0yOxu1r3xwYbJtCI02vyOmp5BR80XuyFG51pVgrvH
         57/x7eFsa1V6Rf4YMcIOnutW5cL0klHlmcB08OS5BqmnAlQGnmk+7BrrrEYmcyUDJd7N
         jnHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/AXSVXc";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id b11si330575oii.5.2019.10.17.16.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 16:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/AXSVXc";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id d22so1899179pls.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 16:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CnTz0Le7dIxkm7YSuiFp+2qE44rRyUYQtzzG6E5RLxU=;
        b=F/AXSVXciER2lY4sAJ9vBNjwWkk5QekmrJiNcdQXA1pGdag8SqR7iwwCaSt1m17X63
         9fCx9SKVftynTNxOxisNC5VpJDd/MxyGs2wV0Xi33hDf1+KMvtLt+XFg9SYo/mfavDJF
         NshRbcGP73tFw81AWHxIq9QkVnyA4HW/+E9WQ46uemWrtHh40wB79mvCvMcGCvEeJTlq
         ONAgt0WvtnHBRfk3kYbuCx8iLJKv+UEFamT62tnBwtCFIwc27hHfEPKeIWOC/LhhDgGz
         D8ngjOksg9UCDnMRfgDGy7uY1n6NlugvL16hnBtbD1Y4P3fa5+oXUARESPj4MwlsiiE+
         KaDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CnTz0Le7dIxkm7YSuiFp+2qE44rRyUYQtzzG6E5RLxU=;
        b=k/XJsQ/zp7OoHLav0z9KlsszDWwhEJgVZHO6oyF23B2oyVxpK5QMmMImbr7FBic3OR
         KcvPj428tXs+Wokdv/HzxpHrqzBDGkqxnMSTnCY55NlseZkAmc9L2kRMSDNnHAip17uV
         1ZqZqH8FUJHfyuDSKlDt2MBMv7nFY0UtnVYGtpW1LCPizNBI1VcZzHJOUNfkdFsqr5im
         g7TQU4AAqH3Yw8nSU4TeN+uPwvi+an2YH8uXb85tzGamEhcd9Q9nlSYUyT3I3BeML1c1
         9TdbiFYe5KJyW7pApH3bXncePokJWiupRMuDXO7y2qgFVcAdafzFATGStvlJ9GidvVMX
         wd5Q==
X-Gm-Message-State: APjAAAWy1lYJvxKZuI/NXq2w//YNqmFV5YThaoBzEdtIFmelC/ufepIw
	reTZ5VNnYLYnXTxJAi0YBzJsQvWYkJw=
X-Received: by 2002:a17:902:d887:: with SMTP id b7mr6607088plz.301.1571354757738;
        Thu, 17 Oct 2019 16:25:57 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id x19sm4738263pgc.59.2019.10.17.16.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 16:25:56 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: sm750sb: Edit CamelCase in dvi/sii164 files
Date: Thu, 17 Oct 2019 16:25:44 -0700
Message-Id: <20191017232544.26719-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Edits CamelCase naming in a group of dependent
sm750fb files. Issue found by checkpatch.

Remove hungarian notion prefixes throughout.

Remove dviInt function and associated variable
g_dcftSupportedDviController[] because it is not used.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v2:
 - Remove dviInt function and global variable because they are
   not used.
 - Remove hungarion notation prefixes.
---
 drivers/staging/sm750fb/ddk750_dvi.c    |  51 -------
 drivers/staging/sm750fb/ddk750_dvi.h    |  71 ++++-----
 drivers/staging/sm750fb/ddk750_sii164.c | 185 ++++++++++++------------
 drivers/staging/sm750fb/ddk750_sii164.h |  40 ++---
 4 files changed, 143 insertions(+), 204 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index cd564ea40779..c0a7d8c018d8 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -6,57 +6,6 @@
 #include "ddk750_dvi.h"
 #include "ddk750_sii164.h"
 
-/*
- * This global variable contains all the supported driver and its corresponding
- * function API. Please set the function pointer to NULL whenever the function
- * is not supported.
- */
-static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
-#ifdef DVI_CTRL_SII164
-	{
-		.pfnInit = sii164InitChip,
-		.pfnGetVendorId = sii164GetVendorID,
-		.pfnGetDeviceId = sii164GetDeviceID,
-#ifdef SII164_FULL_FUNCTIONS
-		.pfnResetChip = sii164ResetChip,
-		.pfnGetChipString = sii164GetChipString,
-		.pfnSetPower = sii164SetPower,
-		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
-		.pfnIsConnected = sii164IsConnected,
-		.pfnCheckInterrupt = sii164CheckInterrupt,
-		.pfnClearInterrupt = sii164ClearInterrupt,
-#endif
-	},
-#endif
-};
-
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
-{
-	struct dvi_ctrl_device *pCurrentDviCtrl;
 
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
-	}
-	return -1; /* error */
-}
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_dvi.h b/drivers/staging/sm750fb/ddk750_dvi.h
index 1c7a565b617a..f42f06f90fa7 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.h
+++ b/drivers/staging/sm750fb/ddk750_dvi.h
@@ -4,54 +4,43 @@
 
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
 
-/* dvi functions prototype */
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


