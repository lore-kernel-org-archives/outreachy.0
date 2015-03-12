X-GM-THRID: 7714883239936
X-Received: by 10.112.162.135 with SMTP id ya7mr5835381lbb.14.1426123428576;
        Wed, 11 Mar 2015 18:23:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.198 with SMTP id k6ls506938wiy.52.canary; Wed, 11 Mar
 2015 18:23:48 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr875587wix.0.1426123428209;
        Wed, 11 Mar 2015 18:23:48 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bz6si782769wib.3.2015.03.11.18.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id em10so16361562wid.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+jCChXgPIAWO79l2vI/l2+o7eosUPb56fOSrtihkC6M=;
        b=Zthj11cyGgJdOHF3qO1BHzMlotc1HfKlU/Ue7RN17gXGSSz6q5N8ozpm1uFF9y6Eqc
         UHpNCBP++2/OQrfXU3BpKTjGBsJGzQboUOb/9VbU/Y3FEx2e7eZYmKwMkcKtNOSDpgOB
         aSY97RnD4f+B8aKOcoVR7z+da3pLpEL/RFPbcadbV2jRK3X0Ckx59pQ/GhR5LRGjoBsf
         DAKcJewVfCgdsXgvTXomfyG1/FOqV280um1GFDPdookFLL1mVIujlOF3ZB6dFBBj0qNp
         kAVxkC5UZuySTFIu5Yvd5QAsIaAfQJvlAM6G/JDsxqrwHv9xsTcFePoICs+6ZVk2nBBZ
         2kpg==
X-Received: by 10.180.98.131 with SMTP id ei3mr82466312wib.62.1426123428153;
        Wed, 11 Mar 2015 18:23:48 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:47 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 8/9] staging: sm750: Place * next to identifier
Date: Thu, 12 Mar 2015 03:23:13 +0200
Message-Id: <2d055737e0aa2145c1bc987577a58971560df808.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Place * in pointer type next to the identifier, to follow Linux
coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index f5b4dae..ffc977b 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -134,7 +134,7 @@ static const struct fb_videomode lynx750_ext[] = {
 
 
 /* no hardware cursor supported under version 2.6.10, kernel bug */
-static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
+static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
 {
 	struct lynxfb_par  *par;
 	struct lynxfb_crtc *crtc;
@@ -188,7 +188,7 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 	return 0;
 }
 
-static void lynxfb_ops_fillrect(struct fb_info* info, const struct fb_fillrect* region)
+static void lynxfb_ops_fillrect(struct fb_info *info, const struct fb_fillrect *region)
 {
 	struct lynxfb_par *par;
 	struct lynx_share *share;
@@ -207,7 +207,7 @@ static void lynxfb_ops_fillrect(struct fb_info* info, const struct fb_fillrect*
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
-	color = (Bpp == 1)?region->color:((u32*)info->pseudo_palette)[region->color];
+	color = (Bpp == 1)?region->color:((u32 *)info->pseudo_palette)[region->color];
 	rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR:HW_ROP2_COPY;
 
 	myspin_lock(&share->slock);
@@ -260,8 +260,8 @@ static void lynxfb_ops_imageblit(struct fb_info *info, const struct fb_image *im
 	if (image->depth == 1) {
 		if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
 			info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
-			fgcol = ((u32*)info->pseudo_palette)[image->fg_color];
-			bgcol = ((u32*)info->pseudo_palette)[image->bg_color];
+			fgcol = ((u32 *)info->pseudo_palette)[image->fg_color];
+			bgcol = ((u32 *)info->pseudo_palette)[image->bg_color];
 		} else {
 			fgcol = image->fg_color;
 			bgcol = image->bg_color;
-- 
1.9.1


