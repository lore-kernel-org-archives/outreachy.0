X-GM-THRID: 8441271681024
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,357f64e33847ef5b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.66.4 with SMTP id g4mr5589268yhd.11.1426420737766;
        Sun, 15 Mar 2015 04:58:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.21 with SMTP id i21ls1497431ioo.65.gmail; Sun, 15 Mar
 2015 04:58:57 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr47799401pab.11.1426420737493;
        Sun, 15 Mar 2015 04:58:57 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id l3si1312775pdo.0.2015.03.15.04.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 04:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id yw6so35726077pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 04:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=vsLFJ8w9eLqkDA1dDd6VlPDW35rhByqCjZz8Eoy1RR0=;
        b=Fm+O1dznITMQ8Qf6D/AJD5ZtIUltAp7CgCCYPvoqosN2EjSgwfS5YdnoT9zP9uwV2N
         NtBAz6OcLNdVDsofXMXZy7gmI6DbxS4qbjVaLw/TKxMUxnWhEsNwe8vKqP7AlhHLm2DB
         8+47/Jyf0lW02+HhGYbYgHpn4fLS+o0CmseN1SLP+xd5HEzEI8rfOKdkH0hqkAgD3rcm
         uz7G2e+r0XvcXT5Ga+CrITGd4qesNCwEo/74tYSzcujsIkPiqkNaMkbaKdPF8Q4aoZXG
         8/UN42J6p6Ubx/KRNB4w8NlwQb1HaIn1VrsjNvxPCBgRGhcb46s8r/HwPRwvLjf/ei8N
         +O/Q==
X-Received: by 10.70.47.193 with SMTP id f1mr106851383pdn.158.1426420737408;
        Sun, 15 Mar 2015 04:58:57 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id i10sm12169876pdk.53.2015.03.15.04.58.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 15 Mar 2015 04:58:56 -0700 (PDT)
Date: Sun, 15 Mar 2015 17:27:05 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: fbtft: Remove unnecessary parenthesis and split
 lines to increase readability
Message-ID: <20150315115705.GA28579@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary parenthesis in condition statement and
split lines to increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v2: Changed subject line to make it more
		descriptive.
 drivers/staging/fbtft/fb_ra8875.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index e21af6c..bc8ca1e 100644
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
-- 
1.9.1


