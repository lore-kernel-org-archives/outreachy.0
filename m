X-GM-THRID: 7583885688832
X-Received: by 10.112.40.81 with SMTP id v17mr1212917lbk.5.1426041332486;
        Tue, 10 Mar 2015 19:35:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.169 with SMTP id s9ls107827laa.8.gmail; Tue, 10 Mar 2015
 19:35:32 -0700 (PDT)
X-Received: by 10.112.159.227 with SMTP id xf3mr5197263lbb.11.1426041332034;
        Tue, 10 Mar 2015 19:35:32 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id bz6si560528wib.3.2015.03.10.19.35.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id y19so6036095wgg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9OsCy1Qv/tcXHz/oGN0SZJ0o4Q4aHwlJ3h9VYugyd+I=;
        b=afmQu98Yc6+ElQ0GuaIpl5dhAhxRZGs7us3dh1kEq5sHgs3n4fq+jM0A7wMKgOgdsF
         H/Ra9q9/g/2rnnAgnx04f3lPBZpR7Qtlfxum96DnQDKW5wXvsQfSRHYfbkatlMzKm0Os
         gSVfXTQc7PIS6dZ5LhFlULT+CrUbnfKG7LiRnyQE09Ut9fwdW4sSwj3ZZ6W7nz0+TCeP
         suj4caGqitaP2WvIgY4i1+RZGJnzZxqG6JAHX0JG4Y/a4kmk16cHdRm/miBz0z/zsa6H
         56uKBGxtNd+HIQeUyZFsXWJtWaAxyMlWaWJYNOVvDEyp34MUA6ZreOyZLQEMut6mUL5J
         BHfA==
X-Received: by 10.194.190.10 with SMTP id gm10mr73856012wjc.91.1426041331961;
        Tue, 10 Mar 2015 19:35:31 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:30 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 4/7] staging: sm750: Remove trailing whitespaces
Date: Wed, 11 Mar 2015 04:35:07 +0200
Message-Id: <eb399cb1dadcad41299b953ec47441c895b16458.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>

This patch removes trailing whitespaces in order to follow the Linux
coding style

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 65b1fbf..eb81806 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -288,7 +288,7 @@ static int lynxfb_ops_pan_display(struct fb_var_screeninfo *var,
     struct lynxfb_par *par;
     struct lynxfb_crtc *crtc;
     int ret;
-    
+
 
     if(!info)
         return -EINVAL;
@@ -310,7 +310,7 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 	struct fb_info *info;
 	struct lynx_share *share;
 	int ret;
-	
+
 
 	if(mesg.event == pdev->dev.power.power_state.event)
 		return 0;
@@ -367,7 +367,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	struct fb_fix_screeninfo *fix;
 	int ret;
 	unsigned int line_length;
-	
+
 
 	if(!info)
 		return -EINVAL;
@@ -457,7 +457,7 @@ static int lynxfb_resume(struct pci_dev *pdev)
 	struct lynx_cursor *cursor;
 
 	int ret;
-	
+
 
 	ret = 0;
 	share = pci_get_drvdata(pdev);
@@ -520,9 +520,9 @@ static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
 	unsigned long start;
 	u32 len;
 	struct file *file;
-	
+
 	file = vma->vm_file;
-	
+
 	if (!info)
 		return -ENODEV;
 	if (vma->vm_pgoff > (~0UL >> PAGE_SHIFT))
@@ -530,14 +530,14 @@ static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
 	off = vma->vm_pgoff << PAGE_SHIFT;
 	printk("lynxfb mmap pgoff: %x\n", vma->vm_pgoff);
 	printk("lynxfb mmap off 1: %x\n", off);
-	
+
 	/* frame buffer memory */
 	start = info->fix.smem_start;
 	len = PAGE_ALIGN((start & ~PAGE_MASK) + info->fix.smem_len);
-	
+
 	printk("lynxfb mmap start 1: %x\n", start);
 	printk("lynxfb mmap len 1: %x\n", len);
-	
+
 	if (off >= len) {
 		/* memory mapped io */
 		off -= len;
@@ -548,7 +548,7 @@ static int lynxfb_ops_mmap(struct fb_info *info, struct vm_area_struct *vma)
 		}
 		start = info->fix.mmio_start;
 		len = PAGE_ALIGN((start & ~PAGE_MASK) + info->fix.mmio_len);
-		
+
 		printk("lynxfb mmap start 2: %x\n", start);
 		printk("lynxfb mmap len 2: %x\n", len);
 	}
@@ -586,7 +586,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,struct fb_info *in
 	int ret;
 	resource_size_t request;
 
-	
+
 	par = info->par;
 	crtc = &par->crtc;
 	output = &par->output;
@@ -729,7 +729,7 @@ static int lynxfb_ops_blank(int blank,struct fb_info *info)
 {
 	struct lynxfb_par *par;
 	struct lynxfb_output *output;
-	
+
 	pr_debug("blank = %d.\n",blank);
 	par = info->par;
 	output = &par->output;
@@ -743,7 +743,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
     struct sm750_share *spec_share;
     struct lynxfb_output *output;
     struct lynxfb_crtc *crtc;
-    
+
     ret = 0;
 
     share = par->share;
@@ -866,7 +866,7 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
     };
 
     int ret, line_length;
-    
+
     ret = 0;
     par = (struct lynxfb_par *)info->par;
     share = par->share;
@@ -1048,7 +1048,7 @@ static void sm750fb_setup(struct lynx_share *share,char *src)
 	char *exp_res;
 #endif
 	int swap;
-	
+
 
 	spec_share = container_of(share,struct sm750_share,share);
 #ifdef CAP_EXPENSIION
@@ -1147,7 +1147,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	struct sm750_share *spec_share = NULL;
 	size_t spec_offset = 0;
 	int fbidx;
-	
+
 
 	/* enable device */
 	if(pci_enable_device(pdev)){
@@ -1340,7 +1340,7 @@ static int __init lynxfb_setup(char *options)
 {
 	int len;
 	char *opt, *tmp;
-	
+
 
 	if(!options || !*options){
 		pr_warn("no options.\n");
-- 
1.9.1


