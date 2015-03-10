X-GM-THRID: 7359371935744
X-Received: by 10.112.147.35 with SMTP id th3mr4911963lbb.15.1426025273763;
        Tue, 10 Mar 2015 15:07:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.116.9 with SMTP id js9ls85947lab.69.gmail; Tue, 10 Mar
 2015 15:07:53 -0700 (PDT)
X-Received: by 10.112.120.136 with SMTP id lc8mr2072228lbb.24.1426025273247;
        Tue, 10 Mar 2015 15:07:53 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id el6si720736wib.0.2015.03.10.15.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 15:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id x13so5012967wgg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 15:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VcVMsowU/HMS9vguOIFpGkCoUA62DnUrLEORpKYjTo8=;
        b=s6mnNEfUyXlBcD/S2GgV0Hqr6KNE1pQaCfzd2Ilj2LqWZs1JNMjiOHjTlSCKBbhoJi
         x3MzAHmpZYtv7PoAJU97L/Sf9Xr1czuEyQJkABtwH3cj1MY8tfn7vxV2d4bOZtjYjULA
         4sJTD3UY1JXn3AaR97EoB9pmBoDdZhYn8eUwu3dgC8kiMxluSTWEIt/XO2z3vKZLeKKf
         TbbQV57CwC//W/dFPyXtEzMd6Rim8JNQ6qXtO59SgJ6RCZG/ix/yghCwyxtmtCCK0HJ6
         bJXdNdm7Tf/GHcakcserUx2K+bu+KyO4INpjlZE2hTHQv2Wgm7l16jJLcVDDy5kc0lJD
         nNdA==
X-Received: by 10.194.61.161 with SMTP id q1mr73904998wjr.132.1426025273153;
        Tue, 10 Mar 2015 15:07:53 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id n1sm22083040wib.11.2015.03.10.15.07.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 15:07:51 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2] staging: sm750: Replace 'foo * bar' with 'foo *bar'
Date: Wed, 11 Mar 2015 00:07:42 +0200
Message-Id: <1426025262-8878-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove space after * in pointer type, to follow the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 171 ++++++++++++++++++++--------------------
 1 file changed, 86 insertions(+), 85 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 520c69e..5b78843 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -50,26 +50,26 @@ static int g_noaccel = 0;
 #ifdef CONFIG_MTRR
 static int g_nomtrr  = 0;
 #endif
-static const char * g_fbmode[] = {NULL,NULL};
-static const char * g_def_fbmode = "800x600-16@60";
-static char * g_settings = NULL;
+static const char *g_fbmode[] = {NULL,NULL};
+static const char *g_def_fbmode = "800x600-16@60";
+static char *g_settings = NULL;
 static int g_dualview = 0;
 #ifdef MODULE
-static char * g_option = NULL;
+static char *g_option = NULL;
 #endif
 
 /* if not use spin_lock,system will die if user load driver
  * and immediatly unload driver frequently (dual)*/
-static inline void myspin_lock(spinlock_t * sl){
-	struct lynx_share * share;
+static inline void myspin_lock(spinlock_t *sl){
+	struct lynx_share *share;
 	share = container_of(sl,struct lynx_share,slock);
 	if(share->dual){
 		spin_lock(sl);
 	}
 }
 
-static inline void myspin_unlock(spinlock_t * sl){
-	struct lynx_share * share;
+static inline void myspin_unlock(spinlock_t *sl){
+	struct lynx_share *share;
 	share = container_of(sl,struct lynx_share,slock);
 	if(share->dual){
 		spin_unlock(sl);
@@ -134,9 +134,9 @@ static const struct fb_videomode lynx750_ext[] = {
 /* no hardware cursor supported under version 2.6.10, kernel bug */
 static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
 {
-	struct lynxfb_par * par;
-	struct lynxfb_crtc * crtc;
-	struct lynx_cursor * cursor;
+	struct lynxfb_par  *par;
+	struct lynxfb_crtc *crtc;
+	struct lynx_cursor *cursor;
 
 	par = info->par;
 	crtc = &par->crtc;
@@ -190,8 +190,8 @@ static int lynxfb_ops_cursor(struct fb_info* info,struct fb_cursor* fbcursor)
 
 static void lynxfb_ops_fillrect(struct fb_info* info,const struct fb_fillrect* region)
 {
-	struct lynxfb_par * par;
-	struct lynx_share * share;
+	struct lynxfb_par *par;
+	struct lynx_share *share;
 	unsigned int base,pitch,Bpp,rop;
 	u32 color;
 
@@ -220,10 +220,10 @@ static void lynxfb_ops_fillrect(struct fb_info* info,const struct fb_fillrect* r
 	myspin_unlock(&share->slock);
 }
 
-static void lynxfb_ops_copyarea(struct fb_info * info,const struct fb_copyarea * region)
+static void lynxfb_ops_copyarea(struct fb_info *info,const struct fb_copyarea *region)
 {
-	struct lynxfb_par * par;
-	struct lynx_share * share;
+	struct lynxfb_par *par;
+	struct lynx_share *share;
 	unsigned int base,pitch,Bpp;
 
 	par = info->par;
@@ -243,12 +243,12 @@ static void lynxfb_ops_copyarea(struct fb_info * info,const struct fb_copyarea *
 	myspin_unlock(&share->slock);
 }
 
-static void lynxfb_ops_imageblit(struct fb_info*info,const struct fb_image* image)
+static void lynxfb_ops_imageblit(struct fb_info *info,const struct fb_image *image)
 {
 	unsigned int base,pitch,Bpp;
 	unsigned int fgcol,bgcol;
-	struct lynxfb_par * par;
-	struct lynx_share * share;
+	struct lynxfb_par *par;
+	struct lynx_share *share;
 
 	par = info->par;
 	share = par->share;
@@ -287,8 +287,8 @@ _do_work:
 static int lynxfb_ops_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
 {
-    struct lynxfb_par * par;
-    struct lynxfb_crtc * crtc;
+    struct lynxfb_par *par;
+    struct lynxfb_crtc *crtc;
     int ret;
     
 
@@ -307,10 +307,10 @@ static int lynxfb_ops_pan_display(struct fb_var_screeninfo *var,
 
 
 #ifdef CONFIG_PM
-static int lynxfb_suspend(struct pci_dev * pdev,pm_message_t mesg)
+static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 {
-	struct fb_info * info;
-	struct lynx_share * share;
+	struct fb_info *info;
+	struct lynx_share *share;
 	int ret;
 	
 
@@ -359,14 +359,14 @@ static int lynxfb_suspend(struct pci_dev * pdev,pm_message_t mesg)
 	return ret;
 }
 
-static int lynxfb_ops_set_par(struct fb_info * info)
+static int lynxfb_ops_set_par(struct fb_info *info)
 {
-	struct lynxfb_par * par;
-	struct lynx_share * share;
-	struct lynxfb_crtc * crtc;
-	struct lynxfb_output * output;
-	struct fb_var_screeninfo * var;
-	struct fb_fix_screeninfo * fix;
+	struct lynxfb_par *par;
+	struct lynx_share *share;
+	struct lynxfb_crtc *crtc;
+	struct lynxfb_output *output;
+	struct fb_var_screeninfo *var;
+	struct fb_fix_screeninfo *fix;
 	int ret;
 	unsigned int line_length;
 	
@@ -441,7 +441,7 @@ static int lynxfb_ops_set_par(struct fb_info * info)
 		ret = output->proc_setMode(output,var,fix);
 	return ret;
 }
-static inline unsigned int chan_to_field(unsigned int chan,struct fb_bitfield * bf)
+static inline unsigned int chan_to_field(unsigned int chan, struct fb_bitfield *bf)
 {
 	chan &= 0xffff;
 	chan >>= 16 - bf->length;
@@ -449,14 +449,14 @@ static inline unsigned int chan_to_field(unsigned int chan,struct fb_bitfield *
 }
 
 
-static int lynxfb_resume(struct pci_dev* pdev)
+static int lynxfb_resume(struct pci_dev *pdev)
 {
-	struct fb_info * info;
-	struct lynx_share * share;
+	struct fb_info *info;
+	struct lynx_share *share;
 
-	struct lynxfb_par * par;
-	struct lynxfb_crtc * crtc;
-	struct lynx_cursor * cursor;
+	struct lynxfb_par *par;
+	struct lynxfb_crtc *crtc;
+	struct lynx_cursor *cursor;
 
 	int ret;
 	
@@ -516,7 +516,7 @@ static int lynxfb_resume(struct pci_dev* pdev)
 }
 #endif
 
-static int lynxfb_ops_mmap(struct fb_info * info, struct vm_area_struct * vma)
+static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
 {
 	unsigned long off;
 	unsigned long start;
@@ -579,12 +579,12 @@ static int lynxfb_ops_mmap(struct fb_info * info, struct vm_area_struct * vma)
 	return 0;
 }
 
-static int lynxfb_ops_check_var(struct fb_var_screeninfo* var,struct fb_info* info)
+static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,struct fb_info *info)
 {
-	struct lynxfb_par * par;
-	struct lynxfb_crtc * crtc;
-	struct lynxfb_output * output;
-	struct lynx_share * share;
+	struct lynxfb_par *par;
+	struct lynxfb_crtc *crtc;
+	struct lynxfb_output *output;
+	struct lynx_share *share;
 	int ret;
 	resource_size_t request;
 
@@ -674,11 +674,11 @@ exit:
 
 static int lynxfb_ops_setcolreg(unsigned regno,unsigned red,
 									unsigned green,unsigned blue,
-									unsigned transp,struct fb_info * info)
+									unsigned transp,struct fb_info *info)
 {
-    struct lynxfb_par * par;
-    struct lynxfb_crtc * crtc;
-    struct fb_var_screeninfo * var;
+    struct lynxfb_par *par;
+    struct lynxfb_crtc *crtc;
+    struct fb_var_screeninfo *var;
     int ret;
 
     par = info->par;
@@ -726,10 +726,10 @@ exit:
     return ret;
 }
 
-static int lynxfb_ops_blank(int blank,struct fb_info* info)
+static int lynxfb_ops_blank(int blank,struct fb_info *info)
 {
-	struct lynxfb_par * par;
-	struct lynxfb_output * output;
+	struct lynxfb_par *par;
+	struct lynxfb_output *output;
 	
 	pr_debug("blank = %d.\n",blank);
 	par = info->par;
@@ -737,13 +737,13 @@ static int lynxfb_ops_blank(int blank,struct fb_info* info)
 	return output->proc_setBLANK(output,blank);
 }
 
-static int sm750fb_set_drv(struct lynxfb_par * par)
+static int sm750fb_set_drv(struct lynxfb_par *par)
 {
     int ret;
-    struct lynx_share * share;
-    struct sm750_share * spec_share;
-    struct lynxfb_output * output;
-    struct lynxfb_crtc * crtc;
+    struct lynx_share *share;
+    struct sm750_share *spec_share;
+    struct lynxfb_output *output;
+    struct lynxfb_crtc *crtc;
     
     ret = 0;
 
@@ -840,33 +840,33 @@ static struct fb_ops lynxfb_ops={
 };
 
 
-static int lynxfb_set_fbinfo(struct fb_info* info,int index)
+static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 {
     int i;
-    struct lynxfb_par * par;
-    struct lynx_share * share;
-    struct lynxfb_crtc * crtc;
-    struct lynxfb_output * output;
-    struct fb_var_screeninfo * var;
-    struct fb_fix_screeninfo * fix;
-
-    const struct fb_videomode * pdb[] = {
-        lynx750_ext, NULL,vesa_modes,
+    struct lynxfb_par *par;
+    struct lynx_share *share;
+    struct lynxfb_crtc *crtc;
+    struct lynxfb_output *output;
+    struct fb_var_screeninfo *var;
+    struct fb_fix_screeninfo *fix;
+
+    const struct fb_videomode *pdb[] = {
+        lynx750_ext, NULL, vesa_modes,
     };
     int cdb[] = {ARRAY_SIZE(lynx750_ext),0,VESA_MODEDB_SIZE};
-    static const char * mdb_desc[] ={
+    static const char *mdb_desc[] ={
         "driver prepared modes",
         "kernel prepared default modedb",
         "kernel HELPERS prepared vesa_modes",
     };
 
 
-    static const char * fixId[2]=
+    static const char *fixId[2]=
     {
         "sm750_fb1","sm750_fb2",
     };
 
-    int ret,line_length;
+    int ret, line_length;
     
     ret = 0;
     par = (struct lynxfb_par *)info->par;
@@ -1040,12 +1040,13 @@ exit:
 }
 
 /* 	chip specific g_option configuration routine */
-static void sm750fb_setup(struct lynx_share * share,char * src)
+static void sm750fb_setup(struct lynx_share *share,char *src)
 {
-	struct sm750_share * spec_share;
-	char * opt;
+	struct sm750_share *spec_share;
+	char *opt;
+
 #ifdef CAP_EXPENSION
-	char * exp_res;
+	char *exp_res;
 #endif
 	int swap;
 	
@@ -1138,11 +1139,11 @@ NO_PARAM:
         }
 }
 
-static int lynxfb_pci_probe(struct pci_dev * pdev,
-		const struct pci_device_id * ent)
+static int lynxfb_pci_probe(struct pci_dev *pdev,
+		const struct pci_device_id *ent)
 {
-	struct fb_info * info[] = {NULL,NULL};
-	struct lynx_share * share = NULL;
+	struct fb_info *info[] = {NULL,NULL};
+	struct lynx_share *share = NULL;
 
 	struct sm750_share *spec_share = NULL;
 	size_t spec_offset = 0;
@@ -1245,7 +1246,7 @@ ALLOC_FB:
 		}
 		else
 		{
-			struct lynxfb_par * par;
+			struct lynxfb_par *par;
 			pr_info("framebuffer #%d alloc okay\n",fbidx);
 			share->fbinfo[fbidx] = info[fbidx];
 			par = info[fbidx]->par;
@@ -1296,12 +1297,12 @@ err_enable:
 	return -ENODEV;
 }
 
-static void __exit lynxfb_pci_remove(struct pci_dev * pdev)
+static void __exit lynxfb_pci_remove(struct pci_dev *pdev)
 {
-	struct fb_info * info;
-	struct lynx_share * share;
-	void * spec_share;
-	struct lynxfb_par * par;
+	struct fb_info *info;
+	struct lynx_share *share;
+	void *spec_share;
+	struct lynxfb_par *par;
 	int cnt;
 
 	cnt = 2;
@@ -1334,10 +1335,10 @@ static void __exit lynxfb_pci_remove(struct pci_dev * pdev)
 	pci_set_drvdata(pdev,NULL);
 }
 
-static int __init lynxfb_setup(char * options)
+static int __init lynxfb_setup(char *options)
 {
 	int len;
-	char * opt,*tmp;
+	char *opt, *tmp;
 	
 
 	if(!options || !*options){
-- 
1.9.1


