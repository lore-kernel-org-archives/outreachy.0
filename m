X-GM-THRID: 10002918014976
X-Received: by 10.182.129.166 with SMTP id nx6mr15911383obb.35.1427389820279;
        Thu, 26 Mar 2015 10:10:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.47.120 with SMTP id l111ls801544qga.8.gmail; Thu, 26 Mar
 2015 10:10:20 -0700 (PDT)
X-Received: by 10.236.4.100 with SMTP id 64mr17413573yhi.43.1427389819804;
        Thu, 26 Mar 2015 10:10:19 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id e5si762703qcg.1.2015.03.26.10.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id 60so89872352qgf.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=P/ImBt+Nr/HFBXelW52PGzHkGsw9n8NFfL81yijE1RY=;
        b=eFTs0sbGjRsz093VgBmIY3BL8Y1ZJxT3SYPh01jfuiEZHFOlKmDj2Apqqc5wUFAdmE
         csBKtxFC7K2ReOdxgWZRYkcxvD2Cy2cPq4A+t5HmwwCvIF91OrJRpfgV/a/RPvQsBQs4
         unGaNbS58lagbKKsj2OmZDF5o69vlvBNyWBzU0Yt+HSBcu3MftjkfZV5XJNnRBsXy3GU
         3O2yTaoop7aNfrbsFj/GMBbkPJey8PqIgYtfok7tTD8uleKy+7ZupQm0wgegVoiKmzBj
         ByCrmsRE3R68FD3fDic6LNNgPd1MXu7F7gQF4XO+dRaPkc/uX8A+8Xn/NepyX1NaVMZN
         pnsg==
X-Received: by 10.140.238.79 with SMTP id j76mr19855080qhc.83.1427389790799;
        Thu, 26 Mar 2015 10:09:50 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:50 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 6/8] staging: sm750fb: Add spaces after ','
Date: Thu, 26 Mar 2015 14:09:18 -0300
Message-Id: <9707407dcfa532d36bf9d6321717b7e0103266bf.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes the checkpatch.pl error:

ERROR: space required after that ',' (ctx:VxV)

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 54 +++++++++++++++++------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3913aa4..4f2e0db 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -230,11 +230,11 @@ unsigned int ddk750_getVMSize(void)
 
 	/* for 750,always use power mode0*/
 	reg = PEEK32(MODE0_GATE);
-	reg = FIELD_SET(reg,MODE0_GATE,GPIO,ON);
-	POKE32(MODE0_GATE,reg);
+	reg = FIELD_SET(reg, MODE0_GATE, GPIO, ON);
+	POKE32(MODE0_GATE, reg);
 
 	/* get frame buffer size from GPIO */
-	reg = FIELD_GET(PEEK32(MISC_CTRL),MISC_CTRL,LOCALMEM_SIZE);
+	reg = FIELD_GET(PEEK32(MISC_CTRL), MISC_CTRL, LOCALMEM_SIZE);
 	switch (reg) {
 	case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
 	case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
@@ -256,7 +256,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
 		/* now consider register definition in a big endian pattern*/
-		POKE32(0x74,ulReg|0x80000000);
+		POKE32(0x74, ulReg|0x80000000);
 	}
 
 #endif
@@ -269,20 +269,20 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	/* Enable display power gate & LOCALMEM power gate*/
 	ulReg = PEEK32(CURRENT_GATE);
 	ulReg = FIELD_SET(ulReg, CURRENT_GATE, DISPLAY, ON);
-	ulReg = FIELD_SET(ulReg,CURRENT_GATE,LOCALMEM,ON);
+	ulReg = FIELD_SET(ulReg, CURRENT_GATE, LOCALMEM, ON);
 	setCurrentGate(ulReg);
 
 	if (getChipType() != SM750LE) {
 		/*	set panel pll and graphic mode via mmio_88 */
 		ulReg = PEEK32(VGA_CONFIGURATION);
-		ulReg = FIELD_SET(ulReg,VGA_CONFIGURATION,PLL,PANEL);
-		ulReg = FIELD_SET(ulReg,VGA_CONFIGURATION,MODE,GRAPHIC);
-		POKE32(VGA_CONFIGURATION,ulReg);
+		ulReg = FIELD_SET(ulReg, VGA_CONFIGURATION, PLL, PANEL);
+		ulReg = FIELD_SET(ulReg, VGA_CONFIGURATION, MODE, GRAPHIC);
+		POKE32(VGA_CONFIGURATION, ulReg);
 	} else {
 #if defined(__i386__) || defined( __x86_64__)
 		/* set graphic mode via IO method */
-		outb_p(0x88,0x3d4);
-		outb_p(0x06,0x3d5);
+		outb_p(0x88, 0x3d4);
+		outb_p(0x06, 0x3d5);
 #endif
 	}
 
@@ -399,34 +399,34 @@ unsigned int absDiff(unsigned int a, unsigned int b)
 	M = {1,...,255}
 	N = {2,...,15}
 */
-unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
+unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 {
 	/* used for primary and secondary channel pixel clock pll */
 	static pllcalparam xparm_PIXEL[] = {
-		/* 2^0 = 1*/			{0,0,0,1},
-		/* 2^ 1 =2*/			{1,0,1,2},
-		/* 2^ 2  = 4*/		{2,0,2,4},
-							{3,0,3,8},
-							{4,1,3,16},
-							{5,2,3,32},
-		/* 2^6 = 64  */		{6,3,3,64},
+		/* 2^0 = 1*/			{0, 0, 0, 1},
+		/* 2^ 1 =2*/			{1, 0, 1, 2},
+		/* 2^ 2  = 4*/		{2, 0, 2, 4},
+							{3, 0, 3, 8},
+							{4, 1, 3, 16},
+							{5, 2, 3, 32},
+		/* 2^6 = 64  */		{6, 3, 3, 64},
 							};
 
 	/* used for MXCLK (chip clock) */
 	static pllcalparam xparm_MXCLK[] = {
-		/* 2^0 = 1*/			{0,0,0,1},
-		/* 2^ 1 =2*/			{1,0,1,2},
-		/* 2^ 2  = 4*/		{2,0,2,4},
-							{3,0,3,8},
+		/* 2^0 = 1*/			{0, 0, 0, 1},
+		/* 2^ 1 =2*/			{1, 0, 1, 2},
+		/* 2^ 2  = 4*/		{2, 0, 2, 4},
+							{3, 0, 3, 8},
 							};
 
 	/* as sm750 register definition, N located in 2,15 and M located in 1,255	*/
-	int N,M,X,d;
+	int N, M, X, d;
 	int xcnt;
 	int miniDiff;
-	unsigned int RN,quo,rem,fl_quo;
-	unsigned int input,request;
-	unsigned int tmpClock,ret;
+	unsigned int RN, quo, rem, fl_quo;
+	unsigned int input, request;
+	unsigned int tmpClock, ret;
 	pllcalparam * xparm;
 
 #if 1
@@ -469,7 +469,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 			if (M < 256 && M > 0) {
 				unsigned int diff;
 				tmpClock = pll->inputFreq *M / N / X;
-				diff = absDiff(tmpClock,request_orig);
+				diff = absDiff(tmpClock, request_orig);
 				if (diff < miniDiff) {
 					pll->M = M;
 					pll->N = N;
-- 
1.9.1


