X-GM-THRID: 6337746861682589696
X-Received: by 10.28.29.85 with SMTP id d82mr274065wmd.5.1475700344081;
        Wed, 05 Oct 2016 13:45:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.207.203 with SMTP id f194ls2804900wmg.24.canary; Wed, 05
 Oct 2016 13:45:43 -0700 (PDT)
X-Received: by 10.28.207.131 with SMTP id f125mr760284wmg.10.1475700343401;
        Wed, 05 Oct 2016 13:45:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 82si1097735wmg.3.2016.10.05.13.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 13:45:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id f193so411778wmg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 05 Oct 2016 13:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AM2GS6BcJgV72ZgBM0b4Qpd2DU7J9J3aeUE8W2cwpzU=;
        b=DKZfpakrhWjQdlM7S8lncI4DjQ3oO/hvtqi/G6K40FV565z01KG22jRuupy93yAqYT
         i/KJfREIg9W7FQf3L9cxsaPNqg7rhd9cOM+6CZ//8m9VJ4HhvfaRyYqDre8tQ11Je5y7
         /XwedwZP7mP353rLwtWUaz92kkm1LxEUqJZnQdYzrWV5FA3UH43vGzcCuyrYmprwjFWZ
         jd+woub8TLMeU/27W9VMouIfoCaHcSmCrVso9GR537Ti0pDAXmPKduhks598ivQFkavf
         3UlKzdat07bgj8QOebfXmY7upPfPyJ2wDcxyMlYcM9UCQ19QAz6YAA9XKsnh6KFh6mvq
         pLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AM2GS6BcJgV72ZgBM0b4Qpd2DU7J9J3aeUE8W2cwpzU=;
        b=Jpz/obbzEXcFkbcZQvuL3M85B9/vZN+u0f4R5iGQoqbrMgmAClFckOnCP5gdk3U1Ld
         7DHxxuqv3SJPph/lKCyxpKKFOyga1RPR1As6xcmXqfJOOEYI2DZ+wQVPT+Ji7Hp27cJt
         rKzd4vcL09E5qfD0RybEn95evJSS91xy0M8Q/EYp15lEyM5pBhLYedbY0LFx+RWOb6Qe
         zp4+INXbSLMFSdT7pcxRLmPEQigpk06PodzJPQbqMmPTOdQlOEID6lak2LEr/6coAVVU
         zEy78ST7kuZkN+M8fOJEQDkuegJ/NEJGw5fALRHeXA3/FdL9kHDnsfLcKH+jyFHHZJ85
         tuCg==
X-Gm-Message-State: AA6/9Rk6Q9YBwa23YS71gqBk4RF6EazabhhmfdOYIho+PWxRHW7oiQnnj43bIlfnQq1jtA==
X-Received: by 10.28.203.194 with SMTP id b185mr10053396wmg.36.1475700342933;
        Wed, 05 Oct 2016 13:45:42 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id o2sm10759678wjo.3.2016.10.05.13.45.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Oct 2016 13:45:42 -0700 (PDT)
Date: Wed, 5 Oct 2016 23:45:41 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: sm750fb: remove typedefs in ddk750_chip.h
Message-ID: <20161005204541.GA17653@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning: "WARNING: do not add new
typedefs". Hiding a variables of type 'struct' is not always a good
idea,because when we passing them as parameters we tempt to forget that
in this proces we work with  stack memory and allocatting struct on
stack is something that we should manage carefuly.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- add more details on description.
	- delete  '_t' from the name of the structs.
---
 drivers/staging/sm750fb/ddk750_chip.c |  8 ++++----
 drivers/staging/sm750fb/ddk750_chip.h | 10 +++++-----
 drivers/staging/sm750fb/ddk750_mode.c |  4 ++--
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index bfe2f1a..ac39f4e 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
  */
 static void setChipClock(unsigned int frequency)
 {
-	struct pll_value_t pll;
+	struct pll_value pll;
 	unsigned int ulActualMxClk;
 
 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
@@ -208,7 +208,7 @@ unsigned int ddk750_getVMSize(void)
 	return data;
 }
 
-int ddk750_initHw(struct initchip_param_t *pInitParam)
+int ddk750_initHw(struct initchip_param *pInitParam)
 {
 	unsigned int reg;
 
@@ -307,7 +307,7 @@ int ddk750_initHw(struct initchip_param_t *pInitParam)
  * M = {1,...,255}
  * N = {2,...,15}
  */
-unsigned int calcPllValue(unsigned int request_orig, struct pll_value_t *pll)
+unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
 {
 	/* as sm750 register definition,
 	 * N located in 2,15 and M located in 1,255
@@ -375,7 +375,7 @@ unsigned int calcPllValue(unsigned int request_orig, struct pll_value_t *pll)
 	return ret;
 }
 
-unsigned int formatPllReg(struct pll_value_t *pPLL)
+unsigned int formatPllReg(struct pll_value *pPLL)
 {
 #ifndef VALIDATION_CHIP
 	unsigned int POD = pPLL->POD;
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index be4ba11..3cd398f 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -25,7 +25,7 @@ typedef enum _clock_type_t {
 }
 clock_type_t;
 
-struct pll_value_t {
+struct pll_value {
 	clock_type_t clockType;
 	unsigned long inputFreq; /* Input clock frequency to the PLL */
 
@@ -37,7 +37,7 @@ struct pll_value_t {
 };
 
 /* input struct to initChipParam() function */
-struct initchip_param_t {
+struct initchip_param {
 	unsigned short powerMode;    /* Use power mode 0 or 1 */
 	unsigned short chipClock;    /**
 				      * Speed of main chip clock in MHz unit
@@ -68,10 +68,10 @@ struct initchip_param_t {
 };
 
 logical_chip_type_t sm750_get_chip_type(void);
-unsigned int calcPllValue(unsigned int request, struct pll_value_t *pll);
-unsigned int formatPllReg(struct pll_value_t *pPLL);
+unsigned int calcPllValue(unsigned int request, struct pll_value *pll);
+unsigned int formatPllReg(struct pll_value *pPLL);
 void ddk750_set_mmio(void __iomem *, unsigned short, char);
 unsigned int ddk750_getVMSize(void);
-int ddk750_initHw(struct initchip_param_t *);
+int ddk750_initHw(struct initchip_param *);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index f28eb07..c1f8987 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -73,7 +73,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value_t *pll)
+static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -202,7 +202,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value_t
 
 int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
 {
-	struct pll_value_t pll;
+	struct pll_value pll;
 	unsigned int uiActualPixelClk;
 
 	pll.inputFreq = DEFAULT_INPUT_CLOCK;
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index b253ba0..74a97b4 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -100,7 +100,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	if (parm->master_clk == 0)
 		parm->master_clk = parm->chip_clk / 3;
 
-	ddk750_initHw((struct initchip_param_t *)&sm750_dev->initParm);
+	ddk750_initHw((struct initchip_param *)&sm750_dev->initParm);
 	/* for sm718, open pci burst */
 	if (sm750_dev->devid == 0x718) {
 		POKE32(SYSTEM_CTRL,
-- 
2.7.4


