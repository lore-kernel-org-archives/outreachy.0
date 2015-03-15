X-GM-THRID: 8445029777408
X-Received: by 10.66.142.196 with SMTP id ry4mr13875741pab.12.1426427780092;
        Sun, 15 Mar 2015 06:56:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.48.3 with SMTP id n3ls2403527qga.30.gmail; Sun, 15 Mar
 2015 06:56:19 -0700 (PDT)
X-Received: by 10.236.15.167 with SMTP id f27mr57047137yhf.8.1426427779863;
        Sun, 15 Mar 2015 06:56:19 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ri9si1349462pdb.1.2015.03.15.06.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 06:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id ni2so32156907pdb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 06:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:content-transfer-encoding:user-agent;
        bh=QQGuFdYsZ38rX3dCuUUnuGfxSmb9zTTFIhUCSNMuBuo=;
        b=CKb7D1gMBbF5++OSrZkcA5uNPPKB9qvLrYNSiMpxuuVeiX+XYySRjYrJuaqNqqnEOq
         /woaGm6UMkRYsuOPaW/8dTKyp7tnGPCROtFPMR2xd6rffQP6VHl2Uly3eMdhnL73zqrX
         tAB2e9U5J+yEs91+qJdpz3UdkaNygecLozPtkt3mXANVlKABBAkcFfRzCcxDFePqTYtW
         EvVCW2Uoz3kdPZY4MZ/+UQ1mt64KICnE5ngIw3ACRcHVK++WepLvu3oJiCxSBqaWlAji
         L5PXS+yKDnGrslO2eLNh/2XKtwS/1g/yDBe5/+eEPHZ2cCHwpUQ1qxHq94RdDxY3fjoa
         BLCg==
X-Received: by 10.66.62.137 with SMTP id y9mr125977428par.87.1426427779689;
        Sun, 15 Mar 2015 06:56:19 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fr13sm12554218pdb.55.2015.03.15.06.56.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 15 Mar 2015 06:56:18 -0700 (PDT)
Date: Sun, 15 Mar 2015 19:24:28 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtft: Move variable declarations to improve
 codestyle
Message-ID: <20150315135428.GA5372@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.21 (2010-09-15)

Move variable declarations, use typedefs to define
variables and reindent code to improve compactness
and readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 39 ++++++++++++++++------------------
 1 file changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 7aa9e8c..acf5acb 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -33,13 +33,13 @@
 #define WIDTH		64
 #define HEIGHT		64
 #define TOTALWIDTH	(WIDTH * 2)	 /* because 2 x ks0108 in one display */
-#define FPS			20
+#define FPS		20
 
 #define EPIN		gpio.wr
-#define RS			gpio.dc
-#define RW			gpio.aux[2]
-#define CS0			gpio.aux[0]
-#define CS1			gpio.aux[1]
+#define RS		gpio.dc
+#define RW		gpio.aux[2]
+#define CS0		gpio.aux[0]
+#define CS1		gpio.aux[1]
 
 
 /* diffusing error (�Floyd-Steinberg�) */
@@ -275,22 +275,25 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 {
 	u16 *vmem16 = (u16 *)par->info->screen_base;
 	u8 *buf = par->txbuf.buf;
+	u16 i, j, b, g, r;
 	int x, y;
 	int ret = 0;
+	s16 pixel, error_b, error_w, error, *write_pos;
+	s8 coeff;
 
 	/* buffer to convert RGB565 -> grayscale16 -> Ditherd image 1bpp */
-	signed short *convert_buf = kmalloc(par->info->var.xres *
+	s16 *convert_buf = kmalloc(par->info->var.xres *
 		par->info->var.yres * sizeof(signed short), GFP_NOIO);
-
 	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
 
 	/* converting to grayscale16 */
 	for (x = 0; x < par->info->var.xres; ++x)
 		for (y = 0; y < par->info->var.yres; ++y) {
 			u16 pixel = vmem16[y *  par->info->var.xres + x];
-			u16 b = pixel & 0x1f;
-			u16 g = (pixel & (0x3f << 5)) >> 5;
-			u16 r = (pixel & (0x1f << (5 + 6))) >> (5 + 6);
+
+			b = pixel & 0x1f;
+			g = (pixel & (0x3f << 5)) >> 5;
+			r = (pixel & (0x1f << (5 + 6))) >> (5 + 6);
 
 			pixel = (299 * r + 587 * g + 114 * b) / 200;
 			if (pixel > 255)
@@ -304,12 +307,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	/* Image Dithering */
 	for (x = 0; x < par->info->var.xres; ++x)
 		for (y = 0; y < par->info->var.yres; ++y) {
-			signed short pixel =
-				convert_buf[y *  par->info->var.xres + x];
-			signed short error_b = pixel - BLACK;
-			signed short error_w = pixel - WHITE;
-			signed short error;
-			u16 i, j;
+			pixel = convert_buf[y *  par->info->var.xres + x];
+			error_b = pixel - BLACK;
+			error_w = pixel - WHITE;
 
 			/* what color close? */
 			if (abs(error_b) >= abs(error_w)) {
@@ -328,8 +328,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			for (i = 0; i < DIFFUSING_MATRIX_WIDTH; ++i)
 				/* diffusion matrix column */
 				for (j = 0; j < DIFFUSING_MATRIX_HEIGHT; ++j) {
-					signed short *write_pos;
-					signed char coeff;
 
 					/* skip pixels out of zone */
 					if (x + i < 0 ||
@@ -412,15 +410,14 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 
 static int write(struct fbtft_par *par, void *buf, size_t len)
 {
+	u8 i, data;
+
 	fbtft_par_dbg_hex(DEBUG_WRITE, par, par->info->device, u8, buf, len,
 		"%s(len=%d): ", __func__, len);
 
 	gpio_set_value(par->RW, 0); /* set write mode */
 
-
 	while (len--) {
-		u8 i, data;
-
 		data = *(u8 *) buf++;
 
 		/* set data bus */
-- 
1.9.1


