X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr6561328lbj.23.1426190368397;
        Thu, 12 Mar 2015 12:59:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.149.168 with SMTP id ub8ls13786wib.50.gmail; Thu, 12 Mar
 2015 12:59:28 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr3874064wib.6.1426190368129;
        Thu, 12 Mar 2015 12:59:28 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id c8si1098454wiw.1.2015.03.12.12.59.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id l18so18736802wgh.11
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0YANHgE32N1UHMoGqkUede8IxWlpZ7LVgNM4aBre1iU=;
        b=slgFO4TGFhizpPTKtaU2xpZ52YSP7q9GWjy9DTzOS9sfXkBY6KtSAoEBMGyNOxRHl9
         RNPE2K5k7zS1g6I028nJYR9hNNxuVqhvgEZ23Y/lpDjeGkk3KKpSnHRIqVQyWhkTxV9/
         z2I4dZaK6HeBmdHQfUTIzeRgunFi4UbA9jGh66/oxO/YSXCOWkcdTQ5EnGb3zIxpv82n
         MVp4f76nbOKtnwPz38oTO9MNcHTyb+c5BQY7Lky5KXSzGv2nSUUMRnzi9hBb97ui8T51
         9ibRXvyMF4ly8kDfbbwl+ve4SRbVzG7rZMj1CZworIz1d61yVxQD889fntzB0xi7OBTu
         ovvg==
X-Received: by 10.194.89.195 with SMTP id bq3mr66690408wjb.123.1426190368047;
        Thu, 12 Mar 2015 12:59:28 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:27 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 9/9] staging: sm750: Add space before and after '=', ':' etc
Date: Thu, 12 Mar 2015 21:58:53 +0200
Message-Id: <09d03e31b35e621d74bcb085250d8571f9541401.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

Add space before and after '=', ':', '!=', '?' etc in order to improve readability
and to follow Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
	- Add spaces around '?' and ':' in conditional assignments
	- Change patch description

 drivers/staging/sm750fb/sm750.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index ffc977b..4aa2401 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -207,8 +207,8 @@ static void lynxfb_ops_fillrect(struct fb_info *info, const struct fb_fillrect *
 	pitch = info->fix.line_length;
 	Bpp = info->var.bits_per_pixel >> 3;
 
-	color = (Bpp == 1)?region->color:((u32 *)info->pseudo_palette)[region->color];
-	rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR:HW_ROP2_COPY;
+	color = (Bpp == 1) ? region->color : ((u32 *)info->pseudo_palette)[region->color];
+	rop = (region->rop != ROP_COPY) ? HW_ROP2_XOR : HW_ROP2_COPY;
 
 	myspin_lock(&share->slock);
 	share->accel.de_fillrect(&share->accel,
@@ -745,7 +745,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	output = &par->output;
 	crtc = &par->crtc;
 
-	crtc->vidmem_size = (share->dual)?share->vidmem_size>>1:share->vidmem_size;
+	crtc->vidmem_size = (share->dual) ? share->vidmem_size>>1 : share->vidmem_size;
 	/* setup crtc and output member */
 	spec_share->hwCursor = g_hwcursor;
 
@@ -763,10 +763,10 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	output->proc_setMode = hw_sm750_output_setMode;
 	output->proc_checkMode = hw_sm750_output_checkMode;
 
-	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
+	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID) ? hw_sm750le_setBLANK : hw_sm750_setBLANK;
 	output->clear = hw_sm750_output_clear;
 	/* chip specific phase */
-	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
+	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID) ? hw_sm750le_deWait : hw_sm750_deWait;
 	switch (spec_share->state.dataflow) {
 	case sm750_simul_pri:
 		output->paths = sm750_pnc;
@@ -816,7 +816,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	return ret;
 }
 
-static struct fb_ops lynxfb_ops={
+static struct fb_ops lynxfb_ops = {
 	.owner = THIS_MODULE,
 	.fb_check_var =  lynxfb_ops_check_var,
 	.fb_set_par = lynxfb_ops_set_par,
@@ -1350,7 +1350,7 @@ static int __init lynxfb_setup(char *options)
 		strsep() updates @options to pointer after the first found token
 		it also returns the pointer ahead the token.
 		*/
-	while ((opt = strsep(&options, ":"))!=NULL) {
+	while ((opt = strsep(&options, ":")) != NULL) {
 		/* options that mean for any lynx chips are configured here */
 		if (!strncmp(opt, "noaccel", strlen("noaccel")))
 			g_noaccel = 1;
-- 
1.9.1


