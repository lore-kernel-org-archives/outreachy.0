X-GM-THRID: 6340772039843905536
X-Received: by 10.98.198.75 with SMTP id m72mr2353499pfg.5.1476397559445;
        Thu, 13 Oct 2016 15:25:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls6524592otb.48.gmail; Thu, 13 Oct
 2016 15:25:59 -0700 (PDT)
X-Received: by 10.129.89.84 with SMTP id n81mr2665824ywb.23.1476397559049;
        Thu, 13 Oct 2016 15:25:59 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p131si2717796vkf.1.2016.10.13.15.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 2so4246386vkb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 15:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ie/jT24wDf4SoOm7FnKXwL+UfjMmW6To5GgAE+dYIL8=;
        b=VqL/2fGLJUwpZvuX5JoMKuNUefaxk5Biu+Pwk+YEEl6OaB3WEb8PXLAXvfW3JzNpKw
         Kd/OXoVhrzc5DkGey+mqjyxEM+CYpp/M84RAQuGL+RKpVv5eTnnI2LIzH9zffjOmCJat
         ag3RXjCsEnOH/21DPGjFRomLtedUhzu+We+itRWsKP25m5fAV1CVcwToWcgk/B6lgQIp
         +RTh/WaEFIPATaLaiZJwOuDdP3fu5/dzZ7Q+wiUO/eyj0dlNf+g9vpowB7YN+zS0bHDt
         Aq/M4hRYPAsbpsDRkr6A5BOjFVdF2aM118TewI5CIVxxg3WKFdxqRaK3qTDGJbZInIoE
         q6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ie/jT24wDf4SoOm7FnKXwL+UfjMmW6To5GgAE+dYIL8=;
        b=iEi7GGEHvGB/oFbIzbjR3I9hqnM9hMu8UaNBaAONEJiO3Ah1LQ4lIH28/X7AXhL84f
         SMeBprdPD6QGDNyQi9pTLW85yTQyFldgPSqstyvrv2W3yDbo4+FFmt7qDdxUcyyVAWVg
         HHts1Q1EXmLj/Mm0mfFOEL/wsSI033XUgopD5aug3Y81wX8WvFPXjV7ktSPDYlr072kJ
         a5AM7gzKcYY754J+TUNrKr4ymIFz0OUW6xR4RfHnt/Gw//ZRRGQmy41pB7VnqAovq3nf
         KVs6e1418/Z+83n2M5/PBOHfOhij5Z95sosz4KjxHuqrjxoa1zc4h0M9gtRVn5tpPzQ7
         LH6Q==
X-Gm-Message-State: AA6/9RljYjcSiMh+MCbFDbHEGwrGX+hkjI91ExBAn/sdjCjvPAXYVBqDyGOxZOz3CT0XiA==
X-Received: by 10.31.133.130 with SMTP id h124mr6651950vkd.24.1476397558841;
        Thu, 13 Oct 2016 15:25:58 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id s17sm6161464vka.26.2016.10.13.15.25.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:25:58 -0700 (PDT)
Date: Thu, 13 Oct 2016 19:25:52 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: sm750fb: Replace functions CamelCase naming
 with underscores.
Message-ID: <20161013222552.GA11222@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace CamelCase function names with underscores to comply with
the standard kernel coding style.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Rewrite git log message.
  As suggested by Julia Lawall <julia.lawall@lip6.fr> .

 drivers/staging/sm750fb/ddk750_chip.c  | 36 +++++++++++++++++-----------------
 drivers/staging/sm750fb/ddk750_chip.h  |  8 ++++----
 drivers/staging/sm750fb/ddk750_mode.c  |  6 +++---
 drivers/staging/sm750fb/ddk750_power.c | 12 ++++++------
 drivers/staging/sm750fb/ddk750_power.h |  4 ++--
 drivers/staging/sm750fb/sm750_hw.c     |  6 +++---
 6 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 2b231c2..a127eb2 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -51,7 +51,7 @@ static unsigned int get_mxclk_freq(void)
  *
  * Input: Frequency to be set.
  */
-static void setChipClock(unsigned int frequency)
+static void set_chip_clock(unsigned int frequency)
 {
 	struct pll_value pll;
 	unsigned int ulActualMxClk;
@@ -68,19 +68,19 @@ static void setChipClock(unsigned int frequency)
 		pll.clockType = MXCLK_PLL;
 
 		/*
-		* Call calcPllValue() to fill the other fields of PLL structure.
+		* Call calc_pll_value() to fill the other fields of PLL structure.
 		* Sometime, the chip cannot set up the exact clock
 		* required by the User.
-		* Return value of calcPllValue gives the actual possible clock.
+		* Return value of calc_pll_value gives the actual possible clock.
 		*/
-		ulActualMxClk = calcPllValue(frequency, &pll);
+		ulActualMxClk = calc_pll_value(frequency, &pll);
 
 		/* Master Clock Control: MXCLK_PLL */
-		POKE32(MXCLK_PLL_CTRL, formatPllReg(&pll));
+		POKE32(MXCLK_PLL_CTRL, format_pll_reg(&pll));
 	}
 }
 
-static void setMemoryClock(unsigned int frequency)
+static void set_memory_clock(unsigned int frequency)
 {
 	unsigned int reg, divisor;
 
@@ -119,7 +119,7 @@ static void setMemoryClock(unsigned int frequency)
 			break;
 		}
 
-		setCurrentGate(reg);
+		set_current_gate(reg);
 	}
 }
 
@@ -131,7 +131,7 @@ static void setMemoryClock(unsigned int frequency)
  * NOTE:
  *      The maximum frequency the engine can run is 168MHz.
  */
-static void setMasterClock(unsigned int frequency)
+static void set_master_clock(unsigned int frequency)
 {
 	unsigned int reg, divisor;
 
@@ -169,11 +169,11 @@ static void setMasterClock(unsigned int frequency)
 			break;
 		}
 
-		setCurrentGate(reg);
+		set_current_gate(reg);
 		}
 }
 
-unsigned int ddk750_getVMSize(void)
+unsigned int ddk750_get_vm_size(void)
 {
 	unsigned int reg;
 	unsigned int data;
@@ -205,18 +205,18 @@ unsigned int ddk750_getVMSize(void)
 	return data;
 }
 
-int ddk750_initHw(struct initchip_param *pInitParam)
+int ddk750_init_hw(struct initchip_param *pInitParam)
 {
 	unsigned int reg;
 
 	if (pInitParam->powerMode != 0)
 		pInitParam->powerMode = 0;
-	setPowerMode(pInitParam->powerMode);
+	set_power_mode(pInitParam->powerMode);
 
 	/* Enable display power gate & LOCALMEM power gate*/
 	reg = PEEK32(CURRENT_GATE);
 	reg |= (CURRENT_GATE_DISPLAY | CURRENT_GATE_LOCALMEM);
-	setCurrentGate(reg);
+	set_current_gate(reg);
 
 	if (sm750_get_chip_type() != SM750LE) {
 		/*	set panel pll and graphic mode via mmio_88 */
@@ -232,13 +232,13 @@ int ddk750_initHw(struct initchip_param *pInitParam)
 	}
 
 	/* Set the Main Chip Clock */
-	setChipClock(MHz((unsigned int)pInitParam->chipClock));
+	set_chip_clock(MHz((unsigned int)pInitParam->chipClock));
 
 	/* Set up memory clock. */
-	setMemoryClock(MHz(pInitParam->memClock));
+	set_memory_clock(MHz(pInitParam->memClock));
 
 	/* Set up master clock */
-	setMasterClock(MHz(pInitParam->masterClock));
+	set_master_clock(MHz(pInitParam->masterClock));
 
 
 	/* Reset the memory controller.
@@ -304,7 +304,7 @@ int ddk750_initHw(struct initchip_param *pInitParam)
  * M = {1,...,255}
  * N = {2,...,15}
  */
-unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
+unsigned int calc_pll_value(unsigned int request_orig, struct pll_value *pll)
 {
 	/* as sm750 register definition,
 	 * N located in 2,15 and M located in 1,255
@@ -372,7 +372,7 @@ unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
 	return ret;
 }
 
-unsigned int formatPllReg(struct pll_value *pPLL)
+unsigned int format_pll_reg(struct pll_value *pPLL)
 {
 #ifndef VALIDATION_CHIP
 	unsigned int POD = pPLL->POD;
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index 755aab1..3b731b4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -77,9 +77,9 @@ struct initchip_param {
 
 logical_chip_type_t sm750_get_chip_type(void);
 void sm750_set_chip_type(unsigned short devId, char revId);
-unsigned int calcPllValue(unsigned int request, struct  pll_value *pll);
-unsigned int formatPllReg(struct pll_value *pPLL);
-unsigned int ddk750_getVMSize(void);
-int ddk750_initHw(struct initchip_param *);
+unsigned int calc_pll_value(unsigned int request, struct  pll_value *pll);
+unsigned int format_pll_reg(struct pll_value *pPLL);
+unsigned int ddk750_get_vm_size(void);
+int ddk750_init_hw(struct initchip_param *);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 4964918..b6af6f3 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -80,7 +80,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
 
 	if (pll->clockType == SECONDARY_PLL) {
 		/* programe secondary pixel clock */
-		POKE32(CRT_PLL_CTRL, formatPllReg(pll));
+		POKE32(CRT_PLL_CTRL, format_pll_reg(pll));
 		POKE32(CRT_HORIZONTAL_TOTAL,
 			(((pModeParam->horizontal_total - 1) <<
 				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
@@ -130,7 +130,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
 	} else if (pll->clockType == PRIMARY_PLL) {
 		unsigned int reserved;
 
-		POKE32(PANEL_PLL_CTRL, formatPllReg(pll));
+		POKE32(PANEL_PLL_CTRL, format_pll_reg(pll));
 
 		reg = ((pModeParam->horizontal_total - 1) <<
 			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
@@ -207,7 +207,7 @@ int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
 	pll.inputFreq = DEFAULT_INPUT_CLOCK;
 	pll.clockType = clock;
 
-	uiActualPixelClk = calcPllValue(parm->pixel_clock, &pll);
+	uiActualPixelClk = calc_pll_value(parm->pixel_clock, &pll);
 	if (sm750_get_chip_type() == SM750LE) {
 		/* set graphic mode via IO method */
 		outb_p(0x88, 0x3d4);
diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 710106e..c9ea464 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -29,7 +29,7 @@ static unsigned int getPowerMode(void)
  * SM50x can operate in one of three modes: 0, 1 or Sleep.
  * On hardware reset, power mode 0 is default.
  */
-void setPowerMode(unsigned int powerMode)
+void set_power_mode(unsigned int powerMode)
 {
 	unsigned int control_value = 0;
 
@@ -72,7 +72,7 @@ void setPowerMode(unsigned int powerMode)
 	POKE32(POWER_MODE_CTRL, control_value);
 }
 
-void setCurrentGate(unsigned int gate)
+void set_current_gate(unsigned int gate)
 {
 	unsigned int gate_reg;
 	unsigned int mode;
@@ -111,7 +111,7 @@ void enable2DEngine(unsigned int enable)
 	else
 		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
 
-	setCurrentGate(gate);
+	set_current_gate(gate);
 }
 
 void enableDMA(unsigned int enable)
@@ -125,7 +125,7 @@ void enableDMA(unsigned int enable)
 	else
 		gate &= ~CURRENT_GATE_DMA;
 
-	setCurrentGate(gate);
+	set_current_gate(gate);
 }
 
 /*
@@ -142,7 +142,7 @@ void enableGPIO(unsigned int enable)
 	else
 		gate &= ~CURRENT_GATE_GPIO;
 
-	setCurrentGate(gate);
+	set_current_gate(gate);
 }
 
 /*
@@ -159,7 +159,7 @@ void enableI2C(unsigned int enable)
 	else
 		gate &= ~CURRENT_GATE_I2C;
 
-	setCurrentGate(gate);
+	set_current_gate(gate);
 }
 
 
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 5963691..ba0b3f5 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -19,12 +19,12 @@ void ddk750_setDPMS(DPMS_t);
 /*
  * This function sets the current power mode
  */
-void setPowerMode(unsigned int powerMode);
+void set_power_mode(unsigned int powerMode);
 
 /*
  * This function sets current gate
  */
-void setCurrentGate(unsigned int gate);
+void set_current_gate(unsigned int gate);
 
 /*
  * This function enable/disable the 2D engine.
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 61d2fdc..d5508ba 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -68,9 +68,9 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	/* don't use pdev_resource[x].end - resource[x].start to
 	 * calculate the resource size, it's only the maximum available
 	 * size but not the actual size, using
-	 * @ddk750_getVMSize function can be safe.
+	 * @ddk750_get_vm_size function can be safe.
 	 */
-	sm750_dev->vidmem_size = ddk750_getVMSize();
+	sm750_dev->vidmem_size = ddk750_get_vm_size();
 	pr_info("video memory phyAddr = %lx, size = %u bytes\n",
 		sm750_dev->vidmem_start, sm750_dev->vidmem_size);
 
@@ -103,7 +103,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	if (parm->master_clk == 0)
 		parm->master_clk = parm->chip_clk / 3;
 
-	ddk750_initHw((struct initchip_param *)&sm750_dev->initParm);
+	ddk750_init_hw((struct initchip_param *)&sm750_dev->initParm);
 	/* for sm718, open pci burst */
 	if (sm750_dev->devid == 0x718) {
 		POKE32(SYSTEM_CTRL,
-- 
2.7.4


