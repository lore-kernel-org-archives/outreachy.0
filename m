X-GM-THRID: 7888814735360
X-Received: by 10.236.63.230 with SMTP id a66mr45270574yhd.51.1426170856052;
        Thu, 12 Mar 2015 07:34:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.135.136 with SMTP id ps8ls488196obb.94.gmail; Thu, 12 Mar
 2015 07:34:15 -0700 (PDT)
X-Received: by 10.182.96.131 with SMTP id ds3mr41253226obb.35.1426170855807;
        Thu, 12 Mar 2015 07:34:15 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id gu4si1364943pac.1.2015.03.12.07.34.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 07:34:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id fp1so20579157pdb.7
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 07:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0C78HdeiJ0jPVUC2VK3etFP++w9Mq3Iaicf5IlcS2a4=;
        b=HIStiy9LT0Qb3gtdo8AMe7XmXalXg8zgvXMBGslrxrBP1JkQ+Wn8gAO7QJtQNGN1Fi
         X9WnhIl0URphP2I4TvGmY9aHfm9k1H6IN8GKyHPqBmsAV5L6T0FZt3A0Hag4XUy28Egv
         eHqeG2E8ghwnFPcNZ6lQJ+9kcS5uNQgAvf60x3mG4BOALZS/HT42Zu1x2fvqO9+fAljd
         hBu151cdiUo4EGOgdVkMhx4TrrYa9TIjdUKe0t1WZMsHWmuJC2JoMoOyAk0P2iH4EHNo
         dT9YEDjvSY2bl/jiu/OO6yynsiMxhXQqlKKUMBq2pBtdMqL0BNWBQsLM+g4QC5gwrlDh
         OdoQ==
X-Received: by 10.70.14.226 with SMTP id s2mr88593161pdc.145.1426170855506;
        Thu, 12 Mar 2015 07:34:15 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id kn4sm11314948pab.48.2015.03.12.07.34.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 07:34:14 -0700 (PDT)
Date: Thu, 12 Mar 2015 20:02:26 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtbt: Fix code style issues
Message-ID: <20150312143226.GA26267@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Reduce line size to increase readability and 
remove unnecessary brackets.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_ra8875.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index e21af6c..14e8cf0 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -72,12 +72,13 @@ static int init_display(struct fbtft_par *par)
 
 	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
 		"%s()\n", __func__);
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par,
-		"display size %dx%d\n", par->info->var.xres, par->info->var.yres);
+	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "display size %dx%d\n",
+			par->info->var.xres, par->info->var.yres);
 
 	par->fbtftops.reset(par);
 
-	if ((par->info->var.xres == 320) && (par->info->var.yres == 240)) {
+	if (par->info->var.xres == 320 &&
+		par->info->var.yres == 240) {
 		/* PLL clock frequency */
 		write_reg(par, 0x88, 0x0A);
 		write_reg(par, 0x89, 0x02);
@@ -101,7 +102,8 @@ static int init_display(struct fbtft_par *par)
 		write_reg(par, 0x1D, 0x0E);
 		write_reg(par, 0x1E, 0x00);
 		write_reg(par, 0x1F, 0x02);
-	} else if ((par->info->var.xres == 480) && (par->info->var.yres == 272)) {
+	} else if (par->info->var.xres == 480 && 
+			par->info->var.yres == 272) {
 		/* PLL clock frequency  */
 		write_reg(par, 0x88, 0x0A);
 		write_reg(par, 0x89, 0x02);
@@ -125,7 +127,8 @@ static int init_display(struct fbtft_par *par)
 		write_reg(par, 0x1D, 0x07);
 		write_reg(par, 0x1E, 0x00);
 		write_reg(par, 0x1F, 0x09);
-	} else if ((par->info->var.xres == 640) && (par->info->var.yres == 480)) {
+	} else if (par->info->var.xres == 640 &&
+			par->info->var.yres == 480) {
 		/* PLL clock frequency */
 		write_reg(par, 0x88, 0x0B);
 		write_reg(par, 0x89, 0x02);
@@ -149,7 +152,8 @@ static int init_display(struct fbtft_par *par)
 		write_reg(par, 0x1D, 0x0E);
 		write_reg(par, 0x1E, 0x00);
 		write_reg(par, 0x1F, 0x01);
-	} else if ((par->info->var.xres == 800) && (par->info->var.yres == 480)) {
+	} else if (par->info->var.xres == 800 &&
+			par->info->var.yres == 480) {
 		/* PLL clock frequency */
 		write_reg(par, 0x88, 0x0B);
 		write_reg(par, 0x89, 0x02);
@@ -174,7 +178,8 @@ static int init_display(struct fbtft_par *par)
 		write_reg(par, 0x1E, 0x00);
 		write_reg(par, 0x1F, 0x01);
 	} else {
-		dev_err(par->info->device, "display size is not supported!!");
+		dev_err(par->info->device,
+			"display size is not supported!!");
 		return -1;
 	}
 
-- 
1.9.1


