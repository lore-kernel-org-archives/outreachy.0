X-GM-THRID: 6749290367332384768
X-Received: by 2002:a25:60c5:: with SMTP id u188mr8309025ybb.497.1571441620952;
        Fri, 18 Oct 2019 16:33:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e805:: with SMTP id k5ls1136406ybd.3.gmail; Fri, 18 Oct
 2019 16:33:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLjQ01+QwcliP4IX3Wed0GedvTcwvjWU7BymyYOs/lnGeNxFW8GUZMcJLaNN/31ATZuNld
X-Received: by 2002:a25:ca92:: with SMTP id a140mr8329304ybg.109.1571441618871;
        Fri, 18 Oct 2019 16:33:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571441618; cv=none;
        d=google.com; s=arc-20160816;
        b=GSFzvHwzcSaypzjb8jOYxNGNkuLQdozZdi15VN3zzh+pRtIjntklHP0/nKU6FH8EYk
         rglf83EP6FW5fOnoRzsnvCxSmiKeFYhBFhzleXOqsJTiij4BCpLSBtafkli7Ra/Y4/XU
         D4ftfCzujdXkVd2Oc05XBMyV2hA5bhB36LLV+18s+iSFAEc942MqnW1q/R0oeBL+SOk1
         PNz9e/zUekgpR7fuYcATTgX60nuqW0c8PI4zF1wDxqfYbu2IIQmoIDiVOaAKyW965l3a
         bO5PhDo55CJXigHGBAVr8EkadCQy5eBF9eBDDkV/5wAeYVKo8NM83H5yFH4ihtMnX++L
         SUaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1K4cnah4d9yqRNS4mfx9XxjCOYnrzpQsId0iYdVvuQM=;
        b=Usyo/IMujV0khwLS100ggpyq/i0aArtxiM0TUHLQKqKwzXphXz8tDE1bWPUXwkTR8l
         GU3F6Zjd8FqEpOJBQMN+/8A4rSZngCFnt721BmB0m0F6sV9/Us10TrMIFIxCYgvX/j7u
         fSz4cP3g0vz87kcrWSynyeugzgOu7HExiSOt7yFjMiVZlTBgw+0n7HqOW5WWaFV7wDi+
         eZpb3RFMYpZK4H3CUUTvdmt3IpvVV3GpQLtQYurY/LOrRW2qQvdXPwwwHOAMnQ8KLIjj
         Q8h0XwJYxW0PD/waVpjFeeJq3j0wA2eiCIKBFxQVgz7FVRvoH7IYIphogS8sJKG63YKX
         hEfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fbTb5H5V;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j136si402137ybj.3.2019.10.18.16.33.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 16:33:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fbTb5H5V;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h195so4766826pfe.5
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 16:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1K4cnah4d9yqRNS4mfx9XxjCOYnrzpQsId0iYdVvuQM=;
        b=fbTb5H5Vdr6Rw6CeFPC6v03jTRQpx3H7mA3f1ISJKxw0IDOJubKxpW6PnPXn5urKhY
         kKRxbnBuCt7ZsgLRHPtXxPWmVns9e1Jv4vOCj/4EH9VU5IdBRY/fLB4arg7oIhn107vo
         q/4OuzplpmFGLKYiDshp7P5C0ZxUWlWIE1VN8u3SCNogRf7QvkMcdb3FHekOgurUw2RA
         3Tgjjk9yyRvOjINqlUZ+phhqmbGnbe5UmOtoACdAxMKVSy0VQSApo+RDkfNqDdoh3IBw
         CmMjXndKfn/2TfgK/e32qbqKyHXmNmGEE3rL1PaukMmpTRUCdHU9hGt53Tz+81K46KAN
         dR+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1K4cnah4d9yqRNS4mfx9XxjCOYnrzpQsId0iYdVvuQM=;
        b=k+u2+gUny7r+P0b0LYtegHJkBgghqXNdQN1DZIlaYVGNZNSwziKoThCPhNIgyCV+gc
         viHZcXRNCROW8aBjcS5dY7qWU3jTXeKUMuc8pR/hwZmDNt/psLb69laUzfkG3ZANCWYV
         GTQaNddKh82J8X+SnaHz6NqnQEWHd7Ey8a9pqSRCnilxVlvCv4Bm+RYYSYp/4IuhNKdU
         wlP950yfKtU+cH2A9zbLobLJM+idoD643Vw5cEFRHZlwhZmF3e9CLklYEqGr9OjbZ/p/
         yjRr4B+UZWhfIQBzfXhSDFiaZX7PJEQ1r4K45GH6yZNl9mO9OaNZEq6jKCeufg2Vviv1
         NUHg==
X-Gm-Message-State: APjAAAXvCfPQAPybdw8e5er/bgKpU8E8WC9VA96lb6O56O2Ze0v05ywI
	4Zp5B+k8hd93jZqBfaxrweA=
X-Received: by 2002:a63:1b07:: with SMTP id b7mr12645342pgb.166.1571441616920;
        Fri, 18 Oct 2019 16:33:36 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id w6sm8838699pfj.17.2019.10.18.16.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2019 16:33:36 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: Edits CamelCase in sm750 files
Date: Fri, 18 Oct 2019 16:33:16 -0700
Message-Id: <20191018233316.5846-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Edits CamelCase in dependent sm750 files.
Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/sm750.c        | 144 ++++++++++++-------------
 drivers/staging/sm750fb/sm750.h        |  70 ++++++------
 drivers/staging/sm750fb/sm750_accel.c  | 139 ++++++++++++------------
 drivers/staging/sm750fb/sm750_accel.h  |  26 ++---
 drivers/staging/sm750fb/sm750_cursor.c |  18 ++--
 drivers/staging/sm750fb/sm750_cursor.h |  10 +-
 drivers/staging/sm750fb/sm750_hw.c     |  66 ++++++------
 7 files changed, 237 insertions(+), 236 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 092f1c686a37..ef911fdec1d9 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -112,22 +112,22 @@ static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
 	crtc = &par->crtc;
 	cursor = &crtc->cursor;
 
-	if (fbcursor->image.width > cursor->maxW ||
-	    fbcursor->image.height > cursor->maxH ||
+	if (fbcursor->image.width > cursor->max_w ||
+	    fbcursor->image.height > cursor->max_h ||
 	    fbcursor->image.depth > 1) {
 		return -ENXIO;
 	}
 
 	sm750_hw_cursor_disable(cursor);
 	if (fbcursor->set & FB_CUR_SETSIZE)
-		sm750_hw_cursor_setSize(cursor,
-					fbcursor->image.width,
-					fbcursor->image.height);
+		sm750_hw_cursor_set_size(cursor,
+					 fbcursor->image.width,
+					 fbcursor->image.height);
 
 	if (fbcursor->set & FB_CUR_SETPOS)
-		sm750_hw_cursor_setPos(cursor,
-				       fbcursor->image.dx - info->var.xoffset,
-				       fbcursor->image.dy - info->var.yoffset);
+		sm750_hw_cursor_set_pos(cursor,
+					fbcursor->image.dx - info->var.xoffset,
+					fbcursor->image.dy - info->var.yoffset);
 
 	if (fbcursor->set & FB_CUR_SETCMAP) {
 		/* get the 16bit color of kernel means */
@@ -141,14 +141,14 @@ static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
 		     ((info->cmap.green[fbcursor->image.bg_color] & 0xfc00) >> 5) |
 		     ((info->cmap.blue[fbcursor->image.bg_color] & 0xf800) >> 11);
 
-		sm750_hw_cursor_setColor(cursor, fg, bg);
+		sm750_hw_cursor_set_color(cursor, fg, bg);
 	}
 
 	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE)) {
-		sm750_hw_cursor_setData(cursor,
-					fbcursor->rop,
-					fbcursor->image.data,
-					fbcursor->mask);
+		sm750_hw_cursor_set_data(cursor,
+					 fbcursor->rop,
+					 fbcursor->image.data,
+					 fbcursor->mask);
 	}
 
 	if (fbcursor->enable)
@@ -162,7 +162,7 @@ static void lynxfb_ops_fillrect(struct fb_info *info,
 {
 	struct lynxfb_par *par;
 	struct sm750_dev *sm750_dev;
-	unsigned int base, pitch, Bpp, rop;
+	unsigned int base, pitch, bpp, rop;
 	u32 color;
 
 	if (info->state != FBINFO_STATE_RUNNING)
@@ -175,11 +175,11 @@ static void lynxfb_ops_fillrect(struct fb_info *info,
 	 * each time 2d function begin to work,below three variable always need
 	 * be set, seems we can put them together in some place
 	 */
-	base = par->crtc.oScreen;
+	base = par->crtc.o_screen;
 	pitch = info->fix.line_length;
-	Bpp = info->var.bits_per_pixel >> 3;
+	bpp = info->var.bits_per_pixel >> 3;
 
-	color = (Bpp == 1) ? region->color :
+	color = (bpp == 1) ? region->color :
 		((u32 *)info->pseudo_palette)[region->color];
 	rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR : HW_ROP2_COPY;
 
@@ -192,7 +192,7 @@ static void lynxfb_ops_fillrect(struct fb_info *info,
 	spin_lock(&sm750_dev->slock);
 
 	sm750_dev->accel.de_fillrect(&sm750_dev->accel,
-				     base, pitch, Bpp,
+				     base, pitch, bpp,
 				     region->dx, region->dy,
 				     region->width, region->height,
 				     color, rop);
@@ -204,7 +204,7 @@ static void lynxfb_ops_copyarea(struct fb_info *info,
 {
 	struct lynxfb_par *par;
 	struct sm750_dev *sm750_dev;
-	unsigned int base, pitch, Bpp;
+	unsigned int base, pitch, bpp;
 
 	par = info->par;
 	sm750_dev = par->dev;
@@ -213,9 +213,9 @@ static void lynxfb_ops_copyarea(struct fb_info *info,
 	 * each time 2d function begin to work,below three variable always need
 	 * be set, seems we can put them together in some place
 	 */
-	base = par->crtc.oScreen;
+	base = par->crtc.o_screen;
 	pitch = info->fix.line_length;
-	Bpp = info->var.bits_per_pixel >> 3;
+	bpp = info->var.bits_per_pixel >> 3;
 
 	/*
 	 * If not use spin_lock, system will die if user load driver
@@ -227,7 +227,7 @@ static void lynxfb_ops_copyarea(struct fb_info *info,
 
 	sm750_dev->accel.de_copyarea(&sm750_dev->accel,
 				     base, pitch, region->sx, region->sy,
-				     base, pitch, Bpp, region->dx, region->dy,
+				     base, pitch, bpp, region->dx, region->dy,
 				     region->width, region->height,
 				     HW_ROP2_COPY);
 	spin_unlock(&sm750_dev->slock);
@@ -236,7 +236,7 @@ static void lynxfb_ops_copyarea(struct fb_info *info,
 static void lynxfb_ops_imageblit(struct fb_info *info,
 				 const struct fb_image *image)
 {
-	unsigned int base, pitch, Bpp;
+	unsigned int base, pitch, bpp;
 	unsigned int fgcol, bgcol;
 	struct lynxfb_par *par;
 	struct sm750_dev *sm750_dev;
@@ -247,9 +247,9 @@ static void lynxfb_ops_imageblit(struct fb_info *info,
 	 * each time 2d function begin to work,below three variable always need
 	 * be set, seems we can put them together in some place
 	 */
-	base = par->crtc.oScreen;
+	base = par->crtc.o_screen;
 	pitch = info->fix.line_length;
-	Bpp = info->var.bits_per_pixel >> 3;
+	bpp = info->var.bits_per_pixel >> 3;
 
 	/* TODO: Implement hardware acceleration for image->depth > 1 */
 	if (image->depth != 1) {
@@ -276,7 +276,7 @@ static void lynxfb_ops_imageblit(struct fb_info *info,
 
 	sm750_dev->accel.de_imageblit(&sm750_dev->accel,
 				      image->data, image->width >> 3, 0,
-				      base, pitch, Bpp,
+				      base, pitch, bpp,
 				      image->dx, image->dy,
 				      image->width, image->height,
 				      fgcol, bgcol, HW_ROP2_COPY);
@@ -372,9 +372,9 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 		pr_err("pixel bpp format not satisfied\n.");
 		return ret;
 	}
-	ret = hw_sm750_crtc_setMode(crtc, var, fix);
+	ret = hw_sm750_crtc_set_mode(crtc, var, fix);
 	if (!ret)
-		ret = hw_sm750_output_setMode(output, var, fix);
+		ret = hw_sm750_output_set_mode(output, var, fix);
 	return ret;
 }
 
@@ -483,7 +483,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
 		memset_io(cursor->vstart, 0x0, cursor->size);
-		memset_io(crtc->vScreen, 0x0, crtc->vidmem_size);
+		memset_io(crtc->v_screen, 0x0, crtc->vidmem_size);
 		lynxfb_ops_set_par(info);
 		fb_set_suspend(info, 0);
 	}
@@ -495,7 +495,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 		crtc = &par->crtc;
 		cursor = &crtc->cursor;
 		memset_io(cursor->vstart, 0x0, cursor->size);
-		memset_io(crtc->vScreen, 0x0, crtc->vidmem_size);
+		memset_io(crtc->v_screen, 0x0, crtc->vidmem_size);
 		lynxfb_ops_set_par(info);
 		fb_set_suspend(info, 0);
 	}
@@ -574,7 +574,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
 		return -ENOMEM;
 	}
 
-	return hw_sm750_crtc_checkMode(crtc, var);
+	return hw_sm750_crtc_check_mode(crtc, var);
 }
 
 static int lynxfb_ops_setcolreg(unsigned int regno,
@@ -607,7 +607,7 @@ static int lynxfb_ops_setcolreg(unsigned int regno,
 		red >>= 8;
 		green >>= 8;
 		blue >>= 8;
-		ret = hw_sm750_setColReg(crtc, regno, red, green, blue);
+		ret = hw_sm750_set_col_reg(crtc, regno, red, green, blue);
 		goto exit;
 	}
 
@@ -639,7 +639,7 @@ static int lynxfb_ops_blank(int blank, struct fb_info *info)
 	pr_debug("blank = %d.\n", blank);
 	par = info->par;
 	output = &par->output;
-	return output->proc_setBLANK(output, blank);
+	return output->proc_set_blank(output, blank);
 }
 
 static int sm750fb_set_drv(struct lynxfb_par *par)
@@ -660,62 +660,62 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		crtc->vidmem_size >>= 1;
 
 	/* setup crtc and output member */
-	sm750_dev->hwCursor = g_hwcursor;
+	sm750_dev->hw_cursor = g_hwcursor;
 
 	crtc->line_pad = 16;
 	crtc->xpanstep = 8;
 	crtc->ypanstep = 1;
 	crtc->ywrapstep = 0;
 
-	output->proc_setBLANK = (sm750_dev->revid == SM750LE_REVISION_ID) ?
-				 hw_sm750le_setBLANK : hw_sm750_setBLANK;
+	output->proc_set_blank = (sm750_dev->revid == SM750LE_REVISION_ID) ?
+				 hw_sm750le_set_blank : hw_sm750_set_blank;
 	/* chip specific phase */
 	sm750_dev->accel.de_wait = (sm750_dev->revid == SM750LE_REVISION_ID) ?
-				    hw_sm750le_deWait : hw_sm750_deWait;
+				    hw_sm750le_de_wait : hw_sm750_de_wait;
 	switch (sm750_dev->dataflow) {
 	case sm750_simul_pri:
 		output->paths = sm750_pnc;
 		crtc->channel = sm750_primary;
-		crtc->oScreen = 0;
-		crtc->vScreen = sm750_dev->pvMem;
+		crtc->o_screen = 0;
+		crtc->v_screen = sm750_dev->v_mem;
 		pr_info("use simul primary mode\n");
 		break;
 	case sm750_simul_sec:
 		output->paths = sm750_pnc;
 		crtc->channel = sm750_secondary;
-		crtc->oScreen = 0;
-		crtc->vScreen = sm750_dev->pvMem;
+		crtc->o_screen = 0;
+		crtc->v_screen = sm750_dev->v_mem;
 		break;
 	case sm750_dual_normal:
 		if (par->index == 0) {
 			output->paths = sm750_panel;
 			crtc->channel = sm750_primary;
-			crtc->oScreen = 0;
-			crtc->vScreen = sm750_dev->pvMem;
+			crtc->o_screen = 0;
+			crtc->v_screen = sm750_dev->v_mem;
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_secondary;
-			/* not consider of padding stuffs for oScreen,
+			/* not consider of padding stuffs for o_screen,
 			 * need fix
 			 */
-			crtc->oScreen = sm750_dev->vidmem_size >> 1;
-			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
+			crtc->o_screen = sm750_dev->vidmem_size >> 1;
+			crtc->v_screen = sm750_dev->v_mem + crtc->o_screen;
 		}
 		break;
 	case sm750_dual_swap:
 		if (par->index == 0) {
 			output->paths = sm750_panel;
 			crtc->channel = sm750_secondary;
-			crtc->oScreen = 0;
-			crtc->vScreen = sm750_dev->pvMem;
+			crtc->o_screen = 0;
+			crtc->v_screen = sm750_dev->v_mem;
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
-			/* not consider of padding stuffs for oScreen,
+			/* not consider of padding stuffs for o_screen,
 			 * need fix
 			 */
-			crtc->oScreen = sm750_dev->vidmem_size >> 1;
-			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
+			crtc->o_screen = sm750_dev->vidmem_size >> 1;
+			crtc->v_screen = sm750_dev->v_mem + crtc->o_screen;
 		}
 		break;
 	default:
@@ -758,7 +758,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 		"kernel HELPERS prepared vesa_modes",
 	};
 
-	static const char *fixId[2] = {
+	static const char *fix_id[2] = {
 		"sm750_fb1", "sm750_fb2",
 	};
 
@@ -782,14 +782,14 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	 * set current cursor variable and proc pointer,
 	 * must be set after crtc member initialized
 	 */
-	crtc->cursor.offset = crtc->oScreen + crtc->vidmem_size - 1024;
-	crtc->cursor.mmio = sm750_dev->pvReg +
+	crtc->cursor.offset = crtc->o_screen + crtc->vidmem_size - 1024;
+	crtc->cursor.mmio = sm750_dev->v_reg +
 		0x800f0 + (int)crtc->channel * 0x140;
 
 	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
-	crtc->cursor.maxH = crtc->cursor.maxW = 64;
-	crtc->cursor.size = crtc->cursor.maxH * crtc->cursor.maxW * 2 / 8;
-	crtc->cursor.vstart = sm750_dev->pvMem + crtc->cursor.offset;
+	crtc->cursor.max_h = crtc->cursor.max_w = 64;
+	crtc->cursor.size = crtc->cursor.max_h * crtc->cursor.max_w * 2 / 8;
+	crtc->cursor.vstart = sm750_dev->v_mem + crtc->cursor.offset;
 
 	memset_io(crtc->cursor.vstart, 0, crtc->cursor.size);
 	if (!g_hwcursor) {
@@ -865,7 +865,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 			    crtc->line_pad);
 
 	info->pseudo_palette = &par->pseudo_palette[0];
-	info->screen_base = crtc->vScreen;
+	info->screen_base = crtc->v_screen;
 	pr_debug("screen_base vaddr = %p\n", info->screen_base);
 	info->screen_size = line_length * var->yres_virtual;
 	info->flags = FBINFO_FLAG_DEFAULT | 0;
@@ -878,9 +878,9 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	fix->ywrapstep = crtc->ywrapstep;
 	fix->accel = FB_ACCEL_SMI;
 
-	strlcpy(fix->id, fixId[index], sizeof(fix->id));
+	strlcpy(fix->id, fix_id[index], sizeof(fix->id));
 
-	fix->smem_start = crtc->oScreen + sm750_dev->vidmem_start;
+	fix->smem_start = crtc->o_screen + sm750_dev->vidmem_start;
 	pr_info("fix->smem_start = %lx\n", fix->smem_start);
 	/*
 	 * according to mmap experiment from user space application,
@@ -941,12 +941,12 @@ static void sm750fb_setup(struct sm750_dev *sm750_dev, char *src)
 
 	swap = 0;
 
-	sm750_dev->initParm.chip_clk = 0;
-	sm750_dev->initParm.mem_clk = 0;
-	sm750_dev->initParm.master_clk = 0;
-	sm750_dev->initParm.powerMode = 0;
-	sm750_dev->initParm.setAllEngOff = 0;
-	sm750_dev->initParm.resetMemory = 1;
+	sm750_dev->init_parm.chip_clk = 0;
+	sm750_dev->init_parm.mem_clk = 0;
+	sm750_dev->init_parm.master_clk = 0;
+	sm750_dev->init_parm.power_mode = 0;
+	sm750_dev->init_parm.set_all_eng_off = 0;
+	sm750_dev->init_parm.reset_memory = 1;
 
 	/* defaultly turn g_hwcursor on for both view */
 	g_hwcursor = 3;
@@ -965,11 +965,11 @@ static void sm750fb_setup(struct sm750_dev *sm750_dev, char *src)
 		} else if (!strncmp(opt, "nocrt", strlen("nocrt"))) {
 			sm750_dev->nocrt = 1;
 		} else if (!strncmp(opt, "36bit", strlen("36bit"))) {
-			sm750_dev->pnltype = sm750_doubleTFT;
+			sm750_dev->pnltype = sm750_double_TFT;
 		} else if (!strncmp(opt, "18bit", strlen("18bit"))) {
-			sm750_dev->pnltype = sm750_dualTFT;
+			sm750_dev->pnltype = sm750_dual_TFT;
 		} else if (!strncmp(opt, "24bit", strlen("24bit"))) {
-			sm750_dev->pnltype = sm750_24TFT;
+			sm750_dev->pnltype = sm750_24_TFT;
 		} else if (!strncmp(opt, "nohwc0", strlen("nohwc0"))) {
 			g_hwcursor &= ~0x1;
 		} else if (!strncmp(opt, "nohwc1", strlen("nohwc1"))) {
@@ -1132,7 +1132,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 		sm750_dev->mtrr.vram = arch_phys_wc_add(sm750_dev->vidmem_start,
 							sm750_dev->vidmem_size);
 
-	memset_io(sm750_dev->pvMem, 0, sm750_dev->vidmem_size);
+	memset_io(sm750_dev->v_mem, 0, sm750_dev->vidmem_size);
 
 	pci_set_drvdata(pdev, sm750_dev);
 
@@ -1163,8 +1163,8 @@ static void lynxfb_pci_remove(struct pci_dev *pdev)
 	sm750fb_framebuffer_release(sm750_dev);
 	arch_phys_wc_del(sm750_dev->mtrr.vram);
 
-	iounmap(sm750_dev->pvReg);
-	iounmap(sm750_dev->pvMem);
+	iounmap(sm750_dev->v_reg);
+	iounmap(sm750_dev->v_mem);
 	kfree(g_settings);
 }
 
diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index ce90adcb449d..accc5c88ebe4 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -13,9 +13,9 @@
 #endif
 
 enum sm750_pnltype {
-	sm750_24TFT = 0,	/* 24bit tft */
-	sm750_dualTFT = 2,	/* dual 18 bit tft */
-	sm750_doubleTFT = 1,	/* 36 bit double pixel tft */
+	sm750_24_TFT = 0,	/* 24bit tft */
+	sm750_dual_TFT = 2,	/* dual 18 bit tft */
+	sm750_double_TFT = 1,	/* 36 bit double pixel tft */
 };
 
 /* vga channel is not concerned  */
@@ -39,20 +39,20 @@ enum sm750_path {
 };
 
 struct init_status {
-	ushort powerMode;
+	ushort power_mode;
 	/* below three clocks are in unit of MHZ*/
 	ushort chip_clk;
 	ushort mem_clk;
 	ushort master_clk;
-	ushort setAllEngOff;
-	ushort resetMemory;
+	ushort set_all_eng_off;
+	ushort reset_memory;
 };
 
 struct lynx_accel {
 	/* base virtual address of DPR registers */
-	volatile unsigned char __iomem *dprBase;
+	volatile unsigned char __iomem *dpr_base;
 	/* base virtual address of de data port */
-	volatile unsigned char __iomem *dpPortBase;
+	volatile unsigned char __iomem *dp_port_base;
 
 	/* function pointers */
 	void (*de_init)(struct lynx_accel *);
@@ -90,12 +90,12 @@ struct sm750_dev {
 	unsigned long vidreg_start;
 	__u32 vidmem_size;
 	__u32 vidreg_size;
-	void __iomem *pvReg;
-	unsigned char __iomem *pvMem;
+	void __iomem *v_reg;
+	unsigned char __iomem *v_mem;
 	/* locks*/
 	spinlock_t slock;
 
-	struct init_status initParm;
+	struct init_status init_parm;
 	enum sm750_pnltype pnltype;
 	enum sm750_dataflow dataflow;
 	int nocrt;
@@ -106,7 +106,7 @@ struct sm750_dev {
 	 * 2: secondary crtc hw cursor enabled
 	 * 3: both ctrc hw cursor enabled
 	 */
-	int hwCursor;
+	int hw_cursor;
 };
 
 struct lynx_cursor {
@@ -115,8 +115,8 @@ struct lynx_cursor {
 	int h;
 	int size;
 	/* hardware limitation */
-	int maxW;
-	int maxH;
+	int max_w;
+	int max_h;
 	/* base virtual address and offset  of cursor image */
 	char __iomem *vstart;
 	int offset;
@@ -125,10 +125,10 @@ struct lynx_cursor {
 };
 
 struct lynxfb_crtc {
-	unsigned char __iomem *vCursor; /* virtual address of cursor */
-	unsigned char __iomem *vScreen; /* virtual address of on_screen */
-	int oCursor; /* cursor address offset in vidmem */
-	int oScreen; /* onscreen address offset in vidmem */
+	unsigned char __iomem *v_cursor; /* virtual address of cursor */
+	unsigned char __iomem *v_screen; /* virtual address of on_screen */
+	int o_cursor; /* cursor address offset in vidmem */
+	int o_screen; /* onscreen address offset in vidmem */
 	int channel;/* which channel this crtc stands for*/
 	resource_size_t vidmem_size;/* this view's video memory max size */
 
@@ -163,7 +163,7 @@ struct lynxfb_output {
 	 */
 	void *priv;
 
-	int (*proc_setBLANK)(struct lynxfb_output*, int);
+	int (*proc_set_blank)(struct lynxfb_output*, int);
 };
 
 struct lynxfb_par {
@@ -182,30 +182,30 @@ static inline unsigned long ps_to_hz(unsigned int psvalue)
 	/* 10^12 / picosecond period gives frequency in Hz */
 	do_div(numerator, psvalue);
 	return (unsigned long)numerator;
-}
+};
 
 int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
 int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
-void hw_sm750_initAccel(struct sm750_dev *sm750_dev);
-int hw_sm750_deWait(void);
-int hw_sm750le_deWait(void);
+void hw_sm750_init_accel(struct sm750_dev *sm750_dev);
+int hw_sm750_de_wait(void);
+int hw_sm750le_de_wait(void);
 
-int hw_sm750_output_setMode(struct lynxfb_output *output,
-			    struct fb_var_screeninfo *var,
-			    struct fb_fix_screeninfo *fix);
+int hw_sm750_output_set_mode(struct lynxfb_output *output,
+			     struct fb_var_screeninfo *var,
+			     struct fb_fix_screeninfo *fixr);
 
-int hw_sm750_crtc_checkMode(struct lynxfb_crtc *crtc,
-			    struct fb_var_screeninfo *var);
+int hw_sm750_crtc_check_mode(struct lynxfb_crtc *crtc,
+			     struct fb_var_screeninfo *var);
 
-int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
-			  struct fb_var_screeninfo *var,
-			  struct fb_fix_screeninfo *fix);
+int hw_sm750_crtc_set_mode(struct lynxfb_crtc *crtc,
+			   struct fb_var_screeninfo *var,
+			   struct fb_fix_screeninfo *fix);
 
-int hw_sm750_setColReg(struct lynxfb_crtc *crtc, ushort index,
-		       ushort red, ushort green, ushort blue);
+int hw_sm750_set_col_reg(struct lynxfb_crtc *crtc, ushort index,
+			 ushort red, ushort green, ushort blue);
 
-int hw_sm750_setBLANK(struct lynxfb_output *output, int blank);
-int hw_sm750le_setBLANK(struct lynxfb_output *output, int blank);
+int hw_sm750_set_blank(struct lynxfb_output *output, int blank);
+int hw_sm750le_set_blank(struct lynxfb_output *output, int blank);
 int hw_sm750_pan_display(struct lynxfb_crtc *crtc,
 			 const struct fb_var_screeninfo *var,
 			 const struct fb_info *info);
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index d523df58d067..de69e76b20b3 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -18,19 +18,20 @@
 
 #include "sm750.h"
 #include "sm750_accel.h"
-static inline void write_dpr(struct lynx_accel *accel, int offset, u32 regValue)
+static inline void write_dpr(struct lynx_accel *accel, int offset,
+			     u32 reg_value)
 {
-	writel(regValue, accel->dprBase + offset);
+	writel(reg_value, accel->dpr_base + offset);
 }
 
 static inline u32 read_dpr(struct lynx_accel *accel, int offset)
 {
-	return readl(accel->dprBase + offset);
+	return readl(accel->dpr_base + offset);
 }
 
-static inline void write_dpPort(struct lynx_accel *accel, u32 data)
+static inline void write_dp_port(struct lynx_accel *accel, u32 data)
 {
-	writel(data, accel->dpPortBase);
+	writel(data, accel->dp_port_base);
 }
 
 void sm750_hw_de_init(struct lynx_accel *accel)
@@ -49,7 +50,7 @@ void sm750_hw_de_init(struct lynx_accel *accel)
 	      DE_STRETCH_FORMAT_ADDRESSING_MASK |
 	      DE_STRETCH_FORMAT_SOURCE_HEIGHT_MASK;
 
-	/* DE_STRETCH bpp format need be initialized in setMode routine */
+	/* DE_STRETCH bpp format need be initialized in set_Mode routine */
 	write_dpr(accel, DE_STRETCH_FORMAT,
 		  (read_dpr(accel, DE_STRETCH_FORMAT) & ~clr) | reg);
 
@@ -86,11 +87,11 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt)
 }
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-		      u32 base, u32 pitch, u32 Bpp,
+		      u32 base, u32 pitch, u32 bpp,
 		      u32 x, u32 y, u32 width, u32 height,
 		      u32 color, u32 rop)
 {
-	u32 deCtrl;
+	u32 de_ctrl;
 
 	if (accel->de_wait() != 0) {
 		/*
@@ -103,14 +104,14 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 
 	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, base); /* dpr40 */
 	write_dpr(accel, DE_PITCH,
-		  ((pitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
+		  ((pitch / bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (pitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (pitch / bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
 	write_dpr(accel, DE_WINDOW_WIDTH,
-		  ((pitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
+		  ((pitch / bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-		   (pitch / Bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr44 */
+		   (pitch / bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr44 */
 
 	write_dpr(accel, DE_FOREGROUND, color); /* DPR14 */
 
@@ -122,32 +123,32 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 		  ((width << DE_DIMENSION_X_SHIFT) & DE_DIMENSION_X_MASK) |
 		  (height & DE_DIMENSION_Y_ET_MASK)); /* dpr8 */
 
-	deCtrl = DE_CONTROL_STATUS | DE_CONTROL_LAST_PIXEL |
+	de_ctrl = DE_CONTROL_STATUS | DE_CONTROL_LAST_PIXEL |
 		DE_CONTROL_COMMAND_RECTANGLE_FILL | DE_CONTROL_ROP_SELECT |
 		(rop & DE_CONTROL_ROP_MASK); /* dpr0xc */
 
-	write_dpr(accel, DE_CONTROL, deCtrl);
+	write_dpr(accel, DE_CONTROL, de_ctrl);
 	return 0;
 }
 
 int sm750_hw_copyarea(
 struct lynx_accel *accel,
-unsigned int sBase,  /* Address of source: offset in frame buffer */
-unsigned int sPitch, /* Pitch value of source surface in BYTE */
+unsigned int s_base,  /* Address of source: offset in frame buffer */
+unsigned int s_pitch, /* Pitch value of source surface in BYTE */
 unsigned int sx,
 unsigned int sy,     /* Starting coordinate of source surface */
-unsigned int dBase,  /* Address of destination: offset in frame buffer */
-unsigned int dPitch, /* Pitch value of destination surface in BYTE */
-unsigned int Bpp,    /* Color depth of destination surface */
+unsigned int d_base,  /* Address of destination: offset in frame buffer */
+unsigned int d_pitch, /* Pitch value of destination surface in BYTE */
+unsigned int bpp,    /* Color depth of destination surface */
 unsigned int dx,
 unsigned int dy,     /* Starting coordinate of destination surface */
 unsigned int width,
 unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2)   /* ROP value */
 {
-	unsigned int nDirection, de_ctrl;
+	unsigned int direction, de_ctrl;
 
-	nDirection = LEFT_TO_RIGHT;
+	direction = LEFT_TO_RIGHT;
 	/* Direction of ROP2 operation: 1 = Left to Right,
 	 *                             (-1) = Right to Left
 	 */
@@ -156,7 +157,7 @@ unsigned int rop2)   /* ROP value */
 	/* If source and destination are the same surface,
 	 * need to check for overlay cases.
 	 */
-	if (sBase == dBase && sPitch == dPitch) {
+	if (s_base == d_base && s_pitch == d_pitch) {
 		/* Determine direction of operation */
 		if (sy < dy) {
 			/*  +----------+
@@ -169,7 +170,7 @@ unsigned int rop2)   /* ROP value */
 			 *	+----------+
 			 */
 
-			nDirection = BOTTOM_TO_TOP;
+			direction = BOTTOM_TO_TOP;
 		} else if (sy > dy) {
 			/*  +----------+
 			 *  |D         |
@@ -181,7 +182,7 @@ unsigned int rop2)   /* ROP value */
 			 *	+----------+
 			 */
 
-			nDirection = TOP_TO_BOTTOM;
+			direction = TOP_TO_BOTTOM;
 		} else {
 			/* sy == dy */
 
@@ -194,7 +195,7 @@ unsigned int rop2)   /* ROP value */
 				 * +------+---+------+
 				 */
 
-				nDirection = RIGHT_TO_LEFT;
+				direction = RIGHT_TO_LEFT;
 			} else {
 			/* sx > dx */
 
@@ -206,12 +207,12 @@ unsigned int rop2)   /* ROP value */
 				 * +------+---+------+
 				 */
 
-				nDirection = LEFT_TO_RIGHT;
+				direction = LEFT_TO_RIGHT;
 			}
 		}
 	}
 
-	if ((nDirection == BOTTOM_TO_TOP) || (nDirection == RIGHT_TO_LEFT)) {
+	if ((direction == BOTTOM_TO_TOP) || (direction == RIGHT_TO_LEFT)) {
 		sx += width - 1;
 		sy += height - 1;
 		dx += width - 1;
@@ -230,14 +231,14 @@ unsigned int rop2)   /* ROP value */
 	 * It is an address offset (128 bit aligned)
 	 * from the beginning of frame buffer.
 	 */
-	write_dpr(accel, DE_WINDOW_SOURCE_BASE, sBase); /* dpr40 */
+	write_dpr(accel, DE_WINDOW_SOURCE_BASE, s_base); /* dpr40 */
 
 	/*
 	 * 2D Destination Base.
 	 * It is an address offset (128 bit aligned)
 	 * from the beginning of frame buffer.
 	 */
-	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase); /* dpr44 */
+	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, d_base); /* dpr44 */
 
     /*
      * Program pitch (distance between the 1st points of two adjacent lines).
@@ -245,9 +246,9 @@ unsigned int rop2)   /* ROP value */
      * pixel values. Need Byte to pixel conversion.
      */
 	write_dpr(accel, DE_PITCH,
-		  ((dPitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
+		  ((d_pitch / bpp << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (sPitch / Bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (s_pitch / bpp & DE_PITCH_SOURCE_MASK)); /* dpr10 */
 
     /*
      * Screen Window width in Pixels.
@@ -255,9 +256,9 @@ unsigned int rop2)   /* ROP value */
      * for a given point.
      */
 	write_dpr(accel, DE_WINDOW_WIDTH,
-		  ((dPitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
+		  ((d_pitch / bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-		  (sPitch / Bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr3c */
+		  (s_pitch / bpp & DE_WINDOW_WIDTH_SRC_MASK)); /* dpr3c */
 
 	if (accel->de_wait() != 0)
 		return -1;
@@ -273,14 +274,14 @@ unsigned int rop2)   /* ROP value */
 		  (height & DE_DIMENSION_Y_ET_MASK)); /* dpr08 */
 
 	de_ctrl = (rop2 & DE_CONTROL_ROP_MASK) | DE_CONTROL_ROP_SELECT |
-		((nDirection == RIGHT_TO_LEFT) ? DE_CONTROL_DIRECTION : 0) |
+		((direction == RIGHT_TO_LEFT) ? DE_CONTROL_DIRECTION : 0) |
 		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
 	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
 
 	return 0;
 }
 
-static unsigned int deGetTransparency(struct lynx_accel *accel)
+static unsigned int de_get_transparency(struct lynx_accel *accel)
 {
 	unsigned int de_ctrl;
 
@@ -293,28 +294,28 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 }
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf,   /* pointer to start of source buffer
+		 const char *src_buf,   /* pointer to start of source buffer
 					 * in system memory
 					 */
 
-		 u32 srcDelta,		/* Pitch value (in bytes) of the
+		 u32 src_delta,		/* Pitch value (in bytes) of the
 					 * source buffer, +ive means top down
 					 * and -ive means button up
 					 */
 
-		 u32 startBit,		/* Mono data can start at any bit in a
+		 u32 start_bit,		/* Mono data can start at any bit in a
 					 * byte, this value should be 0 to 7
 					 */
 
-		 u32 dBase,		/* Address of destination: offset in
+		 u32 d_base,		/* Address of destination: offset in
 					 * frame buffer
 					 */
 
-		 u32 dPitch,		/* Pitch value of destination surface
+		 u32 d_pitch,		/* Pitch value of destination surface
 					 * in BYTE
 					 */
 
-		 u32 bytePerPixel,	/* Color depth of destination surface */
+		 u32 byte_per_pixel,	/* Color depth of destination surface */
 
 		 u32 dx,
 		 u32 dy,		/* Starting coordinate of destination
@@ -326,12 +327,12 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 					 * pixel value
 					 */
 
-		 u32 fColor,		/* Foreground color
+		 u32 f_color,		/* Foreground color
 					 * (corresponding to a 1 in the
 					 * monochrome data)
 					 */
 
-		 u32 bColor,		/* Background color
+		 u32 b_color,		/* Background color
 					 * (corresponding to a 0 in the
 					 * monochrome data)
 					 */
@@ -339,17 +340,17 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 		 u32 rop2)	      /* ROP value */
 
 {
-	unsigned int ulBytesPerScan;
-	unsigned int ul4BytesPerScan;
-	unsigned int ulBytesRemain;
+	unsigned int ul_bytes_per_scan;
+	unsigned int ul_4_bytes_per_scan;
+	unsigned int ul_bytes_remain;
 	unsigned int de_ctrl = 0;
-	unsigned char ajRemain[4];
+	unsigned char aj_remain[4];
 	int i, j;
 
-	startBit &= 7; /* Just make sure the start bit is within legal range */
-	ulBytesPerScan = (width + startBit + 7) / 8;
-	ul4BytesPerScan = ulBytesPerScan & ~3;
-	ulBytesRemain = ulBytesPerScan & 3;
+	start_bit &= 7; /* Just make sure the start bit is within legal range */
+	ul_bytes_per_scan = (width + start_bit + 7) / 8;
+	ul_4_bytes_per_scan = ul_bytes_per_scan & ~3;
+	ul_bytes_remain = ul_bytes_per_scan & 3;
 
 	if (accel->de_wait() != 0)
 		return -1;
@@ -364,7 +365,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	 * It is an address offset (128 bit aligned)
 	 * from the beginning of frame buffer.
 	 */
-	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase);
+	write_dpr(accel, DE_WINDOW_DESTINATION_BASE, d_base);
 
 	/*
 	 * Program pitch (distance between the 1st points of two adjacent
@@ -372,9 +373,9 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	 * register uses pixel values. Need Byte to pixel conversion.
 	 */
 	write_dpr(accel, DE_PITCH,
-		  ((dPitch / bytePerPixel << DE_PITCH_DESTINATION_SHIFT) &
+		  ((d_pitch / byte_per_pixel << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (dPitch / bytePerPixel & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (d_pitch / byte_per_pixel & DE_PITCH_SOURCE_MASK));/* dpr10 */
 
 	/*
 	 * Screen Window width in Pixels.
@@ -382,17 +383,17 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	 * in frame buffer for a given point.
 	 */
 	write_dpr(accel, DE_WINDOW_WIDTH,
-		  ((dPitch / bytePerPixel << DE_WINDOW_WIDTH_DST_SHIFT) &
+		  ((d_pitch / byte_per_pixel << DE_WINDOW_WIDTH_DST_SHIFT) &
 		   DE_WINDOW_WIDTH_DST_MASK) |
-		  (dPitch / bytePerPixel & DE_WINDOW_WIDTH_SRC_MASK));
+		  (d_pitch / byte_per_pixel & DE_WINDOW_WIDTH_SRC_MASK));
 
 	 /*
 	  * Note: For 2D Source in Host Write, only X_K1_MONO field is needed,
 	  * and Y_K2 field is not used.
-	  * For mono bitmap, use startBit for X_K1.
+	  * For mono bitmap, use start_bit for X_K1.
 	  */
 	write_dpr(accel, DE_SOURCE,
-		  (startBit << DE_SOURCE_X_K1_SHIFT) &
+		  (start_bit << DE_SOURCE_X_K1_SHIFT) &
 		  DE_SOURCE_X_K1_MONO_MASK); /* dpr00 */
 
 	write_dpr(accel, DE_DESTINATION,
@@ -403,29 +404,29 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 		  ((width << DE_DIMENSION_X_SHIFT) & DE_DIMENSION_X_MASK) |
 		  (height & DE_DIMENSION_Y_ET_MASK)); /* dpr08 */
 
-	write_dpr(accel, DE_FOREGROUND, fColor);
-	write_dpr(accel, DE_BACKGROUND, bColor);
+	write_dpr(accel, DE_FOREGROUND, f_color);
+	write_dpr(accel, DE_BACKGROUND, b_color);
 
 	de_ctrl = (rop2 & DE_CONTROL_ROP_MASK) |
 		DE_CONTROL_ROP_SELECT | DE_CONTROL_COMMAND_HOST_WRITE |
 		DE_CONTROL_HOST | DE_CONTROL_STATUS;
 
-	write_dpr(accel, DE_CONTROL, de_ctrl | deGetTransparency(accel));
+	write_dpr(accel, DE_CONTROL, de_ctrl | de_get_transparency(accel));
 
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
-		for (j = 0; j < (ul4BytesPerScan / 4); j++) {
-			write_dpPort(accel,
-				     *(unsigned int *)(pSrcbuf + (j * 4)));
+		for (j = 0; j < (ul_4_bytes_per_scan / 4); j++) {
+			write_dp_port(accel,
+				     *(unsigned int *)(src_buf + (j * 4)));
 		}
-		if (ulBytesRemain) {
-			memcpy(ajRemain, pSrcbuf + ul4BytesPerScan,
-			       ulBytesRemain);
-			write_dpPort(accel, *(unsigned int *)ajRemain);
+		if (ul_bytes_remain) {
+			memcpy(aj_remain, src_buf + ul_4_bytes_per_scan,
+			       ul_bytes_remain);
+			write_dp_port(accel, *(unsigned int *)aj_remain);
 		}
 
-		pSrcbuf += srcDelta;
+		src_buf += src_delta;
 	}
 
 	return 0;
diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index 9ce8dd8e44c5..8817684c0406 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -190,18 +190,18 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt);
 void sm750_hw_de_init(struct lynx_accel *accel);
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-				u32 base, u32 pitch, u32 Bpp,
+				u32 base, u32 pitch, u32 bpp,
 				u32 x, u32 y, u32 width, u32 height,
 				u32 color, u32 rop);
 
 int sm750_hw_copyarea(
 struct lynx_accel *accel,
-unsigned int sBase,  /* Address of source: offset in frame buffer */
-unsigned int sPitch, /* Pitch value of source surface in BYTE */
+unsigned int s_base,  /* Address of source: offset in frame buffer */
+unsigned int s_pitch, /* Pitch value of source surface in BYTE */
 unsigned int sx,
 unsigned int sy,     /* Starting coordinate of source surface */
-unsigned int dBase,  /* Address of destination: offset in frame buffer */
-unsigned int dPitch, /* Pitch value of destination surface in BYTE */
+unsigned int d_base,  /* Address of destination: offset in frame buffer */
+unsigned int d_pitch, /* Pitch value of destination surface in BYTE */
 unsigned int bpp,    /* Color depth of destination surface */
 unsigned int dx,
 unsigned int dy,     /* Starting coordinate of destination surface */
@@ -210,29 +210,29 @@ unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2);
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf,	/* pointer to start of source buffer in
+		 const char *src_buf,	/* pointer to start of source buffer in
 					 * system memory
 					 */
 
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source
+		 u32 src_delta,         /* Pitch value (in bytes) of the source
 					 * buffer, +ive means top down and
 					 * -ive means button up
 					 */
 
-		 u32 startBit,		/* Mono data can start at any bit
+		 u32 start_bit,		/* Mono data can start at any bit
 					 * in a byte, this value should
 					 * be 0 to 7
 					 */
 
-		 u32 dBase,		/* Address of destination: offset in
+		 u32 d_base,		/* Address of destination: offset in
 					 * frame buffer
 					 */
 
-		 u32 dPitch,		/* Pitch value of destination surface
+		 u32 d_pitch,		/* Pitch value of destination surface
 					 * in BYTE
 					 */
 
-		 u32 bytePerPixel,      /* Color depth of destination surface */
+		 u32 byte_per_pixel,    /* Color depth of destination surface */
 
 		 u32 dx,
 		 u32 dy,		/* Starting coordinate of destination
@@ -243,12 +243,12 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 					 * in pixel value
 					 */
 
-		 u32 fColor,		/* Foreground color
+		 u32 f_color,		/* Foreground color
 					 * (corresponding to a 1 in the
 					 * monochrome data
 					 */
 
-		 u32 bColor,		/* Background color
+		 u32 b_color,		/* Background color
 					 * (corresponding to a 0 in the
 					 * monochrome data
 					 */
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index bbbef27cb329..ff643e33fa44 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -58,13 +58,13 @@ void sm750_hw_cursor_disable(struct lynx_cursor *cursor)
 	poke32(HWC_ADDRESS, 0);
 }
 
-void sm750_hw_cursor_setSize(struct lynx_cursor *cursor, int w, int h)
+void sm750_hw_cursor_set_size(struct lynx_cursor *cursor, int w, int h)
 {
 	cursor->w = w;
 	cursor->h = h;
 }
 
-void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y)
+void sm750_hw_cursor_set_pos(struct lynx_cursor *cursor, int x, int y)
 {
 	u32 reg;
 
@@ -73,7 +73,7 @@ void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y)
 	poke32(HWC_LOCATION, reg);
 }
 
-void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg)
+void sm750_hw_cursor_set_color(struct lynx_cursor *cursor, u32 fg, u32 bg)
 {
 	u32 reg = (fg << HWC_COLOR_12_2_RGB565_SHIFT) &
 		HWC_COLOR_12_2_RGB565_MASK;
@@ -82,8 +82,8 @@ void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg)
 	poke32(HWC_COLOR_3, 0xffe0);
 }
 
-void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
-			     const u8 *pcol, const u8 *pmsk)
+void sm750_hw_cursor_set_data(struct lynx_cursor *cursor, u16 rop,
+			      const u8 *pcol, const u8 *pmsk)
 {
 	int i, j, count, pitch, offset;
 	u8 color, mask, opr;
@@ -97,7 +97,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
 	count = pitch * cursor->h;
 
 	/* in byte */
-	offset = cursor->maxW * 2 / 8;
+	offset = cursor->max_w * 2 / 8;
 
 	data = 0;
 	pstart = cursor->vstart;
@@ -132,8 +132,8 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
 	}
 }
 
-void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
-			      const u8 *pcol, const u8 *pmsk)
+void sm750_hw_cursor_set_data2(struct lynx_cursor *cursor, u16 rop,
+			       const u8 *pcol, const u8 *pmsk)
 {
 	int i, j, count, pitch, offset;
 	u8 color, mask;
@@ -147,7 +147,7 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
 	count = pitch * cursor->h;
 
 	/* in byte */
-	offset = cursor->maxW * 2 / 8;
+	offset = cursor->max_w * 2 / 8;
 
 	data = 0;
 	pstart = cursor->vstart;
diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
index 16ac07eb58d6..4335c7be7d04 100644
--- a/drivers/staging/sm750fb/sm750_cursor.h
+++ b/drivers/staging/sm750fb/sm750_cursor.h
@@ -5,14 +5,14 @@
 /* hw_cursor_xxx works for voyager,718 and 750 */
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
-void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
+void sm750_hw_cursor_set_size(struct lynx_cursor *cursor,
 						int w, int h);
-void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
+void sm750_hw_cursor_set_pos(struct lynx_cursor *cursor,
 						int x, int y);
-void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
+void sm750_hw_cursor_set_color(struct lynx_cursor *cursor,
 						u32 fg, u32 bg);
-void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
+void sm750_hw_cursor_set_data(struct lynx_cursor *cursor,
 			u16 rop, const u8 *data, const u8 *mask);
-void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
+void sm750_hw_cursor_set_data2(struct lynx_cursor *cursor,
 			u16 rop, const u8 *data, const u8 *mask);
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 15ac73821ab5..28a8d11cb9df 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -50,20 +50,20 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	}
 
 	/* now map mmio and vidmem */
-	sm750_dev->pvReg = ioremap_nocache(sm750_dev->vidreg_start,
+	sm750_dev->v_reg = ioremap_nocache(sm750_dev->vidreg_start,
 					   sm750_dev->vidreg_size);
-	if (!sm750_dev->pvReg) {
+	if (!sm750_dev->v_reg) {
 		pr_err("mmio failed\n");
 		ret = -EFAULT;
 		goto exit;
 	} else {
-		pr_info("mmio virtual addr = %p\n", sm750_dev->pvReg);
+		pr_info("mmio virtual addr = %p\n", sm750_dev->v_reg);
 	}
 
-	sm750_dev->accel.dprBase = sm750_dev->pvReg + DE_BASE_ADDR_TYPE1;
-	sm750_dev->accel.dpPortBase = sm750_dev->pvReg + DE_PORT_ADDR_TYPE1;
+	sm750_dev->accel.dpr_base = sm750_dev->v_reg + DE_BASE_ADDR_TYPE1;
+	sm750_dev->accel.dp_port_base = sm750_dev->v_reg + DE_PORT_ADDR_TYPE1;
 
-	mmio750 = sm750_dev->pvReg;
+	mmio750 = sm750_dev->v_reg;
 	sm750_set_chip_type(sm750_dev->devid, sm750_dev->revid);
 
 	sm750_dev->vidmem_start = pci_resource_start(pdev, 0);
@@ -78,14 +78,14 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 		sm750_dev->vidmem_start, sm750_dev->vidmem_size);
 
 	/* reserve the vidmem space of smi adaptor */
-	sm750_dev->pvMem = ioremap_wc(sm750_dev->vidmem_start,
+	sm750_dev->v_mem = ioremap_wc(sm750_dev->vidmem_start,
 				      sm750_dev->vidmem_size);
-	if (!sm750_dev->pvMem) {
+	if (!sm750_dev->v_mem) {
 		pr_err("Map video memory failed\n");
 		ret = -EFAULT;
 		goto exit;
 	} else {
-		pr_info("video memory vaddr = %p\n", sm750_dev->pvMem);
+		pr_info("video memory vaddr = %p\n", sm750_dev->v_mem);
 	}
 exit:
 	return ret;
@@ -95,7 +95,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 {
 	struct init_status *parm;
 
-	parm = &sm750_dev->initParm;
+	parm = &sm750_dev->init_parm;
 	if (parm->chip_clk == 0)
 		parm->chip_clk = (sm750_get_chip_type() == SM750LE) ?
 						DEFAULT_SM750LE_CHIP_CLOCK :
@@ -106,7 +106,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 	if (parm->master_clk == 0)
 		parm->master_clk = parm->chip_clk / 3;
 
-	ddk750_init_hw((struct initchip_param *)&sm750_dev->initParm);
+	ddk750_init_hw((struct initchip_param *)&sm750_dev->init_parm);
 	/* for sm718, open pci burst */
 	if (sm750_dev->devid == 0x718) {
 		poke32(SYSTEM_CTRL,
@@ -136,12 +136,12 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 			~(PANEL_DISPLAY_CTRL_DUAL_DISPLAY |
 			  PANEL_DISPLAY_CTRL_DOUBLE_PIXEL);
 		switch (sm750_dev->pnltype) {
-		case sm750_24TFT:
+		case sm750_24_TFT:
 			break;
-		case sm750_doubleTFT:
+		case sm750_double_TFT:
 			val |= PANEL_DISPLAY_CTRL_DOUBLE_PIXEL;
 			break;
-		case sm750_dualTFT:
+		case sm750_dual_TFT:
 			val |= PANEL_DISPLAY_CTRL_DUAL_DISPLAY;
 			break;
 		}
@@ -175,14 +175,14 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 
 	/* init 2d engine */
 	if (!sm750_dev->accel_off)
-		hw_sm750_initAccel(sm750_dev);
+		hw_sm750_init_accel(sm750_dev);
 
 	return 0;
 }
 
-int hw_sm750_output_setMode(struct lynxfb_output *output,
-			    struct fb_var_screeninfo *var,
-			    struct fb_fix_screeninfo *fix)
+int hw_sm750_output_set_mode(struct lynxfb_output *output,
+			     struct fb_var_screeninfo *var,
+			     struct fb_fix_screeninfo *fix)
 {
 	int ret;
 	enum disp_output disp_set;
@@ -221,8 +221,8 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
 	return ret;
 }
 
-int hw_sm750_crtc_checkMode(struct lynxfb_crtc *crtc,
-			    struct fb_var_screeninfo *var)
+int hw_sm750_crtc_check_mode(struct lynxfb_crtc *crtc,
+			     struct fb_var_screeninfo *var)
 {
 	struct sm750_dev *sm750_dev;
 	struct lynxfb_par *par = container_of(crtc, struct lynxfb_par, crtc);
@@ -247,9 +247,9 @@ int hw_sm750_crtc_checkMode(struct lynxfb_crtc *crtc,
 }
 
 /* set the controller's mode for @crtc charged with @var and @fix parameters */
-int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
-			  struct fb_var_screeninfo *var,
-			  struct fb_fix_screeninfo *fix)
+int hw_sm750_crtc_set_mode(struct lynxfb_crtc *crtc,
+			   struct fb_var_screeninfo *var,
+			   struct fb_fix_screeninfo *fix)
 {
 	int ret, fmt;
 	u32 reg;
@@ -314,7 +314,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 	if (crtc->channel != sm750_secondary) {
 		/* set pitch, offset, width, start address, etc... */
 		poke32(PANEL_FB_ADDRESS,
-		       crtc->oScreen & PANEL_FB_ADDRESS_ADDRESS_MASK);
+		       crtc->o_screen & PANEL_FB_ADDRESS_ADDRESS_MASK);
 
 		reg = var->xres * (var->bits_per_pixel >> 3);
 		/*
@@ -350,7 +350,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 		poke32(PANEL_DISPLAY_CTRL, reg | (var->bits_per_pixel >> 4));
 	} else {
 		/* not implemented now */
-		poke32(CRT_FB_ADDRESS, crtc->oScreen);
+		poke32(CRT_FB_ADDRESS, crtc->o_screen);
 		reg = var->xres * (var->bits_per_pixel >> 3);
 		/*
 		 * crtc->channel is not equal to par->index on numeric,
@@ -372,8 +372,8 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc *crtc,
 	return ret;
 }
 
-int hw_sm750_setColReg(struct lynxfb_crtc *crtc, ushort index,
-		       ushort red, ushort green, ushort blue)
+int hw_sm750_set_col_reg(struct lynxfb_crtc *crtc, ushort index,
+			 ushort red, ushort green, ushort blue)
 {
 	static unsigned int add[] = {PANEL_PALETTE_RAM, CRT_PALETTE_RAM};
 
@@ -382,7 +382,7 @@ int hw_sm750_setColReg(struct lynxfb_crtc *crtc, ushort index,
 	return 0;
 }
 
-int hw_sm750le_setBLANK(struct lynxfb_output *output, int blank)
+int hw_sm750le_set_blank(struct lynxfb_output *output, int blank)
 {
 	int dpms, crtdb;
 
@@ -423,7 +423,7 @@ int hw_sm750le_setBLANK(struct lynxfb_output *output, int blank)
 	return 0;
 }
 
-int hw_sm750_setBLANK(struct lynxfb_output *output, int blank)
+int hw_sm750_set_blank(struct lynxfb_output *output, int blank)
 {
 	unsigned int dpms, pps, crtdb;
 
@@ -476,7 +476,7 @@ int hw_sm750_setBLANK(struct lynxfb_output *output, int blank)
 	return 0;
 }
 
-void hw_sm750_initAccel(struct sm750_dev *sm750_dev)
+void hw_sm750_init_accel(struct sm750_dev *sm750_dev)
 {
 	u32 reg;
 
@@ -506,7 +506,7 @@ void hw_sm750_initAccel(struct sm750_dev *sm750_dev)
 	sm750_dev->accel.de_init(&sm750_dev->accel);
 }
 
-int hw_sm750le_deWait(void)
+int hw_sm750le_de_wait(void)
 {
 	int i = 0x10000000;
 	unsigned int mask = DE_STATE2_DE_STATUS_BUSY | DE_STATE2_DE_FIFO_EMPTY |
@@ -523,7 +523,7 @@ int hw_sm750le_deWait(void)
 	return -1;
 }
 
-int hw_sm750_deWait(void)
+int hw_sm750_de_wait(void)
 {
 	int i = 0x10000000;
 	unsigned int mask = SYSTEM_CTRL_DE_STATUS_BUSY |
@@ -554,7 +554,7 @@ int hw_sm750_pan_display(struct lynxfb_crtc *crtc,
 
 	total = var->yoffset * info->fix.line_length +
 		((var->xoffset * var->bits_per_pixel) >> 3);
-	total += crtc->oScreen;
+	total += crtc->o_screen;
 	if (crtc->channel == sm750_primary) {
 		poke32(PANEL_FB_ADDRESS,
 		       peek32(PANEL_FB_ADDRESS) |
-- 
2.17.1


