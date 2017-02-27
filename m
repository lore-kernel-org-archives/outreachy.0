X-GM-THRID: 6391114254434435072
X-Received: by 10.13.204.85 with SMTP id o82mr3367162ywd.17.1488190190847;
        Mon, 27 Feb 2017 02:09:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.71 with SMTP id b68ls800756ioj.22.gmail; Mon, 27 Feb
 2017 02:09:50 -0800 (PST)
X-Received: by 10.99.185.77 with SMTP id v13mr5957060pgo.160.1488190190355;
        Mon, 27 Feb 2017 02:09:50 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2796739pfa.4.2017.02.27.02.09.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:09:50 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so489006pgz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tZczCiU99tWZL6TC6/MMt8phjDgn0XFS/wUIfWPlJP4=;
        b=ok0F3knnK8SeHdRQe5sECBLPoiyQX6ZCxUePgGox17a1dSFTS+SHAaVeX0aR56Jt9i
         +OwozPss6civC0vGMBiMiFfDC/MEF4gvZKtiukjwdfUnNr6LGQ4xKOiAck6O6LHZEsOQ
         /TcfHFgm1EmyzipyiRMN6aFvoBa867SWLd+9z9ZsZAHahjOdTrdfMyZrq4iz6h9exIVU
         9ULkDemMHHK60TTB9lc7dvkxspi12q6n+BzbZdLIsuPs0SBt6EHLKX+FAg4qxJQxgB7i
         Ha1eUkjoqGDuQvsST0n4KSd5/f416btXQzkiPWz+sqdKR8+Z3kjj3blvgKACwA0754hx
         AgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tZczCiU99tWZL6TC6/MMt8phjDgn0XFS/wUIfWPlJP4=;
        b=p7MDgAXdOzrodOPrx1G1HpAWr7ekKcYV+SkBWPKCcwPGb9m0WQQXtYYcpe/sWDS22I
         cNT+zRV+O6BqxcWX55b0gOzLAvOkgGbUNxqhHxaOOyv/J0nslaSd9Rn5wK2dBPeE7znN
         I2FLdFWZ4/03LHVc0KVvslpJxHv3YsUOuOyJ2j2t9F6UKNDIswhDwYR1CtwpvibpJbkW
         5f5zlbFL4Qv8zKwoqmuW77br98BdEvk1toTWQCT9vTGZEsveLuqiQEy/UcUkBGiZVOhU
         Na/E821LncA7UpvgA8rCPJM5D13CxrIPHs1APbRMNVqp7ZC0KyVFsY5NGSBEPJ+xOTbP
         Mqiw==
X-Gm-Message-State: AMke39lP4xcg3NA+Y+3Sq4GHekV9Z7xz53la2mkXcptJUhtcUKD6OxJXzDHssunBw5kPcg==
X-Received: by 10.99.184.18 with SMTP id p18mr20255960pge.20.1488190190089;
        Mon, 27 Feb 2017 02:09:50 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.171])
        by smtp.gmail.com with ESMTPSA id j62sm29677301pgc.54.2017.02.27.02.09.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:09:49 -0800 (PST)
Message-ID: <58b3faed.416e630a.42bcc.f3f6@mx.google.com>
X-Google-Original-Message-ID: <20170227100946.GA2814@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:39:47 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 4/7] staging: sm750fb: Remove unnecessary blank lines.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed multiple blank lines, which are not required. This patch fixes
the following check patch issues:

CHECK: Please don't use multiple blank lines

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
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


