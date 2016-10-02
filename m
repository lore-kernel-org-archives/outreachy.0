X-GM-THRID: 6336810115106078720
X-Received: by 10.25.92.200 with SMTP id u69mr998548lfi.23.1475410995380;
        Sun, 02 Oct 2016 05:23:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.147 with SMTP id 141ls543171ljj.14.gmail; Sun, 02 Oct
 2016 05:23:14 -0700 (PDT)
X-Received: by 10.25.203.193 with SMTP id b184mr44817lfg.5.1475410994674;
        Sun, 02 Oct 2016 05:23:14 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id u64si373937wmf.0.2016.10.02.05.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 05:23:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id b184so10375608wma.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 05:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Txf1kpC5a9DFSDbD+oYV4KjLuMez62wN7b52pfl0luk=;
        b=uumN9/Wy16xH08SbHWLN+7p2qJYSE1jeQthGb4EXVNU7wch12zDHexbdro5/DP/vwa
         2Pwu2zXijoaXTZUhp/2cXCUyBs1XupnGdOsRY/Nhofnve6HH+UPR+scu7LgeXWTSMxNH
         ck7A4ZEoXmaJlAR6wWpZTfYTs/FfNctM6JtWe4TZucVQOXbl6X3UDLsdQexn31RmXjSm
         CubAPHFgEbHhq6VnTXxweB4V2z0ZB+ZPwZYp9drSht6jPOS/I9vKnJUvEjemJq/4Red2
         +Ou/TfY3lR3zzyYRlSWc5YOW4LIQoB2t04SeJXQTbbn2M+GKsjGahOfXd286NPNq3VGK
         9qfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Txf1kpC5a9DFSDbD+oYV4KjLuMez62wN7b52pfl0luk=;
        b=R/rPqFJDVC5op+VwbUwU+tuvSRDSZf0yqyOGafkwlQKECFmIAqM5MqYnpMLSOBMy+R
         9IFmROUw62b15q8ymq0KP57O35y/+pYhwan/yRjP76CAfg5xOD41UJ7zDgp1NUxJWN5D
         ZW8omq1dnKVernxLkZYnPeL6jQZbkwFN/Dw7XnBSWVNiBIgNMtG/vPKgNnGNsruFkZyO
         IIzyIZfds3KNrNCGt+4FMob4y16CtZEL0OZ9qRRrQ4uPmLVQ7xhhKlKV30i3lp914Zs+
         iLKQ5q3q8S5apr9vELj5hSI0X89O/mU4X7JD7WuVwa4ttTCmkjZ8H9wE2OcMREKIxH7F
         JRGQ==
X-Gm-Message-State: AA6/9RmraBpXyPx2o8oyqykXv0vuxI9YVUWt5EGE2RBio11t5NJ8x8NpgyVQCGIfjym/Mg==
X-Received: by 10.28.145.65 with SMTP id t62mr5133450wmd.49.1475410994209;
        Sun, 02 Oct 2016 05:23:14 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id iq2sm29240129wjb.19.2016.10.02.05.23.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 05:23:13 -0700 (PDT)
Date: Sun, 2 Oct 2016 15:23:12 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging : sm750fb : fix comment block coding style issue
 in ddk750_display.h
Message-ID: <20161002122312.GA13824@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the ddk750_display.h file that fixes up a comment
block warning, found by checkpatch.pl tool, by adding a * for each line
of the comment block.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- adding the signed-off line
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


