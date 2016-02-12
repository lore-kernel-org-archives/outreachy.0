X-GM-THRID: 6250306033025024000
X-Received: by 10.107.33.200 with SMTP id h191mr1108426ioh.9.1455262782777;
        Thu, 11 Feb 2016 23:39:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.82.98 with SMTP id h2ls91797igy.7.canary; Thu, 11 Feb 2016
 23:39:42 -0800 (PST)
X-Received: by 10.107.136.23 with SMTP id k23mr1072943iod.23.1455262782339;
        Thu, 11 Feb 2016 23:39:42 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si1241959pfb.1.2016.02.11.23.39.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:39:42 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so3489414pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YJE3AqjoUbvHmohCKxHLQ7HxLCD+KsF2caaYr4VHufE=;
        b=bR1SuxqiV7dLmJdCCOp0RAjJVDyupXDKDkdcwg/Ft1qazAlOasj6JCQdehyeUiA/Xi
         EUpZeA1SPGNfy9VSFSm2ndS9Lr4LaJAV7VXKf6KIKj81SKWjlIhUOSYv4hjj6Yzi/RC4
         yJ3Iz/tBF5VKkEuzZgZ3N6lKKfY/w6kPY9HUZOvGnyEUb92+RvzYPmmlY27xl6k838SF
         j9e37BF3oXRBLt88TajXgmDph9OFpjtslSTOeSLTzFmpzPdIxS1/4rqW0OtPlwMYMdRu
         DSsHPjgRA061P5/ep3X6gYkXMJ8f3itcMorJxr4e6bugOjUntgjy8o0WwMDhcXAuXHwt
         YI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YJE3AqjoUbvHmohCKxHLQ7HxLCD+KsF2caaYr4VHufE=;
        b=H0TI9ic4Z6I7ybHACF8FE9AeaZPjvif0ZLIfI5BLfk603oe7d+Xh7+ExQHeLiYFyiM
         pLnFEoiaucUfsOSn7UttxUNak394AHgFBPT++sU228EbChbsc9maJO/g+5RVgSv2kFk0
         toijSodsdH8tLa3VO51AwrEaY+dqj0sSZBrUt0+iftnH4Ym6TdV7sWntEcPAKAnvyID8
         /KH2CT8Qg2PbwRQPAkZawCl0m5w/mQFtCF09MjEptijXaVJ1B+E5vxlDXS4sdTE0YQJK
         DOLPmfLX75rMOsOdbW7hGja/hD1OxpHjm/nvqHofbVxe4sD+mJXGHQBPw7QHxqhHVQ87
         lcHQ==
X-Gm-Message-State: AG10YORi6bhBfoHZHh6THRMoRfzBo9ZwpiEvJ9/VraROeB9HwVRclYn9lsBShYBF+DFr6Q==
X-Received: by 10.66.141.71 with SMTP id rm7mr109707pab.106.1455262782211;
        Thu, 11 Feb 2016 23:39:42 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.60])
        by smtp.gmail.com with ESMTPSA id x1sm17043436pfi.42.2016.02.11.23.39.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:39:41 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 2/5] staging: fbtft: Fix alignment to match open parenthesis
Date: Fri, 12 Feb 2016 15:39:27 +0800
Message-Id: <b543967d499029280dafc1d68529385933b50642.1455260992.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>

Fix alignment issues by properly indenting function parameters in
accordance to the kernel coding style. Checkpatch pointed out this
issue.

CHECK: Alignment should match open parenthesis

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_ili9163.c | 33 ++++++++++++++++-----------------
 drivers/staging/fbtft/fb_ili9320.c |  4 ++--
 drivers/staging/fbtft/fb_ili9340.c |  8 ++++----
 drivers/staging/fbtft/fb_ili9341.c | 10 +++++-----
 4 files changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
index 3f6c245..9f7c7ec 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -122,7 +122,7 @@ static int init_display(struct fbtft_par *par)
 }
 
 static void set_addr_win(struct fbtft_par *par, int xs, int ys,
-				int xe, int ye)
+			 int xe, int ye)
 {
 	switch (par->info->var.rotate) {
 	case 0:
@@ -215,22 +215,21 @@ static int gamma_adj(struct fbtft_par *par, unsigned long *curves)
 			CURVE(i, j) &= mask[i * par->gamma.num_values + j];
 
 	write_reg(par, CMD_PGAMMAC,
-				CURVE(0, 0),
-				CURVE(0, 1),
-				CURVE(0, 2),
-				CURVE(0, 3),
-				CURVE(0, 4),
-				CURVE(0, 5),
-				CURVE(0, 6),
-				(CURVE(0, 7) << 4) | CURVE(0, 8),
-				CURVE(0, 9),
-				CURVE(0, 10),
-				CURVE(0, 11),
-				CURVE(0, 12),
-				CURVE(0, 13),
-				CURVE(0, 14),
-				CURVE(0, 15)
-				);
+		  CURVE(0, 0),
+		  CURVE(0, 1),
+		  CURVE(0, 2),
+		  CURVE(0, 3),
+		  CURVE(0, 4),
+		  CURVE(0, 5),
+		  CURVE(0, 6),
+		  (CURVE(0, 7) << 4) | CURVE(0, 8),
+		  CURVE(0, 9),
+		  CURVE(0, 10),
+		  CURVE(0, 11),
+		  CURVE(0, 12),
+		  CURVE(0, 13),
+		  CURVE(0, 14),
+		  CURVE(0, 15));
 
 	/* Write Data to GRAM mode */
 	write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
diff --git a/drivers/staging/fbtft/fb_ili9320.c b/drivers/staging/fbtft/fb_ili9320.c
index 5da2764..6c6bc3d 100644
--- a/drivers/staging/fbtft/fb_ili9320.c
+++ b/drivers/staging/fbtft/fb_ili9320.c
@@ -47,10 +47,10 @@ static int init_display(struct fbtft_par *par)
 
 	devcode = read_devicecode(par);
 	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "Device code: 0x%04X\n",
-		devcode);
+		      devcode);
 	if ((devcode != 0x0000) && (devcode != 0x9320))
 		dev_warn(par->info->device,
-			"Unrecognized Device code: 0x%04X (expected 0x9320)\n",
+			 "Unrecognized Device code: 0x%04X (expected 0x9320)\n",
 			devcode);
 
 	/* Initialization sequence from ILI9320 Application Notes */
diff --git a/drivers/staging/fbtft/fb_ili9340.c b/drivers/staging/fbtft/fb_ili9340.c
index 9b24c9e..0711121 100644
--- a/drivers/staging/fbtft/fb_ili9340.c
+++ b/drivers/staging/fbtft/fb_ili9340.c
@@ -71,13 +71,13 @@ static int init_display(struct fbtft_par *par)
 
 	/* Positive Gamma Correction */
 	write_reg(par, 0xE0,
-		0x0F, 0x31, 0x2B, 0x0C, 0x0E, 0x08, 0x4E, 0xF1,
-		0x37, 0x07, 0x10, 0x03, 0x0E, 0x09, 0x00);
+		  0x0F, 0x31, 0x2B, 0x0C, 0x0E, 0x08, 0x4E, 0xF1,
+		  0x37, 0x07, 0x10, 0x03, 0x0E, 0x09, 0x00);
 
 	/* Negative Gamma Correction */
 	write_reg(par, 0xE1,
-		0x00, 0x0E, 0x14, 0x03, 0x11, 0x07, 0x31, 0xC1,
-		0x48, 0x08, 0x0F, 0x0C, 0x31, 0x36, 0x0F);
+		  0x00, 0x0E, 0x14, 0x03, 0x11, 0x07, 0x31, 0xC1,
+		  0x48, 0x08, 0x0F, 0x0C, 0x31, 0x36, 0x0F);
 
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 
diff --git a/drivers/staging/fbtft/fb_ili9341.c b/drivers/staging/fbtft/fb_ili9341.c
index e8107d1..e92d771 100644
--- a/drivers/staging/fbtft/fb_ili9341.c
+++ b/drivers/staging/fbtft/fb_ili9341.c
@@ -127,11 +127,11 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 
 	for (i = 0; i < par->gamma.num_curves; i++)
 		write_reg(par, 0xE0 + i,
-			CURVE(i, 0), CURVE(i, 1), CURVE(i, 2),
-			CURVE(i, 3), CURVE(i, 4), CURVE(i, 5),
-			CURVE(i, 6), CURVE(i, 7), CURVE(i, 8),
-			CURVE(i, 9), CURVE(i, 10), CURVE(i, 11),
-			CURVE(i, 12), CURVE(i, 13), CURVE(i, 14));
+			  CURVE(i, 0), CURVE(i, 1), CURVE(i, 2),
+			  CURVE(i, 3), CURVE(i, 4), CURVE(i, 5),
+			  CURVE(i, 6), CURVE(i, 7), CURVE(i, 8),
+			  CURVE(i, 9), CURVE(i, 10), CURVE(i, 11),
+			  CURVE(i, 12), CURVE(i, 13), CURVE(i, 14));
 
 	return 0;
 }
-- 
1.9.1


