X-GM-THRID: 6336810115106078720
X-Received: by 10.28.209.12 with SMTP id i12mr53695wmg.14.1475403577086;
        Sun, 02 Oct 2016 03:19:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.66 with SMTP id 63ls10501ljf.25.gmail; Sun, 02 Oct 2016
 03:19:36 -0700 (PDT)
X-Received: by 10.25.15.152 with SMTP id 24mr27571lfp.10.1475403576194;
        Sun, 02 Oct 2016 03:19:36 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p199si924596wmd.1.2016.10.02.03.19.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 03:19:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id b201so4903145wmb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 03:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ukD5SMeCd1dmDdiAnjKqA6m4oR0maW+OPwdD7lYhz/c=;
        b=ad/fQiicNzLe6j7xgl2HoTflmJVAfgYFMVQvDmJfml+jEUhBvOVsWKl2ABq58C9X25
         QqDYnt37fDQi0OHIhh5M0FHTGtXPBmQGPNAh8SVZ+reBxTe2QPI/cPe4y9W82nXU6yME
         q6zMHYNd1eWrS8wb5I92Xtt7a6Efpba1hbveiyTFsa+Yrh59hj39pPybp/OEICy/obr7
         YjHhYHSpMiiBl8MNK6A/lC1Gm4Y2AJdyzq6tPzsE2KPDizpgI7YJvSV2/iDAjmk6MEZQ
         9FScJrUiGPTCePn2ZwkQxku81mfagzRrCaE+lhB5GWKJGSvuouWKHYscCtmNuQ88ycdC
         yBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ukD5SMeCd1dmDdiAnjKqA6m4oR0maW+OPwdD7lYhz/c=;
        b=XXfGYXltIXcc59FnOKdgaP0kHIrgTVHgDVzHYLkxHWklLyc8BP6aFOkQeRX+8KJ2Cu
         7dGqOYjGzuP6cBH/dghp/kbE/GuAMsl5wA6xvbRoLrmNB1TEsfH4XCZhOdZnMdveedMs
         J6TopE3bgtT9jVCVJN6CfBigz/IfYyG3RlXj5bw0bDtv96j78aVZZweNkkc1s3XKLL5L
         hKTLWYryitXMCqPSJOC/wrpgG4Xl18g3IEKWmM9SmhGT2PjOz/i7ezX0JUWUIcLh3XPu
         R9u2trCCuPgQuRjyE0X5EVgbv+IHVF4BGof9TqvyOVoZ9o3t11YMiwSt0EkHwCh8myIr
         Sx8w==
X-Gm-Message-State: AA6/9RlgX0owufNktCxp/15Obh3JdHi/+ImBlJg4nDQHrIUouFLAosTeX32yDOsFG7leUw==
X-Received: by 10.28.109.207 with SMTP id b76mr4867313wmi.66.1475403575761;
        Sun, 02 Oct 2016 03:19:35 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id pm1sm28794080wjb.40.2016.10.02.03.19.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 03:19:35 -0700 (PDT)
Date: Sun, 2 Oct 2016 13:19:34 +0300
From: Muraru MIhaela <mihaela.muraru21@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging : sm750fb : fix comment block coding style issue in
 ddk750_display.h
Message-ID: <20161002101934.GA6899@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the ddk750_display.h file that fixes up a comment
block warning, found by checkpatch.pl tool, by adding a * for each line
of the comment block.
---
 drivers/staging/sm750fb/ddk750_display.h | 73 +++++++++++++++++---------------
 1 file changed, 40 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 5fc9f6f..e998f21 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -1,10 +1,10 @@
 #ifndef DDK750_DISPLAY_H__
 #define DDK750_DISPLAY_H__
 
-/* panel path select
-	80000[29:28]
-*/
-
+/*
+ * panel path select
+ * 80000[29:28]
+ */
 #define PNL_2_OFFSET 0
 #define PNL_2_MASK (3 << PNL_2_OFFSET)
 #define PNL_2_USAGE	(PNL_2_MASK << 16)
@@ -12,10 +12,11 @@
 #define PNL_2_SEC	((2 << PNL_2_OFFSET) | PNL_2_USAGE)
 
 
-/* primary timing & plane enable bit
-	1: 80000[8] & 80000[2] on
-	0: both off
-*/
+/*
+ * primary timing & plane enable bit
+ * 1: 80000[8] & 80000[2] on
+ * 0: both off
+ */
 #define PRI_TP_OFFSET 4
 #define PRI_TP_MASK BIT(PRI_TP_OFFSET)
 #define PRI_TP_USAGE (PRI_TP_MASK << 16)
@@ -23,37 +24,41 @@
 #define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET) | PRI_TP_USAGE)
 
 
-/* panel sequency status
-	80000[27:24]
-*/
+/*
+ * panel sequency status
+ * 80000[27:24]
+ */
 #define PNL_SEQ_OFFSET 6
 #define PNL_SEQ_MASK BIT(PNL_SEQ_OFFSET)
 #define PNL_SEQ_USAGE (PNL_SEQ_MASK << 16)
 #define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
 #define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
 
-/* dual digital output
-	80000[19]
-*/
+/*
+ * dual digital output
+ * 80000[19]
+ */
 #define DUAL_TFT_OFFSET 8
 #define DUAL_TFT_MASK BIT(DUAL_TFT_OFFSET)
 #define DUAL_TFT_USAGE (DUAL_TFT_MASK << 16)
 #define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
 #define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
 
-/* secondary timing & plane enable bit
-	1:80200[8] & 80200[2] on
-	0: both off
-*/
+/*
+ * secondary timing & plane enable bit
+ * 1:80200[8] & 80200[2] on
+ * 0: both off
+ */
 #define SEC_TP_OFFSET 5
 #define SEC_TP_MASK BIT(SEC_TP_OFFSET)
 #define SEC_TP_USAGE (SEC_TP_MASK << 16)
 #define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET) | SEC_TP_USAGE)
 #define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET) | SEC_TP_USAGE)
 
-/* crt path select
-	80200[19:18]
-*/
+/*
+ * crt path select
+ * 80200[19:18]
+ */
 #define CRT_2_OFFSET 2
 #define CRT_2_MASK (3 << CRT_2_OFFSET)
 #define CRT_2_USAGE (CRT_2_MASK << 16)
@@ -61,18 +66,20 @@
 #define CRT_2_SEC ((0x2 << CRT_2_OFFSET) | CRT_2_USAGE)
 
 
-/* DAC affect both DVI and DSUB
-	4[20]
-*/
+/*
+ * DAC affect both DVI and DSUB
+ * 4[20]
+ */
 #define DAC_OFFSET 7
 #define DAC_MASK BIT(DAC_OFFSET)
 #define DAC_USAGE (DAC_MASK << 16)
 #define DAC_ON ((0x0 << DAC_OFFSET) | DAC_USAGE)
 #define DAC_OFF ((0x1 << DAC_OFFSET) | DAC_USAGE)
 
-/* DPMS only affect D-SUB head
-	0[31:30]
-*/
+/*
+ * DPMS only affect D-SUB head
+ * 0[31:30]
+ */
 #define DPMS_OFFSET 9
 #define DPMS_MASK (3 << DPMS_OFFSET)
 #define DPMS_USAGE (DPMS_MASK << 16)
@@ -82,18 +89,18 @@
 
 
 /*
-	LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
-	CRT means crt path DSUB
-*/
+ * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
+ * CRT means crt path DSUB
+ */
 typedef enum _disp_output_t {
 	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
 	do_LCD2_SEC = CRT_2_SEC | SEC_TP_ON | DUAL_TFT_ON,
 	/*
-	do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
-	do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
-	*/
+	 * do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
+	 * do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
+	 */
 	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
 	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
 }
-- 
2.7.4


