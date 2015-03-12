X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.90.175 with SMTP id bx15mr2591745wib.3.1426123419727;
        Wed, 11 Mar 2015 18:23:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.236 with SMTP id uh12ls195067lac.54.gmail; Wed, 11 Mar
 2015 18:23:39 -0700 (PDT)
X-Received: by 10.112.199.69 with SMTP id ji5mr5833709lbc.0.1426123419213;
        Wed, 11 Mar 2015 18:23:39 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id sf8si421720wic.2.2015.03.11.18.23.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so42959235wid.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YhVNCi6FpEsu3heaiytjsNawQzffTa6/S1hBjeoYtnA=;
        b=smtBoydCc7moAhGag+cOFECuHl58TxWcshnfBVD9pGU8ryXqcOWEWdh8oKBcJylXOL
         9J6fAPpt7o6pd7da4Bo+WxpkyFrzqo/ELJeMgUcJZf+4r+STAuvmZCJCrIt6TZmOiCh4
         8vSE0lWBMCjCWI2v1QH5t2cbECBNdfnR4bv5tVHUq3Zwar1nIXR50tVpBw09kpkxt68M
         Z3AhkegoDJrjllh9jZ7RiafNhcYlHnn5hecvWotsu9BT5IZ5EF4hAhZd37bTRNNqTnnM
         +xjeuhmVva0YGAK40ONTN2dFULTWBYricEDLpFPIR8Vm5+DZUDK8yiDrSK2L1+PjsU8G
         hIog==
X-Received: by 10.194.86.135 with SMTP id p7mr83689992wjz.89.1426123419124;
        Wed, 11 Mar 2015 18:23:39 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:38 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 5/9] staging: sm750: Place open bracket '{' on the next line
Date: Thu, 12 Mar 2015 03:23:10 +0200
Message-Id: <73002c755cfd51cb124daf7f26ea81b686429f5a.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Move open curly bracket on next line after the definition of a function, to follow
the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 6ac572c..f6083c4 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -60,7 +60,8 @@ static char *g_option = NULL;
 
 /* if not use spin_lock, system will die if user load driver
  * and immediatly unload driver frequently (dual)*/
-static inline void myspin_lock(spinlock_t *sl) {
+static inline void myspin_lock(spinlock_t *sl)
+{
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
@@ -68,7 +69,8 @@ static inline void myspin_lock(spinlock_t *sl) {
 		spin_lock(sl);
 }
 
-static inline void myspin_unlock(spinlock_t *sl) {
+static inline void myspin_unlock(spinlock_t *sl)
+{
 	struct lynx_share *share;
 
 	share = container_of(sl, struct lynx_share, slock);
@@ -419,7 +421,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0;
+		var->blue.offset = 0 ;
 		var->blue.length = 8;
 		fix->visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -640,7 +642,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0;
+		var->blue.offset = 0 ;
 		var->blue.length = 8;
 		info->fix.visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -772,7 +774,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	output->proc_setBLANK = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_setBLANK:hw_sm750_setBLANK;
 	output->clear = hw_sm750_output_clear;
 	/* chip specific phase */
-	share->accel.de_wait = (share->revid == SM750LE_REVISION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
+	share->accel.de_wait = (share->revid == SM750LE_REVIvSION_ID)?hw_sm750le_deWait: hw_sm750_deWait;
 	switch (spec_share->state.dataflow) {
 	case sm750_simul_pri:
 		output->paths = sm750_pnc;
@@ -1408,7 +1410,7 @@ static struct pci_driver lynxfb_driver = {
 
 static int __init lynxfb_init(void)
 {
-	char *option;
+	char *option ;
 	int ret;
 
 #ifdef MODULE
-- 
1.9.1


