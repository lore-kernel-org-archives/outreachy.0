X-GM-THRID: 8019664437248
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,57f44540107a3e92,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.166.77 with SMTP id ze13mr46325878vdb.9.1426220562772;
        Thu, 12 Mar 2015 21:22:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.125.133 with SMTP id mq5ls626563obb.50.gmail; Thu, 12 Mar
 2015 21:22:42 -0700 (PDT)
X-Received: by 10.182.126.12 with SMTP id mu12mr49898266obb.13.1426220562540;
        Thu, 12 Mar 2015 21:22:42 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id ri9si162843pdb.1.2015.03.12.21.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 21:22:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so26246934pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 21:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7AOE6Cm2gA6YT313h9TnDyJao89IE52L0ZR8T58lBNY=;
        b=EGqqlc5CQ4A8nO3K6M46dqlhclxW/sAqqNJd1H4faNGTtMYWfry4xvHvWdAeB12iO5
         yCNXn7ohPTlwKGSc6+457ceOrhOMySbKlLuxZ2IMEdJuSdYu4ddw3HVRFPyPyTTwNB8/
         20OYuh9/qorCVjkWZijWaxIimBnEqCCB8u8R7dmYd59AJYzD9/5cabnkn8CPIP4pv0KU
         grWb7m8z2tyaZ+Now8NBzZlOh/MG5g0NHg2z6294MEXOm+82t3Et2B4Qf9dgTrAcMhSn
         C19Fdi6lZq9/quimZTTEDViX3TS0omN5rddWJQifiph/HwVWt/GOO1vCy9Z1e2Gay5S4
         03nQ==
X-Received: by 10.66.124.227 with SMTP id ml3mr98857406pab.28.1426220562408;
        Thu, 12 Mar 2015 21:22:42 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id cz10sm984130pdb.9.2015.03.12.21.22.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 21:22:41 -0700 (PDT)
Date: Fri, 13 Mar 2015 09:50:53 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtbt: Removed unneeded print messages
Message-ID: <20150313042053.GA3146@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These print messages are removed as only indicate entry
into the function or print the arguments but not any 
potential errors.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index acf5acb..9c41cc9 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -75,8 +75,6 @@ static int init_display(struct fbtft_par *par)
 {
 	u8 i;
 
-	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
-
 	par->fbtftops.reset(par);
 
 	for (i = 0; i < 2; ++i) {
@@ -245,10 +243,6 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 	addr_win.ys_page = ys / 8;
 	addr_win.xe = xe;
 	addr_win.ye_page = ye / 8;
-
-	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par,
-		"%s(xs=%d, ys_page=%d, xe=%d, ye_page=%d)\n", __func__,
-		addr_win.xs, addr_win.ys_page, addr_win.xe, addr_win.ye_page);
 }
 
 static void
@@ -284,7 +278,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	/* buffer to convert RGB565 -> grayscale16 -> Ditherd image 1bpp */
 	s16 *convert_buf = kmalloc(par->info->var.xres *
 		par->info->var.yres * sizeof(signed short), GFP_NOIO);
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
 
 	/* converting to grayscale16 */
 	for (x = 0; x < par->info->var.xres; ++x)
@@ -412,9 +405,6 @@ static int write(struct fbtft_par *par, void *buf, size_t len)
 {
 	u8 i, data;
 
-	fbtft_par_dbg_hex(DEBUG_WRITE, par, par->info->device, u8, buf, len,
-		"%s(len=%d): ", __func__, len);
-
 	gpio_set_value(par->RW, 0); /* set write mode */
 
 	while (len--) {
-- 
1.9.1


