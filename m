X-GM-THRID: 6330674938515554304
X-Received: by 10.157.13.199 with SMTP id 65mr70816ots.121.1474031783273;
        Fri, 16 Sep 2016 06:16:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls5940377otc.12.gmail; Fri, 16 Sep
 2016 06:16:22 -0700 (PDT)
X-Received: by 10.13.226.202 with SMTP id l193mr82853ywe.75.1474031782937;
        Fri, 16 Sep 2016 06:16:22 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si2634218pfw.1.2016.09.16.06.16.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:16:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so691425pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ps/Sbp8KNuoV/G6pVHXHjns0hZM824ZJCFtrI/Sj/3U=;
        b=K/YXVZ/cVdGvb/1wEV23k5R2wQ5760XAJnLeWJXr0Pd5kNGhnM+TWMD5soX69xIVjt
         xl3dtanzn4abIWFNl3ruagtS+vp0bTiA0/aRsdZL2BqdEfe8JjqZ9kCbmM1I+nlKHhMp
         6TaFHO2id+Lx4t2TjeX/JxgeSzdiHqn++uuspI6HoCPQcR/673ODoGnRz2EegmKvY85L
         RN+P1tNctRLDaHA51wlRjJ/hgn6pXnoml88w+qpIXvCSossk6NjRT+jN2dwpuo1zN0XS
         VZZQ5QzfyN1yhWYfCNYFwhu8xq3GVtM3Dc4PfTtkX2xxLZaSq716k8MzN7jVyQUZ09LF
         0I5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ps/Sbp8KNuoV/G6pVHXHjns0hZM824ZJCFtrI/Sj/3U=;
        b=NY9xVtVXRd4ctt2H3G7q2S3U3ksW/Ssb6v3vDywVrBcxgQR7VFbsHtDCrkt2PqA36q
         fDLS7nr7rELlF6rdS6Oi96nFPnHYNs0dLPxLqXqWKiIAhNeiohi0SZNK7xWfaF4qRDhd
         LzfkXE3tI91NztNrEWnxdeMsbybFtPtKb5hxS/i7b5A3Vh2Ym9WjR9uBhTF5/zeoftuc
         wsxAKcoNF3dldOQN+uNREr3teBPcqerzWc/bltu2IQecS9NRGjJfmLylt7chxOl/ZCgh
         gm55hRJGX4f3Sm5FvIGWVTN1BhacXjWaT4gxqH2jIYvy2Iyihd5sVlm/lXpwz/6sd2oz
         LzNQ==
X-Gm-Message-State: AE9vXwPB4iKxImIV2SQhEveCBeNDAPcSPDaV/5bMk8UtQ3DgvenmVU9t++N3da1gMrxWiA==
X-Received: by 10.98.37.130 with SMTP id l124mr22953265pfl.60.1474031782708;
        Fri, 16 Sep 2016 06:16:22 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yu7sm12383985pab.45.2016.09.16.06.16.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:16:21 -0700 (PDT)
Date: Fri, 16 Sep 2016 18:46:14 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 5/5] staging: sm750fb: Add spaces around '|'
Message-ID: <20160916131614.GA16670@toblerone>
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


