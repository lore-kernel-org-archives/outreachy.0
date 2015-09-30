X-GM-THRID: 6200281981833445376
X-Received: by 10.182.79.35 with SMTP id g3mr3058616obx.22.1443615647064;
        Wed, 30 Sep 2015 05:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.143 with SMTP id k137ls259078ioe.53.gmail; Wed, 30 Sep
 2015 05:20:46 -0700 (PDT)
X-Received: by 10.50.66.170 with SMTP id g10mr3583020igt.5.1443615646612;
        Wed, 30 Sep 2015 05:20:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si48881pab.1.2015.09.30.05.20.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:20:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv12so40324749pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 05:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ohmxYl/5whTga3s5N+NtsjaEiI05APYufen7esH4/Yw=;
        b=PsOY4TRB70Hq8LC9oJ4JPBZoiq28Ne4vHxaO1/1xOfLLZkizTH1mltgMlYSOQdj1YF
         zbJ92chU4IkVAP7HVDU2cfLqMtX09XU6ufJe5YPGGcz2EwWcEmnIMMW3Or5I84aNxc5p
         2lB706QFuGuLbVRj1ejOfriyoP9/HmN5DzOBYUdoG1fcT5+JZehGUulRCgxDB8qYa1KC
         d4oal0FQX/BOPDuHTB21U8ALqGO8d0jeiCCfwaYHQyuHJurVFrwOYzccIsHvLSAiRCxW
         65Z49My+v5VOUaiIYvf84wgWXwawElf0iqe2noG26fITFiHrrAN6+RQte8ZQ/6Glz0ww
         Xi6w==
X-Received: by 10.68.68.133 with SMTP id w5mr4566591pbt.143.1443615646497;
        Wed, 30 Sep 2015 05:20:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id eg5sm438174pac.30.2015.09.30.05.20.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 05:20:46 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: [PATCH 2/2] Staging: fbtft: Remove debug messages related to DEBUG_BACKLIGHT
Date: Wed, 30 Sep 2015 17:50:33 +0530
Message-Id: <1443615633-5978-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443615633-5978-1-git-send-email-shraddha.6596@gmail.com>
References: <1443615633-5978-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.560BD39D.00D1,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove debug messages related to fbtft_par_dbg(DEBUG_BACKLIGHT.. )
as this info can be obtained using kernel function tracer

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
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


