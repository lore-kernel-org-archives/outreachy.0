X-GM-THRID: 7826491572224
X-Received: by 10.66.140.66 with SMTP id re2mr41384799pab.29.1426143956314;
        Thu, 12 Mar 2015 00:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.226.134 with SMTP id rs6ls417258obc.12.gmail; Thu, 12 Mar
 2015 00:05:56 -0700 (PDT)
X-Received: by 10.182.148.164 with SMTP id tt4mr39804523obb.30.1426143955998;
        Thu, 12 Mar 2015 00:05:55 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ri9si1164826pdb.1.2015.03.12.00.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 00:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id eu11so18198296pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 00:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:reply-to:mime-version:content-type
         :content-disposition:user-agent;
        bh=tqu0t0Gd3rwfBekQHTdhAJfd5tto+326AaOYdRtTIJc=;
        b=GW+gNLv6d6064wqLeOkP2CnYNTy8QaLDgL/dVA/gYPvg4SFuCwGZ/2aXFrIay2Y0Mq
         jGfBOFtHnitylIVbx8p5EQq3E41FcK1VEFptpesMl0XpqMvkJquNo3ZzXBKBs+/H9Wfe
         reDw+EFWTaNJolqhYEDEGO8nmEnLhZ41k7lGn4UqaptXd/9p6CV1VgMRPiAaFY2+l4sK
         /Osykze/z3/a6NYYWW09kg957zDNloTdSq7TzFLB1AqCnwLUNJkcAqT/PW9NrXDhLziB
         BjSJ0d09ox2EM8AQ8tuMlH2bQdmdOhLK7akIU3wKzNjGO2eKjW6MjtPqenbBaxrLrRSz
         gd6g==
X-Received: by 10.70.33.169 with SMTP id s9mr6632134pdi.160.1426143955857;
        Thu, 12 Mar 2015 00:05:55 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id yt8sm9302606pab.22.2015.03.12.00.05.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 00:05:54 -0700 (PDT)
Date: Thu, 12 Mar 2015 12:34:07 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtbt: Move variable declarations to improve
 codestyle
Message-ID: <20150312070407.GA5718@akanksha>
Reply-To: Thedatatypesarereplacedwithtypedefsandthedeclarationsaremovedabovesoastofollowkernelcodingconventions.@akanksha
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)


Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 9d74b23..2ec607d 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
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
-- 
1.9.1


