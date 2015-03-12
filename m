X-GM-THRID: 7714883239936
X-Received: by 10.112.9.65 with SMTP id x1mr6003801lba.16.1426123408040;
        Wed, 11 Mar 2015 18:23:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.67 with SMTP id o3ls189149laj.67.gmail; Wed, 11 Mar
 2015 18:23:27 -0700 (PDT)
X-Received: by 10.112.35.135 with SMTP id h7mr5817362lbj.23.1426123407480;
        Wed, 11 Mar 2015 18:23:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bz6si782769wib.3.2015.03.11.18.23.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so16361562wid.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MlDzoLuUmIByX1biWQ/zd+a+J2sH4GXwggoU5vHaAUU=;
        b=uxEh4O4XbCd1TljPiShFvz7u5wNJ/BGyVK9/XfKQMqZ02BfZns5wEaEHES2ZWxrTk8
         cm23VJm6BnxMNQIXP4fND4XnpFXP5Ma4dPrL5S7xw1EyAp7XUV/rUqoA28tV/Us6shgo
         5b3Lg9J34joKjBql5jXBmNjBCc6pQqurpenkLl/wvBYfTAIxvI9lyjV6GdkoK0woAAXW
         UX01ic2QbZELpFmaawD4EmquYiIv3i9Fa+v1u9XJECr/tybaMh6Zei0tvxh3CkoMpCE7
         kA5LA4IPlaEwC0otX7XsYJYfLaGcCPkioFsPmLO4ViAtzp9PFXj9uRim6xmGjX3Rvuav
         NQSw==
X-Received: by 10.194.78.231 with SMTP id e7mr80770360wjx.33.1426123407365;
        Wed, 11 Mar 2015 18:23:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:26 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 1/9] staging: sm750: Place space before after control flow instructions
Date: Thu, 12 Mar 2015 03:23:06 +0200
Message-Id: <864a11697be94a3e1a6ab6b12c5b9946cd99761e.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Place space between control flow instructions such as: if, switch,
while etc and '(' in order to improve readability.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 180 ++++++++++++++++++++--------------------
 1 file changed, 90 insertions(+), 90 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 010b849..46c3aeb 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -64,7 +64,7 @@ static inline void myspin_lock(spinlock_t *sl){
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
-	if(share->dual)
+	if (share->dual)
 		spin_lock(sl);
 }
 
@@ -72,7 +72,7 @@ static inline void myspin_unlock(spinlock_t *sl){
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
-	if(share->dual)
+	if (share->dual)
 		spin_unlock(sl);
 }
 static const struct fb_videomode lynx750_ext[] = {
@@ -142,22 +142,22 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 	crtc = &par->crtc;
 	cursor = &crtc->cursor;
 
-	if(fbcursor->image.width > cursor->maxW ||
+	if (fbcursor->image.width > cursor->maxW ||
 		fbcursor->image.height > cursor->maxH ||
 		 fbcursor->image.depth > 1){
 		return -ENXIO;
 	}
 
 	cursor->disable(cursor);
-	if(fbcursor->set & FB_CUR_SETSIZE)
+	if (fbcursor->set & FB_CUR_SETSIZE)
 		cursor->setSize(cursor, fbcursor->image.width, fbcursor->image.height);
 
-	if(fbcursor->set & FB_CUR_SETPOS){
+	if (fbcursor->set & FB_CUR_SETPOS){
 		cursor->setPos(cursor, fbcursor->image.dx - info->var.xoffset,
 								fbcursor->image.dy - info->var.yoffset);
 	}
 
-	if(fbcursor->set & FB_CUR_SETCMAP){
+	if (fbcursor->set & FB_CUR_SETCMAP){
 		/* get the 16bit color of kernel means */
 		u16 fg, bg;
 
@@ -173,7 +173,7 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 	}
 
 
-	if(fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE))
+	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE))
 	{
 		cursor->setData(cursor,
 						fbcursor->rop,
@@ -181,7 +181,7 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 						fbcursor->mask);
 	}
 
-	if(fbcursor->enable)
+	if (fbcursor->enable)
 		cursor->enable(cursor);
 
 	return 0;
@@ -194,7 +194,7 @@ static void lynxfb_ops_fillrect(struct fb_info* info, const struct fb_fillrect*
 	unsigned int base, pitch, Bpp, rop;
 	u32 color;
 
-	if(info->state != FBINFO_STATE_RUNNING)
+	if (info->state != FBINFO_STATE_RUNNING)
 		return;
 
 	par = info->par;
@@ -256,8 +256,8 @@ static void lynxfb_ops_imageblit(struct fb_info *info, const struct fb_image *im
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
-	if(image->depth == 1){
-		if(info->fix.visual == FB_VISUAL_TRUECOLOR ||
+	if (image->depth == 1){
+		if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
 			info->fix.visual == FB_VISUAL_DIRECTCOLOR)
 		{
 			fgcol = ((u32*)info->pseudo_palette)[image->fg_color];
@@ -290,7 +290,7 @@ static int lynxfb_ops_pan_display(struct fb_var_screeninfo *var,
 	int ret;
 
 
-	if(!info)
+	if (!info)
 		return -EINVAL;
 
 	ret = 0;
@@ -312,7 +312,7 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 	int ret;
 
 
-	if(mesg.event == pdev->dev.power.power_state.event)
+	if (mesg.event == pdev->dev.power.power_state.event)
 		return 0;
 
 	ret = 0;
@@ -327,26 +327,26 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 	console_lock();
 	if (mesg.event & PM_EVENT_SLEEP) {
 		info = share->fbinfo[0];
-		if(info)
+		if (info)
 			fb_set_suspend(info, 1);/* 1 means do suspend*/
 
 		info = share->fbinfo[1];
-		if(info)
+		if (info)
 			fb_set_suspend(info, 1);/* 1 means do suspend*/
 
 		ret = pci_save_state(pdev);
-		if(ret){
+		if (ret){
 			pr_err("error:%d occured in pci_save_state\n", ret);
 			return ret;
 		}
 
 		/* set chip to sleep mode	*/
-		if(share->suspend)
+		if (share->suspend)
 			(*share->suspend)(share);
 
 		pci_disable_device(pdev);
 		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
-		if(ret){
+		if (ret){
 			pr_err("error:%d occured in pci_set_power_state\n", ret);
 			return ret;
 		}
@@ -369,7 +369,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	unsigned int line_length;
 
 
-	if(!info)
+	if (!info)
 		return -EINVAL;
 
 	ret = 0;
@@ -390,7 +390,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	 * and these data should be set before setcolreg routine
 	 * */
 
-	switch(var->bits_per_pixel){
+	switch (var->bits_per_pixel){
 	case 8:
 		fix->visual = FB_VISUAL_PSEUDOCOLOR;
 		var->red.offset = 0;
@@ -430,12 +430,12 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	var->height = var->width = -1;
 	var->accel_flags = 0;/*FB_ACCELF_TEXT;*/
 
-	if(ret){
+	if (ret){
 		pr_err("pixel bpp format not satisfied\n.");
 		return ret;
 	}
 	ret = crtc->proc_setMode(crtc, var, fix);
-	if(!ret)
+	if (!ret)
 		ret = output->proc_setMode(output, var, fix);
 	return ret;
 }
@@ -464,13 +464,13 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	console_lock();
 
-	if((ret = pci_set_power_state(pdev, PCI_D0)) != 0){
+	if ((ret = pci_set_power_state(pdev, PCI_D0)) != 0){
 		pr_err("error:%d occured in pci_set_power_state\n", ret);
 		return ret;
 	}
 
 
-	if(pdev->dev.power.power_state.event != PM_EVENT_FREEZE){
+	if (pdev->dev.power.power_state.event != PM_EVENT_FREEZE){
 		pci_restore_state(pdev);
 		if ((ret = pci_enable_device(pdev)) != 0){
 			pr_err("error:%d occured in pci_enable_device\n", ret);
@@ -478,7 +478,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		}
 		pci_set_master(pdev);
 	}
-	if(share->resume)
+	if (share->resume)
 		(*share->resume)(share);
 
 	hw_sm750_inithw(share, pdev);
@@ -486,7 +486,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	info = share->fbinfo[0];
 
-	if(info){
+	if (info){
 		par = info->par;
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
@@ -498,7 +498,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	info = share->fbinfo[1];
 
-	if(info){
+	if (info){
 		par = info->par;
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
@@ -599,7 +599,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 			var->bits_per_pixel);
 
 
-	switch(var->bits_per_pixel){
+	switch (var->bits_per_pixel){
 	case 8:
 	case 16:
 	case 24: /* support 24 bpp for only lynx712/722/720 */
@@ -611,7 +611,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 		goto exit;
 	}
 
-	switch(var->bits_per_pixel){
+	switch (var->bits_per_pixel){
 	case 8:
 		info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
 		var->red.offset = 0;
@@ -657,13 +657,13 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 
 	request = PADDING(crtc->line_pad, request);
 	request = request * var->yres_virtual;
-	if(crtc->vidmem_size < request){
+	if (crtc->vidmem_size < request){
 		pr_err("not enough video memory for mode\n");
 		return -ENOMEM;
 	}
 
 	ret = output->proc_checkMode(output, var);
-	if(!ret)
+	if (!ret)
 		ret = crtc->proc_checkMode(crtc, var);
 exit:
 	return ret;
@@ -685,15 +685,15 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
 	ret = 0;
 
 	//pr_debug("regno=%d, red=%d, green=%d, blue=%d\n", regno, red, green, blue);
-	if(regno > 256){
+	if (regno > 256){
 		pr_err("regno = %d\n", regno);
 		return -EINVAL;
 	}
 
-	if(info->var.grayscale)
+	if (info->var.grayscale)
 		red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 
-	if(var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
+	if (var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
 	{
 		red >>= 8;
 		green >>= 8;
@@ -703,11 +703,11 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
 	}
 
 
-	if(info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
+	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
 	{
 		u32 val;
 
-		if(var->bits_per_pixel == 16 ||
+		if (var->bits_per_pixel == 16 ||
 		   var->bits_per_pixel == 32 ||
 		   var->bits_per_pixel == 24)
 		{
@@ -788,7 +788,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		crtc->vScreen = share->pvMem;
 		break;
 	case sm750_dual_normal:
-		if(par->index == 0){
+		if (par->index == 0){
 			output->paths = sm750_panel;
 			crtc->channel = sm750_primary;
 			crtc->oScreen = 0;
@@ -802,7 +802,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		}
 		break;
 	case sm750_dual_swap:
-		if(par->index == 0){
+		if (par->index == 0){
 			output->paths = sm750_panel;
 			crtc->channel = sm750_secondary;
 			crtc->oScreen = 0;
@@ -900,14 +900,14 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 
 	crtc->cursor.share = share;
 	memset(crtc->cursor.vstart, 0, crtc->cursor.size);
-	if(!g_hwcursor) {
+	if (!g_hwcursor) {
 		lynxfb_ops.fb_cursor = NULL;
 		crtc->cursor.disable(&crtc->cursor);
 	}
 
 
 	/* set info->fbops, must be set before fb_find_mode */
-	if(!share->accel_off){
+	if (!share->accel_off){
 		/* use 2d acceleration */
 		lynxfb_ops.fb_fillrect = lynxfb_ops_fillrect;
 		lynxfb_ops.fb_copyarea = lynxfb_ops_copyarea;
@@ -915,32 +915,32 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	}
 	info->fbops = &lynxfb_ops;
 
-	if(!g_fbmode[index]) {
+	if (!g_fbmode[index]) {
 		g_fbmode[index] = g_def_fbmode;
-		if(index)
+		if (index)
 			g_fbmode[index] = g_fbmode[0];
 	}
 
 
-	for(i=0;i<3;i++){
+	for (i=0;i<3;i++){
 
 		ret = fb_find_mode(var, info, g_fbmode[index],
 				pdb[i], cdb[i], NULL, 8);
 
-		if(ret == 1){
+		if (ret == 1){
 			pr_info("success! use specified mode:%s in %s\n",
 					g_fbmode[index],
 					mdb_desc[i]);
 			break;
-		}else if(ret == 2){
+		}else if (ret == 2){
 			pr_warn("use specified mode:%s in %s, with an ignored refresh rate\n",
 					g_fbmode[index],
 					mdb_desc[i]);
 			break;
-		}else if(ret == 3){
+		}else if (ret == 3){
 			pr_warn("wanna use default mode\n");
 //			break;
-		}else if(ret == 4){
+		}else if (ret == 4){
 			pr_warn("fall back to any valid mode\n");
 		}else{
 			pr_warn("ret = %d, fb_find_mode failed, with %s\n", ret, mdb_desc[i]);
@@ -1000,7 +1000,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	pr_info("fix->mmio_start = %lx\n", fix->mmio_start);
 	fix->mmio_len = share->vidreg_size;
 	pr_info("fix->mmio_len = %x\n", fix->mmio_len);
-	switch(var->bits_per_pixel) {
+	switch (var->bits_per_pixel) {
 	case 8:
 		fix->visual = FB_VISUAL_PSEUDOCOLOR;
 		break;
@@ -1020,7 +1020,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	    info->cmap.red, info->cmap.green, info->cmap.blue,
 	    info->cmap.transp);
 
-	if((ret = fb_alloc_cmap(&info->cmap, 256, 0)) < 0) {
+	if ((ret = fb_alloc_cmap(&info->cmap, 256, 0)) < 0) {
 		pr_err("Could not allcate memory for cmap.\n");
 		goto exit;
 	}
@@ -1064,40 +1064,40 @@ static void sm750fb_setup(struct lynx_share *share, char *src)
 	/*defaultly turn g_hwcursor on for both view */
 	g_hwcursor = 3;
 
-	if(!src || !*src){
+	if (!src || !*src){
 		pr_warn("no specific g_option.\n");
 		goto NO_PARAM;
 	}
 
-	while((opt = strsep(&src, ":")) != NULL && *opt != NULL) {
+	while ((opt = strsep(&src, ":")) != NULL && *opt != NULL) {
 		pr_err("opt=%s\n", opt);
 		pr_err("src=%s\n", src);
 
-		if(!strncmp(opt, "swap", strlen("swap")))
+		if (!strncmp(opt, "swap", strlen("swap")))
 			swap = 1;
-		else if(!strncmp(opt, "nocrt", strlen("nocrt")))
+		else if (!strncmp(opt, "nocrt", strlen("nocrt")))
 			spec_share->state.nocrt = 1;
-		else if(!strncmp(opt, "36bit", strlen("36bit")))
+		else if (!strncmp(opt, "36bit", strlen("36bit")))
 			spec_share->state.pnltype = sm750_doubleTFT;
-		else if(!strncmp(opt, "18bit", strlen("18bit")))
+		else if (!strncmp(opt, "18bit", strlen("18bit")))
 			spec_share->state.pnltype = sm750_dualTFT;
-		else if(!strncmp(opt, "24bit", strlen("24bit")))
+		else if (!strncmp(opt, "24bit", strlen("24bit")))
 			spec_share->state.pnltype = sm750_24TFT;
 #ifdef CAP_EXPANSION
-		else if(!strncmp(opt, "exp:", strlen("exp:")))
+		else if (!strncmp(opt, "exp:", strlen("exp:")))
 			exp_res = opt + strlen("exp:");
 #endif
-		else if(!strncmp(opt, "nohwc0", strlen("nohwc0")))
+		else if (!strncmp(opt, "nohwc0", strlen("nohwc0")))
 			g_hwcursor &= ~0x1;
-		else if(!strncmp(opt, "nohwc1", strlen("nohwc1")))
+		else if (!strncmp(opt, "nohwc1", strlen("nohwc1")))
 			g_hwcursor &= ~0x2;
-		else if(!strncmp(opt, "nohwc", strlen("nohwc")))
+		else if (!strncmp(opt, "nohwc", strlen("nohwc")))
 			g_hwcursor = 0;
 		else {
-			if(!g_fbmode[0]){
+			if (!g_fbmode[0]){
 				g_fbmode[0] = opt;
 				pr_info("find fbmode0 : %s\n", g_fbmode[0]);
-			}else if(!g_fbmode[1]){
+			}else if (!g_fbmode[1]){
 				g_fbmode[1] = opt;
 				pr_info("find fbmode1 : %s\n", g_fbmode[1]);
 			}else{
@@ -1106,21 +1106,21 @@ static void sm750fb_setup(struct lynx_share *share, char *src)
 		}
 	}
 #ifdef CAP_EXPANSION
-	if(getExpRes(exp_res, &spec_share->state.xLCD, &spec_share->state.yLCD)) {
+	if (getExpRes(exp_res, &spec_share->state.xLCD, &spec_share->state.yLCD)) {
 		/* seems exp_res is not valid*/
 		spec_share->state.xLCD = spec_share->state.yLCD = 0;
 	}
 #endif
 
 NO_PARAM:
-	if(share->revid != SM750LE_REVISION_ID){
-		if(share->dual) {
-			if(swap)
+	if (share->revid != SM750LE_REVISION_ID){
+		if (share->dual) {
+			if (swap)
 				spec_share->state.dataflow = sm750_dual_swap;
 			else
 				spec_share->state.dataflow = sm750_dual_normal;
 		} else {
-			if(swap)
+			if (swap)
 				spec_share->state.dataflow = sm750_simul_sec;
 			else
 				spec_share->state.dataflow = sm750_simul_pri;
@@ -1145,7 +1145,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 
 
 	/* enable device */
-	if(pci_enable_device(pdev)){
+	if (pci_enable_device(pdev)){
 		pr_err("can not enable device.\n");
 		goto err_enable;
 	}
@@ -1155,7 +1155,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	spec_offset = offsetof(struct sm750_share, share);
 
 	spec_share = kzalloc(sizeof(*spec_share), GFP_KERNEL);
-	if(!spec_share){
+	if (!spec_share){
 		pr_err("Could not allocate memory for share.\n");
 		goto err_share;
 	}
@@ -1177,7 +1177,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	share->dual = g_dualview;
 	spin_lock_init(&share->slock);
 
-	if(!share->accel_off){
+	if (!share->accel_off){
 		/* hook deInit and 2d routines, notes that below hw_xxx
 		 * routine can work on most of lynx chips
 		 * if some chip need specific function, please hook it in smXXX_set_drv
@@ -1195,19 +1195,19 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	sm750fb_setup(share, g_settings);
 
 	/* call chip specific mmap routine */
-	if(hw_sm750_map(share, pdev)){
+	if (hw_sm750_map(share, pdev)){
 		pr_err("Memory map failed\n");
 		goto err_map;
 	}
 
 #ifdef CONFIG_MTRR
-	if(!share->mtrr_off){
+	if (!share->mtrr_off){
 		pr_info("enable mtrr\n");
 		share->mtrr.vram = mtrr_add(share->vidmem_start,
 				share->vidmem_size,
 				MTRR_TYPE_WRCOMB, 1);
 
-		if(share->mtrr.vram < 0){
+		if (share->mtrr.vram < 0){
 			/* don't block driver with the failure of MTRR */
 			pr_err("Unable to setup MTRR.\n");
 		}else{
@@ -1230,10 +1230,10 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 		fbidx = 0;
 ALLOC_FB:
 		info[fbidx] = framebuffer_alloc(sizeof(struct lynxfb_par), &pdev->dev);
-		if(!info[fbidx])
+		if (!info[fbidx])
 		{
 			pr_err("Could not allocate framebuffer #%d.\n", fbidx);
-			if(fbidx == 0)
+			if (fbidx == 0)
 				goto err_info0_alloc;
 			else
 				goto err_info1_alloc;
@@ -1248,9 +1248,9 @@ ALLOC_FB:
 			par->share = share;
 
 			/* set fb_info structure */
-			if(lynxfb_set_fbinfo(info[fbidx], fbidx)){
+			if (lynxfb_set_fbinfo(info[fbidx], fbidx)){
 				pr_err("Failed to initial fb_info #%d.\n", fbidx);
-				if(fbidx == 0)
+				if (fbidx == 0)
 					goto err_info0_set;
 				else
 					goto err_info1_set;
@@ -1262,7 +1262,7 @@ ALLOC_FB:
 
 			if (errno < 0) {
 				pr_err("Failed to register fb_info #%d. err %d\n", fbidx, errno);
-				if(fbidx == 0)
+				if (fbidx == 0)
 					goto err_register0;
 				else
 					goto err_register1;
@@ -1272,7 +1272,7 @@ ALLOC_FB:
 
 		/* no dual view by far */
 		fbidx++;
-		if(share->dual && fbidx < 2)
+		if (share->dual && fbidx < 2)
 			goto ALLOC_FB;
 
 	return 0;
@@ -1304,9 +1304,9 @@ static void __exit lynxfb_pci_remove(struct pci_dev *pdev)
 	cnt = 2;
 	share = pci_get_drvdata(pdev);
 
-	while(cnt-- > 0){
+	while (cnt-- > 0){
 		info = share->fbinfo[cnt];
-		if(!info)
+		if (!info)
 			continue;
 		par = info->par;
 
@@ -1318,7 +1318,7 @@ static void __exit lynxfb_pci_remove(struct pci_dev *pdev)
 		framebuffer_release(info);
 	}
 #ifdef CONFIG_MTRR
-	if(share->mtrr.vram_added)
+	if (share->mtrr.vram_added)
 		mtrr_del(share->mtrr.vram, share->vidmem_start, share->vidmem_size);
 #endif
 	//	pci_release_regions(pdev);
@@ -1337,7 +1337,7 @@ static int __init lynxfb_setup(char *options)
 	char *opt, *tmp;
 
 
-	if(!options || !*options){
+	if (!options || !*options){
 		pr_warn("no options.\n");
 		return 0;
 	}
@@ -1346,7 +1346,7 @@ static int __init lynxfb_setup(char *options)
 
 	len = strlen(options) + 1;
 	g_settings = kmalloc(len, GFP_KERNEL);
-	if(!g_settings)
+	if (!g_settings)
 		return -ENOMEM;
 
 	memset(g_settings, 0, len);
@@ -1360,22 +1360,22 @@ static int __init lynxfb_setup(char *options)
 		strsep() updates @options to pointer after the first found token
 		it also returns the pointer ahead the token.
 		*/
-	while((opt = strsep(&options, ":"))!=NULL)
+	while ((opt = strsep(&options, ":"))!=NULL)
 	{
 		/* options that mean for any lynx chips are configured here */
-		if(!strncmp(opt, "noaccel", strlen("noaccel")))
+		if (!strncmp(opt, "noaccel", strlen("noaccel")))
 			g_noaccel = 1;
 #ifdef CONFIG_MTRR
-		else if(!strncmp(opt, "nomtrr", strlen("nomtrr")))
+		else if (!strncmp(opt, "nomtrr", strlen("nomtrr")))
 			g_nomtrr = 1;
 #endif
-		else if(!strncmp(opt, "dual", strlen("dual")))
+		else if (!strncmp(opt, "dual", strlen("dual")))
 			g_dualview = 1;
 		else
 		{
 			strcat(tmp, opt);
 			tmp += strlen(opt);
-			if(options != NULL)
+			if (options != NULL)
 				*tmp++ = ':';
 			else
 				*tmp++ = 0;
@@ -1414,7 +1414,7 @@ static int __init lynxfb_init(void)
 #ifdef MODULE
 	option = g_option;
 #else
-	if(fb_get_options("sm750fb", &option))
+	if (fb_get_options("sm750fb", &option))
 		return -ENODEV;
 #endif
 
-- 
1.9.1


