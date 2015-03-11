X-GM-THRID: 7583885688832
X-Received: by 10.112.130.70 with SMTP id oc6mr5248918lbb.13.1426041335188;
        Tue, 10 Mar 2015 19:35:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.101.166 with SMTP id fh6ls198013wib.26.gmail; Tue, 10 Mar
 2015 19:35:34 -0700 (PDT)
X-Received: by 10.194.161.194 with SMTP id xu2mr5116919wjb.1.1426041334785;
        Tue, 10 Mar 2015 19:35:34 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id c8si670229wiw.1.2015.03.10.19.35.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id a1so6063774wgh.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kA9o/CvNZY9Lt+yzMGP6C/uh5K5tQz3YqBywGuENj8U=;
        b=za0NDuETeZ76aO4HXzvhA0C7I1kncsl9i4hmrod6qHc4QTb+2pU+HgJLq68LjhP1gM
         FVHTWqqH4pJl6HtzRv3rrvOlyqsyE503f3I4f2Aj6OIfsDOSdYNhw/dYMpPji7kwzC1K
         qxdA40AOvraI7sYgf5kBjZcYUKt2i2qKi0VL7EnEAqcVIdXJaIzYWMq3SdyaB3+jYJTO
         UoYCOlx8p2qsLV6oBgtXFCVOkAYVF03WDwGmsvgCW3nAURL0fYhi3Xm/w57xtnArdnAp
         PTYSnqjppxITf5Sbw6BwPk7y2l7KAucG+rX75Gmy55hfuTGRRz4xxR5TNLHUpCEaUi9L
         D9Aw==
X-Received: by 10.194.48.74 with SMTP id j10mr75056040wjn.38.1426041334700;
        Tue, 10 Mar 2015 19:35:34 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:33 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 5/7] staging: sm750: Indent code using tabs
Date: Wed, 11 Mar 2015 04:35:08 +0200
Message-Id: <d87d65e445ab9ce1ea46458337e423f33760f2d6.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>

Remove multiple spaces from the beginning of lines and indent code using tabs,
to follow the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 739 ++++++++++++++++++++--------------------
 1 file changed, 367 insertions(+), 372 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index eb81806..d34ae13 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -283,22 +283,22 @@ _do_work:
 }
 
 static int lynxfb_ops_pan_display(struct fb_var_screeninfo *var,
-        struct fb_info *info)
+				  struct fb_info *info)
 {
-    struct lynxfb_par *par;
-    struct lynxfb_crtc *crtc;
-    int ret;
+	struct lynxfb_par *par;
+	struct lynxfb_crtc *crtc;
+	int ret;
 
 
-    if(!info)
-        return -EINVAL;
+	if(!info)
+		return -EINVAL;
 
-    ret = 0;
-    par = info->par;
-    crtc = &par->crtc;
-    ret = crtc->proc_panDisplay(crtc, var, info);
+	ret = 0;
+	par = info->par;
+	crtc = &par->crtc;
+	ret = crtc->proc_panDisplay(crtc, var, info);
 
-    return ret;
+	return ret;
 }
 
 
@@ -674,55 +674,55 @@ static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
 									unsigned green,unsigned blue,
 									unsigned transp,struct fb_info *info)
 {
-    struct lynxfb_par *par;
-    struct lynxfb_crtc *crtc;
-    struct fb_var_screeninfo *var;
-    int ret;
-
-    par = info->par;
-    crtc = &par->crtc;
-    var = &info->var;
-    ret = 0;
-
-    //pr_debug("regno=%d,red=%d,green=%d,blue=%d\n",regno,red,green,blue);
-    if(regno > 256){
-        pr_err("regno = %d\n",regno);
-        return -EINVAL;
-    }
-
-    if(info->var.grayscale)
-        red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
-
-    if(var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
-    {
-        red >>= 8;
-        green >>= 8;
-        blue >>= 8;
-        ret = crtc->proc_setColReg(crtc,regno,red,green,blue);
-        goto exit;
-    }
-
-
-    if(info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
-    {
-        u32 val;
-
-        if(var->bits_per_pixel == 16 ||
-                var->bits_per_pixel == 32 ||
-                var->bits_per_pixel == 24)
-        {
-            val = chan_to_field(red,&var->red);
-            val |= chan_to_field(green,&var->green);
-            val |= chan_to_field(blue,&var->blue);
-            par->pseudo_palette[regno] = val;
-            goto exit;
-        }
-    }
-
-    ret = -EINVAL;
+	struct lynxfb_par *par;
+	struct lynxfb_crtc *crtc;
+	struct fb_var_screeninfo *var;
+	int ret;
+
+	par = info->par;
+	crtc = &par->crtc;
+	var = &info->var;
+	ret = 0;
+
+	//pr_debug("regno=%d,red=%d,green=%d,blue=%d\n",regno,red,green,blue);
+	if(regno > 256){
+		pr_err("regno = %d\n",regno);
+		return -EINVAL;
+	}
+
+	if(info->var.grayscale)
+		red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
+
+	if(var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
+	{
+		red >>= 8;
+		green >>= 8;
+		blue >>= 8;
+		ret = crtc->proc_setColReg(crtc,regno,red,green,blue);
+		goto exit;
+	}
+
+
+	if(info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
+	{
+		u32 val;
+
+		if(var->bits_per_pixel == 16 ||
+		   var->bits_per_pixel == 32 ||
+		   var->bits_per_pixel == 24)
+		{
+			val = chan_to_field(red,&var->red);
+			val |= chan_to_field(green,&var->green);
+			val |= chan_to_field(blue,&var->blue);
+			par->pseudo_palette[regno] = val;
+			goto exit;
+		}
+	}
+
+	ret = -EINVAL;
 
 exit:
-    return ret;
+	return ret;
 }
 
 static int lynxfb_ops_blank(int blank,struct fb_info *info)
@@ -738,89 +738,88 @@ static int lynxfb_ops_blank(int blank,struct fb_info *info)
 
 static int sm750fb_set_drv(struct lynxfb_par *par)
 {
-    int ret;
-    struct lynx_share *share;
-    struct sm750_share *spec_share;
-    struct lynxfb_output *output;
-    struct lynxfb_crtc *crtc;
-
-    ret = 0;
-
-    share = par->share;
-    spec_share = container_of(share,struct sm750_share,share);
-    output = &par->output;
-    crtc = &par->crtc;
-
-    crtc->vidmem_size = (share->dual)?share->vidmem_size>>1:share->vidmem_size;
-    /* setup crtc and output member */
-    spec_share->hwCursor = g_hwcursor;
-
-    crtc->proc_setMode = hw_sm750_crtc_setMode;
-    crtc->proc_checkMode = hw_sm750_crtc_checkMode;
-    crtc->proc_setColReg = hw_sm750_setColReg;
-    crtc->proc_panDisplay = hw_sm750_pan_display;
-    crtc->clear = hw_sm750_crtc_clear;
-    crtc->line_pad = 16;
-    //crtc->xpanstep = crtc->ypanstep = crtc->ywrapstep = 0;
-    crtc->xpanstep = 8;
-    crtc->ypanstep = 1;
-    crtc->ywrapstep = 0;
-
-    output->proc_setMode = hw_sm750_output_setMode;
-    output->proc_checkMode = hw_sm750_output_checkMode;
-
-    output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
-    output->clear = hw_sm750_output_clear;
-    /* chip specific phase */
-    share->accel.de_wait = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
-    switch (spec_share->state.dataflow)
-    {
-        case sm750_simul_pri:
-            output->paths = sm750_pnc;
-            crtc->channel = sm750_primary;
-            crtc->oScreen = 0;
-            crtc->vScreen = share->pvMem;
-            pr_info("use simul primary mode\n");
-            break;
-        case sm750_simul_sec:
-            output->paths = sm750_pnc;
-            crtc->channel = sm750_secondary;
-            crtc->oScreen = 0;
-            crtc->vScreen = share->pvMem;
-            break;
-        case sm750_dual_normal:
-            if(par->index == 0){
-                output->paths = sm750_panel;
-                crtc->channel = sm750_primary;
-                crtc->oScreen = 0;
-                crtc->vScreen = share->pvMem;
-            }else{
-                output->paths = sm750_crt;
-                crtc->channel = sm750_secondary;
-                /* not consider of padding stuffs for oScreen,need fix*/
-                crtc->oScreen = (share->vidmem_size >> 1);
-                crtc->vScreen = share->pvMem + crtc->oScreen;
-            }
-            break;
-        case sm750_dual_swap:
-            if(par->index == 0){
-                output->paths = sm750_panel;
-                crtc->channel = sm750_secondary;
-                crtc->oScreen = 0;
-                crtc->vScreen = share->pvMem;
-            }else{
-                output->paths = sm750_crt;
-                crtc->channel = sm750_primary;
-                /* not consider of padding stuffs for oScreen,need fix*/
-                crtc->oScreen = (share->vidmem_size >> 1);
-                crtc->vScreen = share->pvMem + crtc->oScreen;
-            }
-            break;
-        default:
-            ret = -EINVAL;
-    }
-
-    return ret;
+	int ret;
+	struct lynx_share *share;
+	struct sm750_share *spec_share;
+	struct lynxfb_output *output;
+	struct lynxfb_crtc *crtc;
+
+	ret = 0;
+
+	share = par->share;
+	spec_share = container_of(share,struct sm750_share,share);
+	output = &par->output;
+	crtc = &par->crtc;
+
+	crtc->vidmem_size = (share->dual)?share->vidmem_size>>1:share->vidmem_size;
+	/* setup crtc and output member */
+	spec_share->hwCursor = g_hwcursor;
+
+	crtc->proc_setMode = hw_sm750_crtc_setMode;
+	crtc->proc_checkMode = hw_sm750_crtc_checkMode;
+	crtc->proc_setColReg = hw_sm750_setColReg;
+	crtc->proc_panDisplay = hw_sm750_pan_display;
+	crtc->clear = hw_sm750_crtc_clear;
+	crtc->line_pad = 16;
+	//crtc->xpanstep = crtc->ypanstep = crtc->ywrapstep = 0;
+	crtc->xpanstep = 8;
+	crtc->ypanstep = 1;
+	crtc->ywrapstep = 0;
+
+	output->proc_setMode = hw_sm750_output_setMode;
+	output->proc_checkMode = hw_sm750_output_checkMode;
+
+	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
+	output->clear = hw_sm750_output_clear;
+	/* chip specific phase */
+	share->accel.de_wait = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
+	switch (spec_share->state.dataflow) {
+	case sm750_simul_pri:
+		output->paths = sm750_pnc;
+		crtc->channel = sm750_primary;
+		crtc->oScreen = 0;
+		crtc->vScreen = share->pvMem;
+		pr_info("use simul primary mode\n");
+		break;
+	case sm750_simul_sec:
+		output->paths = sm750_pnc;
+		crtc->channel = sm750_secondary;
+		crtc->oScreen = 0;
+		crtc->vScreen = share->pvMem;
+		break;
+	case sm750_dual_normal:
+		if(par->index == 0){
+			output->paths = sm750_panel;
+			crtc->channel = sm750_primary;
+			crtc->oScreen = 0;
+			crtc->vScreen = share->pvMem;
+		}else{
+			output->paths = sm750_crt;
+			crtc->channel = sm750_secondary;
+			/* not consider of padding stuffs for oScreen,need fix*/
+			crtc->oScreen = (share->vidmem_size >> 1);
+			crtc->vScreen = share->pvMem + crtc->oScreen;
+		}
+		break;
+	case sm750_dual_swap:
+		if(par->index == 0){
+			output->paths = sm750_panel;
+			crtc->channel = sm750_secondary;
+			crtc->oScreen = 0;
+			crtc->vScreen = share->pvMem;
+		}else{
+			output->paths = sm750_crt;
+			crtc->channel = sm750_primary;
+			/* not consider of padding stuffs for oScreen,need fix*/
+			crtc->oScreen = (share->vidmem_size >> 1);
+			crtc->vScreen = share->pvMem + crtc->oScreen;
+		}
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	return ret;
 }
 
 static struct fb_ops lynxfb_ops={
@@ -841,86 +840,86 @@ static struct fb_ops lynxfb_ops={
 
 static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 {
-    int i;
-    struct lynxfb_par *par;
-    struct lynx_share *share;
-    struct lynxfb_crtc *crtc;
-    struct lynxfb_output *output;
-    struct fb_var_screeninfo *var;
-    struct fb_fix_screeninfo *fix;
-
-    const struct fb_videomode *pdb[] = {
-        lynx750_ext, NULL, vesa_modes,
-    };
-    int cdb[] = {ARRAY_SIZE(lynx750_ext),0,VESA_MODEDB_SIZE};
-    static const char *mdb_desc[] ={
-        "driver prepared modes",
-        "kernel prepared default modedb",
-        "kernel HELPERS prepared vesa_modes",
-    };
-
-
-    static const char *fixId[2]=
-    {
-        "sm750_fb1","sm750_fb2",
-    };
-
-    int ret, line_length;
-
-    ret = 0;
-    par = (struct lynxfb_par *)info->par;
-    share = par->share;
-    crtc = &par->crtc;
-    output = &par->output;
-    var = &info->var;
-    fix = &info->fix;
-
-    /* set index */
-    par->index = index;
-    output->channel = &crtc->channel;
+	int i;
+	struct lynxfb_par *par;
+	struct lynx_share *share;
+	struct lynxfb_crtc *crtc;
+	struct lynxfb_output *output;
+	struct fb_var_screeninfo *var;
+	struct fb_fix_screeninfo *fix;
+
+	const struct fb_videomode *pdb[] = {
+		lynx750_ext, NULL, vesa_modes,
+	};
+	int cdb[] = {ARRAY_SIZE(lynx750_ext),0,VESA_MODEDB_SIZE};
+	static const char *mdb_desc[] = {
+		"driver prepared modes",
+		"kernel prepared default modedb",
+		"kernel HELPERS prepared vesa_modes",
+	};
+
+
+	static const char *fixId[2]=
+	{
+	"sm750_fb1","sm750_fb2",
+	};
+
+	int ret, line_length;
+
+	ret = 0;
+	par = (struct lynxfb_par *)info->par;
+	share = par->share;
+	crtc = &par->crtc;
+	output = &par->output;
+	var = &info->var;
+	fix = &info->fix;
+
+	/* set index */
+	par->index = index;
+	output->channel = &crtc->channel;
 	sm750fb_set_drv(par);
-        lynxfb_ops.fb_pan_display = lynxfb_ops_pan_display;
-
-
-    /* set current cursor variable and proc pointer,
-     * must be set after crtc member initialized */
-       crtc->cursor.offset = crtc->oScreen + crtc->vidmem_size - 1024;
-        crtc->cursor.mmio = share->pvReg + 0x800f0 + (int)crtc->channel * 0x140;
-
-        pr_info("crtc->cursor.mmio = %p\n",crtc->cursor.mmio);
-        crtc->cursor.maxH = crtc->cursor.maxW = 64;
-        crtc->cursor.size = crtc->cursor.maxH*crtc->cursor.maxW*2/8;
-        crtc->cursor.disable = hw_cursor_disable;
-        crtc->cursor.enable = hw_cursor_enable;
-        crtc->cursor.setColor = hw_cursor_setColor;
-        crtc->cursor.setPos = hw_cursor_setPos;
-        crtc->cursor.setSize = hw_cursor_setSize;
-        crtc->cursor.setData = hw_cursor_setData;
-        crtc->cursor.vstart = share->pvMem + crtc->cursor.offset;
-
-
-    crtc->cursor.share = share;
-    memset(crtc->cursor.vstart, 0, crtc->cursor.size);
-    if(!g_hwcursor){
-        lynxfb_ops.fb_cursor = NULL;
-        crtc->cursor.disable(&crtc->cursor);
-    }
-
-
-    /* set info->fbops, must be set before fb_find_mode */
-    if(!share->accel_off){
-        /* use 2d acceleration */
-        lynxfb_ops.fb_fillrect = lynxfb_ops_fillrect;
-        lynxfb_ops.fb_copyarea = lynxfb_ops_copyarea;
-        lynxfb_ops.fb_imageblit = lynxfb_ops_imageblit;
-    }
-    info->fbops = &lynxfb_ops;
-
-    if(!g_fbmode[index]){
-        g_fbmode[index] = g_def_fbmode;
-        if(index)
-            g_fbmode[index] = g_fbmode[0];
-    }
+	lynxfb_ops.fb_pan_display = lynxfb_ops_pan_display;
+
+
+	/* set current cursor variable and proc pointer,
+	* must be set after crtc member initialized */
+	crtc->cursor.offset = crtc->oScreen + crtc->vidmem_size - 1024;
+	crtc->cursor.mmio = share->pvReg + 0x800f0 + (int)crtc->channel * 0x140;
+
+	pr_info("crtc->cursor.mmio = %p\n",crtc->cursor.mmio);
+	crtc->cursor.maxH = crtc->cursor.maxW = 64;
+	crtc->cursor.size = crtc->cursor.maxH*crtc->cursor.maxW*2/8;
+	crtc->cursor.disable = hw_cursor_disable;
+	crtc->cursor.enable = hw_cursor_enable;
+	crtc->cursor.setColor = hw_cursor_setColor;
+	crtc->cursor.setPos = hw_cursor_setPos;
+	crtc->cursor.setSize = hw_cursor_setSize;
+	crtc->cursor.setData = hw_cursor_setData;
+	crtc->cursor.vstart = share->pvMem + crtc->cursor.offset;
+
+
+	crtc->cursor.share = share;
+	memset(crtc->cursor.vstart, 0, crtc->cursor.size);
+	if(!g_hwcursor) {
+		lynxfb_ops.fb_cursor = NULL;
+		crtc->cursor.disable(&crtc->cursor);
+	}
+
+
+	/* set info->fbops, must be set before fb_find_mode */
+	if(!share->accel_off){
+		/* use 2d acceleration */
+		lynxfb_ops.fb_fillrect = lynxfb_ops_fillrect;
+		lynxfb_ops.fb_copyarea = lynxfb_ops_copyarea;
+		lynxfb_ops.fb_imageblit = lynxfb_ops_imageblit;
+	}
+	info->fbops = &lynxfb_ops;
+
+	if(!g_fbmode[index]) {
+		g_fbmode[index] = g_def_fbmode;
+		if(index)
+			g_fbmode[index] = g_fbmode[0];
+	}
 
 
 	for(i=0;i<3;i++){
@@ -950,92 +949,91 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 
     /* some member of info->var had been set by fb_find_mode */
 
-    pr_info("Member of info->var is :\n\
-            xres=%d\n\
-            yres=%d\n\
-            xres_virtual=%d\n\
-            yres_virtual=%d\n\
-            xoffset=%d\n\
-            yoffset=%d\n\
-            bits_per_pixel=%d\n \
-            ...\n",var->xres,var->yres,var->xres_virtual,var->yres_virtual,
-            var->xoffset,var->yoffset,var->bits_per_pixel);
-
-    /* set par */
-    par->info = info;
-
-    /* set info */
-    line_length = PADDING(crtc->line_pad,
-            (var->xres_virtual * var->bits_per_pixel/8));
-
-    info->pseudo_palette = &par->pseudo_palette[0];
-    info->screen_base = crtc->vScreen;
-    pr_debug("screen_base vaddr = %p\n",info->screen_base);
+	pr_info("Member of info->var is :\n\
+	    xres=%d\n\
+	    yres=%d\n\
+	    xres_virtual=%d\n\
+	    yres_virtual=%d\n\
+	    xoffset=%d\n\
+	    yoffset=%d\n\
+	    bits_per_pixel=%d\n \
+	    ...\n",var->xres,var->yres,var->xres_virtual,var->yres_virtual,
+	    var->xoffset,var->yoffset,var->bits_per_pixel);
+
+	/* set par */
+	par->info = info;
+
+	/* set info */
+	line_length = PADDING(crtc->line_pad,
+	    (var->xres_virtual * var->bits_per_pixel/8));
+
+	info->pseudo_palette = &par->pseudo_palette[0];
+	info->screen_base = crtc->vScreen;
+	pr_debug("screen_base vaddr = %p\n",info->screen_base);
 	info->screen_size = line_length * var->yres_virtual;
 	info->flags = FBINFO_FLAG_DEFAULT|0;
 
-    /* set info->fix */
-    fix->type = FB_TYPE_PACKED_PIXELS;
-    fix->type_aux = 0;
-    fix->xpanstep = crtc->xpanstep;
-    fix->ypanstep = crtc->ypanstep;
-    fix->ywrapstep = crtc->ywrapstep;
-    fix->accel = FB_ACCEL_SMI;
+	/* set info->fix */
+	fix->type = FB_TYPE_PACKED_PIXELS;
+	fix->type_aux = 0;
+	fix->xpanstep = crtc->xpanstep;
+	fix->ypanstep = crtc->ypanstep;
+	fix->ywrapstep = crtc->ywrapstep;
+	fix->accel = FB_ACCEL_SMI;
 
-    strlcpy(fix->id,fixId[index],sizeof(fix->id));
+	strlcpy(fix->id,fixId[index],sizeof(fix->id));
 
 
 	fix->smem_start = crtc->oScreen + share->vidmem_start;
 	pr_info("fix->smem_start = %lx\n",fix->smem_start);
-    /* according to mmap experiment from user space application,
-     * fix->mmio_len should not larger than virtual size
-     * (xres_virtual x yres_virtual x ByPP)
-     * Below line maybe buggy when user mmap fb dev node and write
-     * data into the bound over virtual size
-     * */
-    fix->smem_len = crtc->vidmem_size;
-    pr_info("fix->smem_len = %x\n",fix->smem_len);
-    info->screen_size = fix->smem_len;
-    fix->line_length = line_length;
-    fix->mmio_start = share->vidreg_start;
-    pr_info("fix->mmio_start = %lx\n",fix->mmio_start);
-    fix->mmio_len = share->vidreg_size;
-    pr_info("fix->mmio_len = %x\n",fix->mmio_len);
-    switch(var->bits_per_pixel)
-    {
-        case 8:
-            fix->visual = FB_VISUAL_PSEUDOCOLOR;
-            break;
-        case 16:
-        case 32:
-            fix->visual = FB_VISUAL_TRUECOLOR;
-            break;
-    }
-
-    /* set var */
-    var->activate = FB_ACTIVATE_NOW;
-    var->accel_flags = 0;
-    var->vmode = FB_VMODE_NONINTERLACED;
-
-    pr_debug("#1 show info->cmap : \nstart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\n",
-            info->cmap.start,info->cmap.len,
-            info->cmap.red,info->cmap.green,info->cmap.blue,
-            info->cmap.transp);
-
-    if((ret = fb_alloc_cmap(&info->cmap,256,0)) < 0){
-        pr_err("Could not allcate memory for cmap.\n");
-        goto exit;
-    }
-
-    pr_debug("#2 show info->cmap : \nstart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\n",
-            info->cmap.start,info->cmap.len,
-            info->cmap.red,info->cmap.green,info->cmap.blue,
-            info->cmap.transp);
+	/* according to mmap experiment from user space application,
+	* fix->mmio_len should not larger than virtual size
+	* (xres_virtual x yres_virtual x ByPP)
+	* Below line maybe buggy when user mmap fb dev node and write
+	* data into the bound over virtual size
+	* */
+	fix->smem_len = crtc->vidmem_size;
+	pr_info("fix->smem_len = %x\n",fix->smem_len);
+	info->screen_size = fix->smem_len;
+	fix->line_length = line_length;
+	fix->mmio_start = share->vidreg_start;
+	pr_info("fix->mmio_start = %lx\n",fix->mmio_start);
+	fix->mmio_len = share->vidreg_size;
+	pr_info("fix->mmio_len = %x\n",fix->mmio_len);
+	switch(var->bits_per_pixel) {
+	case 8:
+		fix->visual = FB_VISUAL_PSEUDOCOLOR;
+		break;
+	case 16:
+	case 32:
+		fix->visual = FB_VISUAL_TRUECOLOR;
+		break;
+	}
+
+	/* set var */
+	var->activate = FB_ACTIVATE_NOW;
+	var->accel_flags = 0;
+	var->vmode = FB_VMODE_NONINTERLACED;
+
+	pr_debug("#1 show info->cmap : \nstart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\n",
+	    info->cmap.start,info->cmap.len,
+	    info->cmap.red,info->cmap.green,info->cmap.blue,
+	    info->cmap.transp);
+
+	if((ret = fb_alloc_cmap(&info->cmap,256,0)) < 0) {
+		pr_err("Could not allcate memory for cmap.\n");
+		goto exit;
+	}
+
+	pr_debug("#2 show info->cmap : \nstart=%d,len=%d,red=%p,green=%p,blue=%p,transp=%p\n",
+	    info->cmap.start,info->cmap.len,
+	    info->cmap.red,info->cmap.green,info->cmap.blue,
+	    info->cmap.transp);
 
 exit:
 	lynxfb_ops_check_var(var,info);
-//    lynxfb_ops_set_par(info);
-    return ret;
+	//    lynxfb_ops_set_par(info);
+	return ret;
 }
 
 /* 	chip specific g_option configuration routine */
@@ -1052,90 +1050,87 @@ static void sm750fb_setup(struct lynx_share *share,char *src)
 
 	spec_share = container_of(share,struct sm750_share,share);
 #ifdef CAP_EXPENSIION
-        exp_res = NULL;
+	exp_res = NULL;
 #endif
-        swap = 0;
-
-        spec_share->state.initParm.chip_clk = 0;
-        spec_share->state.initParm.mem_clk = 0;
-        spec_share->state.initParm.master_clk = 0;
-        spec_share->state.initParm.powerMode = 0;
-        spec_share->state.initParm.setAllEngOff = 0;
-        spec_share->state.initParm.resetMemory = 1;
-
-        /*defaultly turn g_hwcursor on for both view */
-        g_hwcursor = 3;
-
-        if(!src || !*src){
-            pr_warn("no specific g_option.\n");
-            goto NO_PARAM;
-        }
-
-        while((opt = strsep(&src,":")) != NULL && *opt != NULL){
-			pr_err("opt=%s\n",opt);
-			pr_err("src=%s\n",src);
-
-            if(!strncmp(opt,"swap",strlen("swap")))
-                swap = 1;
-            else if(!strncmp(opt,"nocrt",strlen("nocrt")))
-                spec_share->state.nocrt = 1;
-            else if(!strncmp(opt,"36bit",strlen("36bit")))
-                spec_share->state.pnltype = sm750_doubleTFT;
-            else if(!strncmp(opt,"18bit",strlen("18bit")))
-                spec_share->state.pnltype = sm750_dualTFT;
-            else if(!strncmp(opt,"24bit",strlen("24bit")))
-                spec_share->state.pnltype = sm750_24TFT;
+	swap = 0;
+
+	spec_share->state.initParm.chip_clk = 0;
+	spec_share->state.initParm.mem_clk = 0;
+	spec_share->state.initParm.master_clk = 0;
+	spec_share->state.initParm.powerMode = 0;
+	spec_share->state.initParm.setAllEngOff = 0;
+	spec_share->state.initParm.resetMemory = 1;
+
+	/*defaultly turn g_hwcursor on for both view */
+	g_hwcursor = 3;
+
+	if(!src || !*src){
+		pr_warn("no specific g_option.\n");
+		goto NO_PARAM;
+	}
+
+	while((opt = strsep(&src,":")) != NULL && *opt != NULL) {
+		pr_err("opt=%s\n",opt);
+		pr_err("src=%s\n",src);
+
+		if(!strncmp(opt,"swap",strlen("swap")))
+		swap = 1;
+		else if(!strncmp(opt,"nocrt",strlen("nocrt")))
+		spec_share->state.nocrt = 1;
+		else if(!strncmp(opt,"36bit",strlen("36bit")))
+		spec_share->state.pnltype = sm750_doubleTFT;
+		else if(!strncmp(opt,"18bit",strlen("18bit")))
+		spec_share->state.pnltype = sm750_dualTFT;
+		else if(!strncmp(opt,"24bit",strlen("24bit")))
+		spec_share->state.pnltype = sm750_24TFT;
 #ifdef CAP_EXPANSION
-            else if(!strncmp(opt,"exp:",strlen("exp:")))
-                exp_res = opt + strlen("exp:");
+		else if(!strncmp(opt,"exp:",strlen("exp:")))
+		exp_res = opt + strlen("exp:");
 #endif
-            else if(!strncmp(opt,"nohwc0",strlen("nohwc0")))
-                g_hwcursor &= ~0x1;
-            else if(!strncmp(opt,"nohwc1",strlen("nohwc1")))
-                g_hwcursor &= ~0x2;
-            else if(!strncmp(opt,"nohwc",strlen("nohwc")))
-                g_hwcursor = 0;
-            else
-            {
-                if(!g_fbmode[0]){
-                    g_fbmode[0] = opt;
-                    pr_info("find fbmode0 : %s\n",g_fbmode[0]);
-                }else if(!g_fbmode[1]){
-                    g_fbmode[1] = opt;
-                    pr_info("find fbmode1 : %s\n",g_fbmode[1]);
-                }else{
-                    pr_warn("How many view you wann set?\n");
-                }
-            }
-        }
+		else if(!strncmp(opt,"nohwc0",strlen("nohwc0")))
+		g_hwcursor &= ~0x1;
+		else if(!strncmp(opt,"nohwc1",strlen("nohwc1")))
+		g_hwcursor &= ~0x2;
+		else if(!strncmp(opt,"nohwc",strlen("nohwc")))
+		g_hwcursor = 0;
+		else {
+			if(!g_fbmode[0]){
+				g_fbmode[0] = opt;
+				pr_info("find fbmode0 : %s\n",g_fbmode[0]);
+			}else if(!g_fbmode[1]){
+				g_fbmode[1] = opt;
+				pr_info("find fbmode1 : %s\n",g_fbmode[1]);
+			}else{
+				pr_warn("How many view you wann set?\n");
+			}
+		}
+	}
 #ifdef CAP_EXPANSION
-        if(getExpRes(exp_res,&spec_share->state.xLCD,&spec_share->state.yLCD))
-        {
-            /* seems exp_res is not valid*/
-            spec_share->state.xLCD = spec_share->state.yLCD = 0;
-        }
+	if(getExpRes(exp_res,&spec_share->state.xLCD,&spec_share->state.yLCD)) {
+		/* seems exp_res is not valid*/
+		spec_share->state.xLCD = spec_share->state.yLCD = 0;
+	}
 #endif
 
 NO_PARAM:
-        if(share->revid != SM750LE_REVISION_ID){
-            if(share->dual)
-            {
-                if(swap)
-                    spec_share->state.dataflow = sm750_dual_swap;
-                else
-                    spec_share->state.dataflow = sm750_dual_normal;
-            }else{
-                if(swap)
-                    spec_share->state.dataflow = sm750_simul_sec;
-                else
-                    spec_share->state.dataflow = sm750_simul_pri;
-            }
-        }else{
-            /* SM750LE only have one crt channel */
-            spec_share->state.dataflow = sm750_simul_sec;
-            /* sm750le do not have complex attributes*/
-            spec_share->state.nocrt = 0;
-        }
+	if(share->revid != SM750LE_REVISION_ID){
+		if(share->dual) {
+			if(swap)
+				spec_share->state.dataflow = sm750_dual_swap;
+			else
+				spec_share->state.dataflow = sm750_dual_normal;
+		} else {
+			if(swap)
+				spec_share->state.dataflow = sm750_simul_sec;
+			else
+				spec_share->state.dataflow = sm750_simul_pri;
+		}
+	} else {
+		/* SM750LE only have one crt channel */
+		spec_share->state.dataflow = sm750_simul_sec;
+		/* sm750le do not have complex attributes*/
+		spec_share->state.nocrt = 0;
+	}
 }
 
 static int lynxfb_pci_probe(struct pci_dev *pdev,
-- 
1.9.1


