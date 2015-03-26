X-GM-THRID: 10002918014976
X-Received: by 10.66.155.9 with SMTP id vs9mr17459359pab.20.1427389814211;
        Thu, 26 Mar 2015 10:10:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.199 with SMTP id ik7ls509396obb.88.gmail; Thu, 26 Mar
 2015 10:10:13 -0700 (PDT)
X-Received: by 10.182.236.67 with SMTP id us3mr18299909obc.47.1427389813908;
        Thu, 26 Mar 2015 10:10:13 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id z1si761648qcn.2.2015.03.26.10.10.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id 3so92218817qgh.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=TsJ2G0OZpHnxqbqdzWTmrDhRdwhNGpQuY+cnuOpnRuw=;
        b=v27IUbXPdk5sW6G9ECacKVz0KQjfYXuJN0uMqxFZuomERTdtYGb8Acuk6bLxnmx2Ja
         WtAe97HMtcNllGoJIYw21zAaPJELbxnMZwm+AwzmswMGm1sqObV/hoP2ST6iPeOUmlay
         CcD2zKMF/N4Ar7m5oKqYi07L/m+lv/s/lnpPxnevhoTD86LCyfWd7Yw+wEMWoYUNTSHt
         mQ+Ht7JxFYyLkpKbPQWMP8ZWSfZxAyQPBdckKmDXjPxQ7OkP+6d5QO4cVxKXgQvTTYBy
         /67RoYF0Pv6x34vI85NrfEZjO9Zk6qa2S61YmmazNeBwqnxzS7/E/0n5w7Ur30Xi5flB
         WbnA==
X-Received: by 10.140.104.48 with SMTP id z45mr18537903qge.76.1427389783899;
        Thu, 26 Mar 2015 10:09:43 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:43 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 2/8] staging: sm750fb: Fix if/else/for/switch braces style
Date: Thu, 26 Mar 2015 14:09:14 -0300
Message-Id: <10df025ab0f6b4e5c6ca3a5432cb0c54335b365e.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes the checkpatch.pl errors:

ERROR: that open brace { should be on the previous line
ERROR: else should follow close brace '}'
WARNING: braces {} are not necessary for single statement blocks
ERROR: space required before the open brace '{'

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 75 ++++++++++++-----------------------
 1 file changed, 26 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index c931e83..de7fa4a 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -21,21 +21,14 @@ logical_chip_type_t getChipType(void)
 	physicalRev = revId750;
 
 	if (physicalID == 0x718)
-	{
 		chip = SM718;
-	}
-	else if (physicalID == 0x750)
-	{
+	else if (physicalID == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (physicalRev == SM750LE_REVISION_ID){
+		if (physicalRev == SM750LE_REVISION_ID)
 			chip = SM750LE;
-		}
-	}
-	else
-	{
+	} else
 		chip = SM_UNKNOWN;
-	}
 
 	return chip;
 }
@@ -63,8 +56,7 @@ unsigned int getPllValue(clock_type_t clockType, pll_value_t *pPLL)
 	pPLL->inputFreq = DEFAULT_INPUT_CLOCK;
 	pPLL->clockType = clockType;
 
-	switch (clockType)
-	{
+	switch (clockType) {
 	case MXCLK_PLL:
 		ulPllReg = PEEK32(MXCLK_PLL_CTRL);
 		break;
@@ -118,8 +110,7 @@ void setChipClock(unsigned int frequency)
 		return;
 #endif
 
-	if (frequency != 0)
-	{
+	if (frequency != 0) {
 		/*
 		* Set up PLL, a structure to hold the value to be set in clocks.
 		*/
@@ -148,8 +139,7 @@ void setMemoryClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0)
-	{
+	if (frequency != 0) {
 		/* Set the frequency to the maximum frequency that the DDR Memory can take
 		which is 336MHz. */
 		if (frequency > MHz(336))
@@ -160,8 +150,7 @@ void setMemoryClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor)
-		{
+		switch(divisor) {
 		default:
 		case 1:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
@@ -198,8 +187,7 @@ void setMasterClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0)
-	{
+	if (frequency != 0) {
 		/* Set the frequency to the maximum frequency that the SM750 engine can
 		run, which is about 190 MHz. */
 		if (frequency > MHz(190))
@@ -210,8 +198,7 @@ void setMasterClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor)
-		{
+		switch(divisor) {
 		default:
 		case 3:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
@@ -248,7 +235,7 @@ unsigned int ddk750_getVMSize(void)
 
 	/* get frame buffer size from GPIO */
 	reg = FIELD_GET(PEEK32(MISC_CTRL),MISC_CTRL,LOCALMEM_SIZE);
-	switch(reg){
+	switch(reg) {
 	case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
 	case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
 	case MISC_CTRL_LOCALMEM_SIZE_32M: data = MB(32); break; /* 32 Mega byte */
@@ -265,7 +252,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	unsigned int ulReg;
 #if 0
 	//move the code to map regiter function.
-	if(getChipType() == SM718){
+	if(getChipType() == SM718) {
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
 		/* now consider register definition in a big endian pattern*/
@@ -285,13 +272,13 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	ulReg = FIELD_SET(ulReg,CURRENT_GATE,LOCALMEM,ON);
 	setCurrentGate(ulReg);
 
-	if(getChipType() != SM750LE){
+	if(getChipType() != SM750LE) {
 		/*	set panel pll and graphic mode via mmio_88 */
 		ulReg = PEEK32(VGA_CONFIGURATION);
 		ulReg = FIELD_SET(ulReg,VGA_CONFIGURATION,PLL,PANEL);
 		ulReg = FIELD_SET(ulReg,VGA_CONFIGURATION,MODE,GRAPHIC);
 		POKE32(VGA_CONFIGURATION,ulReg);
-	}else{
+	} else {
 #if defined(__i386__) || defined( __x86_64__)
 		/* set graphic mode via IO method */
 		outb_p(0x88,0x3d4);
@@ -313,8 +300,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	   the system might hang when sw accesses the memory.
 	   The memory should be resetted after changing the MXCLK.
 	 */
-	if (pInitParam->resetMemory == 1)
-	{
+	if (pInitParam->resetMemory == 1) {
 		ulReg = PEEK32(MISC_CTRL);
 		ulReg = FIELD_SET(ulReg, MISC_CTRL, LOCALMEM_RESET, RESET);
 		POKE32(MISC_CTRL, ulReg);
@@ -323,8 +309,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 		POKE32(MISC_CTRL, ulReg);
 	}
 
-	if (pInitParam->setAllEngOff == 1)
-	{
+	if (pInitParam->setAllEngOff == 1) {
 		enable2DEngine(0);
 
 		/* Disable Overlay, if a former application left it on */
@@ -445,8 +430,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 	pllcalparam * xparm;
 
 #if 1
-	if (getChipType() == SM750LE)
-	{
+	if (getChipType() == SM750LE) {
 		/* SM750LE don't have prgrammable PLL and M/N values to work on.
 		Just return the requested clock. */
 		return request_orig;
@@ -460,36 +444,33 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 
 	/* for MXCLK register , no POD provided, so need be treated differently	*/
 
-	if(pll->clockType != MXCLK_PLL){
+	if(pll->clockType != MXCLK_PLL) {
 		xparm = &xparm_PIXEL[0];
 		xcnt = sizeof(xparm_PIXEL)/sizeof(xparm_PIXEL[0]);
-	}else{
+	} else {
 		xparm = &xparm_MXCLK[0];
 		xcnt = sizeof(xparm_MXCLK)/sizeof(xparm_MXCLK[0]);
 	}
 
 
-	for(N = 15;N>1;N--)
-	{
+	for(N = 15;N>1;N--) {
 		/* RN will not exceed maximum long if @request <= 285 MHZ (for 32bit cpu) */
 		RN = N * request;
 		quo = RN / input;
 		rem = RN % input;/* rem always small than 14318181 */
 		fl_quo = (rem * 10000 /input);
 
-		for(d = xcnt - 1;d >= 0;d--){
+		for(d = xcnt - 1;d >= 0;d--) {
 			X = xparm[d].value;
 			M = quo*X;
 			M += fl_quo * X / 10000;
 			/* round step */
 			M += (fl_quo*X % 10000)>5000?1:0;
-			if(M < 256 && M > 0)
-			{
+			if(M < 256 && M > 0) {
 				unsigned int diff;
 				tmpClock = pll->inputFreq *M / N / X;
 				diff = absDiff(tmpClock,request_orig);
-				if(diff < miniDiff)
-				{
+				if(diff < miniDiff) {
 					pll->M = M;
 					pll->N = N;
 					pll->OD = xparm[d].od;
@@ -541,8 +522,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	podPower = twoToPowerOfx(POD);
 
 	/* OD has only 2 bits [15:14] and its value must between 0 to 3 */
-	for (OD=0; OD<=3; OD++)
-	{
+	for (OD=0; OD<=3; OD++) {
 		/* Work out 2 to the power of OD */
 		odPower = twoToPowerOfx(OD);
 
@@ -555,8 +535,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 		/* N has 4 bits [11:8] and its value must between 2 and 15.
 		The N == 1 will behave differently --> Result is not correct. */
-	for (N=2; N<=15; N++)
-	{
+	for (N=2; N<=15; N++) {
 		/* The formula for PLL is ulRequestClk = inputFreq * M / N / (2^OD)
 		In the following steps, we try to work out a best M value given the others are known.
 		To avoid decimal calculation, we use 1000 as multiplier for up to 3 decimal places of accuracy.
@@ -565,16 +544,14 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 		M = roundedDiv(M, 1000);
 
 		/* M field has only 8 bits, reject value bigger than 8 bits */
-		if (M < 256)
-		{
+		if (M < 256) {
 			/* Calculate the actual clock for a given M & N */
 			pllClk = pPLL->inputFreq * M / N / odPower / podPower;
 
 			/* How much are we different from the requirement */
 			diff = absDiff(pllClk, ulRequestClk);
 
-			if (diff < bestDiff)
-			{
+			if (diff < bestDiff) {
 				bestDiff = diff;
 
 				/* Store M and N values */
-- 
1.9.1


