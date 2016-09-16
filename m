X-GM-THRID: 6330674938515554304
X-Received: by 10.129.124.193 with SMTP id x184mr38177ywc.110.1474030342576;
        Fri, 16 Sep 2016 05:52:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.57.11 with SMTP id g11ls1599210ioa.20.gmail; Fri, 16 Sep
 2016 05:52:22 -0700 (PDT)
X-Received: by 10.66.127.17 with SMTP id nc17mr35438pab.61.1474030342195;
        Fri, 16 Sep 2016 05:52:22 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si2841628pab.1.2016.09.16.05.52.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 05:52:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so960808pfj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 05:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Wd5BWRIkxaHAqaQMbaz36nlMImKRKERb42LA8t4+1x0=;
        b=GCcUnQsGclu9GZw8+fxL6ZqXdxNDx37PaazxYiNiOQMyWvSwIBnwZzUJ0MFIy/1J0W
         AcTMojB+FwQaY8f1Qqi3R/tRkRj1nRDK5330NVPRxRfD3Yq40zssiwuBHmUAVQbHgJGc
         PaKu9/xtyr7jcoOqMCFpElBoaz9IFus0j/nlcV8xuBIHy+FFnnM/LBG/JmU37yHpvTyW
         qMphf7MrUuz7whrferZw5rTVaj/xTc9V/2xwZybLS1jCB1KaEGgwECOhahRnSiN2slWU
         eZQFDBJipEogKabEltvME6YI/dLwXLtnhq4jD6PZoH1/w15AnvhUrPAooTbE7Hh8VFzt
         YX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Wd5BWRIkxaHAqaQMbaz36nlMImKRKERb42LA8t4+1x0=;
        b=B+LVZYDxr5scGNYR0uMash5XH4S2pSqYQdFNkQPIvHhT6+GNGKrGDJHEPDo0iqRRpd
         EvpsqBXwCCHUNNzz2d4i9vPS56ADfa3bPZ5YktAEZ7wFV8dDKxFEAA9vRGxleRjDoHaR
         c4vkRO10siG2jjamp4u198Fu9LLxDqjwfo6mEJZKANInf62NaxLGBetr7FaC3wZe13wZ
         NrLcHQAFJSSKU/2iOgCPUacoL9As5wwcsJaPZeHonIxX+OZVyFi88aWZVei9X/Sy5bcO
         5mGThfIDQT93mtGi3j10xHpAYUEDOukOdCMPtdfFbQ1U6cSbNl9rM8Y7bAibZfeVHhJx
         AgPA==
X-Gm-Message-State: AE9vXwM2HBpBNma+17aAxWbnmJGmiqXT9So7mD7IbenlybjyaQe8Dfp4cIQ3neWPiiPnww==
X-Received: by 10.98.54.199 with SMTP id d190mr22849817pfa.121.1474030341977;
        Fri, 16 Sep 2016 05:52:21 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b64sm52290952pfa.82.2016.09.16.05.52.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 05:52:21 -0700 (PDT)
Date: Fri, 16 Sep 2016 18:22:13 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: sm750fb: Add spaces around '|'
Message-ID: <20160916125213.GA16144@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds spaces on either side of a '|'. Issue dound by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Refresh commit against the latest tree.

 drivers/staging/sm750fb/ddk750_display.h | 44 ++++++++++++++++----------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 04b8eba..f69d798 100644
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


