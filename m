X-GM-THRID: 505789022208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,370d94720141cc10
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr271169lbb.14.1424314118128;
        Wed, 18 Feb 2015 18:48:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.161 with SMTP id dd1ls727718wib.49.canary; Wed, 18 Feb
 2015 18:48:37 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr273442wjz.0.1424314117824;
        Wed, 18 Feb 2015 18:48:37 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com. [74.125.82.181])
        by gmr-mx.google.com with ESMTPS id ew5si8936333wid.1.2015.02.18.18.48.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:48:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.181 as permitted sender) client-ip=74.125.82.181;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.181 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so4722566wes.7
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NEFwBq3dqkmdbWKUaS8bq2bGl1LEqj24o+JShJIbqgw=;
        b=SPzPfn64sf2e/vQ1qys5hlQ/TWl9F0scByn+bVYMajNX7pqpkBLy434rvGyJyKaGgn
         qHKN2hbPRjmEF9uyI69jqUVMftucabm9LMPhMycdmI4NcfGIAn4JZbw11o+Cw9RmTSrj
         S9Gfldx9lziNfuwPImO26onGJDqWpkbMMQRZKVLiXDmBJOrAM22MtM8SI/PouOtlGaqZ
         QAOL7n0PUddhFP0YA4VPR432OudniWWbtRfivl4kBGEX9Dd93PS+M+Fee1wyCjwmDmWU
         i3YG1kXiPOZ710elwR55rlQNT8gb2vLaw1Mjg/mGDzk0Y9FE29J/+5uUjJBQ/JBEqqJK
         XnyQ==
X-Received: by 10.180.36.174 with SMTP id r14mr1955132wij.93.1424314117726;
        Wed, 18 Feb 2015 18:48:37 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id lx10sm3582774wjb.17.2015.02.18.18.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:48:37 -0800 (PST)
Date: Thu, 19 Feb 2015 04:48:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/8] staging: fbtft: fix space prohibited before that ','
Message-ID: <a7a152a1a1e0bb24a891571e01f00a564afe71cc.1424313310.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl error:
space prohibited before that ','

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_ra8875.c | 150 +++++++++++++++++++-------------------
 1 file changed, 75 insertions(+), 75 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index c323c06..8df9737 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -79,112 +79,112 @@ static int init_display(struct fbtft_par *par)
 
 	if ((par->info->var.xres == 320) && (par->info->var.yres == 240)) {
 		/* PLL clock frequency */
-		write_reg(par, 0x88 , 0x0A);
-		write_reg(par, 0x89 , 0x02);
+		write_reg(par, 0x88, 0x0A);
+		write_reg(par, 0x89, 0x02);
 		mdelay(10);
 		/* color deep / MCU Interface */
-		write_reg(par, 0x10 , 0x0C);
+		write_reg(par, 0x10, 0x0C);
 		/* pixel clock period  */
-		write_reg(par, 0x04 , 0x03);
+		write_reg(par, 0x04, 0x03);
 		mdelay(1);
 		/* horizontal settings */
-		write_reg(par, 0x14 , 0x27);
-		write_reg(par, 0x15 , 0x00);
-		write_reg(par, 0x16 , 0x05);
-		write_reg(par, 0x17 , 0x04);
-		write_reg(par, 0x18 , 0x03);
+		write_reg(par, 0x14, 0x27);
+		write_reg(par, 0x15, 0x00);
+		write_reg(par, 0x16, 0x05);
+		write_reg(par, 0x17, 0x04);
+		write_reg(par, 0x18, 0x03);
 		/* vertical settings */
-		write_reg(par, 0x19 , 0xEF);
-		write_reg(par, 0x1A , 0x00);
-		write_reg(par, 0x1B , 0x05);
-		write_reg(par, 0x1C , 0x00);
-		write_reg(par, 0x1D , 0x0E);
-		write_reg(par, 0x1E , 0x00);
-		write_reg(par, 0x1F , 0x02);
+		write_reg(par, 0x19, 0xEF);
+		write_reg(par, 0x1A, 0x00);
+		write_reg(par, 0x1B, 0x05);
+		write_reg(par, 0x1C, 0x00);
+		write_reg(par, 0x1D, 0x0E);
+		write_reg(par, 0x1E, 0x00);
+		write_reg(par, 0x1F, 0x02);
 	} else if ((par->info->var.xres == 480) && (par->info->var.yres == 272)) {
 		/* PLL clock frequency  */
-		write_reg(par, 0x88 , 0x0A);
-		write_reg(par, 0x89 , 0x02);
+		write_reg(par, 0x88, 0x0A);
+		write_reg(par, 0x89, 0x02);
 		mdelay(10);
 		/* color deep / MCU Interface */
-		write_reg(par, 0x10 , 0x0C);
+		write_reg(par, 0x10, 0x0C);
 		/* pixel clock period  */
-		write_reg(par, 0x04 , 0x82);
+		write_reg(par, 0x04, 0x82);
 		mdelay(1);
 		/* horizontal settings */
-		write_reg(par, 0x14 , 0x3B);
-		write_reg(par, 0x15 , 0x00);
-		write_reg(par, 0x16 , 0x01);
-		write_reg(par, 0x17 , 0x00);
-		write_reg(par, 0x18 , 0x05);
+		write_reg(par, 0x14, 0x3B);
+		write_reg(par, 0x15, 0x00);
+		write_reg(par, 0x16, 0x01);
+		write_reg(par, 0x17, 0x00);
+		write_reg(par, 0x18, 0x05);
 		/* vertical settings */
-		write_reg(par, 0x19 , 0x0F);
-		write_reg(par, 0x1A , 0x01);
-		write_reg(par, 0x1B , 0x02);
-		write_reg(par, 0x1C , 0x00);
-		write_reg(par, 0x1D , 0x07);
-		write_reg(par, 0x1E , 0x00);
-		write_reg(par, 0x1F , 0x09);
+		write_reg(par, 0x19, 0x0F);
+		write_reg(par, 0x1A, 0x01);
+		write_reg(par, 0x1B, 0x02);
+		write_reg(par, 0x1C, 0x00);
+		write_reg(par, 0x1D, 0x07);
+		write_reg(par, 0x1E, 0x00);
+		write_reg(par, 0x1F, 0x09);
 	} else if ((par->info->var.xres == 640) && (par->info->var.yres == 480)) {
 		/* PLL clock frequency */
-		write_reg(par, 0x88 , 0x0B);
-		write_reg(par, 0x89 , 0x02);
+		write_reg(par, 0x88, 0x0B);
+		write_reg(par, 0x89, 0x02);
 		mdelay(10);
 		/* color deep / MCU Interface */
-		write_reg(par, 0x10 , 0x0C);
+		write_reg(par, 0x10, 0x0C);
 		/* pixel clock period */
-		write_reg(par, 0x04 , 0x01);
+		write_reg(par, 0x04, 0x01);
 		mdelay(1);
 		/* horizontal settings */
-		write_reg(par, 0x14 , 0x4F);
-		write_reg(par, 0x15 , 0x05);
-		write_reg(par, 0x16 , 0x0F);
-		write_reg(par, 0x17 , 0x01);
-		write_reg(par, 0x18 , 0x00);
+		write_reg(par, 0x14, 0x4F);
+		write_reg(par, 0x15, 0x05);
+		write_reg(par, 0x16, 0x0F);
+		write_reg(par, 0x17, 0x01);
+		write_reg(par, 0x18, 0x00);
 		/* vertical settings */
-		write_reg(par, 0x19 , 0xDF);
-		write_reg(par, 0x1A , 0x01);
-		write_reg(par, 0x1B , 0x0A);
-		write_reg(par, 0x1C , 0x00);
-		write_reg(par, 0x1D , 0x0E);
-		write_reg(par, 0x1E , 0x00);
-		write_reg(par, 0x1F , 0x01);
+		write_reg(par, 0x19, 0xDF);
+		write_reg(par, 0x1A, 0x01);
+		write_reg(par, 0x1B, 0x0A);
+		write_reg(par, 0x1C, 0x00);
+		write_reg(par, 0x1D, 0x0E);
+		write_reg(par, 0x1E, 0x00);
+		write_reg(par, 0x1F, 0x01);
 	} else if ((par->info->var.xres == 800) && (par->info->var.yres == 480)) {
 		/* PLL clock frequency */
-		write_reg(par, 0x88 , 0x0B);
-		write_reg(par, 0x89 , 0x02);
+		write_reg(par, 0x88, 0x0B);
+		write_reg(par, 0x89, 0x02);
 		mdelay(10);
 		/* color deep / MCU Interface */
-		write_reg(par, 0x10 , 0x0C);
+		write_reg(par, 0x10, 0x0C);
 		/* pixel clock period */
-		write_reg(par, 0x04 , 0x81);
+		write_reg(par, 0x04, 0x81);
 		mdelay(1);
 		/* horizontal settings */
-		write_reg(par, 0x14 , 0x63);
-		write_reg(par, 0x15 , 0x03);
-		write_reg(par, 0x16 , 0x03);
-		write_reg(par, 0x17 , 0x02);
-		write_reg(par, 0x18 , 0x00);
+		write_reg(par, 0x14, 0x63);
+		write_reg(par, 0x15, 0x03);
+		write_reg(par, 0x16, 0x03);
+		write_reg(par, 0x17, 0x02);
+		write_reg(par, 0x18, 0x00);
 		/* vertical settings */
-		write_reg(par, 0x19 , 0xDF);
-		write_reg(par, 0x1A , 0x01);
-		write_reg(par, 0x1B , 0x14);
-		write_reg(par, 0x1C , 0x00);
-		write_reg(par, 0x1D , 0x06);
-		write_reg(par, 0x1E , 0x00);
-		write_reg(par, 0x1F , 0x01);
+		write_reg(par, 0x19, 0xDF);
+		write_reg(par, 0x1A, 0x01);
+		write_reg(par, 0x1B, 0x14);
+		write_reg(par, 0x1C, 0x00);
+		write_reg(par, 0x1D, 0x06);
+		write_reg(par, 0x1E, 0x00);
+		write_reg(par, 0x1F, 0x01);
 	} else {
 		dev_err(par->info->device, "display size is not supported!!");
 		return -1;
 	}
 
 	/* PWM clock */
-	write_reg(par, 0x8a , 0x81);
-	write_reg(par, 0x8b , 0xFF);
+	write_reg(par, 0x8a, 0x81);
+	write_reg(par, 0x8b, 0xFF);
 	mdelay(10);
 
 	/* Display ON */
-	write_reg(par, 0x01 , 0x80);
+	write_reg(par, 0x01, 0x80);
 	mdelay(10);
 
 	return 0;
@@ -196,14 +196,14 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 		"%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
 
 	/* Set_Active_Window */
-	write_reg(par, 0x30 , xs & 0x00FF);
-	write_reg(par, 0x31 , (xs & 0xFF00) >> 8);
-	write_reg(par, 0x32 , ys & 0x00FF);
-	write_reg(par, 0x33 , (ys & 0xFF00) >> 8);
-	write_reg(par, 0x34 , (xs+xe) & 0x00FF);
-	write_reg(par, 0x35 , ((xs+xe) & 0xFF00) >> 8);
-	write_reg(par, 0x36 , (ys+ye) & 0x00FF);
-	write_reg(par, 0x37 , ((ys+ye) & 0xFF00) >> 8);
+	write_reg(par, 0x30, xs & 0x00FF);
+	write_reg(par, 0x31, (xs & 0xFF00) >> 8);
+	write_reg(par, 0x32, ys & 0x00FF);
+	write_reg(par, 0x33, (ys & 0xFF00) >> 8);
+	write_reg(par, 0x34, (xs+xe) & 0x00FF);
+	write_reg(par, 0x35, ((xs+xe) & 0xFF00) >> 8);
+	write_reg(par, 0x36, (ys+ye) & 0x00FF);
+	write_reg(par, 0x37, ((ys+ye) & 0xFF00) >> 8);
 
 	/* Set_Memory_Write_Cursor */
 	write_reg(par, 0x46,  xs & 0xff);
-- 
1.9.3


