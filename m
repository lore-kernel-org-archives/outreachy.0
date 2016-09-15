X-GM-THRID: 6330674938515554304
X-Received: by 10.36.200.2 with SMTP id w2mr3978524itf.6.1473975241240;
        Thu, 15 Sep 2016 14:34:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls4261240otj.7.gmail; Thu, 15 Sep
 2016 14:34:00 -0700 (PDT)
X-Received: by 10.157.20.41 with SMTP id h38mr7992106oth.48.1473975240941;
        Thu, 15 Sep 2016 14:34:00 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si1775298pab.1.2016.09.15.14.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so2582162pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=61fT4IQS10Tw6rH6xH34AjdL9xBg/ZDru4jEKqGC8bw=;
        b=BFfwGMs8T9Q6XNUmanyHt3z+HDV/yW6CL2+ZeS9aiiVHdg8JinD1Z1hCK866kz6mOl
         Jc9gGMuoLfosKee7fpPOXD0KzfYgsq+NPyl83kL0aRiG84TpzAyPH91+avZc94TMSQZB
         U0/nrFOhfoTCWAJzITC06xl1C/05nDEEKTwwTzBYRZ9aVoHSOot8Yue8ncHptLqgoUex
         9F5ojBIoASzy5XERePJkXhG52EeFBpH24JOKxKYNGXY0W4Lj11u8Cn1c9WDZEWsn3pYK
         htUeglXnUiYFBJydE5K7wToysyDGuYt9yQ62dH35DX3SU2lkNn428XhuiO63udcXaljF
         MxYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=61fT4IQS10Tw6rH6xH34AjdL9xBg/ZDru4jEKqGC8bw=;
        b=MxNTdDk1R8CDFF7XkbH6mHttDFZEjm7nJ42RYojAuM4V7CGU+VWfkwar656UEhra9/
         dQiRIpE5GCVo37n8HDHxSSaUp+4OS7MsNzlWEtfmNDw8GyaQjpeS3WwAD13EL14PwCFQ
         NHW4Kr8HnFYl5PgcXiIoNGT+TrvRLgOmamGQZweKIbfNCylwXIFNaG5RJ5zOBeFx69Sk
         4Api11vkpvvS9NQ53kvkrjZw71pwjKFbXiuztrKGFO5clZNUunjvwh3IsT7EzJltktzy
         HRPl8h+LGe//NOr+hYYLaU01/etAwPbYsVS3UXoEGMgCz7BDn1S/eCSUC4NrvjwYDIb5
         s2yA==
X-Gm-Message-State: AE9vXwNqIepbPNz/7EAi7kFF+ywB69llJPAiGlcYfMU6lilIcOzuVdNz9toplhHzG/F8Vg==
X-Received: by 10.66.217.132 with SMTP id oy4mr18078056pac.46.1473975240711;
        Thu, 15 Sep 2016 14:34:00 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c11sm47163754pfk.78.2016.09.15.14.33.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:34:00 -0700 (PDT)
Date: Fri, 16 Sep 2016 03:03:52 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/5] staging: sm750fb: Add spaces around '|'
Message-ID: <caa113f19cf06f4e4a0a911a0c6718da0ee2d857.1473975000.git.aquannie@gmail.com>
References: <cover.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Adds spaces on either side of a '|'. Issue dound by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
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


