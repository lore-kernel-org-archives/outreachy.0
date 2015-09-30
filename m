X-GM-THRID: 6200291870677925888
X-Received: by 10.129.39.87 with SMTP id n84mr3177813ywn.4.1443617950747;
        Wed, 30 Sep 2015 05:59:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.247.7 with SMTP id ya7ls192331obc.82.gmail; Wed, 30 Sep
 2015 05:59:10 -0700 (PDT)
X-Received: by 10.182.240.202 with SMTP id wc10mr3193175obc.9.1443617950421;
        Wed, 30 Sep 2015 05:59:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id w5si69770pbt.1.2015.09.30.05.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:59:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv12so41214387pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=39LM60AkPi6EpCo0NuRYFhaSfmwojgF0U3h4s6M6xl4=;
        b=dh//Bp+nyNJ47vjGyiS/2tQvDNNlZYMjMuKyYT5Ae2qeulydzbV+GxXvfpwj/EafEz
         0jekQzXvXoOL+ZckcPnQz47mrA8OOR7GALV+MBBCtRjMGXa96/by2vUjm2jxCMGJgjlc
         fwGnBc7Cw7aOvJguN5DJ9HFdsRFZR+luzMwO8XGS2qGB4mQtY6A99i7Rbz62KMTHggex
         sI811pSXSoANd2yNsAhF/afTkd5/TDOnp0UcGAYuqsycXJQFkMgbqQYDSsBwoHoWPKCb
         /WtBc8QXmmLUfXOKrUJ15D3Kfd/Uhx7wY9CDhU+dHCsrc3cmvnQ9ISY0IXDfYXgWyb9i
         wm8g==
X-Received: by 10.68.254.7 with SMTP id ae7mr4838642pbd.131.1443617950285;
        Wed, 30 Sep 2015 05:59:10 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gt1sm689575pbc.10.2015.09.30.05.59.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 05:59:09 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH v2 1/2] Staging: fbtft: Remove debug messages related to DEBUG_WRITE_VMEM
Date: Wed, 30 Sep 2015 18:28:53 +0530
Message-Id: <1443617934-6468-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443617934-6468-1-git-send-email-shraddha.6596@gmail.com>
References: <1443617934-6468-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.560BDC9C.0215,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove debug messages related to fbtft_par_dbg(DEBUG_WRITE_VMEM.. )
as this info can be obtained using kernel function tracer

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Added cover letter

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


