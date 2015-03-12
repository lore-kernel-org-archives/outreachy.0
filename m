X-GM-THRID: 7714883239936
X-Received: by 10.112.142.1 with SMTP id rs1mr4687069lbb.19.1426190349724;
        Thu, 12 Mar 2015 12:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.206 with SMTP id q14ls369082lal.49.gmail; Thu, 12 Mar
 2015 12:59:09 -0700 (PDT)
X-Received: by 10.112.147.35 with SMTP id th3mr6512900lbb.15.1426190349212;
        Thu, 12 Mar 2015 12:59:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l8si1594454wia.0.2015.03.12.12.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id r20so613401wiv.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=E8ngU/tHW6bSH8VZHGETo0WdHRPfWmvILKHSB2hMuYg=;
        b=FmyzJhAT9Oaez48p8ojfVIKMKvmfBX+QN/Xt1zKTsv9BLvjSntMwCaDnM4QX1TOH9Q
         KMvaT3IOcePeBNbxi7UyRrDuW6Mz+7Z5vmPKKTH6hvh5uZ8ky8Ax5XvxqKeWT8b9wETT
         MtJv5DuDdxd3l/MPv7c7aarWYK1eJyn7wpGNT/EJHQY7FN2H2Ka5o3IcR0CvyDgES99t
         TP57R32N4PrGIjBYqEyE08y0P7dHyRzxcp0fD8MmekeWrUI5EwzZRoh6nKRafXXFOJ+b
         v+EYn/wMU6zzP0fHTn0VTgs56wM/M/qZgCruPg6G5QIdNuQqzhL2tA2rEs053fPx2HJk
         Gfzw==
X-Received: by 10.180.102.199 with SMTP id fq7mr89216667wib.89.1426190349102;
        Thu, 12 Mar 2015 12:59:09 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:08 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 2/9] staging: sm750: Add space before open bracket '{'
Date: Thu, 12 Mar 2015 21:58:46 +0200
Message-Id: <57f2897adc140994ef2595fe18ad103306bace23.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

Add space before curly open bracket '{', to follow Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 80 ++++++++++++++++++++---------------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 46c3aeb..67c3751 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -60,7 +60,7 @@ static char *g_option = NULL;
 
 /* if not use spin_lock, system will die if user load driver
  * and immediatly unload driver frequently (dual)*/
-static inline void myspin_lock(spinlock_t *sl){
+static inline void myspin_lock(spinlock_t *sl) {
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
@@ -68,7 +68,7 @@ static inline void myspin_lock(spinlock_t *sl){
 		spin_lock(sl);
 }
 
-static inline void myspin_unlock(spinlock_t *sl){
+static inline void myspin_unlock(spinlock_t *sl) {
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
@@ -144,7 +144,7 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 
 	if (fbcursor->image.width > cursor->maxW ||
 		fbcursor->image.height > cursor->maxH ||
-		 fbcursor->image.depth > 1){
+		 fbcursor->image.depth > 1) {
 		return -ENXIO;
 	}
 
@@ -152,12 +152,12 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 	if (fbcursor->set & FB_CUR_SETSIZE)
 		cursor->setSize(cursor, fbcursor->image.width, fbcursor->image.height);
 
-	if (fbcursor->set & FB_CUR_SETPOS){
+	if (fbcursor->set & FB_CUR_SETPOS) {
 		cursor->setPos(cursor, fbcursor->image.dx - info->var.xoffset,
 								fbcursor->image.dy - info->var.yoffset);
 	}
 
-	if (fbcursor->set & FB_CUR_SETCMAP){
+	if (fbcursor->set & FB_CUR_SETCMAP) {
 		/* get the 16bit color of kernel means */
 		u16 fg, bg;
 
@@ -256,7 +256,7 @@ static void lynxfb_ops_imageblit(struct fb_info *info, const struct fb_image *im
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
-	if (image->depth == 1){
+	if (image->depth == 1) {
 		if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
 			info->fix.visual == FB_VISUAL_DIRECTCOLOR)
 		{
@@ -335,7 +335,7 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 			fb_set_suspend(info, 1);/* 1 means do suspend*/
 
 		ret = pci_save_state(pdev);
-		if (ret){
+		if (ret) {
 			pr_err("error:%d occured in pci_save_state\n", ret);
 			return ret;
 		}
@@ -346,7 +346,7 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 
 		pci_disable_device(pdev);
 		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
-		if (ret){
+		if (ret) {
 			pr_err("error:%d occured in pci_set_power_state\n", ret);
 			return ret;
 		}
@@ -390,7 +390,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	 * and these data should be set before setcolreg routine
 	 * */
 
-	switch (var->bits_per_pixel){
+	switch (var->bits_per_pixel) {
 	case 8:
 		fix->visual = FB_VISUAL_PSEUDOCOLOR;
 		var->red.offset = 0;
@@ -430,7 +430,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	var->height = var->width = -1;
 	var->accel_flags = 0;/*FB_ACCELF_TEXT;*/
 
-	if (ret){
+	if (ret) {
 		pr_err("pixel bpp format not satisfied\n.");
 		return ret;
 	}
@@ -464,15 +464,15 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	console_lock();
 
-	if ((ret = pci_set_power_state(pdev, PCI_D0)) != 0){
+	if ((ret = pci_set_power_state(pdev, PCI_D0)) != 0) {
 		pr_err("error:%d occured in pci_set_power_state\n", ret);
 		return ret;
 	}
 
 
-	if (pdev->dev.power.power_state.event != PM_EVENT_FREEZE){
+	if (pdev->dev.power.power_state.event != PM_EVENT_FREEZE) {
 		pci_restore_state(pdev);
-		if ((ret = pci_enable_device(pdev)) != 0){
+		if ((ret = pci_enable_device(pdev)) != 0) {
 			pr_err("error:%d occured in pci_enable_device\n", ret);
 			return ret;
 		}
@@ -486,7 +486,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	info = share->fbinfo[0];
 
-	if (info){
+	if (info) {
 		par = info->par;
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
@@ -498,7 +498,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	info = share->fbinfo[1];
 
-	if (info){
+	if (info) {
 		par = info->par;
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
@@ -599,7 +599,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 			var->bits_per_pixel);
 
 
-	switch (var->bits_per_pixel){
+	switch (var->bits_per_pixel) {
 	case 8:
 	case 16:
 	case 24: /* support 24 bpp for only lynx712/722/720 */
@@ -611,7 +611,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 		goto exit;
 	}
 
-	switch (var->bits_per_pixel){
+	switch (var->bits_per_pixel) {
 	case 8:
 		info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
 		var->red.offset = 0;
@@ -657,7 +657,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 
 	request = PADDING(crtc->line_pad, request);
 	request = request * var->yres_virtual;
-	if (crtc->vidmem_size < request){
+	if (crtc->vidmem_size < request) {
 		pr_err("not enough video memory for mode\n");
 		return -ENOMEM;
 	}
@@ -685,7 +685,7 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
 	ret = 0;
 
 	//pr_debug("regno=%d, red=%d, green=%d, blue=%d\n", regno, red, green, blue);
-	if (regno > 256){
+	if (regno > 256) {
 		pr_err("regno = %d\n", regno);
 		return -EINVAL;
 	}
@@ -788,7 +788,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		crtc->vScreen = share->pvMem;
 		break;
 	case sm750_dual_normal:
-		if (par->index == 0){
+		if (par->index == 0) {
 			output->paths = sm750_panel;
 			crtc->channel = sm750_primary;
 			crtc->oScreen = 0;
@@ -802,7 +802,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		}
 		break;
 	case sm750_dual_swap:
-		if (par->index == 0){
+		if (par->index == 0) {
 			output->paths = sm750_panel;
 			crtc->channel = sm750_secondary;
 			crtc->oScreen = 0;
@@ -907,7 +907,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 
 
 	/* set info->fbops, must be set before fb_find_mode */
-	if (!share->accel_off){
+	if (!share->accel_off) {
 		/* use 2d acceleration */
 		lynxfb_ops.fb_fillrect = lynxfb_ops_fillrect;
 		lynxfb_ops.fb_copyarea = lynxfb_ops_copyarea;
@@ -922,25 +922,25 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	}
 
 
-	for (i=0;i<3;i++){
+	for (i=0;i<3;i++) {
 
 		ret = fb_find_mode(var, info, g_fbmode[index],
 				pdb[i], cdb[i], NULL, 8);
 
-		if (ret == 1){
+		if (ret == 1) {
 			pr_info("success! use specified mode:%s in %s\n",
 					g_fbmode[index],
 					mdb_desc[i]);
 			break;
-		}else if (ret == 2){
+		}else if (ret == 2) {
 			pr_warn("use specified mode:%s in %s, with an ignored refresh rate\n",
 					g_fbmode[index],
 					mdb_desc[i]);
 			break;
-		}else if (ret == 3){
+		}else if (ret == 3) {
 			pr_warn("wanna use default mode\n");
 //			break;
-		}else if (ret == 4){
+		}else if (ret == 4) {
 			pr_warn("fall back to any valid mode\n");
 		}else{
 			pr_warn("ret = %d, fb_find_mode failed, with %s\n", ret, mdb_desc[i]);
@@ -1064,7 +1064,7 @@ static void sm750fb_setup(struct lynx_share *share, char *src)
 	/*defaultly turn g_hwcursor on for both view */
 	g_hwcursor = 3;
 
-	if (!src || !*src){
+	if (!src || !*src) {
 		pr_warn("no specific g_option.\n");
 		goto NO_PARAM;
 	}
@@ -1094,10 +1094,10 @@ static void sm750fb_setup(struct lynx_share *share, char *src)
 		else if (!strncmp(opt, "nohwc", strlen("nohwc")))
 			g_hwcursor = 0;
 		else {
-			if (!g_fbmode[0]){
+			if (!g_fbmode[0]) {
 				g_fbmode[0] = opt;
 				pr_info("find fbmode0 : %s\n", g_fbmode[0]);
-			}else if (!g_fbmode[1]){
+			}else if (!g_fbmode[1]) {
 				g_fbmode[1] = opt;
 				pr_info("find fbmode1 : %s\n", g_fbmode[1]);
 			}else{
@@ -1113,7 +1113,7 @@ static void sm750fb_setup(struct lynx_share *share, char *src)
 #endif
 
 NO_PARAM:
-	if (share->revid != SM750LE_REVISION_ID){
+	if (share->revid != SM750LE_REVISION_ID) {
 		if (share->dual) {
 			if (swap)
 				spec_share->state.dataflow = sm750_dual_swap;
@@ -1145,7 +1145,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 
 
 	/* enable device */
-	if (pci_enable_device(pdev)){
+	if (pci_enable_device(pdev)) {
 		pr_err("can not enable device.\n");
 		goto err_enable;
 	}
@@ -1155,7 +1155,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	spec_offset = offsetof(struct sm750_share, share);
 
 	spec_share = kzalloc(sizeof(*spec_share), GFP_KERNEL);
-	if (!spec_share){
+	if (!spec_share) {
 		pr_err("Could not allocate memory for share.\n");
 		goto err_share;
 	}
@@ -1177,7 +1177,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	share->dual = g_dualview;
 	spin_lock_init(&share->slock);
 
-	if (!share->accel_off){
+	if (!share->accel_off) {
 		/* hook deInit and 2d routines, notes that below hw_xxx
 		 * routine can work on most of lynx chips
 		 * if some chip need specific function, please hook it in smXXX_set_drv
@@ -1195,19 +1195,19 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	sm750fb_setup(share, g_settings);
 
 	/* call chip specific mmap routine */
-	if (hw_sm750_map(share, pdev)){
+	if (hw_sm750_map(share, pdev)) {
 		pr_err("Memory map failed\n");
 		goto err_map;
 	}
 
 #ifdef CONFIG_MTRR
-	if (!share->mtrr_off){
+	if (!share->mtrr_off) {
 		pr_info("enable mtrr\n");
 		share->mtrr.vram = mtrr_add(share->vidmem_start,
 				share->vidmem_size,
 				MTRR_TYPE_WRCOMB, 1);
 
-		if (share->mtrr.vram < 0){
+		if (share->mtrr.vram < 0) {
 			/* don't block driver with the failure of MTRR */
 			pr_err("Unable to setup MTRR.\n");
 		}else{
@@ -1248,7 +1248,7 @@ ALLOC_FB:
 			par->share = share;
 
 			/* set fb_info structure */
-			if (lynxfb_set_fbinfo(info[fbidx], fbidx)){
+			if (lynxfb_set_fbinfo(info[fbidx], fbidx)) {
 				pr_err("Failed to initial fb_info #%d.\n", fbidx);
 				if (fbidx == 0)
 					goto err_info0_set;
@@ -1304,7 +1304,7 @@ static void __exit lynxfb_pci_remove(struct pci_dev *pdev)
 	cnt = 2;
 	share = pci_get_drvdata(pdev);
 
-	while (cnt-- > 0){
+	while (cnt-- > 0) {
 		info = share->fbinfo[cnt];
 		if (!info)
 			continue;
@@ -1337,7 +1337,7 @@ static int __init lynxfb_setup(char *options)
 	char *opt, *tmp;
 
 
-	if (!options || !*options){
+	if (!options || !*options) {
 		pr_warn("no options.\n");
 		return 0;
 	}
-- 
1.9.1


