X-GM-THRID: 6200291870677925888
X-Received: by 10.140.235.131 with SMTP id g125mr3081181qhc.4.1443617953575;
        Wed, 30 Sep 2015 05:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.120.233 with SMTP id lf9ls185364obb.94.gmail; Wed, 30 Sep
 2015 05:59:13 -0700 (PDT)
X-Received: by 10.182.196.98 with SMTP id il2mr3113373obc.40.1443617953308;
        Wed, 30 Sep 2015 05:59:13 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si50495pac.2.2015.09.30.05.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id lk4so39902278pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eXMHG1qKaVdZUycZrcItHNfP/yEtUhiSRo32fMnhxEI=;
        b=WtPJaiHljwfCxapstzL2gOfy06UJ+PCB/Vi2l/d4wz8NJzullvBluDmp4nuA26gf93
         ypleXmy1kpMTmB6puHEw/4pN1rvkrDJEF1wuAOf0gCeHh7GhQmsUYS/6VFjtjMCBSWBI
         Cybi2ipfkXahOulNRYvrbikHihQAXxSCGn3W00P6eyIaeuElt4SRX/hzw9Pc7h2kWAyn
         Bj+Lx9w7L4Z39liJ0kGR5wKsOch7F8oUQdE6EC07dWM6lbdHvag4QspHL6fSNA8uDh2E
         OdAkMDX7DuxQsQq5Qa/psPdWN77jqy9dA73qxs+a5lJsQcqSqs9m480EAsdtD75nFTyd
         y5Lg==
X-Received: by 10.66.141.42 with SMTP id rl10mr4880303pab.18.1443617953145;
        Wed, 30 Sep 2015 05:59:13 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gt1sm689575pbc.10.2015.09.30.05.59.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 05:59:12 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH v2 2/2] Staging: fbtft: Remove debug messages related to DEBUG_BACKLIGHT
Date: Wed, 30 Sep 2015 18:28:54 +0530
Message-Id: <1443617934-6468-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443617934-6468-1-git-send-email-shraddha.6596@gmail.com>
References: <1443617934-6468-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.560BDC9F.01B9,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove debug messages related to fbtft_par_dbg(DEBUG_BACKLIGHT.. )
as this info can be obtained using kernel function tracer

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Added cover letter.

 drivers/staging/fbtft/fb_ssd1351.c   | 2 --
 drivers/staging/fbtft/fb_watterott.c | 2 --
 drivers/staging/fbtft/fbtft-core.c   | 4 ----
 3 files changed, 8 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index 83867e1..eb45b27 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -206,8 +206,6 @@ static void register_onboard_backlight(struct fbtft_par *par)
 	struct backlight_device *bd;
 	struct backlight_properties bl_props = { 0, };
 
-	fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
-
 	bl_props.type = BACKLIGHT_RAW;
 	bl_props.power = FB_BLANK_POWERDOWN;
 
diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 9c2f0e3..2be2f66 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -253,8 +253,6 @@ static void register_chip_backlight(struct fbtft_par *par)
 	struct backlight_device *bd;
 	struct backlight_properties bl_props = { 0, };
 
-	fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
-
 	bl_props.type = BACKLIGHT_RAW;
 	bl_props.power = FB_BLANK_POWERDOWN;
 	bl_props.max_brightness = 100;
diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index b318daf..c26e624 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -266,8 +266,6 @@ static int fbtft_backlight_get_brightness(struct backlight_device *bd)
 
 void fbtft_unregister_backlight(struct fbtft_par *par)
 {
-	fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
-
 	if (par->info->bl_dev) {
 		par->info->bl_dev->props.power = FB_BLANK_POWERDOWN;
 		backlight_update_status(par->info->bl_dev);
@@ -286,8 +284,6 @@ void fbtft_register_backlight(struct fbtft_par *par)
 	struct backlight_device *bd;
 	struct backlight_properties bl_props = { 0, };
 
-	fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
-
 	if (par->gpio.led[0] == -1) {
 		fbtft_par_dbg(DEBUG_BACKLIGHT, par,
 			"%s(): led pin not set, exiting.\n", __func__);
-- 
2.1.4


