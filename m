X-GM-THRID: 6338260481251213312
X-Received: by 10.194.46.233 with SMTP id y9mr874905wjm.3.1475741267105;
        Thu, 06 Oct 2016 01:07:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.4 with SMTP id g4ls251105ljg.41.gmail; Thu, 06 Oct 2016
 01:07:46 -0700 (PDT)
X-Received: by 10.46.33.202 with SMTP id h71mr832218lji.22.1475741266268;
        Thu, 06 Oct 2016 01:07:46 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id s6si2523525wmb.1.2016.10.06.01.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 01:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id f193so2207191wmg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 01:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jaSgqb0hmHOBVzZUNa9/C9dSZ1xzcjXrUVASHlMjoLM=;
        b=paCINxAEiru6rr9eQ4hVy8p7BlaBjd9hgF1iFn0U/9VGg3ZenPs4NBiDMz1zC8cNmI
         /2YlNOxXc+cbqw6Icwzs6tUN6cNXI8n6jJcqntxNSTvAvj9czmQGTauaKg9M2SdyMa/T
         /69dassRoQZL7q0quv+8o48diUlZ1OHtEzfXsgW8nsby8XHcpU37nshkNipTfmvljYMb
         ia9LrQVH/67x+Bz5DHRCF/rqDUdE6GDr8KislArpcdRv/lopKH3To/H3E7/l6yQNbkfz
         KTpiE12HQmUNzZORyTa4lahvtGRUojygeWD1zWmrKjG8ovXaV1B3BJ6ytcBhMObPMmH+
         rA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jaSgqb0hmHOBVzZUNa9/C9dSZ1xzcjXrUVASHlMjoLM=;
        b=JpvomYSOf6RtdtcIblQFV6FnGzzFskZhWByC2DQFKgepPtegVYb+F6emDxPQL8PSN9
         w3IfdqbbuOrtEd+8e1zKkUzIbYJTjq1otYLpBFzPGwdzMReXPRJU5OJEeZWeqTsNRNWU
         onQe2Kc5tUl321yxVsY6BrvpiuphG3TWA4NeCv+unN91IRR2QzqCpXGt8xTeDJg2je2b
         T38iYDcVbVJUaJO/94ObuRVVDL656g8mR97OF8rK0/QLhitYS9Yo56ILOAJrdbBtsOxx
         fmZPjX9J170uY1RMUjktrOFxpfn1MkOYIet2myw309+XI742d2A4GXnt8sorShK9NaVY
         QSfw==
X-Gm-Message-State: AA6/9RmNRxzimnrqJGDYANJisjzxpv5FDvusyJbcqVDxNZBUvhdnVbpv742DpraSWdIbwQ==
X-Received: by 10.194.104.9 with SMTP id ga9mr10961516wjb.23.1475741266019;
        Thu, 06 Oct 2016 01:07:46 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id i78sm33801055wmc.13.2016.10.06.01.07.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 01:07:45 -0700 (PDT)
Date: Thu, 6 Oct 2016 11:07:44 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: fix do not add new typedefs warning
Message-ID: <20161006080744.GA26398@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning: "WARNING: do not add new
typedefs". Hiding a variables of type 'struct' is not always a good
idea,because when we passing them as parameters we tempt to forget that
in this proces we work with  stack memory and allocatting struct on
stack is something that we should manage carefuly.

It is also delete the '_t' from the name of the structs and treat a line
over 80 character issue in ddk750_mode.c, that appear after my modification.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c |  8 ++++----
 drivers/staging/sm750fb/ddk750_chip.h | 16 +++++++---------
 drivers/staging/sm750fb/ddk750_mode.c |  5 +++--
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 4 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3a0afe1..ac39f4e 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
  */
 static void setChipClock(unsigned int frequency)
 {
-	pll_value_t pll;
+	struct pll_value pll;
 	unsigned int ulActualMxClk;
 
 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
@@ -208,7 +208,7 @@ unsigned int ddk750_getVMSize(void)
 	return data;
 }
 
-int ddk750_initHw(initchip_param_t *pInitParam)
+int ddk750_initHw(struct initchip_param *pInitParam)
 {
 	unsigned int reg;
 
@@ -307,7 +307,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
  * M = {1,...,255}
  * N = {2,...,15}
  */
-unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
+unsigned int calcPllValue(unsigned int request_orig, struct pll_value *pll)
 {
 	/* as sm750 register definition,
 	 * N located in 2,15 and M located in 1,255
@@ -375,7 +375,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 	return ret;
 }
 
-unsigned int formatPllReg(pll_value_t *pPLL)
+unsigned int formatPllReg(struct pll_value *pPLL)
 {
 #ifndef VALIDATION_CHIP
 	unsigned int POD = pPLL->POD;
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index 14357fd..a4ee359 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -25,7 +25,7 @@ typedef enum _clock_type_t {
 }
 clock_type_t;
 
-typedef struct _pll_value_t {
+struct pll_value {
 	clock_type_t clockType;
 	unsigned long inputFreq; /* Input clock frequency to the PLL */
 
@@ -34,11 +34,10 @@ typedef struct _pll_value_t {
 	unsigned long N;
 	unsigned long OD;
 	unsigned long POD;
-}
-pll_value_t;
+};
 
 /* input struct to initChipParam() function */
-typedef struct _initchip_param_t {
+struct initchip_param {
 	unsigned short powerMode;    /* Use power mode 0 or 1 */
 	unsigned short chipClock;    /**
 				      * Speed of main chip clock in MHz unit
@@ -66,14 +65,13 @@ typedef struct _initchip_param_t {
 				      */
 
 	/* More initialization parameter can be added if needed */
-}
-initchip_param_t;
+};
 
 logical_chip_type_t sm750_get_chip_type(void);
-unsigned int calcPllValue(unsigned int request, pll_value_t *pll);
-unsigned int formatPllReg(pll_value_t *pPLL);
+unsigned int calcPllValue(unsigned int request, struct  pll_value *pll);
+unsigned int formatPllReg(struct pll_value *pPLL);
 void ddk750_set_mmio(void __iomem *, unsigned short, char);
 unsigned int ddk750_getVMSize(void);
-int ddk750_initHw(initchip_param_t *);
+int ddk750_initHw(struct initchip_param *);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index b767c7d..638d6cc 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -73,7 +73,8 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam, pll_value_t *pll)
+static int programModeRegisters(mode_parameter_t *pModeParam,
+						struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -202,7 +203,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, pll_value_t *pll)
 
 int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
 {
-	pll_value_t pll;
+	struct pll_value pll;
 	unsigned int uiActualPixelClk;
 
 	pll.inputFreq = DEFAULT_INPUT_CLOCK;
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 7dd208c..74a97b4 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -100,7 +100,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	if (parm->master_clk == 0)
 		parm->master_clk = parm->chip_clk / 3;
 
-	ddk750_initHw((initchip_param_t *)&sm750_dev->initParm);
+	ddk750_initHw((struct initchip_param *)&sm750_dev->initParm);
 	/* for sm718, open pci burst */
 	if (sm750_dev->devid == 0x718) {
 		POKE32(SYSTEM_CTRL,
-- 
2.7.4


