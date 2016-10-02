X-GM-THRID: 6336851136468746240
X-Received: by 10.28.55.205 with SMTP id e196mr301370wma.0.1475413128217;
        Sun, 02 Oct 2016 05:58:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.147 with SMTP id s141ls1118395wmb.0.gmail; Sun, 02 Oct
 2016 05:58:47 -0700 (PDT)
X-Received: by 10.28.47.136 with SMTP id v130mr282535wmv.12.1475413127689;
        Sun, 02 Oct 2016 05:58:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id s6si854914wmb.1.2016.10.02.05.58.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 05:58:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id b201so5307651wmb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 05:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uYxjRAcU6kReG86l+ughkQYWYQCBxb7nCeyL4OCwo1o=;
        b=O7iHLolyz+vOhdNrBkpUe2CwkiajwmOg77CqPGaZ9FGjYoZmKAXPDKflapTjhgN4dY
         8nUNpkpX1g8x2kH0ULDKbnv2f6HPpXUTUYXQnZr6SO3D7Pi3690RJqRIUgpjiGdOGmET
         JvbZAjUSOJYsZF8gZpg9BQfD5/q7ITJTBFx0XwRM6yrpJlVZAMhp+rOJmTX5hj0WTn/+
         iNw1daFf1o6dCGsdo7w53/eKycpNiwFIPVCi6KiAc/NWnbq+3fH8jtoY+H8PFXxBPQ2z
         SKq/902L/Dc4K+eeRwJO2RrxQwW6SEIvKRrKyWupSllVT5n9zaRfg7cP4S/YTjlNTsxp
         WWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uYxjRAcU6kReG86l+ughkQYWYQCBxb7nCeyL4OCwo1o=;
        b=Ckixcu+F+NZ5R6qiwq7qihg83Zp2D7IMHd64Q81H2Leqf/Us+TKXFhMDEi8cAJAGiv
         Ub/N2SOay5yH274ahpmVGds98r/DUOBPs1QA/9u/twJ3yBceSDTv1v+7qbd/6QQolhOa
         41ytZzedy78HLZyoY5J1FgmWqaX5LOwf5ocHuOy1fhRcsntabgk9IOHbTL2Zgrx8Hwu6
         4p88fcRJJFe8P5q78htSw8k8uci4hPBQbK8NmSI+kY7w0nqBSYC9f5xW/lsaZe0Y78yc
         A7HgfBdy7nYgp1qENkprCjHjIHySOAP8sqzt/JaUWM0IdikGEjWnkmxESyyYcJokU3a7
         FrBw==
X-Gm-Message-State: AA6/9RkA7fQBA2QnoXExT+yV6teruM7eo8nYWBzz1ocvAbXymoX0xvV4damt63xG1pZQLg==
X-Received: by 10.194.13.97 with SMTP id g1mr9957328wjc.223.1475413127446;
        Sun, 02 Oct 2016 05:58:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id iq2sm29368347wjb.19.2016.10.02.05.58.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 05:58:46 -0700 (PDT)
Date: Sun, 2 Oct 2016 15:58:44 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: sm750fb: fix comment block coding style
Message-ID: <20161002125844.GA14790@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the ddk750_display.h file that fixes up a comment
block warning, found by checkpatch.pl tool, by adding a * for each line
of the comment block.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

---
Changes in v4:
	- reduce number of  the characters from the subject line.
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


