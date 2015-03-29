X-GM-THRID: 10259399704576
X-Received: by 10.182.65.37 with SMTP id u5mr33043980obs.27.1427616993923;
        Sun, 29 Mar 2015 01:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.209.97 with SMTP id ml1ls978961obc.5.gmail; Sun, 29 Mar
 2015 01:16:33 -0700 (PDT)
X-Received: by 10.182.22.68 with SMTP id b4mr32908845obf.31.1427616993601;
        Sun, 29 Mar 2015 01:16:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pc4si738005pac.0.2015.03.29.01.16.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 01:16:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id cy3so137433731pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 01:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4l9hhBp+TuwYf2+averx617qVoeOWEX5zwPhwSw2Xgg=;
        b=qFXC2DMkxQ5LjbJU2roObWcIHVh1SnKdZ3N80cUrCcz/U6lLfe+eSGj1aFKVUd3l5L
         o/808xkTwuIDRERNOtz/TEd8bhSZ58QAaLwm5od+Yvz/lRNxE3hRA6ZC2PqpUE35Z8rl
         mGKFd4WmmT/VYwC9K7led7ASbD28lgJ9aCrRWWeBpTuE1ZnB370tWzj5aTxchDbV0g0e
         aujl9J+UQ6+is3F9/7H3/4W/q2aOz/cCZW07luUjtcD4+vJQwPmsModCLc1EUsGYpMv7
         0bbR2uylZfsjgFQzRE30cisPWMdsEEpQZqhlzzQkVoIK9pXVbfJIo/FmTGii+UjdjwAV
         YWZA==
X-Received: by 10.66.216.67 with SMTP id oo3mr47809616pac.133.1427616993451;
        Sun, 29 Mar 2015 01:16:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.173.150])
        by mx.google.com with ESMTPSA id qj3sm6969803pac.31.2015.03.29.01.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 01:16:32 -0700 (PDT)
Date: Sun, 29 Mar 2015 13:46:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: sm750fb: Fix brace position
Message-ID: <20150329081628.GA18873@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Brace '{' position corrected. Problem found using checkpatch.pl
ERROR: that open brace { should be on the previous line

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 54 ++++++++++++-----------------------
 1 file changed, 18 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index ee4d668..b306d32 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -20,20 +20,17 @@ logical_chip_type_t getChipType(void)
 	physicalID = devId750; /* either 0x718 or 0x750 */
 	physicalRev = revId750;
 
-	if (physicalID == 0x718)
-	{
+	if (physicalID == 0x718) {
 		chip = SM718;
 	}
-	else if (physicalID == 0x750)
-	{
+	else if (physicalID == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (physicalRev == SM750LE_REVISION_ID){
 			chip = SM750LE;
 		}
 	}
-	else
-	{
+	else {
 		chip = SM_UNKNOWN;
 	}
 
@@ -63,8 +60,7 @@ unsigned int getPllValue(clock_type_t clockType, pll_value_t *pPLL)
 	pPLL->inputFreq = DEFAULT_INPUT_CLOCK;
 	pPLL->clockType = clockType;
 
-	switch (clockType)
-	{
+	switch (clockType) {
 	case MXCLK_PLL:
 		ulPllReg = PEEK32(MXCLK_PLL_CTRL);
 		break;
@@ -118,8 +114,7 @@ void setChipClock(unsigned int frequency)
 		return;
 #endif
 
-	if (frequency != 0)
-	{
+	if (frequency != 0) {
 		/*
 		* Set up PLL, a structure to hold the value to be set in clocks.
 		*/
@@ -148,8 +143,7 @@ void setMemoryClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0)
-	{
+	if (frequency != 0) {
 		/* Set the frequency to the maximum frequency that the DDR Memory can take
 		which is 336MHz. */
 		if (frequency > MHz(336))
@@ -160,8 +154,7 @@ void setMemoryClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor)
-		{
+		switch(divisor) {
 		default:
 		case 1:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
@@ -198,8 +191,7 @@ void setMasterClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0)
-	{
+	if (frequency != 0) {
 		/* Set the frequency to the maximum frequency that the SM750 engine can
 		run, which is about 190 MHz. */
 		if (frequency > MHz(190))
@@ -210,8 +202,7 @@ void setMasterClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor)
-		{
+		switch(divisor) {
 		default:
 		case 3:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
@@ -313,8 +304,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	   the system might hang when sw accesses the memory.
 	   The memory should be resetted after changing the MXCLK.
 	 */
-	if (pInitParam->resetMemory == 1)
-	{
+	if (pInitParam->resetMemory == 1) {
 		ulReg = PEEK32(MISC_CTRL);
 		ulReg = FIELD_SET(ulReg, MISC_CTRL, LOCALMEM_RESET, RESET);
 		POKE32(MISC_CTRL, ulReg);
@@ -323,8 +313,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 		POKE32(MISC_CTRL, ulReg);
 	}
 
-	if (pInitParam->setAllEngOff == 1)
-	{
+	if (pInitParam->setAllEngOff == 1) {
 		enable2DEngine(0);
 
 		/* Disable Overlay, if a former application left it on */
@@ -445,8 +434,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 	pllcalparam * xparm;
 
 #if 1
-	if (getChipType() == SM750LE)
-	{
+	if (getChipType() == SM750LE) {
 		/* SM750LE don't have prgrammable PLL and M/N values to work on.
 		Just return the requested clock. */
 		return request_orig;
@@ -483,13 +471,11 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
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
@@ -541,8 +527,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 	podPower = twoToPowerOfx(POD);
 
 	/* OD has only 2 bits [15:14] and its value must between 0 to 3 */
-	for (OD=0; OD<=3; OD++)
-	{
+	for (OD=0; OD<=3; OD++) {
 		/* Work out 2 to the power of OD */
 		odPower = twoToPowerOfx(OD);
 
@@ -555,8 +540,7 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
 
 		/* N has 4 bits [11:8] and its value must between 2 and 15.
 		The N == 1 will behave differently --> Result is not correct. */
-	for (N=2; N<=15; N++)
-	{
+	for (N=2; N<=15; N++) {
 		/* The formula for PLL is ulRequestClk = inputFreq * M / N / (2^OD)
 		In the following steps, we try to work out a best M value given the others are known.
 		To avoid decimal calculation, we use 1000 as multiplier for up to 3 decimal places of accuracy.
@@ -565,16 +549,14 @@ pll_value_t *pPLL           /* Structure to hold the value to be set in PLL */
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


