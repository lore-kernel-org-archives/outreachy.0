X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.9.65 with SMTP id x1mr6003871lba.16.1426123423038;
        Wed, 11 Mar 2015 18:23:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.227 with SMTP id b3ls194484lak.58.gmail; Wed, 11 Mar
 2015 18:23:42 -0700 (PDT)
X-Received: by 10.112.198.34 with SMTP id iz2mr5738315lbc.22.1426123422534;
        Wed, 11 Mar 2015 18:23:42 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id sf8si421724wic.2.2015.03.11.18.23.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id l18so13012530wgh.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QtN5f+ShVR6ytN6AKqU8T1d0GiwL1s2LEOeINx/uxxg=;
        b=BLwaJCKN9hCpQUqYgqmgfTuVWMtbCeEpDlggP8sfvAXujPC1+Go6jbn8VcTgBw86te
         rgRoMybDnfMAaDO8bgp6A3PcIF9gmFcWO7SOHMRcp+Q1+36ZRrjVS6u1QkhqXkAT1T7e
         PxbzgdDCCp540U3Bn0A7o9cH2OmyBljP/MqbHlbyK/BYYOfrDfc+h2FMVqz6Y4pxWAjP
         1NrWVElBZpAKaK8pZkB5F30LeAbVccgUNYi/SMRGhDLJqko+/AX1El5UtldRUpic2s/P
         9cjj7/NHD4A8dH6naAJCIn1KeW5J/tlKku2kn/bIUG5kV7JrtVhbVpsPz8blcvKazULl
         geww==
X-Received: by 10.180.89.227 with SMTP id br3mr34262741wib.67.1426123422451;
        Wed, 11 Mar 2015 18:23:42 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:41 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 6/9] staging: sm750: Move open curly bracket on previous line
Date: Thu, 12 Mar 2015 03:23:11 +0200
Message-Id: <e915b7cd1e15db4d41555662a06b1bdc80b22ad2.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Place curly open bracket surrounding statements blocks on the same line 
as the control flow instruction in order to follow with Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 48 +++++++++++++++--------------------------
 1 file changed, 17 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index f6083c4..8f12370 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -175,8 +175,7 @@ static int lynxfb_ops_cursor(struct fb_info* info, struct fb_cursor* fbcursor)
 	}
 
 
-	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE))
-	{
+	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE)) {
 		cursor->setData(cursor,
 						fbcursor->rop,
 						fbcursor->image.data,
@@ -260,13 +259,10 @@ static void lynxfb_ops_imageblit(struct fb_info *info, const struct fb_image *im
 
 	if (image->depth == 1) {
 		if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
-			info->fix.visual == FB_VISUAL_DIRECTCOLOR)
-		{
+			info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
 			fgcol = ((u32*)info->pseudo_palette)[image->fg_color];
 			bgcol = ((u32*)info->pseudo_palette)[image->bg_color];
-		}
-		else
-		{
+		} else {
 			fgcol = image->fg_color;
 			bgcol = image->bg_color;
 		}
@@ -421,7 +417,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0 ;
+		var->blue.offset = 0;
 		var->blue.length = 8;
 		fix->visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -560,8 +556,7 @@ static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
 	printk("lynxfb mmap vm end: %x\n", vma->vm_end);
 	printk("lynxfb mmap len: %x\n", len);
 	printk("lynxfb mmap off: %x\n", off);
-	if ((vma->vm_end - vma->vm_start + off) > len)
-	{
+	if ((vma->vm_end - vma->vm_start + off) > len) {
 		return -EINVAL;
 	}
 	off += start;
@@ -642,7 +637,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0 ;
+		var->blue.offset = 0;
 		var->blue.length = 8;
 		info->fix.visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -695,8 +690,7 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
 	if (info->var.grayscale)
 		red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 
-	if (var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
-	{
+	if (var->bits_per_pixel == 8 && info->fix.visual == FB_VISUAL_PSEUDOCOLOR) {
 		red >>= 8;
 		green >>= 8;
 		blue >>= 8;
@@ -705,14 +699,12 @@ static int lynxfb_ops_setcolreg(unsigned regno, unsigned red,
 	}
 
 
-	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 )
-	{
+	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 256 ) {
 		u32 val;
 
 		if (var->bits_per_pixel == 16 ||
 		   var->bits_per_pixel == 32 ||
-		   var->bits_per_pixel == 24)
-		{
+		   var->bits_per_pixel == 24) {
 			val = chan_to_field(red, &var->red);
 			val |= chan_to_field(green, &var->green);
 			val |= chan_to_field(blue, &var->blue);
@@ -861,9 +853,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	};
 
 
-	static const char *fixId[2]=
-	{
-	"sm750_fb1", "sm750_fb2",
+	static const char *fixId[2] = {
+		"sm750_fb1", "sm750_fb2",
 	};
 
 	int ret, line_length;
@@ -924,7 +915,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	}
 
 
-	for (i=0;i<3;i++) {
+	for (i = 0; i < 3; i++) {
 
 		ret = fb_find_mode(var, info, g_fbmode[index],
 				pdb[i], cdb[i], NULL, 8);
@@ -1232,16 +1223,13 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 		fbidx = 0;
 ALLOC_FB:
 		info[fbidx] = framebuffer_alloc(sizeof(struct lynxfb_par), &pdev->dev);
-		if (!info[fbidx])
-		{
+		if (!info[fbidx]) {
 			pr_err("Could not allocate framebuffer #%d.\n", fbidx);
 			if (fbidx == 0)
 				goto err_info0_alloc;
 			else
 				goto err_info1_alloc;
-		}
-		else
-		{
+		} else {
 			struct lynxfb_par *par;
 
 			pr_info("framebuffer #%d alloc okay\n", fbidx);
@@ -1362,8 +1350,7 @@ static int __init lynxfb_setup(char *options)
 		strsep() updates @options to pointer after the first found token
 		it also returns the pointer ahead the token.
 		*/
-	while ((opt = strsep(&options, ":"))!=NULL)
-	{
+	while ((opt = strsep(&options, ":"))!=NULL) {
 		/* options that mean for any lynx chips are configured here */
 		if (!strncmp(opt, "noaccel", strlen("noaccel")))
 			g_noaccel = 1;
@@ -1373,8 +1360,7 @@ static int __init lynxfb_setup(char *options)
 #endif
 		else if (!strncmp(opt, "dual", strlen("dual")))
 			g_dualview = 1;
-		else
-		{
+		else {
 			strcat(tmp, opt);
 			tmp += strlen(opt);
 			if (options != NULL)
@@ -1410,7 +1396,7 @@ static struct pci_driver lynxfb_driver = {
 
 static int __init lynxfb_init(void)
 {
-	char *option ;
+	char *option;
 	int ret;
 
 #ifdef MODULE
-- 
1.9.1


