X-GM-THRID: 6200281981833445376
X-Received: by 10.129.92.197 with SMTP id q188mr2840904ywb.25.1443615644621;
        Wed, 30 Sep 2015 05:20:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.138 with SMTP id d10ls306492qge.27.gmail; Wed, 30 Sep
 2015 05:20:43 -0700 (PDT)
X-Received: by 10.31.178.196 with SMTP id b187mr2893212vkf.3.1443615643981;
        Wed, 30 Sep 2015 05:20:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id w5si48584pbt.1.2015.09.30.05.20.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:20:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so39591613pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QPda9LGtLPaRUcfcz05jRrEQntetpxrohD5epV72YZw=;
        b=MPG+OgcQdj8IWBM5d5ZIPFrBLpsq/INaPxW2QwSe3abo1ohFQ6hMluKVGJx3j8uEZl
         /6th/UQWz6LRf8RIyPevGNNGN9Snyck6VO1Vvg1kW7jRGKARcoUfbT+TrMIi783Bh/wM
         9eWpDzcH1lXFZdkXzFzISHRJYhn4f38uNfF36EM+FtUtHRQWJuB38eCgva79UrsW6fSl
         3aew9tkEaWQAUWB/tMybD5OkHaa5lcHMluN2e1VT2WI3+mRBh8SZtBOarIq30kUO8r3b
         YzqmK4rdr8ohHz9rc3nA0BBAyJHWyWIp7jqvM5qTfAZNSNDhyLT6WlEMeIB4NIz28yxd
         ItOQ==
X-Received: by 10.68.204.134 with SMTP id ky6mr4726965pbc.19.1443615643791;
        Wed, 30 Sep 2015 05:20:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id eg5sm438174pac.30.2015.09.30.05.20.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 05:20:43 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH 1/2] Staging: fbtft: Remove debug messages related to DEBUG_WRITE_VMEM
Date: Wed, 30 Sep 2015 17:50:32 +0530
Message-Id: <1443615633-5978-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560BD39A.012A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove debug messages related to fbtft_par_dbg(DEBUG_WRITE_VMEM.. )
as this info can be obtained using kernel function tracer

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 --
 drivers/staging/fbtft/fb_pcd8544.c     | 2 --
 drivers/staging/fbtft/fb_ssd1306.c     | 2 --
 drivers/staging/fbtft/fb_tls8204.c     | 2 --
 drivers/staging/fbtft/fb_uc1611.c      | 2 --
 drivers/staging/fbtft/fb_uc1701.c      | 2 --
 drivers/staging/fbtft/fb_watterott.c   | 4 ----
 7 files changed, 16 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 2a2d53c..88718f6 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -278,8 +278,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	if (!convert_buf)
 		return -ENOMEM;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	/* converting to grayscale16 */
 	for (x = 0; x < par->info->var.xres; ++x)
 		for (y = 0; y < par->info->var.yres; ++y) {
diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index 828174a..8b52523 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -117,8 +117,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int x, y, i;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	for (x = 0; x < 84; x++) {
 		for (y = 0; y < 6; y++) {
 			*buf = 0x00;
diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index 7568e94..568b433 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -165,8 +165,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int x, y, i;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	for (x = 0; x < par->info->var.xres; x++) {
 		for (y = 0; y < par->info->var.yres/8; y++) {
 			*buf = 0x00;
diff --git a/drivers/staging/fbtft/fb_tls8204.c b/drivers/staging/fbtft/fb_tls8204.c
index 4e16ea7..d609f87 100644
--- a/drivers/staging/fbtft/fb_tls8204.c
+++ b/drivers/staging/fbtft/fb_tls8204.c
@@ -98,8 +98,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int x, y, i;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	for (y = 0; y < HEIGHT / 8; y++) {
 		u8 *buf = par->txbuf.buf;
 		/* The display is 102x68 but the LCD is 84x48.  Set
diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index 5b83661..664e313 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -230,8 +230,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int x, y, i;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	switch (par->pdata->display.buswidth) {
 	case 8:
 		switch (par->info->var.rotate) {
diff --git a/drivers/staging/fbtft/fb_uc1701.c b/drivers/staging/fbtft/fb_uc1701.c
index 28b13cf..28aa100 100644
--- a/drivers/staging/fbtft/fb_uc1701.c
+++ b/drivers/staging/fbtft/fb_uc1701.c
@@ -146,8 +146,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int x, y, i;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	for (y = 0; y < PAGES; y++) {
 		buf = par->txbuf.buf;
 		for (x = 0; x < WIDTH; x++) {
diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index c480049..9c2f0e3 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -74,8 +74,6 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int i, j;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	start_line = offset / par->info->fix.line_length;
 	end_line = start_line + (len / par->info->fix.line_length) - 1;
 
@@ -113,8 +111,6 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	int i, j;
 	int ret = 0;
 
-	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "%s()\n", __func__);
-
 	start_line = offset / par->info->fix.line_length;
 	end_line = start_line + (len / par->info->fix.line_length) - 1;
 
-- 
2.1.4


