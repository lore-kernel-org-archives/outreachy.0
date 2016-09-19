X-GM-THRID: 6330674938515554304
X-Received: by 10.157.37.234 with SMTP id q97mr14004915ota.1.1474293405225;
        Mon, 19 Sep 2016 06:56:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.91 with SMTP id w88ls1319161ioi.20.gmail; Mon, 19 Sep
 2016 06:56:42 -0700 (PDT)
X-Received: by 10.36.204.197 with SMTP id x188mr3426056itf.11.1474293402258;
        Mon, 19 Sep 2016 06:56:42 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si5393625pab.1.2016.09.19.06.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 06:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so7054927pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 06:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qtU8Vl1R3dwCVO0TZMq8Yh7JA7nqsmMA3I0BENQi33g=;
        b=PVVy0yWacWyyjLIlqpNMmuLydMqLsueG3hXUkU1q5kbvH5Q996NOVMahrfyaXeMZUv
         bMsbCZL0Z2xmQRLyWqWG4aWiFyb6ZySafm7AUGoiXtB9+1a4/Ax7ROIwdZLLLKHsn2Nk
         9ZYP5nSlt9fKptVd23JK+6g/xNFiBu3Ckx9nSFdUziOu33hLo7mlCClQrVSUOvm2wK8M
         RUR+BnCTac0rskv2nari6lWZ1zLWBKoYbnIZA9+5Qs+eCmbFw2WGrBZgbrmijLTJ1eF6
         MqvXeONWwk9vVLNnHrhd+1e59Z+Y6ws+Og5A38CxI+JeZF0Np/RjjhQ6Bp59HdrFSpsu
         k3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qtU8Vl1R3dwCVO0TZMq8Yh7JA7nqsmMA3I0BENQi33g=;
        b=YxxYa2D++YHpmZjnG9f0yqUmKMoOKSjLq6H0tkjPhxlpQ8A5/80unCwsqQ2QqOhK0O
         T/Ckawqr8FkgMBpC9QFZ1UABobsA8mBLOk75/RdPu/2J+0UyKkxeKeocWD2cqrr3HIdG
         58e5y1rdDRaAJHYQlN/9Rl/1F2S5V/jKn95c4dJacwEDeuuZ+GJg1yHhP7YzeSSQhWPG
         qi3n0Y5VsOHcuaumCTsf8ZhYES15rloUfS489yg8UPbycZqlBRiKKBukjVlZywslemD7
         VAjV20C2ogwWu1+Sl6l16kTcEBpNMPbaR0u5olFhmiT3Kc2FvpPit5kCOrWKBn5XNNsK
         xwSA==
X-Gm-Message-State: AE9vXwNTFMkvG36Uicek8yIe2eH/4z/jHyyjMigzQSIzXstrHoNrmpgLCE2uGqk4U66E5A==
X-Received: by 10.66.82.42 with SMTP id f10mr47147306pay.17.1474293401842;
        Mon, 19 Sep 2016 06:56:41 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e71sm46208174pfc.75.2016.09.19.06.56.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 06:56:41 -0700 (PDT)
Date: Mon, 19 Sep 2016 19:26:32 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4] staging: sm750fb: Add spaces around '|'
Message-ID: <20160919135632.GA16051@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds spaces on either side of a '|'. Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Refresh commit against the latest tree.

Change in v3:
Correct spelling 'dound' to 'found'.

Change in v4:
Rebase commit against latest tree, as previous rebase was unsuccessful.

 drivers/staging/sm750fb/ddk750_display.h | 44 ++++++++++++++++----------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index ca35aa1..5fc9f6f 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -8,8 +8,8 @@
 #define PNL_2_OFFSET 0
 #define PNL_2_MASK (3 << PNL_2_OFFSET)
 #define PNL_2_USAGE	(PNL_2_MASK << 16)
-#define PNL_2_PRI	((0 << PNL_2_OFFSET)|PNL_2_USAGE)
-#define PNL_2_SEC	((2 << PNL_2_OFFSET)|PNL_2_USAGE)
+#define PNL_2_PRI	((0 << PNL_2_OFFSET) | PNL_2_USAGE)
+#define PNL_2_SEC	((2 << PNL_2_OFFSET) | PNL_2_USAGE)
 
 
 /* primary timing & plane enable bit
@@ -19,8 +19,8 @@
 #define PRI_TP_OFFSET 4
 #define PRI_TP_MASK BIT(PRI_TP_OFFSET)
 #define PRI_TP_USAGE (PRI_TP_MASK << 16)
-#define PRI_TP_ON ((0x1 << PRI_TP_OFFSET)|PRI_TP_USAGE)
-#define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET)|PRI_TP_USAGE)
+#define PRI_TP_ON ((0x1 << PRI_TP_OFFSET) | PRI_TP_USAGE)
+#define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET) | PRI_TP_USAGE)
 
 
 /* panel sequency status
@@ -29,8 +29,8 @@
 #define PNL_SEQ_OFFSET 6
 #define PNL_SEQ_MASK BIT(PNL_SEQ_OFFSET)
 #define PNL_SEQ_USAGE (PNL_SEQ_MASK << 16)
-#define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
-#define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
+#define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
+#define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET) | PNL_SEQ_USAGE)
 
 /* dual digital output
 	80000[19]
@@ -38,8 +38,8 @@
 #define DUAL_TFT_OFFSET 8
 #define DUAL_TFT_MASK BIT(DUAL_TFT_OFFSET)
 #define DUAL_TFT_USAGE (DUAL_TFT_MASK << 16)
-#define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
-#define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
+#define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
+#define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET) | DUAL_TFT_USAGE)
 
 /* secondary timing & plane enable bit
 	1:80200[8] & 80200[2] on
@@ -48,8 +48,8 @@
 #define SEC_TP_OFFSET 5
 #define SEC_TP_MASK BIT(SEC_TP_OFFSET)
 #define SEC_TP_USAGE (SEC_TP_MASK << 16)
-#define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET)|SEC_TP_USAGE)
-#define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET)|SEC_TP_USAGE)
+#define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET) | SEC_TP_USAGE)
+#define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET) | SEC_TP_USAGE)
 
 /* crt path select
 	80200[19:18]
@@ -57,8 +57,8 @@
 #define CRT_2_OFFSET 2
 #define CRT_2_MASK (3 << CRT_2_OFFSET)
 #define CRT_2_USAGE (CRT_2_MASK << 16)
-#define CRT_2_PRI ((0x0 << CRT_2_OFFSET)|CRT_2_USAGE)
-#define CRT_2_SEC ((0x2 << CRT_2_OFFSET)|CRT_2_USAGE)
+#define CRT_2_PRI ((0x0 << CRT_2_OFFSET) | CRT_2_USAGE)
+#define CRT_2_SEC ((0x2 << CRT_2_OFFSET) | CRT_2_USAGE)
 
 
 /* DAC affect both DVI and DSUB
@@ -67,8 +67,8 @@
 #define DAC_OFFSET 7
 #define DAC_MASK BIT(DAC_OFFSET)
 #define DAC_USAGE (DAC_MASK << 16)
-#define DAC_ON ((0x0 << DAC_OFFSET)|DAC_USAGE)
-#define DAC_OFF ((0x1 << DAC_OFFSET)|DAC_USAGE)
+#define DAC_ON ((0x0 << DAC_OFFSET) | DAC_USAGE)
+#define DAC_OFF ((0x1 << DAC_OFFSET) | DAC_USAGE)
 
 /* DPMS only affect D-SUB head
 	0[31:30]
@@ -76,8 +76,8 @@
 #define DPMS_OFFSET 9
 #define DPMS_MASK (3 << DPMS_OFFSET)
 #define DPMS_USAGE (DPMS_MASK << 16)
-#define DPMS_OFF ((3 << DPMS_OFFSET)|DPMS_USAGE)
-#define DPMS_ON ((0 << DPMS_OFFSET)|DPMS_USAGE)
+#define DPMS_OFF ((3 << DPMS_OFFSET) | DPMS_USAGE)
+#define DPMS_ON ((0 << DPMS_OFFSET) | DPMS_USAGE)
 
 
 
@@ -86,16 +86,16 @@
 	CRT means crt path DSUB
 */
 typedef enum _disp_output_t {
-	do_LCD1_PRI = PNL_2_PRI|PRI_TP_ON|PNL_SEQ_ON|DAC_ON,
-	do_LCD1_SEC = PNL_2_SEC|SEC_TP_ON|PNL_SEQ_ON|DAC_ON,
-	do_LCD2_PRI = CRT_2_PRI|PRI_TP_ON|DUAL_TFT_ON,
-	do_LCD2_SEC = CRT_2_SEC|SEC_TP_ON|DUAL_TFT_ON,
+	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
+	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
+	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
+	do_LCD2_SEC = CRT_2_SEC | SEC_TP_ON | DUAL_TFT_ON,
 	/*
 	do_DSUB_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
 	do_DSUB_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
 	*/
-	do_CRT_PRI = CRT_2_PRI|PRI_TP_ON|DPMS_ON|DAC_ON,
-	do_CRT_SEC = CRT_2_SEC|SEC_TP_ON|DPMS_ON|DAC_ON,
+	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
+	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
 }
 disp_output_t;
 
-- 
2.7.4


