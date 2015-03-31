X-GM-THRID: 10511326380032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3582365e1fd9ea1d,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.134.66 with SMTP id pi2mr43639684pbb.9.1427811984803;
        Tue, 31 Mar 2015 07:26:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.213 with SMTP id d204ls2012847iod.53.gmail; Tue, 31 Mar
 2015 07:26:24 -0700 (PDT)
X-Received: by 10.66.218.163 with SMTP id ph3mr41130279pac.46.1427811984530;
        Tue, 31 Mar 2015 07:26:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id oc12si1523854pdb.1.2015.03.31.07.26.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 07:26:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id h5so10026859pdm.3
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 07:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=U2rKGZrmSRO0piHz0KHbT0mxHcKEzr1AHgLPmSlwXUM=;
        b=t8iGa9ASMO6FnHiuLpUmK8Y9QLpr3NP1Ovd0CSdyYLOw3zShc/rvtHMhV1QIdgTA8Y
         Q0XqxkacVIHVgn524sn/IcF6ZdLCamr7L1/s3+CL9MtLKlHPV+1ymS/5/ZpUxdlKRes/
         KgdjmBWpRQSwFMvIOxdITf34CDsv4x8YE0JypM0n9Fn4FcF7goPl7q8cc0evXvxT7+4s
         C56k4z1tVXV2yzfsqxSRh2rf8NmKeFRyBmhMLO1copJ/N3x+rksaWynFTlJmVBCHshmQ
         Dwo+rlcm1HrIKyC1Lrp9o9FGiZvzfsyAwBv1KgHFbTaT2Ac1/ZujVdEo/5gtuZVeutv9
         05VA==
X-Received: by 10.68.238.200 with SMTP id vm8mr36513040pbc.15.1427811984402;
        Tue, 31 Mar 2015 07:26:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.95.190])
        by mx.google.com with ESMTPSA id fd5sm14142245pdb.67.2015.03.31.07.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 07:26:23 -0700 (PDT)
Date: Tue, 31 Mar 2015 19:56:19 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Insert space before parenthesis
Message-ID: <20150331142619.GA3793@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Inserted space before parenthesis '('. Problem found using
checkpatch.pl
ERROR: space required before the open parenthesis '('

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 93517d9..c506b5c 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -88,7 +88,7 @@ unsigned int getChipClock(void)
 {
 	pll_value_t pll;
 #if 1
-	if(getChipType() == SM750LE)
+	if (getChipType() == SM750LE)
 		return MHz(130);
 #endif
 
@@ -151,7 +151,7 @@ void setMemoryClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor) {
+		switch (divisor) {
 		default:
 		case 1:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
@@ -199,7 +199,7 @@ void setMasterClock(unsigned int frequency)
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-		switch(divisor) {
+		switch (divisor) {
 		default:
 		case 3:
 			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
@@ -226,7 +226,7 @@ unsigned int ddk750_getVMSize(void)
 	unsigned int data;
 
 	/* sm750le only use 64 mb memory*/
-	if(getChipType() == SM750LE)
+	if (getChipType() == SM750LE)
 		return MB(64);
 
 	/* for 750,always use power mode0*/
@@ -253,7 +253,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	unsigned int ulReg;
 #if 0
 	/* move the code to map regiter function. */
-	if(getChipType() == SM718){
+	if (getChipType() == SM718) {
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
 		/* now consider register definition in a big endian pattern*/
@@ -273,7 +273,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	ulReg = FIELD_SET(ulReg,CURRENT_GATE,LOCALMEM,ON);
 	setCurrentGate(ulReg);
 
-	if(getChipType() != SM750LE){
+	if (getChipType() != SM750LE) {
 		/*	set panel pll and graphic mode via mmio_88 */
 		ulReg = PEEK32(VGA_CONFIGURATION);
 		ulReg = FIELD_SET(ulReg,VGA_CONFIGURATION,PLL,PANEL);
@@ -445,7 +445,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 
 	/* for MXCLK register , no POD provided, so need be treated differently	*/
 
-	if(pll->clockType != MXCLK_PLL){
+	if (pll->clockType != MXCLK_PLL) {
 		xparm = &xparm_PIXEL[0];
 		xcnt = sizeof(xparm_PIXEL)/sizeof(xparm_PIXEL[0]);
 	}else{
@@ -468,11 +468,11 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 			M += fl_quo * X / 10000;
 			/* round step */
 			M += (fl_quo*X % 10000)>5000?1:0;
-			if(M < 256 && M > 0) {
+			if (M < 256 && M > 0) {
 				unsigned int diff;
 				tmpClock = pll->inputFreq *M / N / X;
 				diff = absDiff(tmpClock,request_orig);
-				if(diff < miniDiff)
+				if (diff < miniDiff)
 				{
 					pll->M = M;
 					pll->N = N;
-- 
1.9.1


