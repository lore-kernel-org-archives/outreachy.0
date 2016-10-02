X-GM-THRID: 6336810115106078720
X-Received: by 10.28.55.205 with SMTP id e196mr299438wma.0.1475412167851;
        Sun, 02 Oct 2016 05:42:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.206 with SMTP id u197ls1085213wmu.8.gmail; Sun, 02 Oct
 2016 05:42:47 -0700 (PDT)
X-Received: by 10.194.189.113 with SMTP id gh17mr252850wjc.6.1475412167262;
        Sun, 02 Oct 2016 05:42:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c13si845072wme.3.2016.10.02.05.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 05:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b201so5267870wmb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 05:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HDo8hcGxJbCxlRITnoEuQF6EzzNztZX86N8r9V0Tb0E=;
        b=OPh+bG5Xt1qUVsTcEG0l9bAKUb6oI2V+LzJV9XQ+o7k8cTBVkamJv0PgeO9PqWxfS0
         F0cO9iionG82p1zLDCyYnBYj8jS8X9NJzCo6Sb+q1NTOiDLx9sXqDmYyGEfYDqIUrGHE
         vo8oi6lDmDdL+ql+630gd3uIMt+NCKxhlxQ7P+el2Iy7skmQOV2SsO8gj4HaDInxA8Qm
         pR9H2TvxbSnZMu7IyoTQu8XTcun96nKeuVR/wZZ9biZC/BKuIcdANW7d+YV8WxGr0V90
         GoUEuQcG4n+MkqTx66+AUWgpczpxqvnl9UbCLOImKTPFYFG4arjI7JxXZxfuMBSCuNZI
         KxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HDo8hcGxJbCxlRITnoEuQF6EzzNztZX86N8r9V0Tb0E=;
        b=aKHfiGr8VxT3U9CKZ6badgalUEXO1aFtaIFzlYuBgc7qiIOZm7ykWx4lFFHzIElvAG
         RCrhpd+IChCTS5OUZy7FYdPsGNjUViOYrdvUIsA7qkZmocE0izZJ4hS2mm4lhCxHGOsL
         GqKqtG5w1mDCFqCedSCHJVQygxI+McU+/3WVXhCZPe+fyKFSWr3LTXCypcz0U8gZnuqf
         bDo9QoxrW1UCm4lo3+qY6DcETxdpHsHVhNen+8PwnuQn101Q8ys/WZHkd0lswoyuQiBJ
         xbl9/T2mBT1fLiJP6JX6cUizXu2xWwy5pBoa7MULksm41Y1bYh3shawtV6/j077VHr7g
         0r7Q==
X-Gm-Message-State: AA6/9Rm+TNr1VYh0B+zjPQpB6C0z7TId5Z01PwxI8ytYrgt/fatqe/9z+QPyaSIl8BqNDg==
X-Received: by 10.194.189.198 with SMTP id gk6mr2079128wjc.167.1475412167005;
        Sun, 02 Oct 2016 05:42:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id o5sm13834353wmg.16.2016.10.02.05.42.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 05:42:46 -0700 (PDT)
Date: Sun, 2 Oct 2016 15:42:45 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: sm750fb: fix comment block coding style issue in
 ddk750_display.h
Message-ID: <20161002124245.GA14194@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the ddk750_display.h file that fixes up a comment
block warning, found by checkpatch.pl tool, by adding a * for each line
of the comment block.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

---
Changes in v3:
	- arrange the subject line
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


