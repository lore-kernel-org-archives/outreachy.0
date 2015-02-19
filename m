X-GM-THRID: 761102598144
X-Received: by 10.152.4.229 with SMTP id n5mr787072lan.1.1424371381104;
        Thu, 19 Feb 2015 10:43:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.30.38 with SMTP id p6ls194892lah.52.gmail; Thu, 19 Feb
 2015 10:43:00 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr788387lal.3.1424371380812;
        Thu, 19 Feb 2015 10:43:00 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id ev8si6460489wib.3.2015.02.19.10.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id x12so8930615wgg.11
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 10:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Vkmmis48OUfb2epSUFtp2P1ZGA5zGC2LQ0Lux4FRif8=;
        b=gKt0LCPWJge0g9K3MzzjVnlG+vx8hvdmNkXG5Dr0BcbO+PhiK7JYPNMQOfK0F4FG/r
         L3Ifbx8JfNaW5vr/M8PvPA2pSdrxOf8ngP9/o5wfHFwiIQ7XCGXSlSK7arBCp31Jc26q
         lnhhs0nDMuTCein4FbbQSit4JTE/HC9jtBOBMHEaTGntQCz0OYaE8eH0wI3W2lZphO6x
         joZFNvU95W3oqB6smDuh4UZd8HFTHYwrudzBRF+HG1v6TZHFN0TqpTtLOPLJJm+DzW82
         Yyvk1SAKblccBV5r6P1i+v51th3FdvsYRrYgNvF2asjjMCZLT3nF1dvnUKDIhnTjSxNi
         x8sA==
X-Received: by 10.195.12.35 with SMTP id en3mr11182547wjd.129.1424371380689;
        Thu, 19 Feb 2015 10:43:00 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id fo17sm38568993wjc.19.2015.02.19.10.42.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 10:43:00 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/2] Staging: fbtft: Fix struct backlight_ops should normally be const
Date: Thu, 19 Feb 2015 20:42:44 +0200
Message-Id: <1424371364-7277-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com>
References: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com>

This patch fixes following checkpatch.pl warningi in fb_ssd1351.c:
WARNING: struct backlight_ops should normally be const

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index b59120c..bc4d188 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -212,11 +212,11 @@ static void register_onboard_backlight(struct fbtft_par *par)
 {
 	struct backlight_device *bd;
 	struct backlight_properties bl_props = { 0, };
-	struct backlight_ops *bl_ops;
+	const struct backlight_ops *bl_ops;
 
 	fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
 
-	bl_ops = devm_kzalloc(par->info->device, sizeof(struct backlight_ops),
+	bl_ops = devm_kzalloc(par->info->device, sizeof(const struct backlight_ops),
 				GFP_KERNEL);
 	if (!bl_ops) {
 		dev_err(par->info->device,
-- 
1.9.1


