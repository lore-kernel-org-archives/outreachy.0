X-GM-THRID: 6391114254434435072
X-Received: by 10.99.254.17 with SMTP id p17mr4848181pgh.146.1488124265166;
        Sun, 26 Feb 2017 07:51:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.200 with SMTP id w8ls10925013otw.23.gmail; Sun, 26 Feb
 2017 07:51:04 -0800 (PST)
X-Received: by 10.129.90.215 with SMTP id o206mr4673914ywb.101.1488124264812;
        Sun, 26 Feb 2017 07:51:04 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si2649278pfk.5.2017.02.26.07.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:51:04 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so9776260pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=o5wf167CyoMxB8An6TJ4aVje3uzzI/u+Fviyd8+pN5w=;
        b=Bll594mW19XlKINxTdwtpXcuHFnA6sCxb1xrtxYUFR0uJZA6n6/+cKY6gRMd154Ybi
         +4dTgU+IcVaFiqETgVBUy+uKcpENHlk9MBeKyaYSMYLE11lxB06Ziz6mW7PqEgi5qe1M
         zfhgpJR2oHCeTC7O/y/hVqq3kKU5IyuzrQvncURzwZSnN5GRIxaaYthr7H+zfFcPyvuC
         fbJat/np8wg1uy5+aWJsWBaBvjbLy8c7Mdp6LLym6Y4JC1oP5wGbefzXVpHHYjh6SG1H
         zv6sWfn+uiCMIGoQvCRXf01xaPkwifLzQPHOjeZz3nCpStSJ/kyI7KbsEI6jNXLe2EMb
         4oow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=o5wf167CyoMxB8An6TJ4aVje3uzzI/u+Fviyd8+pN5w=;
        b=jfrU0xnTlbJHb89skK1Kq79YVfe8z4sKps/4DN2iEnFvCDiLvrofBQ4K9II6Zm5yaU
         K298rvl07iMWAYxL997d65FlROau86zd3W56ivj179GQZBv23A/0fSedHymE59VudewB
         aqv3ydCanDRvv9VMEUFtAcUNa9BViHQFIV2GP6KQCezx+61LmkxzHcdgXhHemg8buiOz
         B+Hsnzc2GOs6rkb76lJgkTiJn9qmMtS7Gl5ZOu/oeoFKrf1q8XZIANtAH+ajDX4T7bxO
         Fil2F8iYF10UPd/RcbwHqhSKK/bVIlGPT9OZSmGvduCb95v0f+esHVuZGQrfSVgoFcVv
         Z/0A==
X-Gm-Message-State: AMke39ntvJDJGzhJfLDct1Sj5hkUxKp3mZWuXqdogHPyC5DXplCvbct/SvZbVgwndA8Xmw==
X-Received: by 10.99.49.70 with SMTP id x67mr8685976pgx.128.1488124264480;
        Sun, 26 Feb 2017 07:51:04 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id u78sm25363257pfa.101.2017.02.26.07.51.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:51:03 -0800 (PST)
Message-ID: <58b2f967.5147620a.bfe8e.578f@mx.google.com>
X-Google-Original-Message-ID: <20170226155058.GA28988@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:20:59 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 4/7] staging: sm750fb: Remove unnecessary blank lines.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed multiple blank lines, which are not required. This patch fixes
the following check patch issues:

CHECK: Please don't use multiple blank lines

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4
-Added proper version number to patch.

 drivers/staging/sm750fb/ddk750_display.h | 5 -----
 drivers/staging/sm750fb/ddk750_dvi.c     | 4 ----
 drivers/staging/sm750fb/ddk750_mode.c    | 5 -----
 drivers/staging/sm750fb/ddk750_mode.h    | 2 --
 drivers/staging/sm750fb/ddk750_power.c   | 5 -----
 drivers/staging/sm750fb/ddk750_power.h   | 1 -
 drivers/staging/sm750fb/ddk750_reg.h     | 4 ----
 7 files changed, 26 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 8abca88..e2a3f84 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -12,7 +12,6 @@
 #define PNL_2_PRI	((0 << PNL_2_OFFSET) | PNL_2_USAGE)
 #define PNL_2_SEC	((2 << PNL_2_OFFSET) | PNL_2_USAGE)
 
-
 /*
  * primary timing & plane enable bit
  *	1: 80000[8] & 80000[2] on
@@ -24,7 +23,6 @@
 #define PRI_TP_ON ((0x1 << PRI_TP_OFFSET) | PRI_TP_USAGE)
 #define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET) | PRI_TP_USAGE)
 
-
 /*
  * panel sequency status
  *	80000[27:24]
@@ -66,7 +64,6 @@
 #define CRT_2_PRI ((0x0 << CRT_2_OFFSET) | CRT_2_USAGE)
 #define CRT_2_SEC ((0x2 << CRT_2_OFFSET) | CRT_2_USAGE)
 
-
 /*
  * DAC affect both DVI and DSUB
  *	4[20]
@@ -87,8 +84,6 @@
 #define DPMS_OFF ((3 << DPMS_OFFSET) | DPMS_USAGE)
 #define DPMS_ON ((0 << DPMS_OFFSET) | DPMS_USAGE)
 
-
-
 /*
  * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
  * CRT means crt path DSUB
diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 250c2f4..42c753f 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -5,7 +5,6 @@
 #include "ddk750_dvi.h"
 #include "ddk750_sii164.h"
 
-
 /*
  * This global variable contains all the supported driver and its corresponding
  * function API. Please set the function pointer to NULL whenever the function
@@ -30,7 +29,6 @@ static dvi_ctrl_device_t g_dcftSupportedDviController[] = {
 #endif
 };
 
-
 int dviInit(
 	unsigned char edgeSelect,
 	unsigned char busSelect,
@@ -56,5 +54,3 @@ int dviInit(
 }
 
 #endif
-
-
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 1df7d57..45af806 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -71,8 +71,6 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 	return dispControl;
 }
 
-
-
 /* only timing related registers will be  programed */
 static int programModeRegisters(mode_parameter_t *pModeParam,
 						struct pll_value *pll)
@@ -112,7 +110,6 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
 			((pModeParam->vertical_sync_start - 1) &
 				CRT_VERTICAL_SYNC_START_MASK));
 
-
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
@@ -219,5 +216,3 @@ int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
 	programModeRegisters(parm, &pll);
 	return 0;
 }
-
-
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index e846dc2..2183e66 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -9,7 +9,6 @@ typedef enum _spolarity_t {
 }
 spolarity_t;
 
-
 typedef struct _mode_parameter_t {
 	/* Horizontal timing. */
 	unsigned long horizontal_total;
@@ -37,5 +36,4 @@ mode_parameter_t;
 
 int ddk750_setModeTiming(mode_parameter_t *, clock_type_t);
 
-
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 02ff620..222ae1a 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -24,7 +24,6 @@ static unsigned int get_power_mode(void)
 	return peek32(POWER_MODE_CTRL) & POWER_MODE_CTRL_MODE_MASK;
 }
 
-
 /*
  * SM50x can operate in one of three modes: 0, 1 or Sleep.
  * On hardware reset, power mode 0 is default.
@@ -80,8 +79,6 @@ void sm750_set_current_gate(unsigned int gate)
 		poke32(MODE0_GATE, gate);
 }
 
-
-
 /*
  * This function enable/disable the 2D engine.
  */
@@ -145,5 +142,3 @@ void sm750_enable_i2c(unsigned int enable)
 
 	sm750_set_current_gate(gate);
 }
-
-
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 4274d74..ec0b99d 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -38,5 +38,4 @@ void sm750_enable_gpio(unsigned int enable);
  */
 void sm750_enable_i2c(unsigned int enable);
 
-
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_reg.h b/drivers/staging/sm750fb/ddk750_reg.h
index 4ed6d8d..f9b989b 100644
--- a/drivers/staging/sm750fb/ddk750_reg.h
+++ b/drivers/staging/sm750fb/ddk750_reg.h
@@ -532,7 +532,6 @@
 #define GPIO_INTERRUPT_STATUS_26                        BIT(17)
 #define GPIO_INTERRUPT_STATUS_25                        BIT(16)
 
-
 #define PANEL_DISPLAY_CTRL                            0x080000
 #define PANEL_DISPLAY_CTRL_RESERVED_MASK              0xc0f08000
 #define PANEL_DISPLAY_CTRL_SELECT_SHIFT               28
@@ -1279,7 +1278,6 @@
 #define I2C_DATA14                                      0x010052
 #define I2C_DATA15                                      0x010053
 
-
 #define ZV0_CAPTURE_CTRL                                0x090000
 #define ZV0_CAPTURE_CTRL_FIELD_INPUT                    BIT(27)
 #define ZV0_CAPTURE_CTRL_SCAN                           BIT(26)
@@ -1445,7 +1443,6 @@
 #define DEFAULT_I2C_SCL                     30
 #define DEFAULT_I2C_SDA                     31
 
-
 #define GPIO_DATA_SM750LE                               0x020018
 #define GPIO_DATA_SM750LE_1                             BIT(1)
 #define GPIO_DATA_SM750LE_0                             BIT(0)
@@ -1454,5 +1451,4 @@
 #define GPIO_DATA_DIRECTION_SM750LE_1                   BIT(1)
 #define GPIO_DATA_DIRECTION_SM750LE_0                   BIT(0)
 
-
 #endif
-- 
2.9.3


