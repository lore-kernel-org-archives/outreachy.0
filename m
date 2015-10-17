X-GM-THRID: 6206644398472560640
X-Received: by 10.107.155.130 with SMTP id d124mr19124663ioe.28.1445097010208;
        Sat, 17 Oct 2015 08:50:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.1.52 with SMTP id 20ls443000igj.1.gmail; Sat, 17 Oct 2015
 08:50:08 -0700 (PDT)
X-Received: by 10.107.14.196 with SMTP id 187mr18494052ioo.24.1445097008288;
        Sat, 17 Oct 2015 08:50:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ce6si2040484pad.0.2015.10.17.08.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 08:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fv9so50701781pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 08:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=O6mYUh/nJ7vvdAnXJFa75KfHL5M6CtRO9UzrGvAmgcA=;
        b=JWkKWLHBILJc1Z0RwmVkqVVr28smFqMn0VzKdYYRdHPSjmSIE7A/TnQwmiHd0WxMpF
         KGHWXm/delZhbpgDDjA1AuPZ6i5+zm+crZ1DwkaQ7LAOjeASd2jw07ciYdrud/KeqESh
         WYdeKO/HSb1r0XAqxSqhk+ef7aKblMy0ljLNth1oCemAQ5dzpMIGLZXsPcsFMnAFyV84
         Yr/EdhfIu4DN3umEXwz53urCNJhYJ8TPypDaxz7drb+3PB+I2NNoDhPYqoPPCAK6qhrX
         aHNE+Mhuj2HUDqdt5Sv55kbulEAGVNAtsGeepv0gunP6zCZ4epVtsWHTAtfGH/CeHMN+
         jOwQ==
X-Received: by 10.68.105.164 with SMTP id gn4mr24049883pbb.44.1445097008069;
        Sat, 17 Oct 2015 08:50:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.146.165])
        by smtp.gmail.com with ESMTPSA id i9sm27247708pbq.84.2015.10.17.08.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 17 Oct 2015 08:50:07 -0700 (PDT)
Date: Sat, 17 Oct 2015 21:20:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Prefer using BIT Macro
Message-ID: <20151017155000.GA15425@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace bit shifting on 1 with the BIT(x) Macro
Problem found using checkpatch.pl
WARNING: 'Prefer using the BIT macro'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 3d2e8b4..ca35aa1 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -17,7 +17,7 @@
 	0: both off
 */
 #define PRI_TP_OFFSET 4
-#define PRI_TP_MASK (1 << PRI_TP_OFFSET)
+#define PRI_TP_MASK BIT(PRI_TP_OFFSET)
 #define PRI_TP_USAGE (PRI_TP_MASK << 16)
 #define PRI_TP_ON ((0x1 << PRI_TP_OFFSET)|PRI_TP_USAGE)
 #define PRI_TP_OFF ((0x0 << PRI_TP_OFFSET)|PRI_TP_USAGE)
@@ -27,18 +27,18 @@
 	80000[27:24]
 */
 #define PNL_SEQ_OFFSET 6
-#define PNL_SEQ_MASK (1 << PNL_SEQ_OFFSET)
+#define PNL_SEQ_MASK BIT(PNL_SEQ_OFFSET)
 #define PNL_SEQ_USAGE (PNL_SEQ_MASK << 16)
-#define PNL_SEQ_ON ((1 << PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
+#define PNL_SEQ_ON (BIT(PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
 #define PNL_SEQ_OFF ((0 << PNL_SEQ_OFFSET)|PNL_SEQ_USAGE)
 
 /* dual digital output
 	80000[19]
 */
 #define DUAL_TFT_OFFSET 8
-#define DUAL_TFT_MASK (1 << DUAL_TFT_OFFSET)
+#define DUAL_TFT_MASK BIT(DUAL_TFT_OFFSET)
 #define DUAL_TFT_USAGE (DUAL_TFT_MASK << 16)
-#define DUAL_TFT_ON ((1 << DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
+#define DUAL_TFT_ON (BIT(DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
 #define DUAL_TFT_OFF ((0 << DUAL_TFT_OFFSET)|DUAL_TFT_USAGE)
 
 /* secondary timing & plane enable bit
@@ -46,7 +46,7 @@
 	0: both off
 */
 #define SEC_TP_OFFSET 5
-#define SEC_TP_MASK (1 << SEC_TP_OFFSET)
+#define SEC_TP_MASK BIT(SEC_TP_OFFSET)
 #define SEC_TP_USAGE (SEC_TP_MASK << 16)
 #define SEC_TP_ON  ((0x1 << SEC_TP_OFFSET)|SEC_TP_USAGE)
 #define SEC_TP_OFF ((0x0 << SEC_TP_OFFSET)|SEC_TP_USAGE)
@@ -65,7 +65,7 @@
 	4[20]
 */
 #define DAC_OFFSET 7
-#define DAC_MASK (1 << DAC_OFFSET)
+#define DAC_MASK BIT(DAC_OFFSET)
 #define DAC_USAGE (DAC_MASK << 16)
 #define DAC_ON ((0x0 << DAC_OFFSET)|DAC_USAGE)
 #define DAC_OFF ((0x1 << DAC_OFFSET)|DAC_USAGE)
-- 
1.9.1


