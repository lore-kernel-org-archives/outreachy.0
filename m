X-GM-THRID: 6249599077237915648
X-Received: by 10.140.240.69 with SMTP id l66mr44105159qhc.9.1455210593341;
        Thu, 11 Feb 2016 09:09:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.19 with SMTP id o19ls619315ioe.53.gmail; Thu, 11 Feb
 2016 09:09:52 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr46155109ioi.5.1455210592970;
        Thu, 11 Feb 2016 09:09:52 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si943776pfb.1.2016.02.11.09.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:09:52 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id gc2so699562pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YJE3AqjoUbvHmohCKxHLQ7HxLCD+KsF2caaYr4VHufE=;
        b=IzjqKpzo+5UIpYO2+4AEMoMNAKfBEtQNJKh9PqA7b5CC/xXIjtFNBSwF5eKrOwdCog
         Qm2U09yWQXptiaT3X9AqYShNx1hYq/VvvTTFVvudDijHE/4RJ/R1ZvFvCnXABYTSyuxy
         SePS6rZgVWKk6xbPUZeu+Q2fqutGUisNg8ZRtSRCnzeiCsZaLw6+dNmwnUpRfIKvEcNO
         YIivqpJBJ8TIxr7Lt4mQWVCYzbiUMWI5haXuih8li9eKbMLU77YxWkqj9K1mXDkiYHHg
         Uxp/29v5wR7h+tJhMANmWUd3nrBmn74vktjTvo3cOj6imuNpEvrGkNvtpImJ81Lgzu76
         dpJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YJE3AqjoUbvHmohCKxHLQ7HxLCD+KsF2caaYr4VHufE=;
        b=ekXMLJflbq6IfxxZPE8IZFuWuNwiEWhGzWNSLUAJFiHaMPLu9uljrsfYKEoSvaX1p/
         08UQB7HE/iTw87Okek83pVhVN0shcXgs+pWjM+OhZ78//28jYyf93umgkRArsGtbqjQ/
         SXI2bMvnciTXetIaO8M8oFkd1rhrWD3aW+E2kXFq+clPDaTW/TIHg+BozzmsBe306krv
         TeZTorv2NfrOfN6pyhrzEgRbLMxOVugEiGpq9SQB8GSeudS4fXwucJyJMr11vlGAyb9N
         OWq2/Ac11eqVUA3/jVFssft2utKzlK6XJs7N7y4cxOXbbMOlMOe/lMSrh6MuYmCIpgZ2
         tCZA==
X-Gm-Message-State: AG10YOSmwXMHMf/sCbwjTpCsZUrVpa9L9f1JkecvCcsS8aAUIX4grW9SyX1ZxHEfmRTYWw==
X-Received: by 10.66.158.169 with SMTP id wv9mr67453789pab.138.1455210592843;
        Thu, 11 Feb 2016 09:09:52 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.48])
        by smtp.gmail.com with ESMTPSA id 27sm13587886pfh.48.2016.02.11.09.09.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 09:09:52 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/5] staging: fbtft: Indent to match open parenthesis
Date: Fri, 12 Feb 2016 01:09:07 +0800
Message-Id: <1455210550-11363-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>

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


