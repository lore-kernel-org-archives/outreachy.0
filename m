X-GM-THRID: 7913154281472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d335c0b66309892f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.170.129 with SMTP id am1mr15082342vdc.1.1426263393278;
        Fri, 13 Mar 2015 09:16:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.100 with SMTP id sd4ls81422igb.16.canary; Fri, 13 Mar
 2015 09:16:32 -0700 (PDT)
X-Received: by 10.66.102.100 with SMTP id fn4mr49462434pab.19.1426263392820;
        Fri, 13 Mar 2015 09:16:32 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gb13si430153pac.2.2015.03.13.09.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfb1 with SMTP id fb1so30577627pad.7
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LRNopYMVjKaohKwyMWrdoogskBPWAlXR27xkTQp+Nu8=;
        b=dosGJw1z19qr59tpS10bmQP2gRkQRicPktR5tem6WDepKg2Cz0XkyenIxj4nGZ3QNB
         3OFvZYYRhzQKTU2xS+SMNVFO8CXnZSocDTmkdyBl0kCzJWMb9JmfBz3QcnZPRt41X+2k
         WgWzqZ4t6CqjGxCjjhEomeWK/pkHtwUEq79JW0YhNnyp3t8eXiMGjdIXVAT5ptzV/q7y
         2LuhFn1A1C+KRm35qkhf0ce6+J+4VMjy7IhZgKJhscLWCw8nx2rP5TP/EIWc5+/itr3s
         kM5vxNl7paB5c/UbXcuy68vPsFwT/QTQZW18sJtxPFax6LiPjL0vcu/ZFT4c65xQ0xaq
         i1DA==
X-Received: by 10.66.55.42 with SMTP id o10mr53857529pap.148.1426263392645;
        Fri, 13 Mar 2015 09:16:32 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.124])
        by mx.google.com with ESMTPSA id 7sm4255579pdj.16.2015.03.13.09.16.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 09:16:31 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH] Staging: sm750fb: Add space after ','
Date: Fri, 13 Mar 2015 21:47:30 +0530
Message-Id: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch adds space after ',' for the better readability of
code. This issue is detected by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 130 ++++++++++++++++++-------------------
 1 file changed, 65 insertions(+), 65 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index c44a50b..5ffce9f 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -24,16 +24,16 @@
 #include "ddk750.h"
 #include "sm750_accel.h"
 
-int hw_sm750_map(struct lynx_share* share,struct pci_dev* pdev)
+int hw_sm750_map(struct lynx_share* share, struct pci_dev* pdev)
 {
 	int ret;
 	struct sm750_share * spec_share;
 	
 
-	spec_share = container_of(share,struct sm750_share,share);
+	spec_share = container_of(share, struct sm750_share,share);
 	ret = 0;
 
-	share->vidreg_start  = pci_resource_start(pdev,1);
+	share->vidreg_start  = pci_resource_start(pdev, 1);
 	share->vidreg_size = MB(2);
 
 	pr_info("mmio phyAddr = %lx\n", share->vidreg_start);
@@ -44,29 +44,29 @@ int hw_sm750_map(struct lynx_share* share,struct pci_dev* pdev)
 	 * successfully
 	 * */
 
-	if((ret = pci_request_region(pdev,1,"sm750fb")))
+	if((ret = pci_request_region(pdev, 1, "sm750fb")))
 	{
 		pr_err("Can not request PCI regions.\n");
 		goto exit;
 	}
 
 	/* now map mmio and vidmem*/
-	share->pvReg = ioremap_nocache(share->vidreg_start,share->vidreg_size);
+	share->pvReg = ioremap_nocache(share->vidreg_start, share->vidreg_size);
 	if(!share->pvReg){
 		pr_err("mmio failed\n");
 		ret = -EFAULT;
 		goto exit;
 	}else{
-		pr_info("mmio virtual addr = %p\n",share->pvReg);
+		pr_info("mmio virtual addr = %p\n", share->pvReg);
 	}
 
 	
 	share->accel.dprBase = share->pvReg + DE_BASE_ADDR_TYPE1;
 	share->accel.dpPortBase = share->pvReg + DE_PORT_ADDR_TYPE1;
 
-	ddk750_set_mmio(share->pvReg,share->devid,share->revid);
+	ddk750_set_mmio(share->pvReg,share->devid, share->revid);
 
-	share->vidmem_start = pci_resource_start(pdev,0);
+	share->vidmem_start = pci_resource_start(pdev, 0);
 	/* don't use pdev_resource[x].end - resource[x].start to
 	 * calculate the resource size,its only the maximum available
 	 * size but not the actual size,use
@@ -74,7 +74,7 @@ int hw_sm750_map(struct lynx_share* share,struct pci_dev* pdev)
 	 * */
 	share->vidmem_size = hw_sm750_getVMSize(share);
 	pr_info("video memory phyAddr = %lx, size = %u bytes\n",
-	share->vidmem_start,share->vidmem_size);
+	share->vidmem_start, share->vidmem_size);
 
 	/* reserve the vidmem space of smi adaptor */
 #if 0
@@ -93,7 +93,7 @@ int hw_sm750_map(struct lynx_share* share,struct pci_dev* pdev)
 		ret = -EFAULT;
 		goto exit;
 	}else{
-		pr_info("video memory vaddr = %p\n",share->pvMem);
+		pr_info("video memory vaddr = %p\n", share->pvMem);
 	}
 exit:
 	return ret;
@@ -101,12 +101,12 @@ exit:
 
 
 
-int hw_sm750_inithw(struct lynx_share* share,struct pci_dev * pdev)
+int hw_sm750_inithw(struct lynx_share* share, struct pci_dev * pdev)
 {
 	struct sm750_share * spec_share;
 	struct init_status * parm;
 	
-	spec_share = container_of(share,struct sm750_share,share);
+	spec_share = container_of(share, struct sm750_share,share);
 	parm = &spec_share->state.initParm;
 	if(parm->chip_clk == 0)
 		parm->chip_clk = (getChipType() == SM750LE)?
@@ -122,7 +122,7 @@ int hw_sm750_inithw(struct lynx_share* share,struct pci_dev * pdev)
 	/* for sm718,open pci burst */
 	if(share->devid == 0x718){
 		POKE32(SYSTEM_CTRL,
-				FIELD_SET(PEEK32(SYSTEM_CTRL),SYSTEM_CTRL,PCI_BURST,ON));
+				FIELD_SET(PEEK32(SYSTEM_CTRL), SYSTEM_CTRL, PCI_BURST, ON));
 	}
 
 	/* sm750 use sii164, it can be setup with default value
@@ -138,22 +138,22 @@ int hw_sm750_inithw(struct lynx_share* share,struct pci_dev * pdev)
 			POKE32(MISC_CTRL,
 					FIELD_SET(PEEK32(MISC_CTRL),
 					MISC_CTRL,
-					DAC_POWER,OFF));
+					DAC_POWER, OFF));
 			/* shut off dpms */
 			POKE32(SYSTEM_CTRL,
 					FIELD_SET(PEEK32(SYSTEM_CTRL),
 					SYSTEM_CTRL,
-					DPMS,VNHN));
+					DPMS, VNHN));
 		}else{
 			POKE32(MISC_CTRL,
 					FIELD_SET(PEEK32(MISC_CTRL),
 					MISC_CTRL,
-					DAC_POWER,ON));
+					DAC_POWER, ON));
 			/* turn on dpms */
 			POKE32(SYSTEM_CTRL,
 					FIELD_SET(PEEK32(SYSTEM_CTRL),
 					SYSTEM_CTRL,
-					DPMS,VPHP));
+					DPMS, VPHP));
 		}
 
 		switch (spec_share->state.pnltype){
@@ -211,7 +211,7 @@ resource_size_t hw_sm750_getVMSize(struct lynx_share * share)
 
 
 
-int hw_sm750_output_checkMode(struct lynxfb_output* output,struct fb_var_screeninfo* var)
+int hw_sm750_output_checkMode(struct lynxfb_output* output, struct fb_var_screeninfo* var)
 {
 	
 	return 0;
@@ -219,7 +219,7 @@ int hw_sm750_output_checkMode(struct lynxfb_output* output,struct fb_var_screeni
 
 
 int hw_sm750_output_setMode(struct lynxfb_output* output,
-									struct fb_var_screeninfo* var,struct fb_fix_screeninfo* fix)
+									struct fb_var_screeninfo* var, struct fb_fix_screeninfo* fix)
 {
 	int ret;
 	disp_output_t dispSet;
@@ -252,7 +252,7 @@ int hw_sm750_output_setMode(struct lynxfb_output* output,
 		u32 reg;
 		reg = PEEK32(DISPLAY_CONTROL_750LE);
 		reg |= 0xf;
-		POKE32(DISPLAY_CONTROL_750LE,reg);
+		POKE32(DISPLAY_CONTROL_750LE, reg);
 	}
 
 	pr_info("ddk setlogicdispout done \n");
@@ -265,12 +265,12 @@ void hw_sm750_output_clear(struct lynxfb_output* output)
 	return;
 }
 
-int hw_sm750_crtc_checkMode(struct lynxfb_crtc* crtc,struct fb_var_screeninfo* var)
+int hw_sm750_crtc_checkMode(struct lynxfb_crtc* crtc, struct fb_var_screeninfo* var)
 {
 	struct lynx_share * share;
 	
 
-	share = container_of(crtc,struct lynxfb_par,crtc)->share;
+	share = container_of(crtc, struct lynxfb_par,crtc)->share;
 
 	switch (var->bits_per_pixel){
 		case 8:
@@ -307,7 +307,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc* crtc,
 
 	
 	ret = 0;
-	par = container_of(crtc,struct lynxfb_par,crtc);
+	par = container_of(crtc, struct lynxfb_par, crtc);
 	share = par->share;
 #if 1
 	if(!share->accel_off){
@@ -324,7 +324,7 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc* crtc,
 				fmt = 2;
 				break;
 		}
-		hw_set2dformat(&share->accel,fmt);
+		hw_set2dformat(&share->accel, fmt);
 	}
 #endif
 
@@ -349,8 +349,8 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc* crtc,
 	else
 		clock = SECONDARY_PLL;
 
-	pr_debug("Request pixel clock = %lu\n",modparm.pixel_clock);
-	ret = ddk750_setModeTiming(&modparm,clock);
+	pr_debug("Request pixel clock = %lu\n", modparm.pixel_clock);
+	ret = ddk750_setModeTiming(&modparm, clock);
 	if(ret){
 		pr_err("Set mode timing failed\n");
 		goto exit;
@@ -359,54 +359,54 @@ int hw_sm750_crtc_setMode(struct lynxfb_crtc* crtc,
 	if(crtc->channel != sm750_secondary){
 		/* set pitch, offset ,width,start address ,etc... */
 		POKE32(PANEL_FB_ADDRESS,
-			FIELD_SET(0,PANEL_FB_ADDRESS,STATUS,CURRENT)|
-			FIELD_SET(0,PANEL_FB_ADDRESS,EXT,LOCAL)|
-			FIELD_VALUE(0,PANEL_FB_ADDRESS,ADDRESS,crtc->oScreen));
+			FIELD_SET(0, PANEL_FB_ADDRESS, STATUS, CURRENT)|
+			FIELD_SET(0, PANEL_FB_ADDRESS, EXT, LOCAL)|
+			FIELD_VALUE(0, PANEL_FB_ADDRESS, ADDRESS, crtc->oScreen));
 
 		reg = var->xres * (var->bits_per_pixel >> 3);
 		/* crtc->channel is not equal to par->index on numeric,be aware of that */
 		reg = PADDING(crtc->line_pad,reg);
 
 		POKE32(PANEL_FB_WIDTH,
-			FIELD_VALUE(0,PANEL_FB_WIDTH,WIDTH,reg)|
-			FIELD_VALUE(0,PANEL_FB_WIDTH,OFFSET,fix->line_length));
+			FIELD_VALUE(0, PANEL_FB_WIDTH, WIDTH, reg)|
+			FIELD_VALUE(0, PANEL_FB_WIDTH, OFFSET, fix->line_length));
 
 		POKE32(PANEL_WINDOW_WIDTH,
-			FIELD_VALUE(0,PANEL_WINDOW_WIDTH,WIDTH,var->xres -1)|
-			FIELD_VALUE(0,PANEL_WINDOW_WIDTH,X,var->xoffset));
+			FIELD_VALUE(0, PANEL_WINDOW_WIDTH, WIDTH, var->xres -1)|
+			FIELD_VALUE(0, PANEL_WINDOW_WIDTH, X, var->xoffset));
 
 		POKE32(PANEL_WINDOW_HEIGHT,
-			FIELD_VALUE(0,PANEL_WINDOW_HEIGHT,HEIGHT,var->yres_virtual - 1)|
-			FIELD_VALUE(0,PANEL_WINDOW_HEIGHT,Y,var->yoffset));
+			FIELD_VALUE(0, PANEL_WINDOW_HEIGHT, HEIGHT, var->yres_virtual - 1)|
+			FIELD_VALUE(0, PANEL_WINDOW_HEIGHT, Y, var->yoffset));
 
-		POKE32(PANEL_PLANE_TL,0);
+		POKE32(PANEL_PLANE_TL, 0);
 
 		POKE32(PANEL_PLANE_BR,
-			FIELD_VALUE(0,PANEL_PLANE_BR,BOTTOM,var->yres - 1)|
-			FIELD_VALUE(0,PANEL_PLANE_BR,RIGHT,var->xres - 1));
+			FIELD_VALUE(0, PANEL_PLANE_BR, BOTTOM, var->yres - 1)|
+			FIELD_VALUE(0, PANEL_PLANE_BR,RIGHT, var->xres - 1));
 
 		/* set pixel format */
 		reg = PEEK32(PANEL_DISPLAY_CTRL);
 		POKE32(PANEL_DISPLAY_CTRL,
 			FIELD_VALUE(reg,
-			PANEL_DISPLAY_CTRL,FORMAT,
+			PANEL_DISPLAY_CTRL, FORMAT,
 			(var->bits_per_pixel >> 4)
 			));
 	}else{
 		/* not implemented now */
-		POKE32(CRT_FB_ADDRESS,crtc->oScreen);
+		POKE32(CRT_FB_ADDRESS, crtc->oScreen);
 		reg = var->xres * (var->bits_per_pixel >> 3);
 		/* crtc->channel is not equal to par->index on numeric,be aware of that */
-		reg = PADDING(crtc->line_pad,reg);
+		reg = PADDING(crtc->line_pad, reg);
 
 		POKE32(CRT_FB_WIDTH,
-			FIELD_VALUE(0,CRT_FB_WIDTH,WIDTH,reg)|
-			FIELD_VALUE(0,CRT_FB_WIDTH,OFFSET,fix->line_length));
+			FIELD_VALUE(0, CRT_FB_WIDTH, WIDTH, reg)|
+			FIELD_VALUE(0, CRT_FB_WIDTH, OFFSET, fix->line_length));
 
 		/* SET PIXEL FORMAT */
 		reg = PEEK32(CRT_DISPLAY_CTRL);
-		reg = FIELD_VALUE(reg,CRT_DISPLAY_CTRL,FORMAT,var->bits_per_pixel >> 4);
-		POKE32(CRT_DISPLAY_CTRL,reg);
+		reg = FIELD_VALUE(reg, CRT_DISPLAY_CTRL, FORMAT, var->bits_per_pixel >> 4);
+		POKE32(CRT_DISPLAY_CTRL, reg);
 
 	}
 
@@ -421,15 +421,15 @@ void hw_sm750_crtc_clear(struct lynxfb_crtc* crtc)
 	return;
 }
 
-int hw_sm750_setColReg(struct lynxfb_crtc* crtc,ushort index,
-								ushort red,ushort green,ushort blue)
+int hw_sm750_setColReg(struct lynxfb_crtc* crtc, ushort index,
+								ushort red, ushort green, ushort blue)
 {
 	static unsigned int add[]={PANEL_PALETTE_RAM,CRT_PALETTE_RAM};
-	POKE32(add[crtc->channel] + index*4 ,(red<<16)|(green<<8)|blue);
+	POKE32(add[crtc->channel] + index*4, (red<<16)|(green<<8)|blue);
 	return 0;
 }
 
-int hw_sm750le_setBLANK(struct lynxfb_output * output,int blank){
+int hw_sm750le_setBLANK(struct lynxfb_output * output, int blank){
 	int dpms,crtdb;
 	
 	switch(blank)
@@ -477,15 +477,15 @@ int hw_sm750le_setBLANK(struct lynxfb_output * output,int blank){
 	}
 
 	if(output->paths & sm750_crt){
-		POKE32(CRT_DISPLAY_CTRL,FIELD_VALUE(PEEK32(CRT_DISPLAY_CTRL),CRT_DISPLAY_CTRL,DPMS,dpms));
-		POKE32(CRT_DISPLAY_CTRL,FIELD_VALUE(PEEK32(CRT_DISPLAY_CTRL),CRT_DISPLAY_CTRL,BLANK,crtdb));
+		POKE32(CRT_DISPLAY_CTRL, FIELD_VALUE(PEEK32(CRT_DISPLAY_CTRL), CRT_DISPLAY_CTRL, DPMS, dpms));
+		POKE32(CRT_DISPLAY_CTRL, FIELD_VALUE(PEEK32(CRT_DISPLAY_CTRL), CRT_DISPLAY_CTRL, BLANK, crtdb));
 	}
 	return 0;
 }
 
 int hw_sm750_setBLANK(struct lynxfb_output* output,int blank)
 {
-	unsigned int dpms,pps,crtdb;
+	unsigned int dpms, pps, crtdb;
 	
 	dpms = pps = crtdb = 0;
 
@@ -540,12 +540,12 @@ int hw_sm750_setBLANK(struct lynxfb_output* output,int blank)
 
 	if(output->paths & sm750_crt){
 
-		POKE32(SYSTEM_CTRL,FIELD_VALUE(PEEK32(SYSTEM_CTRL),SYSTEM_CTRL,DPMS,dpms));
-		POKE32(CRT_DISPLAY_CTRL,FIELD_VALUE(PEEK32(CRT_DISPLAY_CTRL),CRT_DISPLAY_CTRL,BLANK,crtdb));
+		POKE32(SYSTEM_CTRL,FIELD_VALUE(PEEK32(SYSTEM_CTRL), SYSTEM_CTRL, DPMS, dpms));
+		POKE32(CRT_DISPLAY_CTRL,FIELD_VALUE(PEEK32(CRT_DISPLAY_CTRL), CRT_DISPLAY_CTRL,BLANK, crtdb));
 	}
 
 	if(output->paths & sm750_panel){
-		POKE32(PANEL_DISPLAY_CTRL,FIELD_VALUE(PEEK32(PANEL_DISPLAY_CTRL),PANEL_DISPLAY_CTRL,DATA,pps));
+		POKE32(PANEL_DISPLAY_CTRL, FIELD_VALUE(PEEK32(PANEL_DISPLAY_CTRL), PANEL_DISPLAY_CTRL, DATA, pps));
 	}
 
 	return 0;
@@ -559,22 +559,22 @@ void hw_sm750_initAccel(struct lynx_share * share)
 
 	if(getChipType() == SM750LE){
 		reg = PEEK32(DE_STATE1);
-		reg = FIELD_SET(reg,DE_STATE1,DE_ABORT,ON);
+		reg = FIELD_SET(reg, DE_STATE1, DE_ABORT,ON);
 		POKE32(DE_STATE1,reg);
 
 		reg = PEEK32(DE_STATE1);
-		reg = FIELD_SET(reg,DE_STATE1,DE_ABORT,OFF);
-		POKE32(DE_STATE1,reg);
+		reg = FIELD_SET(reg, DE_STATE1, DE_ABORT,OFF);
+		POKE32(DE_STATE1, reg);
 
 	}else{
 		/* engine reset */
 		reg = PEEK32(SYSTEM_CTRL);
-	    reg = FIELD_SET(reg,SYSTEM_CTRL,DE_ABORT,ON);
-		POKE32(SYSTEM_CTRL,reg);
+	    reg = FIELD_SET(reg, SYSTEM_CTRL, DE_ABORT,ON);
+		POKE32(SYSTEM_CTRL, reg);
 
 		reg = PEEK32(SYSTEM_CTRL);
-		reg = FIELD_SET(reg,SYSTEM_CTRL,DE_ABORT,OFF);
-		POKE32(SYSTEM_CTRL,reg);
+		reg = FIELD_SET(reg, SYSTEM_CTRL, DE_ABORT,OFF);
+		POKE32(SYSTEM_CTRL, reg);
 	}
 
 	/* call 2d init */
@@ -586,9 +586,9 @@ int hw_sm750le_deWait()
 	int i=0x10000000;
 	while(i--){
 		unsigned int dwVal = PEEK32(DE_STATE2);
-		if((FIELD_GET(dwVal,DE_STATE2,DE_STATUS) == DE_STATE2_DE_STATUS_IDLE) &&
-			(FIELD_GET(dwVal,DE_STATE2,DE_FIFO)  == DE_STATE2_DE_FIFO_EMPTY) &&
-			(FIELD_GET(dwVal,DE_STATE2,DE_MEM_FIFO) == DE_STATE2_DE_MEM_FIFO_EMPTY))
+		if((FIELD_GET(dwVal, DE_STATE2, DE_STATUS) == DE_STATE2_DE_STATUS_IDLE) &&
+			(FIELD_GET(dwVal, DE_STATE2, DE_FIFO)  == DE_STATE2_DE_FIFO_EMPTY) &&
+			(FIELD_GET(dwVal, DE_STATE2, DE_MEM_FIFO) == DE_STATE2_DE_MEM_FIFO_EMPTY))
 		{
 			return 0;
 		}
-- 
1.9.1


