X-GM-THRID: 6337746861682589696
X-Received: by 10.46.9.202 with SMTP id 193mr414913ljj.30.1475621681492;
        Tue, 04 Oct 2016 15:54:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.66 with SMTP id 63ls454289ljf.25.gmail; Tue, 04 Oct 2016
 15:54:40 -0700 (PDT)
X-Received: by 10.46.32.230 with SMTP id g99mr429522lji.9.1475621680870;
        Tue, 04 Oct 2016 15:54:40 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p199si2247325wmd.1.2016.10.04.15.54.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 15:54:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id f193so17223778wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 15:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LyqabyDcPT5KADwL7gl1G7XQEdE508bbQjYeSkLcOt8=;
        b=05QV2oWIei/MI3RTkcNlLdAkEnDN1omMcr5qNmlNawDTXLo1sZg6TilMP72511jRHx
         7wCqFTNG3Hn9WMDWoeF0bzkHj/qT8LL8dF+lQtwdgvHbiJs1Bdb2xLdUj4pG8TnwPvbf
         o3aOklgxczKUyKIjwLbJThpYrzt7nRpysGoZHCDUZl2eBIiV0eNU/oM/2luMy6ohm3+/
         GKGrq1KUsURd/deaf0mf/Mcr4D7dJGWgzmSQSUngJl+QGeQGTUsCDlpExjiuwyayOAOj
         XOurOnB1aACz84hhJ5cOfdKrd8ze+PEb4CKC317UMgaVccJefaLn1kfv7PiwuU6p9nHr
         WWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LyqabyDcPT5KADwL7gl1G7XQEdE508bbQjYeSkLcOt8=;
        b=Ogo7QBltfM2wGjKAOvcwV7Gc6Vf4gcuclyiQnH1pi8CrWj4ccdK8P9XIEndLpp5Uc9
         08DWpYSs6WkLIbJ3OE7/pFd40rtP4fHXevDE+7aBdjzlJn8iZUepMnzKCvsk6zTSmCPi
         8IlSEu79yv5VQV41xDCooFczHMlVPORfXSOfQv1ohXCaoJd2SK7r7s+wBoGNXZ7iey6N
         QmxcXG73MRB/bkMnbpMqQtXd+POdRvXfeJUPL/Z9x2NN5hD9NIufrOHQaoePI1hslMVQ
         hr5zpnZ+venoDAjqI0pSvyGXl4DlsgJY4fgJ0jic4pnIhSF1fxPpjNz3Ki7Yg0yq31uy
         Bifg==
X-Gm-Message-State: AA6/9RmFwLBA/+OAkSQtyWlnAV7TUZ5C9s3Om+D1gHhwSHo2jThitRCKqgCjmWc/J+g/qA==
X-Received: by 10.194.250.106 with SMTP id zb10mr4670728wjc.99.1475621680625;
        Tue, 04 Oct 2016 15:54:40 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id l3sm5712627wjp.17.2016.10.04.15.54.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 15:54:40 -0700 (PDT)
Date: Wed, 5 Oct 2016 01:54:39 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: remove typedefs in ddk750_chip.h
Message-ID: <20161004225439.GA10563@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning: "WARNING: do not add new
typedefs" by removing the typedefs and changing the files where it was
used.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c |  8 ++++----
 drivers/staging/sm750fb/ddk750_chip.h | 16 +++++++---------
 drivers/staging/sm750fb/ddk750_mode.c |  4 ++--
 drivers/staging/sm750fb/sm750_hw.c    |  2 +-
 4 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3a0afe1..bfe2f1a 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
  */
 static void setChipClock(unsigned int frequency)
 {
-	pll_value_t pll;
+	struct pll_value_t pll;
 	unsigned int ulActualMxClk;
 
 	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
@@ -208,7 +208,7 @@ unsigned int ddk750_getVMSize(void)
 	return data;
 }
 
-int ddk750_initHw(initchip_param_t *pInitParam)
+int ddk750_initHw(struct initchip_param_t *pInitParam)
 {
 	unsigned int reg;
 
@@ -307,7 +307,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
  * M = {1,...,255}
  * N = {2,...,15}
  */
-unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
+unsigned int calcPllValue(unsigned int request_orig, struct pll_value_t *pll)
 {
 	/* as sm750 register definition,
 	 * N located in 2,15 and M located in 1,255
@@ -375,7 +375,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 	return ret;
 }
 
-unsigned int formatPllReg(pll_value_t *pPLL)
+unsigned int formatPllReg(struct pll_value_t *pPLL)
 {
 #ifndef VALIDATION_CHIP
 	unsigned int POD = pPLL->POD;
diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
index 14357fd..be4ba11 100644
--- a/drivers/staging/sm750fb/ddk750_chip.h
+++ b/drivers/staging/sm750fb/ddk750_chip.h
@@ -25,7 +25,7 @@ typedef enum _clock_type_t {
 }
 clock_type_t;
 
-typedef struct _pll_value_t {
+struct pll_value_t {
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
+struct initchip_param_t {
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
+unsigned int calcPllValue(unsigned int request, struct pll_value_t *pll);
+unsigned int formatPllReg(struct pll_value_t *pPLL);
 void ddk750_set_mmio(void __iomem *, unsigned short, char);
 unsigned int ddk750_getVMSize(void);
-int ddk750_initHw(initchip_param_t *);
+int ddk750_initHw(struct initchip_param_t *);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index b767c7d..f28eb07 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -73,7 +73,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
 
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(mode_parameter_t *pModeParam, pll_value_t *pll)
+static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value_t *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -202,7 +202,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, pll_value_t *pll)
 
 int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
 {
-	pll_value_t pll;
+	struct pll_value_t pll;
 	unsigned int uiActualPixelClk;
 
 	pll.inputFreq = DEFAULT_INPUT_CLOCK;
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 7dd208c..b253ba0 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -100,7 +100,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	if (parm->master_clk == 0)
 		parm->master_clk = parm->chip_clk / 3;
 
-	ddk750_initHw((initchip_param_t *)&sm750_dev->initParm);
+	ddk750_initHw((struct initchip_param_t *)&sm750_dev->initParm);
 	/* for sm718, open pci burst */
 	if (sm750_dev->devid == 0x718) {
 		POKE32(SYSTEM_CTRL,
-- 
2.7.4


