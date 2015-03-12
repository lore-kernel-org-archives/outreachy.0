X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.75.232 with SMTP id f8mr9844909wiw.0.1426190365988;
        Thu, 12 Mar 2015 12:59:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.7.229 with SMTP id m5ls14193wia.14.canary; Thu, 12 Mar
 2015 12:59:25 -0700 (PDT)
X-Received: by 10.180.182.201 with SMTP id eg9mr2801853wic.3.1426190365744;
        Thu, 12 Mar 2015 12:59:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id o3si1613823wib.2.2015.03.12.12.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id w55so18819992wes.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+jCChXgPIAWO79l2vI/l2+o7eosUPb56fOSrtihkC6M=;
        b=WO/igg8g4s6IWJogEJ20b6/ynMX95I0YoBimeswnEZBZFzVf+G/bQ0AK3V8hJh7aN9
         Q7UwgporuQrL1Pv0FWCRviZcKxen72NTAQ9aCt+X9t2vBH6DWrqVBl2V8gW5D5FQtUR0
         l6OSQBT0w0X5FNAN9QA0Ze+qrvJGb+daurDbVdrxOTCwL+i/Xzbc3Dj9Q3saE6QQw73q
         IVyYVwIeqPAGcJLdbtn5FTrF5jXtg7qBzVYzVBBdBjJHiC1oh0D9vMVBdipnxkn+lGLm
         Trl0sVxgNJyTyjz9/Nj6ozGAp/KTVoS8kxKtLn4PZpwaFhpXaMfo5cnXyRBo01prgfJf
         FThQ==
X-Received: by 10.194.221.100 with SMTP id qd4mr88650678wjc.113.1426190365684;
        Thu, 12 Mar 2015 12:59:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:23 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 8/9] staging: sm750: Place * next to identifier
Date: Thu, 12 Mar 2015 21:58:52 +0200
Message-Id: <a290aaff4eda45c05e84c40e65e0c1c0ead47d5f.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

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


