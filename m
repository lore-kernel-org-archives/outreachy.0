X-GM-THRID: 10002918014976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3882c5572bb5485a,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.104.69 with SMTP id dl5mr35238590icc.20.1427389788759;
        Thu, 26 Mar 2015 10:09:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.4.2 with SMTP id g2ls569872obg.44.gmail; Thu, 26 Mar 2015
 10:09:47 -0700 (PDT)
X-Received: by 10.182.65.37 with SMTP id u5mr17815645obs.27.1427389787394;
        Thu, 26 Mar 2015 10:09:47 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-yk0-x229.google.com (mail-yk0-x229.google.com. [2607:f8b0:4002:c07::229])
        by gmr-mx.google.com with ESMTPS id z1si761419qcn.2.2015.03.26.10.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:09:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) client-ip=2607:f8b0:4002:c07::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yk0-x229.google.com with SMTP id l17so202136yke.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=7mTfnORl0rnkwGDZP+ecXaaXRm9h+z0VURo2kPUJqa8=;
        b=jSzkDTm1dYmGXgtip5uN/C40MN+ajwqOBpYaqZiswiREH+Zp5JllrNGaA0KjIsj9ID
         +dryZtD8NPjlxIv6TdpYZIDNR6Wj9WiEMY3D47RTuEVDyIvFSspgNd+sI/ws3HnaqVC5
         7U64qnsfRnHoHyOzKU+b0dvKwM0MaPGBXNVxVIoiBlEKUEHb6xj+DqoUa1+Zewro/RAw
         gBRcctq+Ve3AcMmE20JCGp44ej+7KK6mfFOWP6wgttmFPMNs3F/2fhDjNX/OIIf/lZmH
         yE25xfge2J2HRMJWJoqopGde2Efxkiaot29xG9KUQWkIvQNFYktY7fVNIvyIbqXttgBr
         v1hA==
X-Received: by 10.55.53.85 with SMTP id c82mr31728111qka.45.1427389787285;
        Thu, 26 Mar 2015 10:09:47 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:46 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 4/8] staging: sm750fb: Add space before if statement
Date: Thu, 26 Mar 2015 14:09:16 -0300
Message-Id: <0dcbb19ccbcc7155decf8f606ab5efddc1b605c7.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fix the checkpatch.pl warning:

ERROR: space required before the open parenthesis '('

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3d228f4..49e26bd 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -87,7 +87,7 @@ unsigned int getChipClock(void)
 {
 	pll_value_t pll;
 #if 1
-	if(getChipType() == SM750LE)
+	if (getChipType() == SM750LE)
 		return MHz(130);
 #endif
 
@@ -225,7 +225,7 @@ unsigned int ddk750_getVMSize(void)
 	unsigned int data;
 
 	/* sm750le only use 64 mb memory*/
-	if(getChipType() == SM750LE)
+	if (getChipType() == SM750LE)
 		return MB(64);
 
 	/* for 750,always use power mode0*/
@@ -252,7 +252,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	unsigned int ulReg;
 #if 0
 	//move the code to map regiter function.
-	if(getChipType() == SM718) {
+	if (getChipType() == SM718) {
 		/* turn on big endian bit*/
 		ulReg = PEEK32(0x74);
 		/* now consider register definition in a big endian pattern*/
@@ -272,7 +272,7 @@ int ddk750_initHw(initchip_param_t * pInitParam)
 	ulReg = FIELD_SET(ulReg,CURRENT_GATE,LOCALMEM,ON);
 	setCurrentGate(ulReg);
 
-	if(getChipType() != SM750LE) {
+	if (getChipType() != SM750LE) {
 		/*	set panel pll and graphic mode via mmio_88 */
 		ulReg = PEEK32(VGA_CONFIGURATION);
 		ulReg = FIELD_SET(ulReg,VGA_CONFIGURATION,PLL,PANEL);
@@ -444,7 +444,7 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 
 	/* for MXCLK register , no POD provided, so need be treated differently	*/
 
-	if(pll->clockType != MXCLK_PLL) {
+	if (pll->clockType != MXCLK_PLL) {
 		xparm = &xparm_PIXEL[0];
 		xcnt = sizeof(xparm_PIXEL)/sizeof(xparm_PIXEL[0]);
 	} else {
@@ -466,11 +466,11 @@ unsigned int calcPllValue(unsigned int request_orig,pll_value_t *pll)
 			M += fl_quo * X / 10000;
 			/* round step */
 			M += (fl_quo*X % 10000)>5000?1:0;
-			if(M < 256 && M > 0) {
+			if (M < 256 && M > 0) {
 				unsigned int diff;
 				tmpClock = pll->inputFreq *M / N / X;
 				diff = absDiff(tmpClock,request_orig);
-				if(diff < miniDiff) {
+				if (diff < miniDiff) {
 					pll->M = M;
 					pll->N = N;
 					pll->OD = xparm[d].od;
-- 
1.9.1


