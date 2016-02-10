X-GM-THRID: 6249599077237915648
X-Received: by 10.50.142.105 with SMTP id rv9mr8632588igb.10.1455098181081;
        Wed, 10 Feb 2016 01:56:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.97 with SMTP id u94ls170137ioi.22.gmail; Wed, 10 Feb
 2016 01:56:20 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr26571440pfj.4.1455098180794;
        Wed, 10 Feb 2016 01:56:20 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si239081pfb.1.2016.02.10.01.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:56:20 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so138406pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 01:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H2R9FRvQVp/Y3TvdVdrOYiZWRnBXqqYqqcqZPbJYh3Q=;
        b=MC+mHTN9C2Dge1RlgzgXtdcVpLRoezw8MFp59oq73anLUBcqpdKwHlFbLtg64cA4w8
         DeeH1SsbjjHS+rxO0jtXzos6r+1T7OFczzgobVBquJT4YNQk16JS5z6CQh6mUBmmpDSb
         qgLwSWcjgi4K1ZLEkbfo0o2u0wAo744EPZzRHZ2WENNZGLltBhF+Wqax2IDYxTtazYDF
         Q4yeYfOdD99T2g/phgCvORsTTUqCzkilmR25jKo8DdFnz22oVMohaBOKIy9o5yWsJf24
         f5I4OkvliiVfuhnourrW1+GONmF42C2oT3Fvs6sDIKMowozgzWturVO7AC26QNGhHxVK
         RtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=H2R9FRvQVp/Y3TvdVdrOYiZWRnBXqqYqqcqZPbJYh3Q=;
        b=ffNww4wz87g1IC+T7kSKgpsg48tSOYJretbGK/TTTRTYj0mQo0/WlngWwadAb/IxD7
         ZkGgLIdNmVTEy8NLkSedBn0RXws0Lsf0BCKYBi72ftqeGcV3tL4itW8wfAOfanCdeUcc
         66D4nhXNLerXfTNBf5GOR68sjxPvXkRL98rImOW9AEnaBUknv2qk4NlrEO/sOqYiX2wK
         KW36wWopi0BHsWOy71xTDCnE606vpGXhY09xljugaaLVmCk7IZFHhoxtKqKla0Uu5yB8
         NfbW0/Vm63g3OsR8F/uG1HWD02+kqFMn0qVbtQkP/GmkfT9bVtvKsQgvUOEkxlGzR9rS
         ZK6w==
X-Gm-Message-State: AG10YORxjDCY0yKOOZ7Eo+Qykq3f4mMNf0yTj8uWzdgRuaf/XqNj0dac3dLZAjzPKLCmrw==
X-Received: by 10.98.7.14 with SMTP id b14mr57737968pfd.40.1455098180706;
        Wed, 10 Feb 2016 01:56:20 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.165])
        by smtp.gmail.com with ESMTPSA id u84sm3810694pfa.57.2016.02.10.01.56.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 01:56:20 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 2/4] staging: fbtft: Indent to match open parenthesis
Date: Wed, 10 Feb 2016 17:56:07 +0800
Message-Id: <1455098169-17667-3-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>
References: <1455098169-17667-1-git-send-email-eraretuya@gmail.com>

Fix alignment issues by properly indenting function parameters in
accordance to the kernel coding style. Checkpatch pointed out this
issue.

CHECK: Alignment should match open parenthesis

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_hx8340bn.c |  34 ++++++------
 drivers/staging/fbtft/fb_hx8353d.c  |  12 ++--
 drivers/staging/fbtft/fb_hx8357d.c  | 106 ++++++++++++++++++------------------
 3 files changed, 76 insertions(+), 76 deletions(-)

diff --git a/drivers/staging/fbtft/fb_hx8340bn.c b/drivers/staging/fbtft/fb_hx8340bn.c
index 4dd77b8..4ec2dc7 100644
--- a/drivers/staging/fbtft/fb_hx8340bn.c
+++ b/drivers/staging/fbtft/fb_hx8340bn.c
@@ -179,25 +179,25 @@ static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 		return 0; /* only GC0 can be customized */
 
 	write_reg(par, 0xC2,
-		(CURVE(0, 8) << 4) | CURVE(0, 7),
-		(CURVE(0, 10) << 4) | CURVE(0, 9),
-		(CURVE(0, 12) << 4) | CURVE(0, 11),
-		CURVE(0, 2),
-		(CURVE(0, 4) << 4) | CURVE(0, 3),
-		CURVE(0, 5),
-		CURVE(0, 6),
-		(CURVE(0, 1) << 4) | CURVE(0, 0),
-		(CURVE(0, 14) << 2) | CURVE(0, 13));
+		  (CURVE(0, 8) << 4) | CURVE(0, 7),
+		  (CURVE(0, 10) << 4) | CURVE(0, 9),
+		  (CURVE(0, 12) << 4) | CURVE(0, 11),
+		  CURVE(0, 2),
+		  (CURVE(0, 4) << 4) | CURVE(0, 3),
+		  CURVE(0, 5),
+		  CURVE(0, 6),
+		  (CURVE(0, 1) << 4) | CURVE(0, 0),
+		  (CURVE(0, 14) << 2) | CURVE(0, 13));
 
 	write_reg(par, 0xC3,
-		(CURVE(1, 8) << 4) | CURVE(1, 7),
-		(CURVE(1, 10) << 4) | CURVE(1, 9),
-		(CURVE(1, 12) << 4) | CURVE(1, 11),
-		CURVE(1, 2),
-		(CURVE(1, 4) << 4) | CURVE(1, 3),
-		CURVE(1, 5),
-		CURVE(1, 6),
-		(CURVE(1, 1) << 4) | CURVE(1, 0));
+		  (CURVE(1, 8) << 4) | CURVE(1, 7),
+		  (CURVE(1, 10) << 4) | CURVE(1, 9),
+		  (CURVE(1, 12) << 4) | CURVE(1, 11),
+		  CURVE(1, 2),
+		  (CURVE(1, 4) << 4) | CURVE(1, 3),
+		  CURVE(1, 5),
+		  CURVE(1, 6),
+		  (CURVE(1, 1) << 4) | CURVE(1, 0));
 
 	mdelay(10);
 
diff --git a/drivers/staging/fbtft/fb_hx8353d.c b/drivers/staging/fbtft/fb_hx8353d.c
index cd85faa..286ae45 100644
--- a/drivers/staging/fbtft/fb_hx8353d.c
+++ b/drivers/staging/fbtft/fb_hx8353d.c
@@ -59,7 +59,7 @@ static int init_display(struct fbtft_par *par)
 
 	/* RGBSET */
 	write_reg(par, MIPI_DCS_WRITE_LUT,
-		 0,  2,  4,  6,  8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30,
+		  0,  2,  4,  6,  8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30,
 		32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62,
 		 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15,
 		16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
@@ -122,11 +122,11 @@ static int set_var(struct fbtft_par *par)
 static int set_gamma(struct fbtft_par *par, unsigned long *curves)
 {
 	write_reg(par, 0xE0,
-		curves[0], curves[1], curves[2], curves[3],
-		curves[4], curves[5], curves[6], curves[7],
-		curves[8], curves[9], curves[10], curves[11],
-		curves[12], curves[13], curves[14], curves[15],
-		curves[16], curves[17], curves[18]);
+		  curves[0], curves[1], curves[2], curves[3],
+		  curves[4], curves[5], curves[6], curves[7],
+		  curves[8], curves[9], curves[10], curves[11],
+		  curves[12], curves[13], curves[14], curves[15],
+		  curves[16], curves[17], curves[18]);
 
 	return 0;
 }
diff --git a/drivers/staging/fbtft/fb_hx8357d.c b/drivers/staging/fbtft/fb_hx8357d.c
index 89be9ec..32e6efe 100644
--- a/drivers/staging/fbtft/fb_hx8357d.c
+++ b/drivers/staging/fbtft/fb_hx8357d.c
@@ -56,65 +56,65 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, HX8357_SETPANEL, 0x05);
 
 	write_reg(par, HX8357_SETPWR1,
-		0x00,  /* Not deep standby */
-		0x15,  /* BT */
-		0x1C,  /* VSPR */
-		0x1C,  /* VSNR */
-		0x83,  /* AP */
-		0xAA);  /* FS */
+		  0x00,  /* Not deep standby */
+		  0x15,  /* BT */
+		  0x1C,  /* VSPR */
+		  0x1C,  /* VSNR */
+		  0x83,  /* AP */
+		  0xAA);  /* FS */
 
 	write_reg(par, HX8357D_SETSTBA,
-		0x50,  /* OPON normal */
-		0x50,  /* OPON idle */
-		0x01,  /* STBA */
-		0x3C,  /* STBA */
-		0x1E,  /* STBA */
-		0x08);  /* GEN */
+		  0x50,  /* OPON normal */
+		  0x50,  /* OPON idle */
+		  0x01,  /* STBA */
+		  0x3C,  /* STBA */
+		  0x1E,  /* STBA */
+		  0x08);  /* GEN */
 
 	write_reg(par, HX8357D_SETCYC,
-		0x02,  /* NW 0x02 */
-		0x40,  /* RTN */
-		0x00,  /* DIV */
-		0x2A,  /* DUM */
-		0x2A,  /* DUM */
-		0x0D,  /* GDON */
-		0x78);  /* GDOFF */
+		  0x02,  /* NW 0x02 */
+		  0x40,  /* RTN */
+		  0x00,  /* DIV */
+		  0x2A,  /* DUM */
+		  0x2A,  /* DUM */
+		  0x0D,  /* GDON */
+		  0x78);  /* GDOFF */
 
 	write_reg(par, HX8357D_SETGAMMA,
-		0x02,
-		0x0A,
-		0x11,
-		0x1d,
-		0x23,
-		0x35,
-		0x41,
-		0x4b,
-		0x4b,
-		0x42,
-		0x3A,
-		0x27,
-		0x1B,
-		0x08,
-		0x09,
-		0x03,
-		0x02,
-		0x0A,
-		0x11,
-		0x1d,
-		0x23,
-		0x35,
-		0x41,
-		0x4b,
-		0x4b,
-		0x42,
-		0x3A,
-		0x27,
-		0x1B,
-		0x08,
-		0x09,
-		0x03,
-		0x00,
-		0x01);
+		  0x02,
+		  0x0A,
+		  0x11,
+		  0x1d,
+		  0x23,
+		  0x35,
+		  0x41,
+		  0x4b,
+		  0x4b,
+		  0x42,
+		  0x3A,
+		  0x27,
+		  0x1B,
+		  0x08,
+		  0x09,
+		  0x03,
+		  0x02,
+		  0x0A,
+		  0x11,
+		  0x1d,
+		  0x23,
+		  0x35,
+		  0x41,
+		  0x4b,
+		  0x4b,
+		  0x42,
+		  0x3A,
+		  0x27,
+		  0x1B,
+		  0x08,
+		  0x09,
+		  0x03,
+		  0x00,
+		  0x01);
 
 	/* 16 bit */
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
-- 
1.9.1


